.class public final Landroid/zrhung/appeye/AppEyeHK;
.super Landroid/zrhung/ZrHungImpl;
.source "AppEyeHK.java"


# static fields
.field private static final KEY_DOWN_ARRAY_SIZE:I = 0x10

.field private static final KEY_DOWN_DURATION_MILLIS_MIN:I = 0x64

.field private static final KEY_DOWN_THRESHOLD_MAX:I = 0xa

.field private static final KEY_DOWN_THRESHOLD_MIN:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ZrHung.AppEyeHK"


# instance fields
.field private mConfiged:Z

.field private mCount:I

.field private mDownTimes:[J

.field private mDuration:I

.field private mEnabled:Z

.field private mEnd:I

.field private mIndex:I

.field private mStart:I

.field private mThreshold:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "wpName"    # Ljava/lang/String;

    .line 40
    invoke-direct {p0, p1}, Landroid/zrhung/ZrHungImpl;-><init>(Ljava/lang/String;)V

    .line 29
    const/16 v0, 0x10

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    iput-object v0, p0, Landroid/zrhung/appeye/AppEyeHK;->mDownTimes:[J

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/zrhung/appeye/AppEyeHK;->mConfiged:Z

    .line 31
    iput-boolean v0, p0, Landroid/zrhung/appeye/AppEyeHK;->mEnabled:Z

    .line 32
    iput v0, p0, Landroid/zrhung/appeye/AppEyeHK;->mIndex:I

    .line 33
    iput v0, p0, Landroid/zrhung/appeye/AppEyeHK;->mStart:I

    .line 34
    iput v0, p0, Landroid/zrhung/appeye/AppEyeHK;->mEnd:I

    .line 35
    iput v0, p0, Landroid/zrhung/appeye/AppEyeHK;->mCount:I

    .line 36
    iput v0, p0, Landroid/zrhung/appeye/AppEyeHK;->mThreshold:I

    .line 37
    iput v0, p0, Landroid/zrhung/appeye/AppEyeHK;->mDuration:I

    .line 41
    return-void

    :array_0
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private getHKConfig()Z
    .locals 8

    .line 54
    iget-boolean v0, p0, Landroid/zrhung/appeye/AppEyeHK;->mConfiged:Z

    const/16 v1, 0xa

    const/16 v2, 0x64

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    .line 55
    iget-boolean v0, p0, Landroid/zrhung/appeye/AppEyeHK;->mEnabled:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/zrhung/appeye/AppEyeHK;->mDuration:I

    if-lt v0, v2, :cond_0

    iget v0, p0, Landroid/zrhung/appeye/AppEyeHK;->mThreshold:I

    if-lt v0, v4, :cond_0

    iget v0, p0, Landroid/zrhung/appeye/AppEyeHK;->mThreshold:I

    if-gt v0, v1, :cond_0

    move v3, v4

    nop

    :cond_0
    return v3

    .line 59
    :cond_1
    invoke-virtual {p0}, Landroid/zrhung/appeye/AppEyeHK;->getConfig()Landroid/util/ZRHung$HungConfig;

    move-result-object v0

    .line 60
    .local v0, "cfg":Landroid/util/ZRHung$HungConfig;
    if-nez v0, :cond_2

    .line 61
    return v3

    .line 63
    :cond_2
    iget v5, v0, Landroid/util/ZRHung$HungConfig;->status:I

    if-eqz v5, :cond_4

    .line 64
    iget v1, v0, Landroid/util/ZRHung$HungConfig;->status:I

    if-eq v1, v4, :cond_3

    .line 65
    iput-boolean v4, p0, Landroid/zrhung/appeye/AppEyeHK;->mConfiged:Z

    .line 67
    :cond_3
    return v3

    .line 69
    :cond_4
    iget-object v5, v0, Landroid/util/ZRHung$HungConfig;->value:Ljava/lang/String;

    if-nez v5, :cond_5

    .line 70
    iput-boolean v4, p0, Landroid/zrhung/appeye/AppEyeHK;->mConfiged:Z

    .line 71
    return v3

    .line 74
    :cond_5
    iget-object v5, v0, Landroid/util/ZRHung$HungConfig;->value:Ljava/lang/String;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 75
    .local v5, "values":[Ljava/lang/String;
    array-length v6, v5

    const/4 v7, 0x3

    if-ge v6, v7, :cond_6

    .line 76
    iput-boolean v4, p0, Landroid/zrhung/appeye/AppEyeHK;->mConfiged:Z

    .line 77
    return v3

    .line 80
    :cond_6
    aget-object v6, v5, v3

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    iput-boolean v6, p0, Landroid/zrhung/appeye/AppEyeHK;->mEnabled:Z

    .line 81
    aget-object v6, v5, v4

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Landroid/zrhung/appeye/AppEyeHK;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Landroid/zrhung/appeye/AppEyeHK;->mThreshold:I

    .line 82
    const/4 v6, 0x2

    aget-object v6, v5, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Landroid/zrhung/appeye/AppEyeHK;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Landroid/zrhung/appeye/AppEyeHK;->mDuration:I

    .line 83
    iput-boolean v4, p0, Landroid/zrhung/appeye/AppEyeHK;->mConfiged:Z

    .line 85
    iget-boolean v6, p0, Landroid/zrhung/appeye/AppEyeHK;->mEnabled:Z

    if-eqz v6, :cond_7

    iget v6, p0, Landroid/zrhung/appeye/AppEyeHK;->mDuration:I

    if-lt v6, v2, :cond_7

    iget v2, p0, Landroid/zrhung/appeye/AppEyeHK;->mThreshold:I

    if-lt v2, v4, :cond_7

    iget v2, p0, Landroid/zrhung/appeye/AppEyeHK;->mThreshold:I

    if-gt v2, v1, :cond_7

    move v3, v4

    nop

    :cond_7
    return v3
.end method

.method private matchDownPattern(J)J
    .locals 6
    .param p1, "downTime"    # J

    .line 90
    const-wide/16 v0, -0x1

    .line 92
    .local v0, "startTime":J
    iget-object v2, p0, Landroid/zrhung/appeye/AppEyeHK;->mDownTimes:[J

    iget v3, p0, Landroid/zrhung/appeye/AppEyeHK;->mIndex:I

    aput-wide p1, v2, v3

    .line 93
    iget v2, p0, Landroid/zrhung/appeye/AppEyeHK;->mIndex:I

    add-int/lit8 v2, v2, 0x1

    rem-int/lit8 v2, v2, 0x10

    iput v2, p0, Landroid/zrhung/appeye/AppEyeHK;->mIndex:I

    .line 94
    iget v2, p0, Landroid/zrhung/appeye/AppEyeHK;->mCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/zrhung/appeye/AppEyeHK;->mCount:I

    .line 97
    iget v2, p0, Landroid/zrhung/appeye/AppEyeHK;->mCount:I

    iget v3, p0, Landroid/zrhung/appeye/AppEyeHK;->mThreshold:I

    if-ge v2, v3, :cond_0

    .line 98
    return-wide v0

    .line 101
    :cond_0
    iget v2, p0, Landroid/zrhung/appeye/AppEyeHK;->mStart:I

    iget v3, p0, Landroid/zrhung/appeye/AppEyeHK;->mThreshold:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    rem-int/lit8 v2, v2, 0x10

    iput v2, p0, Landroid/zrhung/appeye/AppEyeHK;->mEnd:I

    .line 103
    iget-object v2, p0, Landroid/zrhung/appeye/AppEyeHK;->mDownTimes:[J

    iget v3, p0, Landroid/zrhung/appeye/AppEyeHK;->mStart:I

    aget-wide v2, v2, v3

    iget v4, p0, Landroid/zrhung/appeye/AppEyeHK;->mDuration:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    iget-object v4, p0, Landroid/zrhung/appeye/AppEyeHK;->mDownTimes:[J

    iget v5, p0, Landroid/zrhung/appeye/AppEyeHK;->mEnd:I

    aget-wide v4, v4, v5

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    .line 104
    iget-object v2, p0, Landroid/zrhung/appeye/AppEyeHK;->mDownTimes:[J

    iget v3, p0, Landroid/zrhung/appeye/AppEyeHK;->mStart:I

    aget-wide v0, v2, v3

    .line 105
    const/4 v2, 0x0

    iput v2, p0, Landroid/zrhung/appeye/AppEyeHK;->mCount:I

    .line 106
    iget v2, p0, Landroid/zrhung/appeye/AppEyeHK;->mStart:I

    iget v3, p0, Landroid/zrhung/appeye/AppEyeHK;->mThreshold:I

    add-int/2addr v2, v3

    rem-int/lit8 v2, v2, 0x10

    iput v2, p0, Landroid/zrhung/appeye/AppEyeHK;->mStart:I

    .line 107
    return-wide v0

    .line 110
    :cond_1
    iget v2, p0, Landroid/zrhung/appeye/AppEyeHK;->mCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/zrhung/appeye/AppEyeHK;->mCount:I

    .line 111
    iget v2, p0, Landroid/zrhung/appeye/AppEyeHK;->mStart:I

    add-int/lit8 v2, v2, 0x1

    rem-int/lit8 v2, v2, 0x10

    iput v2, p0, Landroid/zrhung/appeye/AppEyeHK;->mStart:I

    .line 112
    return-wide v0
.end method

.method private parseInt(Ljava/lang/String;)I
    .locals 5
    .param p1, "str"    # Ljava/lang/String;

    .line 44
    const/4 v0, -0x1

    .line 46
    .local v0, "value":I
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 49
    goto :goto_0

    .line 47
    :catch_0
    move-exception v1

    .line 48
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v2, "ZrHung.AppEyeHK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parseInt NumberFormatException e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :goto_0
    return v0
.end method


# virtual methods
.method public check(Landroid/zrhung/ZrHungData;)Z
    .locals 6
    .param p1, "args"    # Landroid/zrhung/ZrHungData;

    .line 124
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 125
    return v0

    .line 128
    :cond_0
    invoke-direct {p0}, Landroid/zrhung/appeye/AppEyeHK;->getHKConfig()Z

    move-result v1

    if-nez v1, :cond_1

    .line 129
    return v0

    .line 132
    :cond_1
    const-string v0, "downTime"

    invoke-virtual {p1, v0}, Landroid/zrhung/ZrHungData;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/zrhung/appeye/AppEyeHK;->matchDownPattern(J)J

    move-result-wide v0

    .line 133
    .local v0, "startTime":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    .line 134
    const/16 v2, 0x203

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HK:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/util/ZRHung;->sendHungEvent(SLjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    return v2

    .line 137
    :cond_2
    const/4 v2, 0x1

    return v2
.end method

.method public init(Landroid/zrhung/ZrHungData;)I
    .locals 1
    .param p1, "args"    # Landroid/zrhung/ZrHungData;

    .line 118
    invoke-direct {p0}, Landroid/zrhung/appeye/AppEyeHK;->getHKConfig()Z

    .line 119
    const/4 v0, 0x0

    return v0
.end method
