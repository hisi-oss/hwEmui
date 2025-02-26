.class public abstract Landroid/rms/io/IIOStatsServiceManager$Stub;
.super Landroid/os/Binder;
.source "IIOStatsServiceManager.java"

# interfaces
.implements Landroid/rms/io/IIOStatsServiceManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/rms/io/IIOStatsServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/rms/io/IIOStatsServiceManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.rms.io.IIOStatsServiceManager"

.field static final TRANSACTION_query:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "android.rms.io.IIOStatsServiceManager"

    invoke-virtual {p0, p0, v0}, Landroid/rms/io/IIOStatsServiceManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/rms/io/IIOStatsServiceManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    return-object v0

    .line 29
    :cond_0
    const-string v0, "android.rms.io.IIOStatsServiceManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/rms/io/IIOStatsServiceManager;

    if-eqz v1, :cond_1

    .line 31
    move-object v1, v0

    check-cast v1, Landroid/rms/io/IIOStatsServiceManager;

    return-object v1

    .line 33
    :cond_1
    new-instance v1, Landroid/rms/io/IIOStatsServiceManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/rms/io/IIOStatsServiceManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    const-string v0, "android.rms.io.IIOStatsServiceManager"

    .line 42
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 61
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 46
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    return v1

    .line 51
    :cond_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 54
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Landroid/rms/io/IIOStatsServiceManager$Stub;->query(I)I

    move-result v3

    .line 55
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 56
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    return v1
.end method
