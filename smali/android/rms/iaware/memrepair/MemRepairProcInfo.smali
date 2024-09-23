.class public Landroid/rms/iaware/memrepair/MemRepairProcInfo;
.super Ljava/lang/Object;
.source "MemRepairProcInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/rms/iaware/memrepair/MemRepairProcInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final FLAG_PSS:I = 0x1

.field private static final FLAG_VSS:I = 0x2


# instance fields
.field private mAwareProtected:Z

.field private mCleanType:I

.field private mCurAdj:I

.field private final mCurPss:J

.field private mFlag:I

.field private final mPid:I

.field private final mProcName:Ljava/lang/String;

.field private mProcPssList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/rms/iaware/memrepair/MemRepairProcPss;",
            ">;"
        }
    .end annotation
.end field

.field private mProcStatus:Ljava/lang/String;

.field private mThresHoldType:I

.field private final mUid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 259
    new-instance v0, Landroid/rms/iaware/memrepair/MemRepairProcInfo$1;

    invoke-direct {v0}, Landroid/rms/iaware/memrepair/MemRepairProcInfo$1;-><init>()V

    sput-object v0, Landroid/rms/iaware/memrepair/MemRepairProcInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;J)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "processName"    # Ljava/lang/String;
    .param p4, "pss"    # J

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput p1, p0, Landroid/rms/iaware/memrepair/MemRepairProcInfo;->mUid:I

    .line 79
    iput p2, p0, Landroid/rms/iaware/memrepair/MemRepairProcInfo;->mPid:I

    .line 80
    iput-object p3, p0, Landroid/rms/iaware/memrepair/MemRepairProcInfo;->mProcName:Ljava/lang/String;

    .line 81
    iput-wide p4, p0, Landroid/rms/iaware/memrepair/MemRepairProcInfo;->mCurPss:J

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Landroid/rms/iaware/memrepair/MemRepairProcInfo;->mThresHoldType:I

    .line 84
    iput v0, p0, Landroid/rms/iaware/memrepair/MemRepairProcInfo;->mCleanType:I

    .line 85
    iput-boolean v0, p0, Landroid/rms/iaware/memrepair/MemRepairProcInfo;->mAwareProtected:Z

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/rms/iaware/memrepair/MemRepairProcInfo;->mProcPssList:Ljava/util/List;

    .line 88
    return-void
.end method

.method private constructor <init>(IILjava/lang/String;JI)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "processName"    # Ljava/lang/String;
    .param p4, "mem"    # J
    .param p6, "flag"    # I

    .line 72
    invoke-direct/range {p0 .. p5}, Landroid/rms/iaware/memrepair/MemRepairProcInfo;-><init>(IILjava/lang/String;J)V

    .line 73
    iput p6, p0, Landroid/rms/iaware/memrepair/MemRepairProcInfo;->mFlag:I

    .line 74
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/rms/iaware/memrepair/MemRepairProcInfo;->mFlag:I

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/rms/iaware/memrepair/MemRepairProcInfo;->mUid:I

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/rms/iaware/memrepair/MemRepairProcInfo;->mPid:I

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/rms/iaware/memrepair/MemRepairProcInfo;->mProcName:Ljava/lang/String;

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/rms/iaware/memrepair/MemRepairProcInfo;->mCurPss:J

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/rms/iaware/memrepair/MemRepairProcInfo;->mThresHoldType:I

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/rms/iaware/memrepair/MemRepairProcInfo;->mCurAdj:I

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/rms/iaware/memrepair/MemRepairProcInfo;->mCleanType:I

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput-boolean v2, p0, Landroid/rms/iaware/memrepair/MemRepairProcInfo;->mAwareProtected:Z

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/rms/iaware/memrepair/MemRepairProcInfo;->mProcStatus:Ljava/lang/String;

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 106
    .local v0, "pssSize":I
    if-lez v0, :cond_1

    .line 107
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Landroid/rms/iaware/memrepair/MemRepairProcInfo;->mProcPssList:Ljava/util/List;

    .line 109
    :cond_1
    nop

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 110
    new-instance v2, Landroid/rms/iaware/memrepair/MemRepairProcPss;

    invoke-direct {v2, p1}, Landroid/rms/iaware/memrepair/MemRepairProcPss;-><init>(Landroid/os/Parcel;)V

    .line 111
    .local v2, "procPss":Landroid/rms/iaware/memrepair/MemRepairProcPss;
    iget-object v3, p0, Landroid/rms/iaware/memrepair/MemRepairProcInfo;->mProcPssList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    .end local v2    # "procPss":Landroid/rms/iaware/memrepair/MemRepairProcPss;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 113
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method public static createMemRepairProcInfo(IILjava/lang/String;JZ)Landroid/rms/iaware/memrepair/MemRepairProcInfo;
    .locals 8
    .param p0, "uid"    # I
    .param p1, "pid"    # I
    .param p2, "processName"    # Ljava/lang/String;
    .param p3, "mem"    # J
    .param p5, "isPss"    # Z

    .line 68
    new-instance v7, Landroid/rms/iaware/memrepair/MemRepairProcInfo;

    if-eqz p5, :cond_0

    const/4 v0, 0x1

    :goto_0
    move v6, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    :goto_1
    move-object v0, v7

    move v1, p0

    move v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v6}, Landroid/rms/iaware/memrepair/MemRepairProcInfo;-><init>(IILjava/lang/String;JI)V

    return-object v7
