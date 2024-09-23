.class public abstract Lcom/huawei/displayengine/IDisplayEngineServiceEx$Stub;
.super Landroid/os/Binder;
.source "IDisplayEngineServiceEx.java"

# interfaces
.implements Lcom/huawei/displayengine/IDisplayEngineServiceEx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/displayengine/IDisplayEngineServiceEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/displayengine/IDisplayEngineServiceEx$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.huawei.displayengine.IDisplayEngineServiceEx"

.field static final TRANSACTION_getAllRecords:I = 0x8

.field static final TRANSACTION_getEffect:I = 0x5

.field static final TRANSACTION_getSupported:I = 0x1

.field static final TRANSACTION_sendMessage:I = 0x4

.field static final TRANSACTION_setData:I = 0x3

.field static final TRANSACTION_setEffect:I = 0x6

.field static final TRANSACTION_setScene:I = 0x2

.field static final TRANSACTION_updateLightSensorState:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.huawei.displayengine.IDisplayEngineServiceEx"

    invoke-virtual {p0, p0, v0}, Lcom/huawei/displayengine/IDisplayEngineServiceEx$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/huawei/displayengine/IDisplayEngineServiceEx;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    return-object v0

    .line 26
    :cond_0
    const-string v0, "com.huawei.displayengine.IDisplayEngineServiceEx"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/huawei/displayengine/IDisplayEngineServiceEx;

    if-eqz v1, :cond_1

    .line 28
    move-object v1, v0

    check-cast v1, Lcom/huawei/displayengine/IDisplayEngineServiceEx;

    return-object v1

    .line 30
    :cond_1
    new-instance v1, Lcom/huawei/displayengine/IDisplayEngineServiceEx$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/huawei/displayengine/IDisplayEngineServiceEx$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const-string v0, "com.huawei.displayengine.IDisplayEngineServiceEx"

    .line 39
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_5

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 166
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 149
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 153
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    .line 154
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .local v1, "_arg1":Landroid/os/Bundle;
    goto :goto_0

    .line 157
    .end local v1    # "_arg1":Landroid/os/Bundle;
    :cond_0
    nop

    .line 159
    .restart local v1    # "_arg1":Landroid/os/Bundle;
    :goto_0
    invoke-virtual {p0, v3, v1}, Lcom/huawei/displayengine/IDisplayEngineServiceEx$Stub;->getAllRecords(Ljava/lang/String;Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v4

    .line 160
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 162
    return v2

    .line 140
    .end local v1    # "_arg1":Landroid/os/Bundle;
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 143
    .local v1, "_arg0":Z
    :goto_1
    invoke-virtual {p0, v1}, Lcom/huawei/displayengine/IDisplayEngineServiceEx$Stub;->updateLightSensorState(Z)V

    .line 144
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    return v2

    .line 121
    .end local v1    # "_arg0":Z
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 125
    .local v3, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 127
    .local v4, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2

    .line 128
    sget-object v1, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PersistableBundle;

    .local v1, "_arg2":Landroid/os/PersistableBundle;
    goto :goto_2

    .line 131
    .end local v1    # "_arg2":Landroid/os/PersistableBundle;
    :cond_2
    nop

    .line 133
    .restart local v1    # "_arg2":Landroid/os/PersistableBundle;
    :goto_2
    invoke-virtual {p0, v3, v4, v1}, Lcom/huawei/displayengine/IDisplayEngineServiceEx$Stub;->setEffect(IILandroid/os/PersistableBundle;)I

    move-result v5

    .line 134
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    return v2

    .line 104
    .end local v1    # "_arg2":Landroid/os/PersistableBundle;
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v5    # "_result":I
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 108
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 110
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 112
    .local v4, "_arg2":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 113
    .local v5, "_arg3":I
    invoke-virtual {p0, v1, v3, v4, v5}, Lcom/huawei/displayengine/IDisplayEngineServiceEx$Stub;->getEffect(II[BI)I

    move-result v6

    .line 114
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 117
    return v2

    .line 87
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":[B
    .end local v5    # "_arg3":I
    .end local v6    # "_result":I
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 91
    .local v3, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3

    .line 92
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .local v1, "_arg1":Landroid/os/Bundle;
    goto :goto_3

    .line 95
    .end local v1    # "_arg1":Landroid/os/Bundle;
    :cond_3
    nop

    .line 97
    .restart local v1    # "_arg1":Landroid/os/Bundle;
    :goto_3
    invoke-virtual {p0, v3, v1}, Lcom/huawei/displayengine/IDisplayEngineServiceEx$Stub;->sendMessage(ILandroid/os/Bundle;)I

    move-result v4

    .line 98
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    return v2

    .line 70
    .end local v1    # "_arg1":Landroid/os/Bundle;
    .end local v3    # "_arg0":I
    .end local v4    # "_result":I
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 74
    .restart local v3    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4

    .line 75
    sget-object v1, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PersistableBundle;

    .local v1, "_arg1":Landroid/os/PersistableBundle;
    goto :goto_4

    .line 78
    .end local v1    # "_arg1":Landroid/os/PersistableBundle;
    :cond_4
    nop

    .line 80
    .restart local v1    # "_arg1":Landroid/os/PersistableBundle;
    :goto_4
    invoke-virtual {p0, v3, v1}, Lcom/huawei/displayengine/IDisplayEngineServiceEx$Stub;->setData(ILandroid/os/PersistableBundle;)I

    move-result v4

    .line 81
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    return v2

    .line 58
    .end local v1    # "_arg1":Landroid/os/PersistableBundle;
    .end local v3    # "_arg0":I
    .end local v4    # "_result":I
    :pswitch_6
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
    invoke-virtual {p0, v1, v3}, Lcom/huawei/displayengine/IDisplayEngineServiceEx$Stub;->setScene(II)I

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
    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 51
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/huawei/displayengine/IDisplayEngineServiceEx$Stub;->getSupported(I)I

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
    :cond_5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
