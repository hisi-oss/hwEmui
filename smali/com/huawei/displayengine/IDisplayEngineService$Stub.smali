.class public abstract Lcom/huawei/displayengine/IDisplayEngineService$Stub;
.super Landroid/os/Binder;
.source "IDisplayEngineService.java"

# interfaces
.implements Lcom/huawei/displayengine/IDisplayEngineService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/displayengine/IDisplayEngineService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/displayengine/IDisplayEngineService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.huawei.displayengine.IDisplayEngineService"

.field static final TRANSACTION_getEffect:I = 0x4

.field static final TRANSACTION_getSupported:I = 0x1

.field static final TRANSACTION_setData:I = 0x3

.field static final TRANSACTION_setEffect:I = 0x5

.field static final TRANSACTION_setScene:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.huawei.displayengine.IDisplayEngineService"

    invoke-virtual {p0, p0, v0}, Lcom/huawei/displayengine/IDisplayEngineService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/huawei/displayengine/IDisplayEngineService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    return-object v0

    .line 26
    :cond_0
    const-string v0, "com.huawei.displayengine.IDisplayEngineService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/huawei/displayengine/IDisplayEngineService;

    if-eqz v1, :cond_1

    .line 28
    move-object v1, v0

    check-cast v1, Lcom/huawei/displayengine/IDisplayEngineService;

    return-object v1

    .line 30
    :cond_1
    new-instance v1, Lcom/huawei/displayengine/IDisplayEngineService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/huawei/displayengine/IDisplayEngineService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
    const-string v0, "com.huawei.displayengine.IDisplayEngineService"

    .line 39
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 123
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 104
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 108
    .local v3, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 110
    .local v4, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    .line 111
    sget-object v1, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PersistableBundle;

    .local v1, "_arg2":Landroid/os/PersistableBundle;
    goto :goto_0

    .line 114
    .end local v1    # "_arg2":Landroid/os/PersistableBundle;
    :cond_0
    nop

    .line 116
    .restart local v1    # "_arg2":Landroid/os/PersistableBundle;
    :goto_0
    invoke-virtual {p0, v3, v4, v1}, Lcom/huawei/displayengine/IDisplayEngineService$Stub;->setEffect(IILandroid/os/PersistableBundle;)I

    move-result v5

    .line 117
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    return v2

    .line 87
    .end local v1    # "_arg2":Landroid/os/PersistableBundle;
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v5    # "_result":I
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 91
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 93
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 95
    .local v4, "_arg2":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 96
    .local v5, "_arg3":I
    invoke-virtual {p0, v1, v3, v4, v5}, Lcom/huawei/displayengine/IDisplayEngineService$Stub;->getEffect(II[BI)I

    move-result v6

    .line 97
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 100
    return v2

    .line 70
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":[B
    .end local v5    # "_arg3":I
    .end local v6    # "_result":I
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 74
    .local v3, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    .line 75
    sget-object v1, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PersistableBundle;

    .local v1, "_arg1":Landroid/os/PersistableBundle;
    goto :goto_1

    .line 78
    .end local v1    # "_arg1":Landroid/os/PersistableBundle;
    :cond_1
    nop

    .line 80
    .restart local v1    # "_arg1":Landroid/os/PersistableBundle;
    :goto_1
    invoke-virtual {p0, v3, v1}, Lcom/huawei/displayengine/IDisplayEngineService$Stub;->setData(ILandroid/os/PersistableBundle;)I

    move-result v4

    .line 81
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    return v2

    .line 58
    .end local v1    # "_arg1":Landroid/os/PersistableBundle;
    .end local v3    # "_arg0":I
    .end local v4    # "_result":I
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 62
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 63
    .local v3, "_arg1":I
    invoke-virtual {p0, v1, v3}, Lcom/huawei/displayengine/IDisplayEngineService$Stub;->setScene(II)I

    move-result v4

    .line 64
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    return v2

    .line 48
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":I
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 51
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/huawei/displayengine/IDisplayEngineService$Stub;->getSupported(I)I

    move-result v3

    .line 52
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    return v2

    .line 43
    .end local v1    # "_arg0":I
    .end local v3    # "_result":I
    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
