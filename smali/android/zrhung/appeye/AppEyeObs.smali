.class public final Landroid/zrhung/appeye/AppEyeObs;
.super Landroid/zrhung/ZrHungImpl;
.source "AppEyeObs.java"


# static fields
.field private static final KEYWORD:Ljava/lang/String; = "AppEyeObs:"

.field private static final TAG:Ljava/lang/String; = "ZrHung.AppEyeObs"

.field private static mAppEyeObs:Landroid/zrhung/appeye/AppEyeObs;

.field private static mConfiged:Z

.field private static mEnabled:Z

.field private static mThreshold:I


# instance fields
.field private mFlowControl:J

.field private mOldTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const/4 v0, 0x0

    sput-object v0, Landroid/zrhung/appeye/AppEyeObs;->mAppEyeObs:Landroid/zrhung/appeye/AppEyeObs;

    .line 25
    const/4 v0, 0x0

    sput-boolean v0, Landroid/zrhung/appeye/AppEyeObs;->mEnabled:Z

    .line 26
    sput-boolean v0, Landroid/zrhung/appeye/AppEyeObs;->mConfiged:Z

    .line 27
    const/16 v0, 0x50

    sput v0, Landroid/zrhung/appeye/AppEyeObs;->mThreshold:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "wpName"    # Ljava/lang/String;

    .line 32
    invoke-direct {p0, p1}, Landroid/zrhung/ZrHungImpl;-><init>(Ljava/lang/String;)V

    .line 28
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/zrhung/appeye/AppEyeObs;->mOldTime:J

    .line 29
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Landroid/zrhung/appeye/AppEyeObs;->mFlowControl:J

    .line 33
    return-void
.end method

.method public static getInstance(Ljava/lang/String;)Landroid/zrhung/appeye/AppEyeObs;
    .locals 1
    .param p0, "wpName"    # Ljava/lang/String;

    .line 36
    sget-object v0, Landroid/zrhung/appeye/AppEyeObs;->mAppEyeObs:Landroid/zrhung/appeye/AppEyeObs;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Landroid/zrhung/appeye/AppEyeObs;

    invoke-direct {v0, p0}, Landroid/zrhung/appeye/AppEyeObs;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/zrhung/appeye/AppEyeObs;->mAppEyeObs:Landroid/zrhung/appeye/AppEyeObs;

    .line 39
    :cond_0
    sget-object v0, Landroid/zrhung/appeye/AppEyeObs;->mAppEyeObs:Landroid/zrhung/appeye/AppEyeObs;

    return-object v0
.end method

