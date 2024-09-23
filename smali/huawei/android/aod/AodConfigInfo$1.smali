.class Lhuawei/android/aod/AodConfigInfo$1;
.super Ljava/lang/Object;
.source "AodConfigInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhuawei/android/aod/AodConfigInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lhuawei/android/aod/AodConfigInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lhuawei/android/aod/AodConfigInfo;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 94
    new-instance v0, Lhuawei/android/aod/AodConfigInfo;

    invoke-direct {v0, p1}, Lhuawei/android/aod/AodConfigInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 91
    invoke-virtual {p0, p1}, Lhuawei/android/aod/AodConfigInfo$1;->createFromParcel(Landroid/os/Parcel;)Lhuawei/android/aod/AodConfigInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lhuawei/android/aod/AodConfigInfo;
    .locals 1
    .param p1, "size"    # I

    .line 98
    new-array v0, p1, [Lhuawei/android/aod/AodConfigInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 91
    invoke-virtual {p0, p1}, Lhuawei/android/aod/AodConfigInfo$1;->newArray(I)[Lhuawei/android/aod/AodConfigInfo;

    move-result-object p1

    return-object p1
.end method
