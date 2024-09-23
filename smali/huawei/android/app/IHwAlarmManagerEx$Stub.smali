.class public abstract Lhuawei/android/app/IHwAlarmManagerEx$Stub;
.super Landroid/os/Binder;
.source "IHwAlarmManagerEx.java"

# interfaces
.implements Lhuawei/android/app/IHwAlarmManagerEx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhuawei/android/app/IHwAlarmManagerEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhuawei/android/app/IHwAlarmManagerEx$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "huawei.android.app.IHwAlarmManagerEx"

.field static final TRANSACTION_removeAllAdjustAlarms:I = 0x4

.field static final TRANSACTION_removeAllPendingAlarms:I = 0x2

.field static final TRANSACTION_setAlarmsAdjust:I = 0x3

.field static final TRANSACTION_setAlarmsPending:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "huawei.android.app.IHwAlarmManagerEx"

    invoke-virtual {p0, p0, v0}, Lhuawei/android/app/IHwAlarmManagerEx$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lhuawei/android/app/IHwAlarmManagerEx;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    return-object v0

    .line 26
    :cond_0
    const-string v0, "huawei.android.app.IHwAlarmManagerEx"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lhuawei/android/app/IHwAlarmManagerEx;

    if-eqz v1, :cond_1

    .line 28
    move-object v1, v0

    check-cast v1, Lhuawei/android/app/IHwAlarmManagerEx;

    return-object v1

    .line 30
    :cond_1
    new-instance v1, Lhuawei/android/app/IHwAlarmManagerEx$Stub$Proxy;

    invoke-direct {v1, p0}, Lhuawei/android/app/IHwAlarmManagerEx$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 18
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

    move-object/from16 v1, p2

    .line 38
    const-string v2, "huawei.android.app.IHwAlarmManagerEx"

    .line 39
    .local v2, "descriptor":Ljava/lang/String;
    const v3, 0x5f4e5446

    const/4 v4, 0x1

    if-eq v0, v3, :cond_2

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    .line 96
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    return v3

    .line 89
    :pswitch_0
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual/range {p0 .. p0}, Lhuawei/android/app/IHwAlarmManagerEx$Stub;->removeAllAdjustAlarms()V

    .line 91
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    return v4

    .line 70
    :pswitch_1
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v13

    .line 74
    .local v13, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v14

    .line 76
    .local v14, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    move v8, v4

    goto :goto_0

    :cond_0
    move v8, v3

    .line 78
    .local v8, "_arg2":Z
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 80
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v15

    .line 82
    .local v15, "_arg4":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 83
    .local v17, "_arg5":I
    move-object/from16 v5, p0

    move-object v6, v13

    move-object v7, v14

    move v9, v3

    move-wide v10, v15

    move/from16 v12, v17

    invoke-virtual/range {v5 .. v12}, Lhuawei/android/app/IHwAlarmManagerEx$Stub;->setAlarmsAdjust(Ljava/util/List;Ljava/util/List;ZIJI)V

    .line 84
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    return v4

    .line 63
    .end local v3    # "_arg3":I
    .end local v8    # "_arg2":Z
    .end local v13    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v14    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v15    # "_arg4":J
    .end local v17    # "_arg5":I
    :pswitch_2
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual/range {p0 .. p0}, Lhuawei/android/app/IHwAlarmManagerEx$Stub;->removeAllPendingAlarms()V

    .line 65
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    return v4

    .line 48
    :pswitch_3
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v5

    .line 52
    .local v5, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v6

    .line 54
    .local v6, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_1

    move v3, v4

    nop

    .line 56
    .local v3, "_arg2":Z
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 57
    .local v7, "_arg3":I
    move-object/from16 v8, p0

    invoke-virtual {v8, v5, v6, v3, v7}, Lhuawei/android/app/IHwAlarmManagerEx$Stub;->setAlarmsPending(Ljava/util/List;Ljava/util/List;ZI)V

    .line 58
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    return v4

    .line 43
    .end local v3    # "_arg2":Z
    .end local v5    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "_arg3":I
    :cond_2
    move-object/from16 v8, p0

    move-object/from16 v3, p3

    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    return v4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
