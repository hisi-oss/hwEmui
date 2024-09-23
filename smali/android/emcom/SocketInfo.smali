.class public Landroid/emcom/SocketInfo;
.super Ljava/lang/Object;
.source "SocketInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/emcom/SocketInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected fd:I

.field protected pid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Landroid/emcom/SocketInfo$1;

    invoke-direct {v0}, Landroid/emcom/SocketInfo$1;-><init>()V

    sput-object v0, Landroid/emcom/SocketInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, -0x1

    iput v0, p0, Landroid/emcom/SocketInfo;->fd:I

    .line 10
    iput v0, p0, Landroid/emcom/SocketInfo;->pid:I

    .line 13
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, -0x1

    iput v0, p0, Landroid/emcom/SocketInfo;->fd:I

    .line 10
    iput v0, p0, Landroid/emcom/SocketInfo;->pid:I

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/emcom/SocketInfo;->fd:I

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/emcom/SocketInfo;->pid:I

    .line 18
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method public getFd()I
    .locals 1

    .line 44
    iget v0, p0, Landroid/emcom/SocketInfo;->fd:I

    return v0
.end method

.method public getPid()I
    .locals 1

    .line 52
    iget v0, p0, Landroid/emcom/SocketInfo;->pid:I

    return v0
.end method

.method public setFd(I)V
    .locals 0
    .param p1, "fd"    # I

    .line 48
    iput p1, p0, Landroid/emcom/SocketInfo;->fd:I

    .line 49
    return-void
.end method

.method public setPid(I)V
    .locals 0
    .param p1, "pid"    # I

    .line 56
    iput p1, p0, Landroid/emcom/SocketInfo;->pid:I

    .line 57
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SocketInfo{fd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/emcom/SocketInfo;->fd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/emcom/SocketInfo;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "i"    # I

    .line 39
    iget v0, p0, Landroid/emcom/SocketInfo;->fd:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 40
    iget v0, p0, Landroid/emcom/SocketInfo;->pid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    return-void
.end method
