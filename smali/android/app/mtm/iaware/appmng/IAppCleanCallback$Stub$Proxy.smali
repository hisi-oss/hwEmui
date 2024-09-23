.class Landroid/app/mtm/iaware/appmng/IAppCleanCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IAppCleanCallback.java"

# interfaces
.implements Landroid/app/mtm/iaware/appmng/IAppCleanCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/mtm/iaware/appmng/IAppCleanCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Landroid/app/mtm/iaware/appmng/IAppCleanCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 71
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 74
    iget-object v0, p0, Landroid/app/mtm/iaware/appmng/IAppCleanCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 78
    const-string v0, "android.app.mtm.iaware.appmng.IAppCleanCallback"

    return-object v0
.end method

.method public onCleanFinish(Landroid/app/mtm/iaware/appmng/AppCleanParam;)V
    .locals 4
    .param p1, "result"    # Landroid/app/mtm/iaware/appmng/AppCleanParam;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 82
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 84
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.app.mtm.iaware.appmng.IAppCleanCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 85
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    .line 86
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    invoke-virtual {p1, v0, v1}, Landroid/app/mtm/iaware/appmng/AppCleanParam;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 90
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    :goto_0
    iget-object v1, p0, Landroid/app/mtm/iaware/appmng/IAppCleanCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, v3, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 96
    nop

    .line 97
    return-void

    .line 95
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method
