.class public final Landroid/zrhung/appeye/AppEyeCLA;
.super Landroid/zrhung/ZrHungImpl;
.source "AppEyeCLA.java"


# static fields
.field private static final KEYWORD:Ljava/lang/String; = "CLA"

.field private static final TAG:Ljava/lang/String; = "ZrHung.AppEyeCLA"

.field private static mSingleton:Landroid/zrhung/appeye/AppEyeCLA;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "wpName"    # Ljava/lang/String;

    .line 26
    invoke-direct {p0, p1}, Landroid/zrhung/ZrHungImpl;-><init>(Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public static declared-synchronized getInstance(Ljava/lang/String;)Landroid/zrhung/appeye/AppEyeCLA;
    .locals 2
    .param p0, "wpName"    # Ljava/lang/String;

    const-class v0, Landroid/zrhung/appeye/AppEyeCLA;

    monitor-enter v0

    .line 30
    :try_start_0
    sget-object v1, Landroid/zrhung/appeye/AppEyeCLA;->mSingleton:Landroid/zrhung/appeye/AppEyeCLA;

    if-nez v1, :cond_0

    .line 31
    new-instance v1, Landroid/zrhung/appeye/AppEyeCLA;

    invoke-direct {v1, p0}, Landroid/zrhung/appeye/AppEyeCLA;-><init>(Ljava/lang/String;)V

    sput-object v1, Landroid/zrhung/appeye/AppEyeCLA;->mSingleton:Landroid/zrhung/appeye/AppEyeCLA;

    .line 34
    :cond_0
    sget-object v1, Landroid/zrhung/appeye/AppEyeCLA;->mSingleton:Landroid/zrhung/appeye/AppEyeCLA;
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
    const-string v0, "CLA"

    const/16 v1, 0x10a

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/util/ZRHung;->sendHungEvent(SLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
