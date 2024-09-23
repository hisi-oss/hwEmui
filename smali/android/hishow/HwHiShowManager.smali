.class public Landroid/hishow/HwHiShowManager;
.super Ljava/lang/Object;
.source "HwHiShowManager.java"


# static fields
.field private static final SVC_NAME:Ljava/lang/String; = "HwHiShowManagerService"

.field private static final TAG:Ljava/lang/String; = "HwHiShowManager"

.field private static final iHwHiShowManagerSingleton:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Landroid/hishow/IHwHiShowManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Landroid/hishow/HwHiShowManager$1;

    invoke-direct {v0}, Landroid/hishow/HwHiShowManager$1;-><init>()V

    sput-object v0, Landroid/hishow/HwHiShowManager;->iHwHiShowManagerSingleton:Landroid/util/Singleton;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getService()Landroid/hishow/IHwHiShowManager;
    .locals 2

    .line 14
    const-string v0, "HwHiShowManager"

    const-string v1, "GS:enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    sget-object v0, Landroid/hishow/HwHiShowManager;->iHwHiShowManagerSingleton:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hishow/IHwHiShowManager;

    return-object v0
.end method
