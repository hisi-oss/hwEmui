.class public Landroid/rms/iaware/DumpData;
.super Ljava/lang/Object;
.source "DumpData.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable<",
        "Landroid/rms/iaware/DumpData;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/rms/iaware/DumpData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mExeTime:I

.field private mFeatureId:I

.field private mOperation:Ljava/lang/String;

.field private mOperationTimeStamp:J

.field private mReason:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 138
    new-instance v0, Landroid/rms/iaware/DumpData$1;

    invoke-direct {v0}, Landroid/rms/iaware/DumpData$1;-><init>()V

    sput-object v0, Landroid/rms/iaware/DumpData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JILjava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "time"    # J
    .param p3, "featureid"    # I
    .param p4, "operation"    # Ljava/lang/String;
    .param p5, "exetime"    # I
    .param p6, "reason"    # Ljava/lang/String;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-wide p1, p0, Landroid/rms/iaware/DumpData;->mOperationTimeStamp:J

    .line 33
    iput p3, p0, Landroid/rms/iaware/DumpData;->mFeatureId:I

    .line 34
    iput-object p4, p0, Landroid/rms/iaware/DumpData;->mOperation:Ljava/lang/String;

    .line 35
    iput p5, p0, Landroid/rms/iaware/DumpData;->mExeTime:I

    .line 36
    iput-object p6, p0, Landroid/rms/iaware/DumpData;->mReason:Ljava/lang/String;

    .line 37
    return-void
.end method

