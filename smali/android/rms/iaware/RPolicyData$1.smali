.class Landroid/rms/iaware/RPolicyData$1;
.super Ljava/lang/Object;
.source "RPolicyData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/rms/iaware/RPolicyData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/rms/iaware/RPolicyData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/rms/iaware/RPolicyData;
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 58
    new-instance v0, Landroid/rms/iaware/RPolicyData;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/rms/iaware/RPolicyData;-><init>(IILandroid/os/Bundle;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 56
    invoke-virtual {p0, p1}, Landroid/rms/iaware/RPolicyData$1;->createFromParcel(Landroid/os/Parcel;)Landroid/rms/iaware/RPolicyData;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/rms/iaware/RPolicyData;
    .locals 1
    .param p1, "size"    # I

    .line 62
    new-array v0, p1, [Landroid/rms/iaware/RPolicyData;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 56
    invoke-virtual {p0, p1}, Landroid/rms/iaware/RPolicyData$1;->newArray(I)[Landroid/rms/iaware/RPolicyData;

    move-result-object p1

    return-object p1
.end method
