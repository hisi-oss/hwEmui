.class public final Landroid/zrhung/appeye/AppEyeANR;
.super Landroid/zrhung/ZrHungImpl;
.source "AppEyeANR.java"


# static fields
.field private static final MANR_ARRAY_SIZE:I = 0x10

.field private static final MANR_MILLIS_PER_SECOND:I = 0x3e8

.field private static final MANR_THRESHOLD_MAX:I = 0xa

.field private static final MANR_THRESHOLD_MIN:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ZrHung.AppEyeANR"


# instance fields
.field private mAnrPkgNames:[Ljava/lang/String;

.field private mAnrTimes:[J

.field private mConfiged:Z

.field private mCount:I

.field private mEnabled:Z

.field private mEnabledFastANR:Z

.field private mEnd:I

.field private mIndex:I

.field private mInterval:I

.field private mPackageList:[Ljava/lang/String;

.field private mStart:I

.field private mThreshold:I

.field private mUploadTime:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "wpName"    # Ljava/lang/String;

    .line 46
    invoke-direct {p0, p1}, Landroid/zrhung/ZrHungImpl;-><init>(Ljava/lang/String;)V

    .line 30
    const/16 v0, 0x10

    new-array v1, v0, [J

    fill-array-data v1, :array_0

    iput-object v1, p0, Landroid/zrhung/appeye/AppEyeANR;->mAnrTimes:[J

    .line 31
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/zrhung/appeye/AppEyeANR;->mAnrPkgNames:[Ljava/lang/String;

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Landroid/zrhung/appeye/AppEyeANR;->mIndex:I

    .line 33
    iput v0, p0, Landroid/zrhung/appeye/AppEyeANR;->mStart:I

    .line 34
    iput v0, p0, Landroid/zrhung/appeye/AppEyeANR;->mEnd:I

    .line 35
    iput v0, p0, Landroid/zrhung/appeye/AppEyeANR;->mCount:I

    .line 36
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/zrhung/appeye/AppEyeANR;->mUploadTime:J

    .line 38
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/zrhung/appeye/AppEyeANR;->mPackageList:[Ljava/lang/String;

    .line 39
    iput-boolean v0, p0, Landroid/zrhung/appeye/AppEyeANR;->mConfiged:Z

    .line 40
    iput-boolean v0, p0, Landroid/zrhung/appeye/AppEyeANR;->mEnabled:Z

    .line 41
    iput-boolean v0, p0, Landroid/zrhung/appeye/AppEyeANR;->mEnabledFastANR:Z

    .line 42
    iput v0, p0, Landroid/zrhung/appeye/AppEyeANR;->mThreshold:I

    .line 43
    iput v0, p0, Landroid/zrhung/appeye/AppEyeANR;->mInterval:I

    .line 47
    return-void

    nop

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

.method private getCoreANRConfig()Z
    .locals 6

    .line 60
    iget-boolean v0, p0, Landroid/zrhung/appeye/AppEyeANR;->mConfiged:Z

    const/16 v1, 0xa

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 61
    iget-boolean v0, p0, Landroid/zrhung/appeye/AppEyeANR;->mEnabled:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/zrhung/appeye/AppEyeANR;->mInterval:I

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/zrhung/appeye/AppEyeANR;->mPackageList:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/zrhung/appeye/AppEyeANR;->mThreshold:I

    if-le v0, v3, :cond_0

    iget v0, p0, Landroid/zrhung/appeye/AppEyeANR;->mThreshold:I

    if-ge v0, v1, :cond_0

    move v2, v3

    nop

    :cond_0
    return v2

    .line 65
    :cond_1
    invoke-virtual {p0}, Landroid/zrhung/appeye/AppEyeANR;->getConfig()Landroid/util/ZRHung$HungConfig;

    move-result-object v0

    .line 66
    .local v0, "cfg":Landroid/util/ZRHung$HungConfig;
    if-nez v0, :cond_2

    .line 67
    return v2

    .line 69
    :cond_2
    iget v4, v0, Landroid/util/ZRHung$HungConfig;->status:I

    if-eqz v4, :cond_4

    .line 70
    iget v1, v0, Landroid/util/ZRHung$HungConfig;->status:I

    if-eq v1, v3, :cond_3

    .line 71
    iput-boolean v3, p0, Landroid/zrhung/appeye/AppEyeANR;->mConfiged:Z

    .line 73
    :cond_3
    return v2

    .line 75
    :cond_4
    iget-object v4, v0, Landroid/util/ZRHung$HungConfig;->value:Ljava/lang/String;

    if-nez v4, :cond_5

    .line 76
    iput-boolean v3, p0, Landroid/zrhung/appeye/AppEyeANR;->mConfiged:Z

    .line 77
    return v2

    .line 80
    :cond_5
    iget-object v4, v0, Landroid/util/ZRHung$HungConfig;->value:Ljava/lang/String;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/zrhung/appeye/AppEyeANR;->mPackageList:[Ljava/lang/String;

    .line 81
    iget-object v4, p0, Landroid/zrhung/appeye/AppEyeANR;->mPackageList:[Ljava/lang/String;

    array-length v4, v4

    const/4 v5, 0x5

    if-ge v4, v5, :cond_6

    .line 82
    iput-boolean v3, p0, Landroid/zrhung/appeye/AppEyeANR;->mConfiged:Z

    .line 83
    return v2

    .line 86
    :cond_6
    iget-object v4, p0, Landroid/zrhung/appeye/AppEyeANR;->mPackageList:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, p0, Landroid/zrhung/appeye/AppEyeANR;->mEnabled:Z

    .line 87
    iget-object v4, p0, Landroid/zrhung/appeye/AppEyeANR;->mPackageList:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/zrhung/appeye/AppEyeANR;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Landroid/zrhung/appeye/AppEyeANR;->mThreshold:I

    .line 88
    iget-object v4, p0, Landroid/zrhung/appeye/AppEyeANR;->mPackageList:[Ljava/lang/String;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/zrhung/appeye/AppEyeANR;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Landroid/zrhung/appeye/AppEyeANR;->mInterval:I

    .line 89
    iget-object v4, p0, Landroid/zrhung/appeye/AppEyeANR;->mPackageList:[Ljava/lang/String;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, p0, Landroid/zrhung/appeye/AppEyeANR;->mEnabledFastANR:Z

    .line 90
    iput-boolean v3, p0, Landroid/zrhung/appeye/AppEyeANR;->mConfiged:Z

    .line 92
    iget-boolean v4, p0, Landroid/zrhung/appeye/AppEyeANR;->mEnabled:Z

    if-eqz v4, :cond_7

    iget v4, p0, Landroid/zrhung/appeye/AppEyeANR;->mInterval:I

    if-lez v4, :cond_7

    iget v4, p0, Landroid/zrhung/appeye/AppEyeANR;->mThreshold:I

    if-le v4, v3, :cond_7

    iget v4, p0, Landroid/zrhung/appeye/AppEyeANR;->mThreshold:I

    if-ge v4, v1, :cond_7

    move v2, v3

    nop

    :cond_7
    return v2
.end method

.method private getCurrentMANRInfo()Ljava/lang/String;
    .locals 7

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 192
    .local v0, "multAnrInfo":Ljava/lang/StringBuilder;
    iget v1, p0, Landroid/zrhung/appeye/AppEyeANR;->mStart:I

    iget v2, p0, Landroid/zrhung/appeye/AppEyeANR;->mThreshold:I

    sub-int/2addr v1, v2

    rem-int/lit8 v1, v1, 0x10

    .line 193
    .local v1, "start":I
    iget v2, p0, Landroid/zrhung/appeye/AppEyeANR;->mEnd:I

    .line 195
    .local v2, "end":I
    if-gez v1, :cond_0

    .line 196
    add-int/lit8 v1, v1, 0x10

    .line 199
    :cond_0
    :goto_0
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    const-string v3, "time:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    iget-object v3, p0, Landroid/zrhung/appeye/AppEyeANR;->mAnrTimes:[J

    aget-wide v3, v3, v1

    .line 202
    .local v3, "time":J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_1

    .line 203
    const-string v5, "yyyy-MM-dd hh:mm:ss"

    invoke-static {v3, v4, v5}, Landroid/rms/utils/Utils;->getDateFormatValue(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 204
    .local v5, "formatedTime":Ljava/lang/String;
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .end local v5    # "formatedTime":Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Landroid/zrhung/appeye/AppEyeANR;->mAnrPkgNames:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    if-ne v1, v2, :cond_2

    .line 208
    nop

    .line 210
    .end local v3    # "time":J
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 198
    :cond_2
    add-int/lit8 v3, v1, 0x1

    rem-int/lit8 v1, v3, 0x10

    goto :goto_0
.end method

.method private isCoreApp(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 129
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/zrhung/appeye/AppEyeANR;->mPackageList:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 130
    iget-object v2, p0, Landroid/zrhung/appeye/AppEyeANR;->mPackageList:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 131
    const/4 v0, 0x1

    return v0

    .line 129
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 134
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method private isMANR(Ljava/lang/String;)Z
    .locals 10
    .param p1, "anrInfo"    # Ljava/lang/String;

    .line 97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 99
    .local v0, "currentTime":J
    iget-object v2, p0, Landroid/zrhung/appeye/AppEyeANR;->mAnrTimes:[J

    iget v3, p0, Landroid/zrhung/appeye/AppEyeANR;->mIndex:I

    aput-wide v0, v2, v3

    .line 100
    iget-object v2, p0, Landroid/zrhung/appeye/AppEyeANR;->mAnrPkgNames:[Ljava/lang/String;

    iget v3, p0, Landroid/zrhung/appeye/AppEyeANR;->mIndex:I

    aput-object p1, v2, v3

    .line 101
    iget v2, p0, Landroid/zrhung/appeye/AppEyeANR;->mIndex:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    rem-int/lit8 v2, v2, 0x10

    iput v2, p0, Landroid/zrhung/appeye/AppEyeANR;->mIndex:I

    .line 102
    iget v2, p0, Landroid/zrhung/appeye/AppEyeANR;->mCount:I

    add-int/2addr v2, v3

    iput v2, p0, Landroid/zrhung/appeye/AppEyeANR;->mCount:I

    .line 105
    iget v2, p0, Landroid/zrhung/appeye/AppEyeANR;->mCount:I

    iget v4, p0, Landroid/zrhung/appeye/AppEyeANR;->mThreshold:I

    const/4 v5, 0x0

    if-ge v2, v4, :cond_0

    .line 106
    return v5

    .line 109
    :cond_0
    iget v2, p0, Landroid/zrhung/appeye/AppEyeANR;->mStart:I

    iget v4, p0, Landroid/zrhung/appeye/AppEyeANR;->mThreshold:I

    add-int/2addr v2, v4

    sub-int/2addr v2, v3

    rem-int/lit8 v2, v2, 0x10

    iput v2, p0, Landroid/zrhung/appeye/AppEyeANR;->mEnd:I

    .line 112
    iget-object v2, p0, Landroid/zrhung/appeye/AppEyeANR;->mAnrTimes:[J

    iget v4, p0, Landroid/zrhung/appeye/AppEyeANR;->mStart:I

    aget-wide v6, v2, v4

    iget v2, p0, Landroid/zrhung/appeye/AppEyeANR;->mInterval:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v8, v2

    add-long/2addr v6, v8

    iget-object v2, p0, Landroid/zrhung/appeye/AppEyeANR;->mAnrTimes:[J

    iget v4, p0, Landroid/zrhung/appeye/AppEyeANR;->mEnd:I

    aget-wide v8, v2, v4

    cmp-long v2, v6, v8

    if-ltz v2, :cond_2

    .line 115
    iget-wide v6, p0, Landroid/zrhung/appeye/AppEyeANR;->mUploadTime:J

    const-wide/16 v8, 0x0

    cmp-long v2, v6, v8

    if-eqz v2, :cond_1

    iget-wide v6, p0, Landroid/zrhung/appeye/AppEyeANR;->mUploadTime:J

    iget v2, p0, Landroid/zrhung/appeye/AppEyeANR;->mInterval:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v8, v2

    add-long/2addr v6, v8

    iget-object v2, p0, Landroid/zrhung/appeye/AppEyeANR;->mAnrTimes:[J

    iget v4, p0, Landroid/zrhung/appeye/AppEyeANR;->mStart:I

    aget-wide v8, v2, v4

    cmp-long v2, v6, v8

    if-gtz v2, :cond_2

    .line 116
    :cond_1
    iput v5, p0, Landroid/zrhung/appeye/AppEyeANR;->mCount:I

    .line 117
    iget v2, p0, Landroid/zrhung/appeye/AppEyeANR;->mStart:I

    iget v4, p0, Landroid/zrhung/appeye/AppEyeANR;->mThreshold:I

    add-int/2addr v2, v4

    rem-int/lit8 v2, v2, 0x10

    iput v2, p0, Landroid/zrhung/appeye/AppEyeANR;->mStart:I

    .line 118
    iput-wide v0, p0, Landroid/zrhung/appeye/AppEyeANR;->mUploadTime:J

    .line 119
    return v3

    .line 123
    :cond_2
    iget v2, p0, Landroid/zrhung/appeye/AppEyeANR;->mCount:I

    sub-int/2addr v2, v3

    iput v2, p0, Landroid/zrhung/appeye/AppEyeANR;->mCount:I

    .line 124
    iget v2, p0, Landroid/zrhung/appeye/AppEyeANR;->mStart:I

    add-int/2addr v2, v3

    rem-int/lit8 v2, v2, 0x10

    iput v2, p0, Landroid/zrhung/appeye/AppEyeANR;->mStart:I

    .line 125
    return v5
.end method

.method private isZrHungDataValid(Landroid/zrhung/ZrHungData;)Z
    .locals 4
    .param p1, "args"    # Landroid/zrhung/ZrHungData;

    .line 214
    const-string v0, "packageName"

    invoke-virtual {p1, v0}, Landroid/zrhung/ZrHungData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, "packageName":Ljava/lang/String;
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 216
    return v1

    .line 219
    :cond_0
    const-string v2, "processName"

    invoke-virtual {p1, v2}, Landroid/zrhung/ZrHungData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 220
    .local v2, "processName":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 221
    const-string v3, "packageName"

    invoke-virtual {p1, v3, v2}, Landroid/zrhung/ZrHungData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    return v1

    .line 225
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private parseInt(Ljava/lang/String;)I
    .locals 5
    .param p1, "str"    # Ljava/lang/String;

    .line 50
    const/4 v0, -0x1

    .line 52
    .local v0, "value":I
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 55
    goto :goto_0

    .line 53
    :catch_0
    move-exception v1

    .line 54
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v2, "ZrHung.AppEyeANR"

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

    .line 56
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :goto_0
    return v0
.end method


# virtual methods
.method public check(Landroid/zrhung/ZrHungData;)Z
    .locals 3
    .param p1, "args"    # Landroid/zrhung/ZrHungData;

    .line 146
    invoke-direct {p0}, Landroid/zrhung/appeye/AppEyeANR;->getCoreANRConfig()Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    const/4 v0, 0x0

    return v0

    .line 150
    :cond_0
    const-string v0, "ZrHung.AppEyeANR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "check:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroid/zrhung/appeye/AppEyeANR;->mEnabledFastANR:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-boolean v0, p0, Landroid/zrhung/appeye/AppEyeANR;->mEnabledFastANR:Z

    return v0
.end method

.method public init(Landroid/zrhung/ZrHungData;)I
    .locals 1
    .param p1, "args"    # Landroid/zrhung/ZrHungData;

    .line 139
    invoke-direct {p0}, Landroid/zrhung/appeye/AppEyeANR;->getCoreANRConfig()Z

    .line 140
    const/4 v0, 0x0

    return v0
.end method

.method public sendEvent(Landroid/zrhung/ZrHungData;)Z
    .locals 7
    .param p1, "args"    # Landroid/zrhung/ZrHungData;

    .line 156
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    invoke-direct {p0, p1}, Landroid/zrhung/appeye/AppEyeANR;->isZrHungDataValid(Landroid/zrhung/ZrHungData;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    .line 160
    :cond_0
    invoke-direct {p0}, Landroid/zrhung/appeye/AppEyeANR;->getCoreANRConfig()Z

    move-result v1

    if-nez v1, :cond_1

    .line 161
    return v0

    .line 165
    :cond_1
    const-string v0, "packageName"

    invoke-virtual {p1, v0}, Landroid/zrhung/ZrHungData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, "packageName":Ljava/lang/String;
    const-string v1, "activityName"

    invoke-virtual {p1, v1}, Landroid/zrhung/ZrHungData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 167
    .local v1, "activityName":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 168
    .local v2, "anrInfo":Ljava/lang/StringBuilder;
    const-string v3, " PackageName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    const-string v3, " ActivityName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    const-string v3, "APP_CRASH"

    const-string v4, "WpName"

    invoke-virtual {p1, v4}, Landroid/zrhung/ZrHungData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 174
    const-string v3, "ZrHung.AppEyeANR"

    const-string v5, "send APP_CRASH events"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const/16 v3, 0x11f

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "APP_CRASH:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v3, p1, v4, v5}, Landroid/zrhung/appeye/AppEyeANR;->sendAppEyeEvent(SLandroid/zrhung/ZrHungData;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    return v3

    .line 178
    :cond_2
    invoke-direct {p0, v0}, Landroid/zrhung/appeye/AppEyeANR;->isCoreApp(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 179
    const/16 v3, 0x10d

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CANR:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v3, p1, v4, v5}, Landroid/zrhung/appeye/AppEyeANR;->sendAppEyeEvent(SLandroid/zrhung/ZrHungData;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    return v3

    .line 182
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/zrhung/appeye/AppEyeANR;->isMANR(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 183
    const/16 v3, 0x10c

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MANR:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Landroid/zrhung/appeye/AppEyeANR;->getCurrentMANRInfo()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v3, p1, v4, v5}, Landroid/zrhung/appeye/AppEyeANR;->sendAppEyeEvent(SLandroid/zrhung/ZrHungData;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    return v3

    .line 186
    :cond_4
    const/16 v3, 0x10b

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ANR:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v3, p1, v4, v5}, Landroid/zrhung/appeye/AppEyeANR;->sendAppEyeEvent(SLandroid/zrhung/ZrHungData;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    return v3

    .line 157
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v1    # "activityName":Ljava/lang/String;
    .end local v2    # "anrInfo":Ljava/lang/StringBuilder;
    :cond_5
    :goto_0
    return v0
.end method
