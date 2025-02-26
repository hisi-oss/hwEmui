.class public abstract Landroid/contentsensor/IGrabJsResultReceiver$Stub;
.super Landroid/os/Binder;
.source "IGrabJsResultReceiver.java"

# interfaces
.implements Landroid/contentsensor/IGrabJsResultReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/contentsensor/IGrabJsResultReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/contentsensor/IGrabJsResultReceiver$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.contentsensor.IGrabJsResultReceiver"

.field static final TRANSACTION_onJsResultCallBack:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "android.contentsensor.IGrabJsResultReceiver"

    invoke-virtual {p0, p0, v0}, Landroid/contentsensor/IGrabJsResultReceiver$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/contentsensor/IGrabJsResultReceiver;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    return-object v0

    .line 26
    :cond_0
    const-string v0, "android.contentsensor.IGrabJsResultReceiver"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/contentsensor/IGrabJsResultReceiver;

    if-eqz v1, :cond_1

    .line 28
    move-object v1, v0

    check-cast v1, Landroid/contentsensor/IGrabJsResultReceiver;

    return-object v1

    .line 30
    :cond_1
    new-instance v1, Landroid/contentsensor/IGrabJsResultReceiver$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/contentsensor/IGrabJsResultReceiver$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
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
    const-string v0, "android.contentsensor.IGrabJsResultReceiver"

    .line 39
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 65
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 43
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    return v1

    .line 48
    :cond_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 52
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    .line 53
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .local v3, "_arg1":Landroid/os/Bundle;
    goto :goto_0

    .line 56
    .end local v3    # "_arg1":Landroid/os/Bundle;
    :cond_2
    const/4 v3, 0x0

    .line 59
    .restart local v3    # "_arg1":Landroid/os/Bundle;
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 60
    .local v4, "_arg2":I
    invoke-virtual {p0, v2, v3, v4}, Landroid/contentsensor/IGrabJsResultReceiver$Stub;->onJsResultCallBack(ILandroid/os/Bundle;I)V

    .line 61
    return v1
.end method
