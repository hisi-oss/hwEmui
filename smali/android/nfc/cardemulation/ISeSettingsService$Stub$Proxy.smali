.class Landroid/nfc/cardemulation/ISeSettingsService$Stub$Proxy;
.super Ljava/lang/Object;
.source "ISeSettingsService.java"

# interfaces
.implements Landroid/nfc/cardemulation/ISeSettingsService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/cardemulation/ISeSettingsService$Stub;
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

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Landroid/nfc/cardemulation/ISeSettingsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 80
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 83
    iget-object v0, p0, Landroid/nfc/cardemulation/ISeSettingsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 87
    const-string v0, "android.nfc.cardemulation.ISeSettingsService"

    return-object v0
.end method

.method public setSeacActive(Landroid/content/ComponentName;Z)V
    .locals 5
    .param p1, "service"    # Landroid/content/ComponentName;
    .param p2, "foreground"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 92
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 93
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 95
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.nfc.cardemulation.ISeSettingsService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 96
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 97
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    invoke-virtual {p1, v0, v3}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 101
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    iget-object v4, p0, Landroid/nfc/cardemulation/ISeSettingsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-interface {v4, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 105
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 109
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 110
    nop

    .line 111
    return-void

    .line 108
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 109
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method
