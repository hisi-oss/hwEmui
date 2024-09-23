.class Landroid/rms/iaware/memrepair/MemRepairProcPss$1;
.super Ljava/lang/Object;
.source "MemRepairProcPss.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/rms/iaware/memrepair/MemRepairProcPss;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/rms/iaware/memrepair/MemRepairProcPss;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/rms/iaware/memrepair/MemRepairProcPss;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .line 87
    new-instance v0, Landroid/rms/iaware/memrepair/MemRepairProcPss;

    invoke-direct {v0, p1}, Landroid/rms/iaware/memrepair/MemRepairProcPss;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 84
    invoke-virtual {p0, p1}, Landroid/rms/iaware/memrepair/MemRepairProcPss$1;->createFromParcel(Landroid/os/Parcel;)Landroid/rms/iaware/memrepair/MemRepairProcPss;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/rms/iaware/memrepair/MemRepairProcPss;
    .locals 1
    .param p1, "size"    # I

    .line 92
    new-array v0, p1, [Landroid/rms/iaware/memrepair/MemRepairProcPss;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 84
    invoke-virtual {p0, p1}, Landroid/rms/iaware/memrepair/MemRepairProcPss$1;->newArray(I)[Landroid/rms/iaware/memrepair/MemRepairProcPss;

    move-result-object p1

    return-object p1
.end method
