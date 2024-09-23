.class Landroid/rms/iaware/DumpData$1;
.super Ljava/lang/Object;
.source "DumpData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/rms/iaware/DumpData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/rms/iaware/DumpData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/rms/iaware/DumpData;
    .locals 8
    .param p1, "source"    # Landroid/os/Parcel;

    .line 141
    new-instance v7, Landroid/rms/iaware/DumpData;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroid/rms/iaware/DumpData;-><init>(JILjava/lang/String;ILjava/lang/String;)V

    .line 141
    return-object v7
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 138
    invoke-virtual {p0, p1}, Landroid/rms/iaware/DumpData$1;->createFromParcel(Landroid/os/Parcel;)Landroid/rms/iaware/DumpData;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/rms/iaware/DumpData;
    .locals 1
    .param p1, "size"    # I

    .line 147
    new-array v0, p1, [Landroid/rms/iaware/DumpData;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 138
    invoke-virtual {p0, p1}, Landroid/rms/iaware/DumpData$1;->newArray(I)[Landroid/rms/iaware/DumpData;

    move-result-object p1

    return-object p1
.end method
