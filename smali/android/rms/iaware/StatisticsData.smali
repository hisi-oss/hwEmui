.class public Landroid/rms/iaware/StatisticsData;
.super Ljava/lang/Object;
.source "StatisticsData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/rms/iaware/StatisticsData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mEffect:I

.field private mEndTime:J

.field private mFeatureId:I

.field private mOccurCount:I

.field private mStartTime:J

.field private mSubType:Ljava/lang/String;

.field private mTotalTime:I

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 137
    new-instance v0, Landroid/rms/iaware/StatisticsData$1;

    invoke-direct {v0}, Landroid/rms/iaware/StatisticsData$1;-><init>()V

    sput-object v0, Landroid/rms/iaware/StatisticsData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;III)V
    .locals 11
    .param p1, "featureid"    # I
    .param p2, "type"    # I
    .param p3, "subtype"    # Ljava/lang/String;
    .param p4, "occurCount"    # I
    .param p5, "totaltime"    # I
    .param p6, "effect"    # I

    .line 38
    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v10}, Landroid/rms/iaware/StatisticsData;-><init>(IILjava/lang/String;IIIJJ)V

    .line 39
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;IIIJJ)V
    .locals 0
    .param p1, "featureid"    # I
    .param p2, "type"    # I
    .param p3, "subtype"    # Ljava/lang/String;
    .param p4, "occurCount"    # I
    .param p5, "totaltime"    # I
    .param p6, "effect"    # I
    .param p7, "startTime"    # J
    .param p9, "endTime"    # J

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput p1, p0, Landroid/rms/iaware/StatisticsData;->mFeatureId:I

    .line 44
    iput p2, p0, Landroid/rms/iaware/StatisticsData;->mType:I

    .line 45
    iput-object p3, p0, Landroid/rms/iaware/StatisticsData;->mSubType:Ljava/lang/String;

    .line 46
    iput p4, p0, Landroid/rms/iaware/StatisticsData;->mOccurCount:I

    .line 47
    iput p5, p0, Landroid/rms/iaware/StatisticsData;->mTotalTime:I

    .line 48
    iput p6, p0, Landroid/rms/iaware/StatisticsData;->mEffect:I

    .line 49
    iput-wide p7, p0, Landroid/rms/iaware/StatisticsData;->mStartTime:J

    .line 50
    iput-wide p9, p0, Landroid/rms/iaware/StatisticsData;->mEndTime:J

    .line 51
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 154
    const/4 v0, 0x0

    return v0
.end method

.method public getEffect()I
    .locals 1

    .line 94
    iget v0, p0, Landroid/rms/iaware/StatisticsData;->mEffect:I

    return v0
.end method

.method public getEndTime()J
    .locals 2

    .line 110
    iget-wide v0, p0, Landroid/rms/iaware/StatisticsData;->mEndTime:J

    return-wide v0
.end method

.method public getFeatureId()I
    .locals 1

    .line 54
    iget v0, p0, Landroid/rms/iaware/StatisticsData;->mFeatureId:I

    return v0
.end method

.method public getOccurCount()I
    .locals 1

    .line 78
    iget v0, p0, Landroid/rms/iaware/StatisticsData;->mOccurCount:I

    return v0
.end method

.method public getStartTime()J
    .locals 2

    .line 102
    iget-wide v0, p0, Landroid/rms/iaware/StatisticsData;->mStartTime:J

    return-wide v0
.end method

.method public getSubType()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Landroid/rms/iaware/StatisticsData;->mSubType:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalTime()I
    .locals 1

    .line 86
    iget v0, p0, Landroid/rms/iaware/StatisticsData;->mTotalTime:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 62
    iget v0, p0, Landroid/rms/iaware/StatisticsData;->mType:I

    return v0
.end method

.method public setEffect(I)V
    .locals 0
    .param p1, "effect"    # I

    .line 98
    iput p1, p0, Landroid/rms/iaware/StatisticsData;->mEffect:I

    .line 99
    return-void
.end method

.method public setEndTime(J)V
    .locals 0
    .param p1, "endTime"    # J

    .line 114
    iput-wide p1, p0, Landroid/rms/iaware/StatisticsData;->mEndTime:J

    .line 115
    return-void
.end method

.method public setFeatureId(I)V
    .locals 0
    .param p1, "featureId"    # I

    .line 58
    iput p1, p0, Landroid/rms/iaware/StatisticsData;->mFeatureId:I

    .line 59
    return-void
.end method

.method public setOccurCount(I)V
    .locals 0
    .param p1, "occurCount"    # I

    .line 82
    iput p1, p0, Landroid/rms/iaware/StatisticsData;->mOccurCount:I

    .line 83
    return-void
.end method

.method public setStartTime(J)V
    .locals 0
    .param p1, "startTime"    # J

    .line 106
    iput-wide p1, p0, Landroid/rms/iaware/StatisticsData;->mStartTime:J

    .line 107
    return-void
.end method

.method public setSubType(Ljava/lang/String;)V
    .locals 0
    .param p1, "subType"    # Ljava/lang/String;

    .line 74
    iput-object p1, p0, Landroid/rms/iaware/StatisticsData;->mSubType:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setTotalTime(I)V
    .locals 0
    .param p1, "totaltime"    # I

    .line 90
    iput p1, p0, Landroid/rms/iaware/StatisticsData;->mTotalTime:I

    .line 91
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .line 66
    iput p1, p0, Landroid/rms/iaware/StatisticsData;->mType:I

    .line 67
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StatisticsData[ FeatureId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/rms/iaware/StatisticsData;->mFeatureId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/rms/iaware/StatisticsData;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", SubType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/rms/iaware/StatisticsData;->mSubType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", OccurCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/rms/iaware/StatisticsData;->mOccurCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", TotalTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/rms/iaware/StatisticsData;->mTotalTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Effect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/rms/iaware/StatisticsData;->mEffect:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", StartTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/rms/iaware/StatisticsData;->mStartTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", EndTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/rms/iaware/StatisticsData;->mEndTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 127
    iget v0, p0, Landroid/rms/iaware/StatisticsData;->mFeatureId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    iget v0, p0, Landroid/rms/iaware/StatisticsData;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    iget-object v0, p0, Landroid/rms/iaware/StatisticsData;->mSubType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 130
    iget v0, p0, Landroid/rms/iaware/StatisticsData;->mOccurCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    iget v0, p0, Landroid/rms/iaware/StatisticsData;->mTotalTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    iget v0, p0, Landroid/rms/iaware/StatisticsData;->mEffect:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    iget-wide v0, p0, Landroid/rms/iaware/StatisticsData;->mStartTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 134
    iget-wide v0, p0, Landroid/rms/iaware/StatisticsData;->mEndTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 135
    return-void
.end method
