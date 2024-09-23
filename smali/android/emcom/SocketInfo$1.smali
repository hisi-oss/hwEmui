.class Landroid/emcom/SocketInfo$1;
.super Ljava/lang/Object;
.source "SocketInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/emcom/SocketInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/emcom/SocketInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/emcom/SocketInfo;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 23
    new-instance v0, Landroid/emcom/SocketInfo;

    invoke-direct {v0, p1}, Landroid/emcom/SocketInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Landroid/emcom/SocketInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/emcom/SocketInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/emcom/SocketInfo;
    .locals 1
    .param p1, "size"    # I

    .line 28
    new-array v0, p1, [Landroid/emcom/SocketInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Landroid/emcom/SocketInfo$1;->newArray(I)[Landroid/emcom/SocketInfo;

    move-result-object p1

    return-object p1
.end method
