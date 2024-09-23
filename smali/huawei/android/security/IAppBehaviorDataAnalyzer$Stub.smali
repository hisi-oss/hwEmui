.class public abstract Lhuawei/android/security/IAppBehaviorDataAnalyzer$Stub;
.super Landroid/os/Binder;
.source "IAppBehaviorDataAnalyzer.java"

# interfaces
.implements Lhuawei/android/security/IAppBehaviorDataAnalyzer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhuawei/android/security/IAppBehaviorDataAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhuawei/android/security/IAppBehaviorDataAnalyzer$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "huawei.android.security.IAppBehaviorDataAnalyzer"

.field static final TRANSACTION_getInspectAppMap:I = 0x1

.field static final TRANSACTION_onAppEvent:I = 0x3

.field static final TRANSACTION_onBehaviorEvent:I = 0x2

.field static final TRANSACTION_regObservInspectUid:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "huawei.android.security.IAppBehaviorDataAnalyzer"

    invoke-virtual {p0, p0, v0}, Lhuawei/android/security/IAppBehaviorDataAnalyzer$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lhuawei/android/security/IAppBehaviorDataAnalyzer;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    return-object v0

    .line 29
    :cond_0
    const-string v0, "huawei.android.security.IAppBehaviorDataAnalyzer"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lhuawei/android/security/IAppBehaviorDataAnalyzer;

    if-eqz v1, :cond_1

    .line 31
    move-object v1, v0

    check-cast v1, Lhuawei/android/security/IAppBehaviorDataAnalyzer;

    return-object v1

    .line 33
    :cond_1
    new-instance v1, Lhuawei/android/security/IAppBehaviorDataAnalyzer$Stub$Proxy;

    invoke-direct {v1, p0}, Lhuawei/android/security/IAppBehaviorDataAnalyzer$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 17
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    .line 41
    const-string v10, "huawei.android.security.IAppBehaviorDataAnalyzer"

    .line 42
    .local v10, "descriptor":Ljava/lang/String;
    const v0, 0x5f4e5446

    const/4 v11, 0x1

    if-eq v7, v0, :cond_0

    packed-switch v7, :pswitch_data_0

    .line 98
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 87
    :pswitch_0
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lhuawei/android/security/IInspectAppObserver$Stub;->asInterface(Landroid/os/IBinder;)Lhuawei/android/security/IInspectAppObserver;

    move-result-object v1

    .line 92
    .local v1, "_arg1":Lhuawei/android/security/IInspectAppObserver;
    invoke-virtual {v6, v0, v1}, Lhuawei/android/security/IAppBehaviorDataAnalyzer$Stub;->regObservInspectUid(Ljava/lang/String;Lhuawei/android/security/IInspectAppObserver;)V

    .line 93
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    return v11

    .line 71
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Lhuawei/android/security/IInspectAppObserver;
    :pswitch_1
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 75
    .local v12, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 77
    .local v13, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 79
    .local v14, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 81
    .local v15, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 82
    .local v16, "_arg4":Ljava/lang/String;
    move-object v0, v6

    move v1, v12

    move v2, v13

    move v3, v14

    move-object v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lhuawei/android/security/IAppBehaviorDataAnalyzer$Stub;->onAppEvent(IIILjava/lang/String;Ljava/lang/String;)V

    .line 83
    return v11

    .line 59
    .end local v12    # "_arg0":I
    .end local v13    # "_arg1":I
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":Ljava/lang/String;
    .end local v16    # "_arg4":Ljava/lang/String;
    :pswitch_2
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 63
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 65
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 66
    .local v2, "_arg2":I
    invoke-virtual {v6, v0, v1, v2}, Lhuawei/android/security/IAppBehaviorDataAnalyzer$Stub;->onBehaviorEvent(III)V

    .line 67
    return v11

    .line 51
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_3
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual/range {p0 .. p0}, Lhuawei/android/security/IAppBehaviorDataAnalyzer$Stub;->getInspectAppMap()Ljava/util/Map;

    move-result-object v0

    .line 53
    .local v0, "_result":Ljava/util/Map;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 55
    return v11

    .line 46
    .end local v0    # "_result":Ljava/util/Map;
    :cond_0
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    return v11

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
