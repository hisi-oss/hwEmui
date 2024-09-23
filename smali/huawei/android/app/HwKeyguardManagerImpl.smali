.class public Lhuawei/android/app/HwKeyguardManagerImpl;
.super Ljava/lang/Object;
.source "HwKeyguardManagerImpl.java"

# interfaces
.implements Landroid/app/HwKeyguardManager;


# static fields
.field private static final CODE_IS_LOCKSCREEND_DISABLED:I = 0x3e8

.field private static mInstance:Landroid/app/HwKeyguardManager;


# instance fields
.field private mWM:Landroid/view/IWindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Lhuawei/android/app/HwKeyguardManagerImpl;

    invoke-direct {v0}, Lhuawei/android/app/HwKeyguardManagerImpl;-><init>()V

    sput-object v0, Lhuawei/android/app/HwKeyguardManagerImpl;->mInstance:Landroid/app/HwKeyguardManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lhuawei/android/app/HwKeyguardManagerImpl;->mWM:Landroid/view/IWindowManager;

    .line 27
    return-void
.end method

.method public static getDefault()Landroid/app/HwKeyguardManager;
    .locals 1

    .line 21
    sget-object v0, Lhuawei/android/app/HwKeyguardManagerImpl;->mInstance:Landroid/app/HwKeyguardManager;

    return-object v0
.end method


# virtual methods
.method public isLockScreenDisabled(Landroid/content/Context;)Z
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .line 36
    const/4 v0, 0x0

    move v1, v0

    .line 38
    .local v1, "result":Z
    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 39
    .local v2, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 40
    .local v3, "reply":Landroid/os/Parcel;
    iget-object v4, p0, Lhuawei/android/app/HwKeyguardManagerImpl;->mWM:Landroid/view/IWindowManager;

    if-eqz v4, :cond_1

    .line 41
    iget-object v4, p0, Lhuawei/android/app/HwKeyguardManagerImpl;->mWM:Landroid/view/IWindowManager;

    invoke-interface {v4}, Landroid/view/IWindowManager;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 42
    .local v4, "windowManagerBinder":Landroid/os/IBinder;
    if-eqz v4, :cond_1

    .line 43
    const-string v5, "android.view.IWindowManager"

    invoke-virtual {v2, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 44
    const/16 v5, 0x3e9

    invoke-interface {v4, v5, v2, v3, v0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 45
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    .line 46
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    goto :goto_0

    :cond_0
    move v6, v0

    :goto_0
    move v1, v6

    .line 47
    const-string v5, "HwKeyguardManagerImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isLockScreenDisabled HwKeyguardManagerImpl result = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .end local v4    # "windowManagerBinder":Landroid/os/IBinder;
    :cond_1
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 52
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .end local v2    # "data":Landroid/os/Parcel;
    .end local v3    # "reply":Landroid/os/Parcel;
    nop

    .line 57
    return v1

    .line 54
    :catch_0
    move-exception v2

    .line 55
    .local v2, "ex":Landroid/os/RemoteException;
    return v0
.end method
