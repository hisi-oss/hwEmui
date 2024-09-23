.class public Landroid/rms/iaware/CmpTypeInfo;
.super Ljava/lang/Object;
.source "CmpTypeInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CMP_TYPE_FAKEACTIVITY:I = 0x1

.field public static final CMP_TYPE_INVALIDALARM:I = 0x4

.field public static final CMP_TYPE_PUSHSDK:I = 0x0

.field public static final CMP_TYPE_REALFGACTIVITY:I = 0x2

.field public static final CMP_TYPE_UNKNOWN:I = -0x1

.field public static final CMP_TYPE_VALIDALARM:I = 0x3

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/rms/iaware/CmpTypeInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private cls:Ljava/lang/String;

.field private createTime:J

.field private perception_count:I

.field private pkgName:Ljava/lang/String;

.field private type:I

.field private unperception_count:I

.field private userId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 143
    new-instance v0, Landroid/rms/iaware/CmpTypeInfo$1;

    invoke-direct {v0}, Landroid/rms/iaware/CmpTypeInfo$1;-><init>()V

    sput-object v0, Landroid/rms/iaware/CmpTypeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string v0, ""

    iput-object v0, p0, Landroid/rms/iaware/CmpTypeInfo;->pkgName:Ljava/lang/String;

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Landroid/rms/iaware/CmpTypeInfo;->perception_count:I

    .line 45
    iput v0, p0, Landroid/rms/iaware/CmpTypeInfo;->unperception_count:I

    .line 46
    iput v0, p0, Landroid/rms/iaware/CmpTypeInfo;->userId:I

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string v0, ""

    iput-object v0, p0, Landroid/rms/iaware/CmpTypeInfo;->pkgName:Ljava/lang/String;

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Landroid/rms/iaware/CmpTypeInfo;->perception_count:I

    .line 45
    iput v0, p0, Landroid/rms/iaware/CmpTypeInfo;->unperception_count:I

    .line 46
    iput v0, p0, Landroid/rms/iaware/CmpTypeInfo;->userId:I

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/rms/iaware/CmpTypeInfo;->type:I

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/rms/iaware/CmpTypeInfo;->pkgName:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/rms/iaware/CmpTypeInfo;->cls:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/rms/iaware/CmpTypeInfo;->createTime:J

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/rms/iaware/CmpTypeInfo;->perception_count:I

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/rms/iaware/CmpTypeInfo;->unperception_count:I

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/rms/iaware/CmpTypeInfo;->userId:I

    .line 59
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 129
    const/4 v0, 0x0

    return v0
.end method

.method public getCls()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Landroid/rms/iaware/CmpTypeInfo;->cls:Ljava/lang/String;

    return-object v0
.end method

.method public getCmp()Ljava/lang/String;
    .locals 2

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/rms/iaware/CmpTypeInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/rms/iaware/CmpTypeInfo;->cls:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPerceptionCount()I
    .locals 1

    .line 94
    iget v0, p0, Landroid/rms/iaware/CmpTypeInfo;->perception_count:I

    return v0
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Landroid/rms/iaware/CmpTypeInfo;->pkgName:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()J
    .locals 2

    .line 86
    iget-wide v0, p0, Landroid/rms/iaware/CmpTypeInfo;->createTime:J

    return-wide v0
.end method

.method public getType()I
    .locals 1

    .line 62
    iget v0, p0, Landroid/rms/iaware/CmpTypeInfo;->type:I

    return v0
.end method

.method public getUnPerceptionCount()I
    .locals 1

    .line 102
    iget v0, p0, Landroid/rms/iaware/CmpTypeInfo;->unperception_count:I

    return v0
.end method

.method public getUserId()I
    .locals 1

    .line 110
    iget v0, p0, Landroid/rms/iaware/CmpTypeInfo;->userId:I

    return v0
.end method

.method public setCls(Ljava/lang/String;)V
    .locals 0
    .param p1, "cls"    # Ljava/lang/String;

    .line 82
    iput-object p1, p0, Landroid/rms/iaware/CmpTypeInfo;->cls:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setPerceptionCount(I)V
    .locals 0
    .param p1, "count"    # I

    .line 98
    iput p1, p0, Landroid/rms/iaware/CmpTypeInfo;->perception_count:I

    .line 99
    return-void
.end method

.method public setPkgName(Ljava/lang/String;)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 74
    iput-object p1, p0, Landroid/rms/iaware/CmpTypeInfo;->pkgName:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setTime(J)V
    .locals 0
    .param p1, "time"    # J

    .line 90
    iput-wide p1, p0, Landroid/rms/iaware/CmpTypeInfo;->createTime:J

    .line 91
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .line 66
    iput p1, p0, Landroid/rms/iaware/CmpTypeInfo;->type:I

    .line 67
    return-void
.end method

.method public setUnPerceptionCount(I)V
    .locals 0
    .param p1, "count"    # I

    .line 106
    iput p1, p0, Landroid/rms/iaware/CmpTypeInfo;->unperception_count:I

    .line 107
    return-void
.end method

.method public setUserId(I)V
    .locals 0
    .param p1, "userid"    # I

    .line 114
    iput p1, p0, Landroid/rms/iaware/CmpTypeInfo;->userId:I

    .line 115
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CmpTypeInfo [type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/rms/iaware/CmpTypeInfo;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/rms/iaware/CmpTypeInfo;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/rms/iaware/CmpTypeInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/rms/iaware/CmpTypeInfo;->cls:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/rms/iaware/CmpTypeInfo;->createTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", perception_count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/rms/iaware/CmpTypeInfo;->perception_count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", unperception_count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/rms/iaware/CmpTypeInfo;->unperception_count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

    .line 134
    iget v0, p0, Landroid/rms/iaware/CmpTypeInfo;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    iget-object v0, p0, Landroid/rms/iaware/CmpTypeInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Landroid/rms/iaware/CmpTypeInfo;->cls:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 137
    iget-wide v0, p0, Landroid/rms/iaware/CmpTypeInfo;->createTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 138
    iget v0, p0, Landroid/rms/iaware/CmpTypeInfo;->perception_count:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    iget v0, p0, Landroid/rms/iaware/CmpTypeInfo;->unperception_count:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    iget v0, p0, Landroid/rms/iaware/CmpTypeInfo;->userId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    return-void
.end method