.end method


# virtual methods
.method public addMemSets([JIII)V
    .locals 0
    .param p1, "MemSets"    # [J
    .param p2, "setsCount"    # I
    .param p3, "procState"    # I
    .param p4, "mergeCount"    # I

    .line 124
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/rms/iaware/memrepair/MemRepairProcInfo;->addPssSets([JIII)V

    .line 125
    return-void
.end method

.method public addPssSets([JIII)V
    .locals 2
    .param p1, "pssSets"    # [J
    .param p2, "setsCount"    # I
    .param p3, "procState"    # I
    .param p4, "mergeCount"    # I

    .line 129
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    if-lez p2, :cond_0

    array-length v0, p1

    if-gt p2, v0, :cond_0

    .line 131
    new-instance v0, Landroid/rms/iaware/memrepair/MemRepairProcPss;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/rms/iaware/memrepair/MemRepairProcPss;-><init>([JIII)V

    .line 132
    .local v0, "procPss":Landroid/rms/iaware/memrepair/MemRepairProcPss;
    iget-object v1, p0, Landroid/rms/iaware/memrepair/MemRepairProcInfo;->mProcPssList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    .end local v0    # "procPss":Landroid/rms/iaware/memrepair/MemRepairProcPss;
    :cond_0
    return-void
.end method

.method public describeContents()I
    .locals 1

    .line 230
    const/4 v0, 0x0

    return v0
.end method

.method public getCleanType()I
    .locals 1

    .line 177
    iget v0, p0, Landroid/rms/iaware/memrepair/MemRepairProcInfo;->mCleanType:I

    return v0
.end method

.method public getMem()J
    .locals 2

    .line 153
    iget-wide v0, p0, Landroid/rms/iaware/memrepair/MemRepairProcInfo;->mCurPss:J

    return-wide v0
.end method

.method public getPid()I
    .locals 1

    .line 162
    iget v0, p0, Landroid/rms/iaware/memrepair/MemRepairProcInfo;->mPid:I

    return v0
.end method

.method public getProcMemList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/rms/iaware/memrepair/MemRepairProcPss;",
            ">;"
        }
    .end annotation

    .line 197
    invoke-virtual {p0}, Landroid/rms/iaware/memrepair/MemRepairProcInfo;->getProcPssList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getProcName()Ljava/lang/String;
    .locals 1

    .line 166
    iget-object v0, p0, Landroid/rms/iaware/memrepair/MemRepairProcInfo;->mProcName:Ljava/lang/String;

    return-object v0
.end method

.method public getProcPssList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/rms/iaware/memrepair/MemRepairProcPss;",
            ">;"
        }
    .end annotation

    .line 189
    iget-object v0, p0, Landroid/rms/iaware/memrepair/MemRepairProcInfo;->mProcPssList:Ljava/util/List;

    return-object v0
.end method

.method public getProcStatus()Ljava/lang/String;
    .locals 1

    .line 185
    iget-object v0, p0, Landroid/rms/iaware/memrepair/MemRepairProcInfo;->mProcStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getPss()J
    .locals 2

    .line 145
    invoke-virtual {p0}, Landroid/rms/iaware/memrepair/MemRepairProcInfo;->getMem()J

    move-result-wide v0

    return-wide v0
.end method

.method public getThresHoldType()I
    .locals 1

    .line 141
    iget v0, p0, Landroid/rms/iaware/memrepair/MemRepairProcInfo;->mThresHoldType:I

    return v0
.end method

.method public getUid()I
    .locals 1

    .line 158
    iget v0, p0, Landroid/rms/iaware/memrepair/MemRepairProcInfo;->mUid:I

    return v0
.end method

.method public isAwareProtected()Z
    .locals 1

    .line 181
    iget-boolean v0, p0, Landroid/rms/iaware/memrepair/MemRepairProcInfo;->mAwareProtected:Z

    return v0
.end method

.method public isPss()Z
    .locals 2

    .line 204
    iget v0, p0, Landroid/rms/iaware/memrepair/MemRepairProcInfo;->mFlag:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 210
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 211
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "MemRepairProcInfo ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 212
    const-string v1, "uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/rms/iaware/memrepair/MemRepairProcInfo;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ",pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/rms/iaware/memrepair/MemRepairProcInfo;->mPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ",process="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Landroid/rms/iaware/memrepair/MemRepairProcInfo;->mProcName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 213
    const-string v1, ",type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/rms/iaware/memrepair/MemRepairProcInfo;->mThresHoldType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 215
    const-string v1, ",isPss="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Landroid/rms/iaware/memrepair/MemRepairProcInfo;->isPss()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 217
    const-string v1, ",clean="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/rms/iaware/memrepair/MemRepairProcInfo;->mCleanType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ",adj="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/rms/iaware/memrepair/MemRepairProcInfo;->mCurAdj:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ",protected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean v1, p0, Landroid/rms/iaware/memrepair/MemRepairProcInfo;->mAwareProtected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 218
    const-string v1, ",procStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Landroid/rms/iaware/memrepair/MemRepairProcInfo;->mProcStatus:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/rms/iaware/memrepair/MemRepairProcInfo;->mProcStatus:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v1, "None"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 220
    iget-object v1, p0, Landroid/rms/iaware/memrepair/MemRepairProcInfo;->mProcPssList:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/rms/iaware/memrepair/MemRepairProcInfo;->mProcPssList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 221
    const-string v1, ",procMemSet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Landroid/rms/iaware/memrepair/MemRepairProcInfo;->mProcPssList:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 224
    :cond_1
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 225
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public updateAppMngInfo(IZLjava/lang/String;I)V
    .locals 0
    .param p1, "cleanType"    # I
    .param p2, "awareProtected"    # Z
    .param p3, "procStatus"    # Ljava/lang/String;
    .param p4, "curAdj"    # I

    .line 170
    iput p4, p0, Landroid/rms/iaware/memrepair/MemRepairProcInfo;->mCurAdj:I

    .line 171
    iput p1, p0, Landroid/rms/iaware/memrepair/MemRepairProcInfo;->mCleanType:I

    .line 172
    iput-boolean p2, p0, Landroid/rms/iaware/memrepair/MemRepairProcInfo;->mAwareProtected:Z

    .line 173
    iput-object p3, p0, Landroid/rms/iaware/memrepair/MemRepairProcInfo;->mProcStatus:Ljava/lang/String;

    .line 174
    return-void
.end method

.method public updateThresHoldType(I)V
    .locals 1
    .param p1, "type"    # I

    .line 137
    iget v0, p0, Landroid/rms/iaware/memrepair/MemRepairProcInfo;->mThresHoldType:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/rms/iaware/memrepair/MemRepairProcInfo;->mThresHoldType:I

    .line 138
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 236
    iget v0, p0, Landroid/rms/iaware/memrepair/MemRepairProcInfo;->mFlag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 238
    iget v0, p0, Landroid/rms/iaware/memrepair/MemRepairProcInfo;->mUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 239
    iget v0, p0, Landroid/rms/iaware/memrepair/MemRepairProcInfo;->mPid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 240
    iget-object v0, p0, Landroid/rms/iaware/memrepair/MemRepairProcInfo;->mProcName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 241
    iget-wide v0, p0, Landroid/rms/iaware/memrepair/MemRepairProcInfo;->mCurPss:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 242
    iget v0, p0, Landroid/rms/iaware/memrepair/MemRepairProcInfo;->mThresHoldType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 244
    iget v0, p0, Landroid/rms/iaware/memrepair/MemRepairProcInfo;->mCurAdj:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 245
    iget v0, p0, Landroid/rms/iaware/memrepair/MemRepairProcInfo;->mCleanType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 246
    iget-boolean v0, p0, Landroid/rms/iaware/memrepair/MemRepairProcInfo;->mAwareProtected:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 247
    iget-object v0, p0, Landroid/rms/iaware/memrepair/MemRepairProcInfo;->mProcStatus:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Landroid/rms/iaware/memrepair/MemRepairProcInfo;->mProcPssList:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/rms/iaware/memrepair/MemRepairProcInfo;->mProcPssList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_1

    .line 252
    :cond_0
    iget-object v0, p0, Landroid/rms/iaware/memrepair/MemRepairProcInfo;->mProcPssList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 253
    iget-object v0, p0, Landroid/rms/iaware/memrepair/MemRepairProcInfo;->mProcPssList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/rms/iaware/memrepair/MemRepairProcPss;

    .line 254
    .local v1, "procPss":Landroid/rms/iaware/memrepair/MemRepairProcPss;
    invoke-virtual {v1, p1, p2}, Landroid/rms/iaware/memrepair/MemRepairProcPss;->writeToParcel(Landroid/os/Parcel;I)V

    .line 255
    .end local v1    # "procPss":Landroid/rms/iaware/memrepair/MemRepairProcPss;
    goto :goto_0

    .line 250
    :cond_1
    :goto_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 257
    :cond_2
    return-void
.end method
