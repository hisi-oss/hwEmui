.class public abstract Lcom/huawei/fingerprint/IFidoAuthenticationCallback$Stub;
.super Landroid/os/Binder;
.source "IFidoAuthenticationCallback.java"

# interfaces
.implements Lcom/huawei/fingerprint/IFidoAuthenticationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/fingerprint/IFidoAuthenticationCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/fingerprint/IFidoAuthenticationCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.huawei.fingerprint.IFidoAuthenticationCallback"

.field static final TRANSACTION_onUserVerificationResult:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.huawei.fingerprint.IFidoAuthenticationCallback"

    invoke-virtual {p0, p0, v0}, Lcom/huawei/fingerprint/IFidoAuthenticationCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/huawei/fingerprint/IFidoAuthenticationCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    return-object v0

    .line 26
    :cond_0
    const-string v0, "com.huawei.fingerprint.IFidoAuthenticationCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/huawei/fingerprint/IFidoAuthenticationCallback;

    if-eqz v1, :cond_1

    .line 28
    move-object v1, v0

    check-cast v1, Lcom/huawei/fingerprint/IFidoAuthenticationCallback;

    return-object v1

    .line 30
    :cond_1
    new-instance v1, Lcom/huawei/fingerprint/IFidoAuthenticationCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/huawei/fingerprint/IFidoAuthenticationCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 16
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move/from16 v0, p1

    move-object/from16 v1, p3

    .line 38
    const-string v2, "com.huawei.fingerprint.IFidoAuthenticationCallback"

    .line 39
    .local v2, "descriptor":Ljava/lang/String;
    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    const v4, 0x5f4e5446

    if-eq v0, v4, :cond_0

    .line 64
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    return v3

    .line 43
    :cond_0
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    return v3

    .line 48
    :cond_1
    move-object/from16 v4, p2

    invoke-virtual {v4, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 52
    .local v11, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 54
    .local v12, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v14

    .line 56
    .local v14, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v15

    .line 57
    .local v15, "_arg3":[B
    move-object/from16 v5, p0

    move v6, v11

    move-wide v7, v12

    move-object v9, v14

    move-object v10, v15

    invoke-virtual/range {v5 .. v10}, Lcom/huawei/fingerprint/IFidoAuthenticationCallback$Stub;->onUserVerificationResult(IJ[B[B)I

    move-result v5

    .line 58
    .local v5, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    return v3
.end method
