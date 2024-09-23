.class public abstract Landroid/rms/IProcessStateChangeObserver$Stub;
.super Landroid/os/Binder;
.source "IProcessStateChangeObserver.java"

# interfaces
.implements Landroid/rms/IProcessStateChangeObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/rms/IProcessStateChangeObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/rms/IProcessStateChangeObserver$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.rms.IProcessStateChangeObserver"

.field static final TRANSACTION_onProcessDiedOverload:I = 0x2

.field static final TRANSACTION_onProcessLauncher:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "android.rms.IProcessStateChangeObserver"

    invoke-virtual {p0, p0, v0}, Landroid/rms/IProcessStateChangeObserver$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/rms/IProcessStateChangeObserver;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    return-object v0

    .line 29
    :cond_0
    const-string v0, "android.rms.IProcessStateChangeObserver"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/rms/IProcessStateChangeObserver;

    if-eqz v1, :cond_1

    .line 31
    move-object v1, v0

    check-cast v1, Landroid/rms/IProcessStateChangeObserver;

    return-object v1

    .line 33
    :cond_1
    new-instance v1, Landroid/rms/IProcessStateChangeObserver$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/rms/IProcessStateChangeObserver$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 37
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

    move/from16 v0, p1

    move-object/from16 v1, p2

    .line 41
    const-string v2, "android.rms.IProcessStateChangeObserver"

    .line 42
    .local v2, "descriptor":Ljava/lang/String;
    const v3, 0x5f4e5446

    const/4 v4, 0x1

    if-eq v0, v3, :cond_2

    packed-switch v0, :pswitch_data_0

    .line 86
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    return v3

    .line 72
    :pswitch_0
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 75
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .local v3, "_arg0":Landroid/os/Bundle;
    goto :goto_0

    .line 78
    .end local v3    # "_arg0":Landroid/os/Bundle;
    :cond_0
    const/4 v3, 0x0

    .line 80
    .restart local v3    # "_arg0":Landroid/os/Bundle;
    :goto_0
    move-object/from16 v13, p0

    invoke-virtual {v13, v3}, Landroid/rms/IProcessStateChangeObserver$Stub;->onProcessDiedOverload(Landroid/os/Bundle;)V

    .line 81
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    return v4

    .line 51
    .end local v3    # "_arg0":Landroid/os/Bundle;
    :pswitch_1
    move-object/from16 v13, p0

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 55
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 57
    .local v14, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 59
    .local v15, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 61
    .local v16, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    move v10, v4

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    move v10, v5

    .line 63
    .local v10, "_arg4":Z
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 65
    .local v17, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 66
    .local v18, "_arg6":Ljava/lang/String;
    move-object v5, v13

    move-object v6, v3

    move-object v7, v14

    move v8, v15

    move/from16 v9, v16

    move-object/from16 v11, v17

    move-object/from16 v12, v18

    invoke-virtual/range {v5 .. v12}, Landroid/rms/IProcessStateChangeObserver$Stub;->onProcessLauncher(Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    return v4

    .line 46
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v10    # "_arg4":Z
    .end local v14    # "_arg1":Ljava/lang/String;
    .end local v15    # "_arg2":I
    .end local v16    # "_arg3":I
    .end local v17    # "_arg5":Ljava/lang/String;
    .end local v18    # "_arg6":Ljava/lang/String;
    :cond_2
    move-object/from16 v13, p0

    move-object/from16 v3, p3

    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    return v4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
