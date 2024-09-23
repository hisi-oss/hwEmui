.class public final Landroid/zrhung/appeye/AppEyeXcollie;
.super Landroid/zrhung/ZrHungImpl;
.source "AppEyeXcollie.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ZrHung.AppEyeXcollie"

.field private static mSingleton:Landroid/zrhung/appeye/AppEyeXcollie;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "wpName"    # Ljava/lang/String;

    .line 27
    invoke-direct {p0, p1}, Landroid/zrhung/ZrHungImpl;-><init>(Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public static declared-synchronized getInstance(Ljava/lang/String;)Landroid/zrhung/appeye/AppEyeXcollie;
    .locals 2
    .param p0, "wpName"    # Ljava/lang/String;

    const-class v0, Landroid/zrhung/appeye/AppEyeXcollie;

    monitor-enter v0

    .line 31
    :try_start_0
    sget-object v1, Landroid/zrhung/appeye/AppEyeXcollie;->mSingleton:Landroid/zrhung/appeye/AppEyeXcollie;

    if-nez v1, :cond_0

    .line 32
    new-instance v1, Landroid/zrhung/appeye/AppEyeXcollie;

    invoke-direct {v1, p0}, Landroid/zrhung/appeye/AppEyeXcollie;-><init>(Ljava/lang/String;)V

    sput-object v1, Landroid/zrhung/appeye/AppEyeXcollie;->mSingleton:Landroid/zrhung/appeye/AppEyeXcollie;

    .line 35
    :cond_0
    sget-object v1, Landroid/zrhung/appeye/AppEyeXcollie;->mSingleton:Landroid/zrhung/appeye/AppEyeXcollie;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 30
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

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "p="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "pid"

    invoke-virtual {p1, v1}, Landroid/zrhung/ZrHungData;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "stackTrace"

    invoke-virtual {p1, v1}, Landroid/zrhung/ZrHungData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x401

    invoke-static {v2, v0, v1}, Landroid/util/ZRHung;->sendHungEvent(SLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
