.class public final Landroid/zrhung/appeye/AppBootFail;
.super Landroid/zrhung/ZrHungImpl;
.source "AppBootFail.java"


# static fields
.field private static final KEYWORD:Ljava/lang/String; = "AppBootFail:"

.field private static final TAG:Ljava/lang/String; = "ZrHung.AppBootFail"

.field private static mAppBootFail:Landroid/zrhung/appeye/AppBootFail;

.field private static mConfiged:Z

.field private static mEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const/4 v0, 0x0

    sput-object v0, Landroid/zrhung/appeye/AppBootFail;->mAppBootFail:Landroid/zrhung/appeye/AppBootFail;

    .line 25
    const/4 v0, 0x0

    sput-boolean v0, Landroid/zrhung/appeye/AppBootFail;->mEnabled:Z

    .line 26
    sput-boolean v0, Landroid/zrhung/appeye/AppBootFail;->mConfiged:Z

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "wpName"    # Ljava/lang/String;

    .line 29
    invoke-direct {p0, p1}, Landroid/zrhung/ZrHungImpl;-><init>(Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public static getInstance(Ljava/lang/String;)Landroid/zrhung/appeye/AppBootFail;
    .locals 1
    .param p0, "wpName"    # Ljava/lang/String;

    .line 33
    sget-object v0, Landroid/zrhung/appeye/AppBootFail;->mAppBootFail:Landroid/zrhung/appeye/AppBootFail;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Landroid/zrhung/appeye/AppBootFail;

    invoke-direct {v0, p0}, Landroid/zrhung/appeye/AppBootFail;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/zrhung/appeye/AppBootFail;->mAppBootFail:Landroid/zrhung/appeye/AppBootFail;

    .line 36
    :cond_0
    sget-object v0, Landroid/zrhung/appeye/AppBootFail;->mAppBootFail:Landroid/zrhung/appeye/AppBootFail;

    return-object v0
.end method

.method private isEnabled()Z
    .locals 5

    .line 40
    sget-boolean v0, Landroid/zrhung/appeye/AppBootFail;->mConfiged:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 41
    sget-boolean v0, Landroid/zrhung/appeye/AppBootFail;->mEnabled:Z

    return v0

    .line 43
    :cond_0
    const/16 v0, 0x108

    invoke-static {v0}, Landroid/util/ZRHung;->getHungConfig(S)Landroid/util/ZRHung$HungConfig;

    move-result-object v0

    .line 44
    .local v0, "cfg":Landroid/util/ZRHung$HungConfig;
    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v3, v0, Landroid/util/ZRHung$HungConfig;->value:Ljava/lang/String;

    if-nez v3, :cond_1

    goto :goto_0

    .line 49
    :cond_1
    iget-object v3, v0, Landroid/util/ZRHung$HungConfig;->value:Ljava/lang/String;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 50
    .local v3, "values":[Ljava/lang/String;
    aget-object v2, v3, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v4, "1"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    sput-boolean v2, Landroid/zrhung/appeye/AppBootFail;->mEnabled:Z

    .line 51
    sput-boolean v1, Landroid/zrhung/appeye/AppBootFail;->mConfiged:Z

    .line 53
    sget-boolean v1, Landroid/zrhung/appeye/AppBootFail;->mEnabled:Z

    return v1

    .line 45
    .end local v3    # "values":[Ljava/lang/String;
    :cond_2
    :goto_0
    const-string v1, "ZrHung.AppBootFail"

    const-string v3, "Failed to get config from zrhung"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    return v2
.end method


# virtual methods
.method public sendEvent(Landroid/zrhung/ZrHungData;)Z
    .locals 6
    .param p1, "args"    # Landroid/zrhung/ZrHungData;

    .line 58
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    const-string v1, "packageName"

    invoke-virtual {p1, v1}, Landroid/zrhung/ZrHungData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 62
    :cond_0
    const-string v1, "false"

    const-string v2, "ro.feature.dfr.appeye"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 63
    const-string v1, "ZrHung.AppBootFail"

    const-string v2, "Do not sent bootfail event on low-end platform"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    return v0

    .line 67
    :cond_1
    invoke-direct {p0}, Landroid/zrhung/appeye/AppBootFail;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 68
    return v0

    .line 71
    :cond_2
    const-string v1, "packageName"

    invoke-virtual {p1, v1}, Landroid/zrhung/ZrHungData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, "packageName":Ljava/lang/String;
    nop

    .line 74
    .local v0, "ret":Z
    const/16 v2, 0x108

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AppBootFail:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, p1, v3, v4}, Landroid/zrhung/appeye/AppBootFail;->sendAppEyeEvent(SLandroid/zrhung/ZrHungData;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    move v0, v2

    .line 75
    if-nez v0, :cond_3

    .line 76
    const-string v2, "ZrHung.AppBootFail"

    const-string v3, " sendAppFreezeEvent failed!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :cond_3
    goto :goto_0

    .line 78
    :catch_0
    move-exception v2

    .line 79
    .local v2, "ex":Ljava/lang/Exception;
    const-string v3, "ZrHung.AppBootFail"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exception info ex:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_0
    return v0

    .line 59
    .end local v0    # "ret":Z
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_4
    :goto_1
    return v0
.end method
