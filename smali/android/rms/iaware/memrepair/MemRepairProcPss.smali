.class public Landroid/rms/iaware/memrepair/MemRepairProcPss;
.super Ljava/lang/Object;
.source "MemRepairProcPss.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/rms/iaware/memrepair/MemRepairProcPss;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mMergeCount:I

.field private mProcState:I

.field private mPssSet:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 84
    new-instance v0, Landroid/rms/iaware/memrepair/MemRepairProcPss$1;

    invoke-direct {v0}, Landroid/rms/iaware/memrepair/MemRepairProcPss$1;-><init>()V

    sput-object v0, Landroid/rms/iaware/memrepair/MemRepairProcPss;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/rms/iaware/memrepair/MemRepairProcPss;->mProcState:I

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/rms/iaware/memrepair/MemRepairProcPss;->mMergeCount:I

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 47
    .local v0, "pssSize":I
    if-lez v0, :cond_0

    const/16 v1, 0xc8

    if-gt v0, v1, :cond_0

    .line 48
    new-array v1, v0, [J

    iput-object v1, p0, Landroid/rms/iaware/memrepair/MemRepairProcPss;->mPssSet:[J

    .line 49
    iget-object v1, p0, Landroid/rms/iaware/memrepair/MemRepairProcPss;->mPssSet:[J

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readLongArray([J)V

    .line 51
    :cond_0
    return-void
.end method

.method public constructor <init>([JIII)V
    .locals 2
    .param p1, "pssSets"    # [J
    .param p2, "setsCount"    # I
    .param p3, "procState"    # I
    .param p4, "mergeCount"    # I

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    array-length v0, p1

    const/16 v1, 0xc8

    if-gt v0, v1, :cond_0

    if-lez p2, :cond_0

    array-length v0, p1

    if-gt p2, v0, :cond_0

    .line 34
    new-array v0, p2, [J

    iput-object v0, p0, Landroid/rms/iaware/memrepair/MemRepairProcPss;->mPssSet:[J

    .line 35
    iget-object v0, p0, Landroid/rms/iaware/memrepair/MemRepairProcPss;->mPssSet:[J

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 38
    :cond_0
    iput p3, p0, Landroid/rms/iaware/memrepair/MemRepairProcPss;->mProcState:I

    .line 39
    iput p4, p0, Landroid/rms/iaware/memrepair/MemRepairProcPss;->mMergeCount:I

    .line 40
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 55
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 56
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 57
    iget-object v1, p0, Landroid/rms/iaware/memrepair/MemRepairProcPss;->mPssSet:[J

    if-eqz v1, :cond_0

    .line 58
    const-string v1, "pssSet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Landroid/rms/iaware/memrepair/MemRepairProcPss;->mPssSet:[J

    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 59
    const-string v1, ",procState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/rms/iaware/memrepair/MemRepairProcPss;->mProcState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 60
    const-string v1, ",mergeCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/rms/iaware/memrepair/MemRepairProcPss;->mMergeCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 63
    :cond_0
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 74
    iget v0, p0, Landroid/rms/iaware/memrepair/MemRepairProcPss;->mProcState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    iget v0, p0, Landroid/rms/iaware/memrepair/MemRepairProcPss;->mMergeCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    iget-object v0, p0, Landroid/rms/iaware/memrepair/MemRepairProcPss;->mPssSet:[J

    if-nez v0, :cond_0

    .line 77
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 79
    :cond_0
    iget-object v0, p0, Landroid/rms/iaware/memrepair/MemRepairProcPss;->mPssSet:[J

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    iget-object v0, p0, Landroid/rms/iaware/memrepair/MemRepairProcPss;->mPssSet:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 82
    :goto_0
    return-void
.end method
