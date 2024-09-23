.class public abstract Lcom/huawei/ncdft/INcDft$Stub;
.super Landroid/os/Binder;
.source "INcDft.java"

# interfaces
.implements Lcom/huawei/ncdft/INcDft;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ncdft/INcDft;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/ncdft/INcDft$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.huawei.ncdft.INcDft"

.field static final TRANSACTION_getNcDftParam:I = 0x3

.field static final TRANSACTION_getUserType:I = 0xa

.field static final TRANSACTION_notifyNcDftBundleEvent:I = 0x2

.field static final TRANSACTION_notifyNcDftEvent:I = 0x1

.field static final TRANSACTION_reportGnssApkName:I = 0x6

.field static final TRANSACTION_reportGnssLocation:I = 0x8

.field static final TRANSACTION_reportGnssSvStatus:I = 0x9

.field static final TRANSACTION_reportNetworkInfo:I = 0x7

.field static final TRANSACTION_reportNlpLocation:I = 0x5

.field static final TRANSACTION_triggerUpload:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 17
    const-string v0, "com.huawei.ncdft.INcDft"

    invoke-virtual {p0, p0, v0}, Lcom/huawei/ncdft/INcDft$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/huawei/ncdft/INcDft;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 25
    if-nez p0, :cond_0

    .line 26
    const/4 v0, 0x0

    return-object v0

    .line 28
    :cond_0
    const-string v0, "com.huawei.ncdft.INcDft"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 29
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/huawei/ncdft/INcDft;

    if-eqz v1, :cond_1

    .line 30
    move-object v1, v0

    check-cast v1, Lcom/huawei/ncdft/INcDft;

    return-object v1

    .line 32
    :cond_1
    new-instance v1, Lcom/huawei/ncdft/INcDft$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/huawei/ncdft/INcDft$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 36
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 21
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v8, p0

    move/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    .line 40
    const-string v12, "com.huawei.ncdft.INcDft"

    .line 41
    .local v12, "descriptor":Ljava/lang/String;
    const v0, 0x5f4e5446

    const/4 v13, 0x1

    if-eq v9, v0, :cond_5

    const/4 v0, 0x0

    packed-switch v9, :pswitch_data_0

    .line 223
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 215
    :pswitch_0
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual/range {p0 .. p0}, Lcom/huawei/ncdft/INcDft$Stub;->getUserType()I

    move-result v0

    .line 217
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 219
    return v13

    .line 193
    .end local v0    # "_result":I
    :pswitch_1
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 195
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 197
    .local v14, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 199
    .local v15, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 201
    .local v16, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v17

    .line 203
    .local v17, "_arg3":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v18

    .line 205
    .local v18, "_arg4":[F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v19

    .line 207
    .local v19, "_arg5":[F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v20

    .line 208
    .local v20, "_arg6":[F
    move-object v0, v8

    move v1, v14

    move v2, v15

    move/from16 v3, v16

    move-object/from16 v4, v17

    move-object/from16 v5, v18

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Lcom/huawei/ncdft/INcDft$Stub;->reportGnssSvStatus(III[I[F[F[F)I

    move-result v0

    .line 209
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 211
    return v13

    .line 170
    .end local v0    # "_result":I
    .end local v14    # "_arg0":I
    .end local v15    # "_arg1":I
    .end local v16    # "_arg2":I
    .end local v17    # "_arg3":[I
    .end local v18    # "_arg4":[F
    .end local v19    # "_arg5":[F
    .end local v20    # "_arg6":[F
    :pswitch_2
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 174
    .local v7, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 176
    .local v14, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 177
    sget-object v0, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    .line 180
    .local v3, "_arg2":Landroid/location/Location;
    :goto_0
    move-object v3, v0

    goto :goto_1

    .end local v3    # "_arg2":Landroid/location/Location;
    :cond_0
    goto :goto_0

    .line 183
    .restart local v3    # "_arg2":Landroid/location/Location;
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v15

    .line 185
    .local v15, "_arg3":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 186
    .local v17, "_arg4":Ljava/lang/String;
    move-object v0, v8

    move v1, v7

    move v2, v14

    move-wide v4, v15

    move-object/from16 v6, v17

    invoke-virtual/range {v0 .. v6}, Lcom/huawei/ncdft/INcDft$Stub;->reportGnssLocation(IILandroid/location/Location;JLjava/lang/String;)I

    move-result v0

    .line 187
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 188
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 189
    return v13

    .line 151
    .end local v0    # "_result":I
    .end local v3    # "_arg2":Landroid/location/Location;
    .end local v7    # "_arg0":I
    .end local v14    # "_arg1":I
    .end local v15    # "_arg3":J
    .end local v17    # "_arg4":Ljava/lang/String;
    :pswitch_3
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 155
    .local v1, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 157
    .local v2, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 158
    sget-object v0, Landroid/net/NetworkInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .local v0, "_arg2":Landroid/net/NetworkInfo;
    goto :goto_2

    .line 161
    .end local v0    # "_arg2":Landroid/net/NetworkInfo;
    :cond_1
    nop

    .line 163
    .restart local v0    # "_arg2":Landroid/net/NetworkInfo;
    :goto_2
    invoke-virtual {v8, v1, v2, v0}, Lcom/huawei/ncdft/INcDft$Stub;->reportNetworkInfo(IILandroid/net/NetworkInfo;)I

    move-result v3

    .line 164
    .local v3, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    return v13

    .line 130
    .end local v0    # "_arg2":Landroid/net/NetworkInfo;
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_result":I
    :pswitch_4
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 134
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 136
    .restart local v2    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    .line 137
    sget-object v0, Landroid/location/LocationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationRequest;

    .local v0, "_arg2":Landroid/location/LocationRequest;
    goto :goto_3

    .line 140
    .end local v0    # "_arg2":Landroid/location/LocationRequest;
    :cond_2
    nop

    .line 143
    .restart local v0    # "_arg2":Landroid/location/LocationRequest;
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 144
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual {v8, v1, v2, v0, v3}, Lcom/huawei/ncdft/INcDft$Stub;->reportGnssApkName(IILandroid/location/LocationRequest;Ljava/lang/String;)I

    move-result v4

    .line 145
    .local v4, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    invoke-virtual {v11, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    return v13

    .line 109
    .end local v0    # "_arg2":Landroid/location/LocationRequest;
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg3":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_5
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 113
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 115
    .restart local v2    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 117
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3

    .line 118
    sget-object v0, Lcom/android/internal/location/ProviderRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/location/ProviderRequest;

    .local v0, "_arg3":Lcom/android/internal/location/ProviderRequest;
    goto :goto_4

    .line 121
    .end local v0    # "_arg3":Lcom/android/internal/location/ProviderRequest;
    :cond_3
    nop

    .line 123
    .restart local v0    # "_arg3":Lcom/android/internal/location/ProviderRequest;
    :goto_4
    invoke-virtual {v8, v1, v2, v3, v0}, Lcom/huawei/ncdft/INcDft$Stub;->reportNlpLocation(IILjava/lang/String;Lcom/android/internal/location/ProviderRequest;)I

    move-result v4

    .line 124
    .restart local v4    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    invoke-virtual {v11, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    return v13

    .line 95
    .end local v0    # "_arg3":Lcom/android/internal/location/ProviderRequest;
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_6
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 99
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 101
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 102
    .local v2, "_arg2":I
    invoke-virtual {v8, v0, v1, v2}, Lcom/huawei/ncdft/INcDft$Stub;->triggerUpload(III)Z

    move-result v3

    .line 103
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    return v13

    .line 83
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Z
    :pswitch_7
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 87
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 88
    .local v1, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v8, v0, v1}, Lcom/huawei/ncdft/INcDft$Stub;->getNcDftParam(ILjava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 89
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    return v13

    .line 64
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_8
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 68
    .local v1, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 70
    .local v2, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4

    .line 71
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .local v0, "_arg2":Landroid/os/Bundle;
    goto :goto_5

    .line 74
    .end local v0    # "_arg2":Landroid/os/Bundle;
    :cond_4
    nop

    .line 76
    .restart local v0    # "_arg2":Landroid/os/Bundle;
    :goto_5
    invoke-virtual {v8, v1, v2, v0}, Lcom/huawei/ncdft/INcDft$Stub;->notifyNcDftBundleEvent(IILandroid/os/Bundle;)I

    move-result v3

    .line 77
    .local v3, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    return v13

    .line 50
    .end local v0    # "_arg2":Landroid/os/Bundle;
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_result":I
    :pswitch_9
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 54
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 56
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 57
    .local v2, "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v8, v0, v1, v2}, Lcom/huawei/ncdft/INcDft$Stub;->notifyNcDftEvent(IILjava/util/List;)I

    move-result v3

    .line 58
    .restart local v3    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    return v13

    .line 45
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "_result":I
    :cond_5
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    return v13

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
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
