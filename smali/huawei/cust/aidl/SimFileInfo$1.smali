.class Lhuawei/cust/aidl/SimFileInfo$1;
.super Ljava/lang/Object;
.source "SimFileInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhuawei/cust/aidl/SimFileInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lhuawei/cust/aidl/SimFileInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lhuawei/cust/aidl/SimFileInfo;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 40
    new-instance v0, Lhuawei/cust/aidl/SimFileInfo;

    invoke-direct {v0, p1}, Lhuawei/cust/aidl/SimFileInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 37
    invoke-virtual {p0, p1}, Lhuawei/cust/aidl/SimFileInfo$1;->createFromParcel(Landroid/os/Parcel;)Lhuawei/cust/aidl/SimFileInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lhuawei/cust/aidl/SimFileInfo;
    .locals 1
    .param p1, "size"    # I

    .line 45
    new-array v0, p1, [Lhuawei/cust/aidl/SimFileInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 37
    invoke-virtual {p0, p1}, Lhuawei/cust/aidl/SimFileInfo$1;->newArray(I)[Lhuawei/cust/aidl/SimFileInfo;

    move-result-object p1

    return-object p1
.end method
