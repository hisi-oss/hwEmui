.class Landroid/rms/iaware/memrepair/MemRepairProcInfo$1;
.super Ljava/lang/Object;
.source "MemRepairProcInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/rms/iaware/memrepair/MemRepairProcInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/rms/iaware/memrepair/MemRepairProcInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/rms/iaware/memrepair/MemRepairProcInfo;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .line 262
    new-instance v0, Landroid/rms/iaware/memrepair/MemRepairProcInfo;

    invoke-direct {v0, p1}, Landroid/rms/iaware/memrepair/MemRepairProcInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 259
    invoke-virtual {p0, p1}, Landroid/rms/iaware/memrepair/MemRepairProcInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/rms/iaware/memrepair/MemRepairProcInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/rms/iaware/memrepair/MemRepairProcInfo;
    .locals 1
    .param p1, "size"    # I

    .line 267
    new-array v0, p1, [Landroid/rms/iaware/memrepair/MemRepairProcInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 259
    invoke-virtual {p0, p1}, Landroid/rms/iaware/memrepair/MemRepairProcInfo$1;->newArray(I)[Landroid/rms/iaware/memrepair/MemRepairProcInfo;

    move-result-object p1

    return-object p1
.end method
