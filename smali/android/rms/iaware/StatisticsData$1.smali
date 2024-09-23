.class Landroid/rms/iaware/StatisticsData$1;
.super Ljava/lang/Object;
.source "StatisticsData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/rms/iaware/StatisticsData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/rms/iaware/StatisticsData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/rms/iaware/StatisticsData;
    .locals 12
    .param p1, "source"    # Landroid/os/Parcel;

    .line 140
    new-instance v11, Landroid/rms/iaware/StatisticsData;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Landroid/rms/iaware/StatisticsData;-><init>(IILjava/lang/String;IIIJJ)V

    .line 140
    return-object v11
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 137
    invoke-virtual {p0, p1}, Landroid/rms/iaware/StatisticsData$1;->createFromParcel(Landroid/os/Parcel;)Landroid/rms/iaware/StatisticsData;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/rms/iaware/StatisticsData;
    .locals 1
    .param p1, "size"    # I

    .line 147
    new-array v0, p1, [Landroid/rms/iaware/StatisticsData;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 137
    invoke-virtual {p0, p1}, Landroid/rms/iaware/StatisticsData$1;->newArray(I)[Landroid/rms/iaware/StatisticsData;

    move-result-object p1

    return-object p1
.end method
