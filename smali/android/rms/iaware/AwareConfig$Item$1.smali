.class Landroid/rms/iaware/AwareConfig$Item$1;
.super Ljava/lang/Object;
.source "AwareConfig.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/rms/iaware/AwareConfig$Item;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/rms/iaware/AwareConfig$Item;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/rms/iaware/AwareConfig$Item;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .line 126
    new-instance v0, Landroid/rms/iaware/AwareConfig$Item;

    invoke-direct {v0, p1}, Landroid/rms/iaware/AwareConfig$Item;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 117
    invoke-virtual {p0, p1}, Landroid/rms/iaware/AwareConfig$Item$1;->createFromParcel(Landroid/os/Parcel;)Landroid/rms/iaware/AwareConfig$Item;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/rms/iaware/AwareConfig$Item;
    .locals 1
    .param p1, "size"    # I

    .line 121
    new-array v0, p1, [Landroid/rms/iaware/AwareConfig$Item;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 117
    invoke-virtual {p0, p1}, Landroid/rms/iaware/AwareConfig$Item$1;->newArray(I)[Landroid/rms/iaware/AwareConfig$Item;

    move-result-object p1

    return-object p1
.end method