.method private compareObject(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "object1"    # Ljava/lang/Object;
    .param p2, "object2"    # Ljava/lang/Object;

    .line 158
    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    .line 159
    return v0

    .line 162
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public compareTo(Landroid/rms/iaware/DumpData;)I
    .locals 5
    .param p1, "other"    # Landroid/rms/iaware/DumpData;

    .line 42
    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 43
    return v0

    .line 47
    :cond_0
    iget-wide v1, p0, Landroid/rms/iaware/DumpData;->mOperationTimeStamp:J

    invoke-virtual {p1}, Landroid/rms/iaware/DumpData;->getTime()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    .line 48
    const/4 v0, -0x1

    return v0

    .line 49
    :cond_1
    iget-wide v1, p0, Landroid/rms/iaware/DumpData;->mOperationTimeStamp:J

    invoke-virtual {p1}, Landroid/rms/iaware/DumpData;->getTime()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    .line 50
    return v0

    .line 52
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 24
    check-cast p1, Landroid/rms/iaware/DumpData;

    invoke-virtual {p0, p1}, Landroid/rms/iaware/DumpData;->compareTo(Landroid/rms/iaware/DumpData;)I

    move-result p1

    return p1
.end method

.method public describeContents()I
    .locals 1

    .line 154
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "other"    # Ljava/lang/Object;

    .line 59
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_0

    goto :goto_1

    .line 61
    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    .line 62
    return v1

    .line 65
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/rms/iaware/DumpData;

    .line 66
    .local v2, "otherData":Landroid/rms/iaware/DumpData;
    iget-wide v3, p0, Landroid/rms/iaware/DumpData;->mOperationTimeStamp:J

    invoke-virtual {v2}, Landroid/rms/iaware/DumpData;->getTime()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget v3, p0, Landroid/rms/iaware/DumpData;->mFeatureId:I

    .line 67
    invoke-virtual {v2}, Landroid/rms/iaware/DumpData;->getFeatureId()I

    move-result v4

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/rms/iaware/DumpData;->mExeTime:I

    .line 68
    invoke-virtual {v2}, Landroid/rms/iaware/DumpData;->getExeTime()I

    move-result v4

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/rms/iaware/DumpData;->mOperation:Ljava/lang/String;

    .line 69
    invoke-virtual {v2}, Landroid/rms/iaware/DumpData;->getOperation()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Landroid/rms/iaware/DumpData;->compareObject(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/rms/iaware/DumpData;->mReason:Ljava/lang/String;

    .line 70
    invoke-virtual {v2}, Landroid/rms/iaware/DumpData;->getReson()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Landroid/rms/iaware/DumpData;->compareObject(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 66
    move v0, v1

    goto :goto_0

    .line 70
    :cond_2
    nop

    .line 66
    :goto_0
    return v0

    .line 60
    .end local v2    # "otherData":Landroid/rms/iaware/DumpData;
    :cond_3
    :goto_1
    return v0
.end method

.method public getExeTime()I
    .locals 1

    .line 122
    iget v0, p0, Landroid/rms/iaware/DumpData;->mExeTime:I

    return v0
.end method

.method public getFeatureId()I
    .locals 1

    .line 98
    iget v0, p0, Landroid/rms/iaware/DumpData;->mFeatureId:I

    return v0
.end method

.method public getOperation()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Landroid/rms/iaware/DumpData;->mOperation:Ljava/lang/String;

    return-object v0
.end method

.method public getReson()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Landroid/rms/iaware/DumpData;->mReason:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()J
    .locals 2

    .line 90
    iget-wide v0, p0, Landroid/rms/iaware/DumpData;->mOperationTimeStamp:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 9

    .line 76
    const/16 v0, 0x1f

    .line 77
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 80
    .local v1, "result":I
    const/16 v2, 0x1f

    mul-int v3, v2, v1

    iget-wide v4, p0, Landroid/rms/iaware/DumpData;->mOperationTimeStamp:J

    iget-wide v6, p0, Landroid/rms/iaware/DumpData;->mOperationTimeStamp:J

    const/16 v8, 0x20

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int/2addr v3, v4

    .line 81
    .end local v1    # "result":I
    .local v3, "result":I
    mul-int v1, v2, v3

    iget v4, p0, Landroid/rms/iaware/DumpData;->mFeatureId:I

    add-int/2addr v1, v4

    .line 82
    .end local v3    # "result":I
    .restart local v1    # "result":I
    mul-int v3, v2, v1

    iget-object v4, p0, Landroid/rms/iaware/DumpData;->mOperation:Ljava/lang/String;

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/rms/iaware/DumpData;->mOperation:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    add-int/2addr v3, v4

    .line 83
    .end local v1    # "result":I
    .restart local v3    # "result":I
    mul-int v1, v2, v3

    iget v4, p0, Landroid/rms/iaware/DumpData;->mExeTime:I

    add-int/2addr v1, v4

    .line 84
    .end local v3    # "result":I
    .restart local v1    # "result":I
    mul-int/2addr v2, v1

    iget-object v3, p0, Landroid/rms/iaware/DumpData;->mReason:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/rms/iaware/DumpData;->mReason:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    nop

    :cond_1
    add-int/2addr v2, v5

    .line 86
    .end local v1    # "result":I
    .local v2, "result":I
    return v2
.end method

.method public setExeTime(I)V
    .locals 0
    .param p1, "exetime"    # I

    .line 126
    iput p1, p0, Landroid/rms/iaware/DumpData;->mExeTime:I

    .line 127
    return-void
.end method

.method public setFeatureId(I)V
    .locals 0
    .param p1, "featureId"    # I

    .line 102
    iput p1, p0, Landroid/rms/iaware/DumpData;->mFeatureId:I

    .line 103
    return-void
.end method

.method public setOperation(Ljava/lang/String;)V
    .locals 0
    .param p1, "operation"    # Ljava/lang/String;

    .line 110
    iput-object p1, p0, Landroid/rms/iaware/DumpData;->mOperation:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public setReason(Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;

    .line 118
    iput-object p1, p0, Landroid/rms/iaware/DumpData;->mReason:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public setTime(J)V
    .locals 0
    .param p1, "time"    # J

    .line 94
    iput-wide p1, p0, Landroid/rms/iaware/DumpData;->mOperationTimeStamp:J

    .line 95
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 131
    iget-wide v0, p0, Landroid/rms/iaware/DumpData;->mOperationTimeStamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 132
    iget v0, p0, Landroid/rms/iaware/DumpData;->mFeatureId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    iget-object v0, p0, Landroid/rms/iaware/DumpData;->mOperation:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 134
    iget v0, p0, Landroid/rms/iaware/DumpData;->mExeTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    iget-object v0, p0, Landroid/rms/iaware/DumpData;->mReason:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 136
    return-void
.end method
