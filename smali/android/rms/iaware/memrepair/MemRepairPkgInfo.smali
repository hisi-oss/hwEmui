.class public Landroid/rms/iaware/memrepair/MemRepairPkgInfo;
.super Ljava/lang/Object;
.source "MemRepairPkgInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/rms/iaware/memrepair/MemRepairPkgInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final TYPE_EMERG_BG_THRESHOLD:I = 0x4

.field private static final TYPE_EMERG_FG_THRESHOLD:I = 0x2


# instance fields
.field private mAwareProtected:Z

.field private mCanClean:Z

.field private final mPkgName:Ljava/lang/String;

.field private mProcessList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/rms/iaware/memrepair/MemRepairProcInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mThresHoldType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 144
    new-instance v0, Landroid/rms/iaware/memrepair/MemRepairPkgInfo$1;

    invoke-direct {v0}, Landroid/rms/iaware/memrepair/MemRepairPkgInfo$1;-><init>()V

    sput-object v0, Landroid/rms/iaware/memrepair/MemRepairPkgInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/rms/iaware/memrepair/MemRepairPkgInfo;->mProcessList:Ljava/util/List;

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/rms/iaware/memrepair/MemRepairPkgInfo;->mPkgName:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/rms/iaware/memrepair/MemRepairPkgInfo;->mThresHoldType:I

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/rms/iaware/memrepair/MemRepairPkgInfo;->mAwareProtected:Z

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_1

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    iput-boolean v2, p0, Landroid/rms/iaware/memrepair/MemRepairPkgInfo;->mCanClean:Z

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 50
    .local v0, "processSize":I
    if-lez v0, :cond_2

    .line 51
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Landroid/rms/iaware/memrepair/MemRepairPkgInfo;->mProcessList:Ljava/util/List;

    .line 53
    :cond_2
    nop

    .local v1, "i":I
    :goto_2
    if-ge v1, v0, :cond_3

    .line 54
    new-instance v2, Landroid/rms/iaware/memrepair/MemRepairProcInfo;

    invoke-direct {v2, p1}, Landroid/rms/iaware/memrepair/MemRepairProcInfo;-><init>(Landroid/os/Parcel;)V

    .line 55
    .local v2, "procInfo":Landroid/rms/iaware/memrepair/MemRepairProcInfo;
    iget-object v3, p0, Landroid/rms/iaware/memrepair/MemRepairPkgInfo;->mProcessList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    .end local v2    # "procInfo":Landroid/rms/iaware/memrepair/MemRepairProcInfo;
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 57
    .end local v1    # "i":I
    :cond_3
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/rms/iaware/memrepair/MemRepairPkgInfo;->mProcessList:Ljava/util/List;

    .line 37
    iput-object p1, p0, Landroid/rms/iaware/memrepair/MemRepairPkgInfo;->mPkgName:Ljava/lang/String;

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Landroid/rms/iaware/memrepair/MemRepairPkgInfo;->mThresHoldType:I

    .line 39
    iput-boolean v0, p0, Landroid/rms/iaware/memrepair/MemRepairPkgInfo;->mAwareProtected:Z

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/rms/iaware/memrepair/MemRepairPkgInfo;->mCanClean:Z

    .line 41
    return-void
.end method

.method private isCanClean(Landroid/rms/iaware/memrepair/MemRepairProcInfo;)Z
    .locals 3
    .param p1, "procInfo"    # Landroid/rms/iaware/memrepair/MemRepairProcInfo;

    .line 79
    iget v0, p0, Landroid/rms/iaware/memrepair/MemRepairPkgInfo;->mThresHoldType:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-nez v0, :cond_3

    iget v0, p0, Landroid/rms/iaware/memrepair/MemRepairPkgInfo;->mThresHoldType:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    goto :goto_0

    .line 84
    :cond_0
    iget-boolean v0, p0, Landroid/rms/iaware/memrepair/MemRepairPkgInfo;->mAwareProtected:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 85
    return v2

    .line 88
    :cond_1
    invoke-virtual {p1}, Landroid/rms/iaware/memrepair/MemRepairProcInfo;->getCleanType()I

    move-result v0

    if-nez v0, :cond_2

    .line 89
    return v2

    .line 92
    :cond_2
    return v1

    .line 81
    :cond_3
    :goto_0
    return v1
.end method


