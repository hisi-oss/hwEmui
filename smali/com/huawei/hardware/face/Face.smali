.class public final Lcom/huawei/hardware/face/Face;
.super Ljava/lang/Object;
.source "Face.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/huawei/hardware/face/Face;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDeviceId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    new-instance v0, Lcom/huawei/hardware/face/Face$1;

    invoke-direct {v0}, Lcom/huawei/hardware/face/Face$1;-><init>()V

    sput-object v0, Lcom/huawei/hardware/face/Face;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0
    .param p1, "deviceId"    # J

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-wide p1, p0, Lcom/huawei/hardware/face/Face;->mDeviceId:J

    .line 33
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/huawei/hardware/face/Face;->mDeviceId:J

    .line 37
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/huawei/hardware/face/Face$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/huawei/hardware/face/Face$1;

    .line 28
    invoke-direct {p0, p1}, Lcom/huawei/hardware/face/Face;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public getDeviceId()J
    .locals 2

    .line 45
    iget-wide v0, p0, Lcom/huawei/hardware/face/Face;->mDeviceId:J

    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 53
    iget-wide v0, p0, Lcom/huawei/hardware/face/Face;->mDeviceId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 54
    return-void
.end method
