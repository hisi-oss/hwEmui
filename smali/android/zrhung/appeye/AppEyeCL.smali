.class public final Landroid/zrhung/appeye/AppEyeCL;
.super Landroid/zrhung/ZrHungImpl;
.source "AppEyeCL.java"


# static fields
.field private static final KEYWORD:Ljava/lang/String; = "CL"

.field private static final TAG:Ljava/lang/String; = "ZrHung.AppEyeCL"

.field private static mSingleton:Landroid/zrhung/appeye/AppEyeCL;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "wpName"    # Ljava/lang/String;

    .line 26
    invoke-direct {p0, p1}, Landroid/zrhung/ZrHungImpl;-><init>(Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public static declared-synchronized getInstance(Ljava/lang/String;)Landroid/zrhung/appeye/AppEyeCL;
    .locals 2
    .param p0, "wpName"    # Ljava/lang/String;

    const-class v0, Landroid/zrhung/appeye/AppEyeCL;

    monitor-enter v0

    .line 30
    :try_start_0
    sget-object v1, Landroid/zrhung/appeye/AppEyeCL;->mSingleton:Landroid/zrhung/appeye/AppEyeCL;

    if-nez v1, :cond_0

    .line 31
    new-instance v1, Landroid/zrhung/appeye/AppEyeCL;

    invoke-direct {v1, p0}, Landroid/zrhung/appeye/AppEyeCL;-><init>(Ljava/lang/String;)V

    sput-object v1, Landroid/zrhung/appeye/AppEyeCL;->mSingleton:Landroid/zrhung/appeye/AppEyeCL;

    .line 34
    :cond_0
    sget-object v1, Landroid/zrhung/appeye/AppEyeCL;->mSingleton:Landroid/zrhung/appeye/AppEyeCL;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 29
    .end local p0    # "wpName":Ljava/lang/String;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public sendEvent(Landroid/zrhung/ZrHungData;)Z
    .locals 3
    .param p1, "args"    # Landroid/zrhung/ZrHungData;

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CL:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "packageName"

    invoke-virtual {p1, v1}, Landroid/zrhung/ZrHungData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x109

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v2, v0}, Landroid/zrhung/appeye/AppEyeCL;->sendAppEyeEvent(SLandroid/zrhung/ZrHungData;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
