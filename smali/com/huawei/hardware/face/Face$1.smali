.class Lcom/huawei/hardware/face/Face$1;
.super Ljava/lang/Object;
.source "Face.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hardware/face/Face;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/huawei/hardware/face/Face;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/huawei/hardware/face/Face;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 58
    new-instance v0, Lcom/huawei/hardware/face/Face;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/huawei/hardware/face/Face;-><init>(Landroid/os/Parcel;Lcom/huawei/hardware/face/Face$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 56
    invoke-virtual {p0, p1}, Lcom/huawei/hardware/face/Face$1;->createFromParcel(Landroid/os/Parcel;)Lcom/huawei/hardware/face/Face;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/huawei/hardware/face/Face;
    .locals 1
    .param p1, "size"    # I

    .line 62
    new-array v0, p1, [Lcom/huawei/hardware/face/Face;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 56
    invoke-virtual {p0, p1}, Lcom/huawei/hardware/face/Face$1;->newArray(I)[Lcom/huawei/hardware/face/Face;

    move-result-object p1

    return-object p1
.end method
