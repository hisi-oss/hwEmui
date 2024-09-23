.class Landroid/rms/iaware/AwareAppLiteSysLoadManager$SysLoadSDKCallback;
.super Landroid/os/Binder;
.source "AwareAppLiteSysLoadManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/rms/iaware/AwareAppLiteSysLoadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SysLoadSDKCallback"
.end annotation


# static fields
.field private static final SDK_CALLBACK_DESCRIPTOR:Ljava/lang/String; = "android.rms.iaware.SysLoadSDKCallback"

.field private static final TRANSACTION_initSysLoadPolicy:I = 0x1


# instance fields
.field final synthetic this$0:Landroid/rms/iaware/AwareAppLiteSysLoadManager;


# direct methods
.method public constructor <init>(Landroid/rms/iaware/AwareAppLiteSysLoadManager;)V
    .locals 0

    .line 128
    iput-object p1, p0, Landroid/rms/iaware/AwareAppLiteSysLoadManager$SysLoadSDKCallback;->this$0:Landroid/rms/iaware/AwareAppLiteSysLoadManager;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 129
    const-string p1, "android.rms.iaware.SysLoadSDKCallback"

    invoke-virtual {p0, p0, p1}, Landroid/rms/iaware/AwareAppLiteSysLoadManager$SysLoadSDKCallback;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 130
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 158
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 134
    const/4 v0, 0x1

    if-lt p1, v0, :cond_2

    const v1, 0xffffff

    if-gt p1, v1, :cond_2

    .line 135
    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    .line 150
    return v1

    .line 138
    :cond_0
    :try_start_0
    const-string v2, "android.rms.iaware.SysLoadSDKCallback"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    nop

    .line 143
    iget-object v2, p0, Landroid/rms/iaware/AwareAppLiteSysLoadManager$SysLoadSDKCallback;->this$0:Landroid/rms/iaware/AwareAppLiteSysLoadManager;

    invoke-static {v2}, Landroid/rms/iaware/AwareAppLiteSysLoadManager;->access$000(Landroid/rms/iaware/AwareAppLiteSysLoadManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v0, :cond_1

    move v1, v0

    nop

    :cond_1
    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 144
    iget-object v1, p0, Landroid/rms/iaware/AwareAppLiteSysLoadManager$SysLoadSDKCallback;->this$0:Landroid/rms/iaware/AwareAppLiteSysLoadManager;

    invoke-static {v1}, Landroid/rms/iaware/AwareAppLiteSysLoadManager;->access$100(Landroid/rms/iaware/AwareAppLiteSysLoadManager;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 145
    iget-object v1, p0, Landroid/rms/iaware/AwareAppLiteSysLoadManager$SysLoadSDKCallback;->this$0:Landroid/rms/iaware/AwareAppLiteSysLoadManager;

    invoke-static {v1}, Landroid/rms/iaware/AwareAppLiteSysLoadManager;->access$200(Landroid/rms/iaware/AwareAppLiteSysLoadManager;)V

    .line 146
    iget-object v1, p0, Landroid/rms/iaware/AwareAppLiteSysLoadManager$SysLoadSDKCallback;->this$0:Landroid/rms/iaware/AwareAppLiteSysLoadManager;

    invoke-static {v1}, Landroid/rms/iaware/AwareAppLiteSysLoadManager;->access$000(Landroid/rms/iaware/AwareAppLiteSysLoadManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-static {v1}, Landroid/app/ApplicationPackageManager;->setUseCache(Z)V

    .line 147
    iget-object v1, p0, Landroid/rms/iaware/AwareAppLiteSysLoadManager$SysLoadSDKCallback;->this$0:Landroid/rms/iaware/AwareAppLiteSysLoadManager;

    invoke-static {v1}, Landroid/rms/iaware/AwareAppLiteSysLoadManager;->access$300(Landroid/rms/iaware/AwareAppLiteSysLoadManager;)V

    .line 148
    return v0

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v2, "AwareAppLiteSysLoadManager"

    const-string v3, "enforceInterface SDK_CALLBACK_DESCRIPTOR failed"

    invoke-static {v2, v3}, Landroid/rms/iaware/AwareLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    return v1

    .line 153
    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0
.end method
