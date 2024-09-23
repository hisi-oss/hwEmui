.class public abstract Lhuawei/android/security/ISecurityProfileService$Stub;
.super Landroid/os/Binder;
.source "ISecurityProfileService.java"

# interfaces
.implements Lhuawei/android/security/ISecurityProfileService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhuawei/android/security/ISecurityProfileService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhuawei/android/security/ISecurityProfileService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "huawei.android.security.ISecurityProfileService"

.field static final TRANSACTION_addDomainPolicy:I = 0x6

.field static final TRANSACTION_checkAccess:I = 0x5

.field static final TRANSACTION_getInstallerPackageName:I = 0x9

.field static final TRANSACTION_getLabels:I = 0x7

.field static final TRANSACTION_isBlackApp:I = 0x3

.field static final TRANSACTION_isPackageSigned:I = 0x8

.field static final TRANSACTION_requestAccess:I = 0x4

.field static final TRANSACTION_updateBlackApp:I = 0x1

.field static final TRANSACTION_updateMdmCertBlacklist:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "huawei.android.security.ISecurityProfileService"

    invoke-virtual {p0, p0, v0}, Lhuawei/android/security/ISecurityProfileService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lhuawei/android/security/ISecurityProfileService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    return-object v0

    .line 31
    :cond_0
    const-string v0, "huawei.android.security.ISecurityProfileService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lhuawei/android/security/ISecurityProfileService;

    if-eqz v1, :cond_1

    .line 33
    move-object v1, v0

    check-cast v1, Lhuawei/android/security/ISecurityProfileService;

    return-object v1

    .line 35
    :cond_1
    new-instance v1, Lhuawei/android/security/ISecurityProfileService$Stub$Proxy;

    invoke-direct {v1, p0}, Lhuawei/android/security/ISecurityProfileService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 19
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    .line 43
    const-string v11, "huawei.android.security.ISecurityProfileService"

    .line 44
    .local v11, "descriptor":Ljava/lang/String;
    const v0, 0x5f4e5446

    const/4 v12, 0x1

    if-eq v8, v0, :cond_1

    packed-switch v8, :pswitch_data_0

    .line 172
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 162
    :pswitch_0
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v7, v0}, Lhuawei/android/security/ISecurityProfileService$Stub;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 166
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 168
    return v12

    .line 152
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_1
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 155
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v7, v0}, Lhuawei/android/security/ISecurityProfileService$Stub;->isPackageSigned(Ljava/lang/String;)Z

    move-result v1

    .line 156
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    return v12

    .line 135
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_2
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 139
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    sget-object v1, Lhuawei/android/security/securityprofile/ApkDigest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhuawei/android/security/securityprofile/ApkDigest;

    .local v1, "_arg1":Lhuawei/android/security/securityprofile/ApkDigest;
    goto :goto_0

    .line 143
    .end local v1    # "_arg1":Lhuawei/android/security/securityprofile/ApkDigest;
    :cond_0
    const/4 v1, 0x0

    .line 145
    .restart local v1    # "_arg1":Lhuawei/android/security/securityprofile/ApkDigest;
    :goto_0
    invoke-virtual {v7, v0, v1}, Lhuawei/android/security/ISecurityProfileService$Stub;->getLabels(Ljava/lang/String;Lhuawei/android/security/securityprofile/ApkDigest;)Ljava/util/List;

    move-result-object v2

    .line 146
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 148
    return v12

    .line 125
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Lhuawei/android/security/securityprofile/ApkDigest;
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_3
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 128
    .local v0, "_arg0":[B
    invoke-virtual {v7, v0}, Lhuawei/android/security/ISecurityProfileService$Stub;->addDomainPolicy([B)I

    move-result v1

    .line 129
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    return v12

    .line 107
    .end local v0    # "_arg0":[B
    .end local v1    # "_result":I
    :pswitch_4
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 111
    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 113
    .local v13, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 115
    .local v14, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v15

    .line 117
    .local v15, "_arg3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 118
    .local v16, "_arg4":Ljava/lang/String;
    move-object v0, v7

    move-object v1, v6

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lhuawei/android/security/ISecurityProfileService$Stub;->checkAccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    .line 119
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    return v12

    .line 87
    .end local v0    # "_result":Z
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg2":Ljava/lang/String;
    .end local v15    # "_arg3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v16    # "_arg4":Ljava/lang/String;
    :pswitch_5
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 91
    .local v13, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 93
    .local v14, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 95
    .local v15, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v16

    .line 97
    .local v16, "_arg3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 99
    .local v17, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 100
    .local v18, "_arg5":I
    move-object v0, v7

    move-object v1, v13

    move-object v2, v14

    move-object v3, v15

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Lhuawei/android/security/ISecurityProfileService$Stub;->requestAccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;I)Z

    move-result v0

    .line 101
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    return v12

    .line 77
    .end local v0    # "_result":Z
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v14    # "_arg1":Ljava/lang/String;
    .end local v15    # "_arg2":Ljava/lang/String;
    .end local v16    # "_arg3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v17    # "_arg4":Ljava/lang/String;
    .end local v18    # "_arg5":I
    :pswitch_6
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v7, v0}, Lhuawei/android/security/ISecurityProfileService$Stub;->isBlackApp(Ljava/lang/String;)Z

    move-result v1

    .line 81
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    return v12

    .line 65
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_7
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 69
    .local v0, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 70
    .local v1, "_arg1":I
    invoke-virtual {v7, v0, v1}, Lhuawei/android/security/ISecurityProfileService$Stub;->updateMdmCertBlacklist(Ljava/util/List;I)Z

    move-result v2

    .line 71
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    return v12

    .line 53
    .end local v0    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_8
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 56
    .local v0, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v1

    .line 58
    .local v1, "_arg0":Ljava/util/List;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 59
    .local v2, "_arg1":I
    invoke-virtual {v7, v1, v2}, Lhuawei/android/security/ISecurityProfileService$Stub;->updateBlackApp(Ljava/util/List;I)V

    .line 60
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    return v12

    .line 48
    .end local v0    # "cl":Ljava/lang/ClassLoader;
    .end local v1    # "_arg0":Ljava/util/List;
    .end local v2    # "_arg1":I
    :cond_1
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    return v12

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
