.class public Lhuawei/android/hwanimation/HwAnimationManagerImpl;
.super Ljava/lang/Object;
.source "HwAnimationManagerImpl.java"

# interfaces
.implements Landroid/common/HwAnimationManager;


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "AnimationUtils"

.field private static mHwAnimationManager:Landroid/common/HwAnimationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const/4 v0, 0x0

    sput-object v0, Lhuawei/android/hwanimation/HwAnimationManagerImpl;->mHwAnimationManager:Landroid/common/HwAnimationManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getDefault()Landroid/common/HwAnimationManager;
    .locals 2

    const-class v0, Lhuawei/android/hwanimation/HwAnimationManagerImpl;

    monitor-enter v0

    .line 36
    :try_start_0
    sget-object v1, Lhuawei/android/hwanimation/HwAnimationManagerImpl;->mHwAnimationManager:Landroid/common/HwAnimationManager;

    if-nez v1, :cond_0

    .line 37
    new-instance v1, Lhuawei/android/hwanimation/HwAnimationManagerImpl;

    invoke-direct {v1}, Lhuawei/android/hwanimation/HwAnimationManagerImpl;-><init>()V

    sput-object v1, Lhuawei/android/hwanimation/HwAnimationManagerImpl;->mHwAnimationManager:Landroid/common/HwAnimationManager;

    .line 39
    :cond_0
    sget-object v1, Lhuawei/android/hwanimation/HwAnimationManagerImpl;->mHwAnimationManager:Landroid/common/HwAnimationManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 35
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public loadEnterAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "delta"    # I

    .line 56
    const/4 v0, 0x0

    .line 57
    .local v0, "hwextContext":Landroid/content/Context;
    const/4 v1, 0x0

    .line 58
    .local v1, "rotateEnterAnimationId":I
    const/4 v2, 0x0

    .line 61
    .local v2, "rotateEnterAnimation":Landroid/view/animation/Animation;
    :try_start_0
    const-string v3, "androidhwext"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 67
    goto :goto_0

    .line 62
    :catch_0
    move-exception v3

    .line 69
    :goto_0
    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "screen_rotate_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "_enter"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "anim"

    const-string v6, "androidhwext"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 72
    if-eqz v1, :cond_0

    .line 73
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    .line 77
    :cond_0
    return-object v2
.end method

.method public loadExitAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "delta"    # I

    .line 82
    const/4 v0, 0x0

    .line 83
    .local v0, "hwextContext":Landroid/content/Context;
    const/4 v1, 0x0

    .line 84
    .local v1, "rotateExitAnimationId":I
    const/4 v2, 0x0

    .line 87
    .local v2, "rotateExitAnimation":Landroid/view/animation/Animation;
    :try_start_0
    const-string v3, "androidhwext"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 93
    goto :goto_0

    .line 88
    :catch_0
    move-exception v3

    .line 95
    :goto_0
    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "screen_rotate_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "_exit"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "anim"

    const-string v6, "androidhwext"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 98
    if-eqz v1, :cond_0

    .line 99
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    .line 103
    :cond_0
    return-object v2
.end method