# virtual methods
.method public addProcInfo(Landroid/rms/iaware/memrepair/MemRepairProcInfo;)V
    .locals 1
    .param p1, "procInfo"    # Landroid/rms/iaware/memrepair/MemRepairProcInfo;

    .line 72
    iget-object v0, p0, Landroid/rms/iaware/memrepair/MemRepairPkgInfo;->mProcessList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    invoke-virtual {p1}, Landroid/rms/iaware/memrepair/MemRepairProcInfo;->getThresHoldType()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/rms/iaware/memrepair/MemRepairPkgInfo;->updateThresHoldType(I)V

    .line 74
    invoke-virtual {p1}, Landroid/rms/iaware/memrepair/MemRepairProcInfo;->isAwareProtected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Landroid/rms/iaware/memrepair/MemRepairPkgInfo;->mAwareProtected:Z

    :goto_0
    iput-boolean v0, p0, Landroid/rms/iaware/memrepair/MemRepairPkgInfo;->mAwareProtected:Z

    .line 75
    invoke-direct {p0, p1}, Landroid/rms/iaware/memrepair/MemRepairPkgInfo;->isCanClean(Landroid/rms/iaware/memrepair/MemRepairProcInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/rms/iaware/memrepair/MemRepairPkgInfo;->mCanClean:Z

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Landroid/rms/iaware/memrepair/MemRepairPkgInfo;->mCanClean:Z

    .line 76
    return-void
.end method

.method public describeContents()I
    .locals 1

    .line 124
    const/4 v0, 0x0

    return v0
.end method

.method public getCanClean()Z
    .locals 1

    .line 68
    iget-boolean v0, p0, Landroid/rms/iaware/memrepair/MemRepairPkgInfo;->mCanClean:Z

    return v0
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Landroid/rms/iaware/memrepair/MemRepairPkgInfo;->mPkgName:Ljava/lang/String;

    return-object v0
.end method

.method public getProcessList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/rms/iaware/memrepair/MemRepairProcInfo;",
            ">;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Landroid/rms/iaware/memrepair/MemRepairPkgInfo;->mProcessList:Ljava/util/List;

    return-object v0
.end method

.method public getThresHoldType()I
    .locals 1

    .line 100
    iget v0, p0, Landroid/rms/iaware/memrepair/MemRepairPkgInfo;->mThresHoldType:I

    return v0
.end method

.method public isAwareProtected()Z
    .locals 1

    .line 104
    iget-boolean v0, p0, Landroid/rms/iaware/memrepair/MemRepairPkgInfo;->mAwareProtected:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 109
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 110
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "MemRepairPkgInfo ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 111
    const-string v1, "package="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Landroid/rms/iaware/memrepair/MemRepairPkgInfo;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 112
    const-string v1, ",type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/rms/iaware/memrepair/MemRepairPkgInfo;->mThresHoldType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 113
    const-string v1, ",protected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean v1, p0, Landroid/rms/iaware/memrepair/MemRepairPkgInfo;->mAwareProtected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 114
    iget-object v1, p0, Landroid/rms/iaware/memrepair/MemRepairPkgInfo;->mProcessList:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/rms/iaware/memrepair/MemRepairPkgInfo;->mProcessList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 115
    const-string v1, ",processList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Landroid/rms/iaware/memrepair/MemRepairPkgInfo;->mProcessList:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 118
    :cond_0
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 119
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public updateThresHoldType(I)V
    .locals 1
    .param p1, "type"    # I

    .line 96
    iget v0, p0, Landroid/rms/iaware/memrepair/MemRepairPkgInfo;->mThresHoldType:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/rms/iaware/memrepair/MemRepairPkgInfo;->mThresHoldType:I

    .line 97
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 129
    iget-object v0, p0, Landroid/rms/iaware/memrepair/MemRepairPkgInfo;->mPkgName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 130
    iget v0, p0, Landroid/rms/iaware/memrepair/MemRepairPkgInfo;->mThresHoldType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    iget-boolean v0, p0, Landroid/rms/iaware/memrepair/MemRepairPkgInfo;->mAwareProtected:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    iget-boolean v0, p0, Landroid/rms/iaware/memrepair/MemRepairPkgInfo;->mCanClean:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    iget-object v0, p0, Landroid/rms/iaware/memrepair/MemRepairPkgInfo;->mProcessList:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/rms/iaware/memrepair/MemRepairPkgInfo;->mProcessList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_1

    .line 137
    :cond_0
    iget-object v0, p0, Landroid/rms/iaware/memrepair/MemRepairPkgInfo;->mProcessList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    iget-object v0, p0, Landroid/rms/iaware/memrepair/MemRepairPkgInfo;->mProcessList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/rms/iaware/memrepair/MemRepairProcInfo;

    .line 139
    .local v1, "procInfo":Landroid/rms/iaware/memrepair/MemRepairProcInfo;
    invoke-virtual {v1, p1, p2}, Landroid/rms/iaware/memrepair/MemRepairProcInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 140
    .end local v1    # "procInfo":Landroid/rms/iaware/memrepair/MemRepairProcInfo;
    goto :goto_0

    .line 135
    :cond_1
    :goto_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    :cond_2
    return-void
.end method