.method private isEnabled()Z
    .locals 8

    .line 43
    sget-boolean v0, Landroid/zrhung/appeye/AppEyeObs;->mConfiged:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 44
    sget-boolean v0, Landroid/zrhung/appeye/AppEyeObs;->mEnabled:Z

    return v0

    .line 46
    :cond_0
    const/16 v0, 0x115

    invoke-static {v0}, Landroid/util/ZRHung;->getHungConfig(S)Landroid/util/ZRHung$HungConfig;

    move-result-object v0

    .line 47
    .local v0, "cfg":Landroid/util/ZRHung$HungConfig;
    const/4 v2, 0x0

    if-eqz v0, :cond_8

    iget-object v3, v0, Landroid/util/ZRHung$HungConfig;->value:Ljava/lang/String;

    if-nez v3, :cond_1

    goto/16 :goto_2

    .line 51
    :cond_1
    iget v3, v0, Landroid/util/ZRHung$HungConfig;->status:I

    if-ne v3, v1, :cond_2

    .line 52
    return v2

    .line 53
    :cond_2
    iget v3, v0, Landroid/util/ZRHung$HungConfig;->status:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_7

    iget v3, v0, Landroid/util/ZRHung$HungConfig;->status:I

    const/4 v4, -0x2

    if-ne v3, v4, :cond_3

    goto/16 :goto_1

    .line 58
    :cond_3
    iget-object v3, v0, Landroid/util/ZRHung$HungConfig;->value:Ljava/lang/String;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 59
    .local v3, "values":[Ljava/lang/String;
    array-length v4, v3

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-lt v4, v5, :cond_4

    .line 61
    aget-object v4, v3, v6

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/zrhung/appeye/AppEyeObs;->parseInt(Ljava/lang/String;)I

    move-result v4

    int-to-long v4, v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    iput-wide v4, p0, Landroid/zrhung/appeye/AppEyeObs;->mFlowControl:J

    .line 63
    aget-object v4, v3, v1

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/zrhung/appeye/AppEyeObs;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Landroid/zrhung/appeye/AppEyeObs;->mThreshold:I

    .line 64
    aget-object v2, v3, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v4, "1"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    sput-boolean v2, Landroid/zrhung/appeye/AppEyeObs;->mEnabled:Z

    goto :goto_0

    .line 65
    :cond_4
    array-length v4, v3

    if-lt v4, v6, :cond_5

    .line 66
    aget-object v4, v3, v1

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/zrhung/appeye/AppEyeObs;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Landroid/zrhung/appeye/AppEyeObs;->mThreshold:I

    .line 67
    aget-object v2, v3, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v4, "1"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    sput-boolean v2, Landroid/zrhung/appeye/AppEyeObs;->mEnabled:Z

    goto :goto_0

    .line 68
    :cond_5
    array-length v4, v3

    if-lt v4, v1, :cond_6

    .line 69
    aget-object v2, v3, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v4, "1"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    sput-boolean v2, Landroid/zrhung/appeye/AppEyeObs;->mEnabled:Z

    .line 76
    :goto_0
    sput-boolean v1, Landroid/zrhung/appeye/AppEyeObs;->mConfiged:Z

    .line 78
    sget-boolean v1, Landroid/zrhung/appeye/AppEyeObs;->mEnabled:Z

    return v1

    .line 71
    :cond_6
    const-string v4, "ZrHung.AppEyeObs"

    const-string v5, "config values len is not correct"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    sput-boolean v1, Landroid/zrhung/appeye/AppEyeObs;->mConfiged:Z

    .line 73
    return v2

    .line 54
    .end local v3    # "values":[Ljava/lang/String;
    :cond_7
    :goto_1
    const-string v3, "ZrHung.AppEyeObs"

    const-string v4, "get config return NOT_SUPPORT or NO_CONFIG"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    sput-boolean v1, Landroid/zrhung/appeye/AppEyeObs;->mConfiged:Z

    .line 56
    return v2

    .line 48
    :cond_8
    :goto_2
    const-string v1, "ZrHung.AppEyeObs"

    const-string v3, "Failed to get config from zrhung"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    return v2
.end method

.method private parseInt(Ljava/lang/String;)I
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    .line 83
    const/4 v0, -0x1

    .line 85
    .local v0, "value":I
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 88
    goto :goto_0

    .line 86
    :catch_0
    move-exception v1

    .line 87
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v2, "ZrHung.AppEyeObs"

    const-string v3, "parseInt NumberFormatException"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :goto_0
    return v0
.end method


# virtual methods
.method public sendEvent(Landroid/zrhung/ZrHungData;)Z
    .locals 8
    .param p1, "args"    # Landroid/zrhung/ZrHungData;

    .line 95
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 96
    .local v0, "curTime":J
    iget-wide v2, p0, Landroid/zrhung/appeye/AppEyeObs;->mOldTime:J

    sub-long v2, v0, v2

    iget-wide v4, p0, Landroid/zrhung/appeye/AppEyeObs;->mFlowControl:J

    cmp-long v2, v2, v4

    const/4 v3, 0x0

    if-gez v2, :cond_0

    .line 97
    return v3

    .line 99
    :cond_0
    iput-wide v0, p0, Landroid/zrhung/appeye/AppEyeObs;->mOldTime:J

    .line 101
    if-eqz p1, :cond_4

    const-string v2, "packageName"

    invoke-virtual {p1, v2}, Landroid/zrhung/ZrHungData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string v2, "count"

    const/4 v4, -0x1

    invoke-virtual {p1, v2, v4}, Landroid/zrhung/ZrHungData;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_1

    goto :goto_0

    .line 105
    :cond_1
    invoke-direct {p0}, Landroid/zrhung/appeye/AppEyeObs;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 106
    return v3

    .line 109
    :cond_2
    const-string v2, "count"

    invoke-virtual {p1, v2, v4}, Landroid/zrhung/ZrHungData;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 110
    .local v2, "count":I
    sget v4, Landroid/zrhung/appeye/AppEyeObs;->mThreshold:I

    if-ge v2, v4, :cond_3

    .line 111
    return v3

    .line 114
    :cond_3
    const-string v3, "packageName"

    invoke-virtual {p1, v3}, Landroid/zrhung/ZrHungData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 115
    .local v3, "packageName":Ljava/lang/String;
    const/16 v4, 0x115

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AppEyeObs:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", count="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v4, p1, v5, v6}, Landroid/zrhung/appeye/AppEyeObs;->sendAppEyeEvent(SLandroid/zrhung/ZrHungData;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    return v4

    .line 102
    .end local v2    # "count":I
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_4
    :goto_0
    return v3
.end method
