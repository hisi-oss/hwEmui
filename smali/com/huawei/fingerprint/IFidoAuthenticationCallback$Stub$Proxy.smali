.class Lcom/huawei/fingerprint/IFidoAuthenticationCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IFidoAuthenticationCallback.java"

# interfaces
.implements Lcom/huawei/fingerprint/IFidoAuthenticationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/fingerprint/IFidoAuthenticationCallback$Stub;
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

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/huawei/fingerprint/IFidoAuthenticationCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 74
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/huawei/fingerprint/IFidoAuthenticationCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 81
    const-string v0, "com.huawei.fingerprint.IFidoAuthenticationCallback"

    return-object v0
.end method

.method public onUserVerificationResult(IJ[B[B)I
    .locals 5
    .param p1, "result"    # I
    .param p2, "opId"    # J
    .param p4, "userid"    # [B
    .param p5, "encapsulatedResult"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 85
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 86
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 89
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.huawei.fingerprint.IFidoAuthenticationCallback"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 92
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 93
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 94
    iget-object v2, p0, Lcom/huawei/fingerprint/IFidoAuthenticationCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 95
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 96
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 100
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 101
    nop

    .line 100
    nop

    .line 102
    return v2

    .line 99
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 100
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method
