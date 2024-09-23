.class public Landroid/emcom/EmailInfo;
.super Landroid/emcom/SmartcareInfos$SmartcareBaseInfo;
.source "EmailInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/emcom/EmailInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public abnormalDroppingFlag:B

.field public appName:Ljava/lang/String;

.field public emailEndTime:I

.field public emailStartDate:I

.field public emailStartTime:I

.field public emailThrouput:I

.field public hostName:Ljava/lang/String;

.field public latency:I

.field public protocolType:B

.field public successFlag:B

.field public type:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    new-instance v0, Landroid/emcom/EmailInfo$1;

    invoke-direct {v0}, Landroid/emcom/EmailInfo$1;-><init>()V

    sput-object v0, Landroid/emcom/EmailInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroid/emcom/SmartcareInfos$SmartcareBaseInfo;-><init>()V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 24
    invoke-direct {p0}, Landroid/emcom/SmartcareInfos$SmartcareBaseInfo;-><init>()V

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/emcom/EmailInfo;->appName:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/emcom/EmailInfo;->type:B

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/emcom/EmailInfo;->latency:I

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/emcom/EmailInfo;->successFlag:B

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/emcom/EmailInfo;->abnormalDroppingFlag:B

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/emcom/EmailInfo;->hostName:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/emcom/EmailInfo;->emailStartDate:I

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/emcom/EmailInfo;->emailStartTime:I

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/emcom/EmailInfo;->emailEndTime:I

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/emcom/EmailInfo;->protocolType:B

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/emcom/EmailInfo;->emailThrouput:I

    .line 36
    return-void
.end method


# virtual methods
.method public addToInfos(Landroid/emcom/SmartcareInfos;)V
    .locals 0
    .param p1, "cis"    # Landroid/emcom/SmartcareInfos;

    .line 40
    invoke-super {p0, p1}, Landroid/emcom/SmartcareInfos$SmartcareBaseInfo;->addToInfos(Landroid/emcom/SmartcareInfos;)V

    .line 41
    iput-object p0, p1, Landroid/emcom/SmartcareInfos;->emailInfo:Landroid/emcom/EmailInfo;

    .line 42
    return-void
.end method

.method public final copyFrom(Landroid/emcom/EmailInfo;)V
    .locals 1
    .param p1, "o"    # Landroid/emcom/EmailInfo;

    .line 91
    iget-object v0, p1, Landroid/emcom/EmailInfo;->appName:Ljava/lang/String;

    iput-object v0, p0, Landroid/emcom/EmailInfo;->appName:Ljava/lang/String;

    .line 92
    iget-byte v0, p1, Landroid/emcom/EmailInfo;->type:B

    iput-byte v0, p0, Landroid/emcom/EmailInfo;->type:B

    .line 93
    iget v0, p1, Landroid/emcom/EmailInfo;->latency:I

    iput v0, p0, Landroid/emcom/EmailInfo;->latency:I

    .line 94
    iget-byte v0, p1, Landroid/emcom/EmailInfo;->successFlag:B

    iput-byte v0, p0, Landroid/emcom/EmailInfo;->successFlag:B

    .line 95
    iget-byte v0, p1, Landroid/emcom/EmailInfo;->abnormalDroppingFlag:B

    iput-byte v0, p0, Landroid/emcom/EmailInfo;->abnormalDroppingFlag:B

    .line 96
    iget-object v0, p1, Landroid/emcom/EmailInfo;->hostName:Ljava/lang/String;

    iput-object v0, p0, Landroid/emcom/EmailInfo;->hostName:Ljava/lang/String;

    .line 97
    iget v0, p1, Landroid/emcom/EmailInfo;->emailStartDate:I

    iput v0, p0, Landroid/emcom/EmailInfo;->emailStartDate:I

    .line 98
    iget v0, p1, Landroid/emcom/EmailInfo;->emailStartTime:I

    iput v0, p0, Landroid/emcom/EmailInfo;->emailStartTime:I

    .line 99
    iget v0, p1, Landroid/emcom/EmailInfo;->emailEndTime:I

    iput v0, p0, Landroid/emcom/EmailInfo;->emailEndTime:I

    .line 100
    iget-byte v0, p1, Landroid/emcom/EmailInfo;->protocolType:B

    iput-byte v0, p0, Landroid/emcom/EmailInfo;->protocolType:B

    .line 101
    iget v0, p1, Landroid/emcom/EmailInfo;->emailThrouput:I

    iput v0, p0, Landroid/emcom/EmailInfo;->emailThrouput:I

    .line 102
    return-void
.end method

.method public describeContents()I
    .locals 1

    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/emcom/EmailInfo;->appName:Ljava/lang/String;

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/emcom/EmailInfo;->type:B

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-short v0, v0

    iput v0, p0, Landroid/emcom/EmailInfo;->latency:I

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/emcom/EmailInfo;->successFlag:B

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/emcom/EmailInfo;->abnormalDroppingFlag:B

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/emcom/EmailInfo;->hostName:Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/emcom/EmailInfo;->emailStartDate:I

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/emcom/EmailInfo;->emailStartTime:I

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/emcom/EmailInfo;->emailEndTime:I

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/emcom/EmailInfo;->protocolType:B

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/emcom/EmailInfo;->emailThrouput:I

    .line 88
    return-void
.end method

.method public recycle()V
    .locals 3

    .line 136
    invoke-super {p0}, Landroid/emcom/SmartcareInfos$SmartcareBaseInfo;->recycle()V

    .line 137
    const-string v0, ""

    iput-object v0, p0, Landroid/emcom/EmailInfo;->appName:Ljava/lang/String;

    .line 138
    const/4 v0, -0x1

    iput-byte v0, p0, Landroid/emcom/EmailInfo;->type:B

    .line 139
    iput v0, p0, Landroid/emcom/EmailInfo;->latency:I

    .line 140
    const/4 v1, 0x1

    iput-byte v1, p0, Landroid/emcom/EmailInfo;->successFlag:B

    .line 141
    const/4 v1, 0x0

    iput-byte v1, p0, Landroid/emcom/EmailInfo;->abnormalDroppingFlag:B

    .line 142
    const-string v2, ""

    iput-object v2, p0, Landroid/emcom/EmailInfo;->hostName:Ljava/lang/String;

    .line 143
    iput v1, p0, Landroid/emcom/EmailInfo;->emailStartDate:I

    .line 144
    iput v1, p0, Landroid/emcom/EmailInfo;->emailStartTime:I

    .line 145
    iput v1, p0, Landroid/emcom/EmailInfo;->emailEndTime:I

    .line 146
    iput-byte v0, p0, Landroid/emcom/EmailInfo;->protocolType:B

    .line 147
    iput v0, p0, Landroid/emcom/EmailInfo;->emailThrouput:I

    .line 148
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "hash: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    const-string v1, ",app: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    iget-object v1, p0, Landroid/emcom/EmailInfo;->appName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    const-string v1, ",type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    iget-byte v1, p0, Landroid/emcom/EmailInfo;->type:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 113
    const-string v1, ",latency: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    iget v1, p0, Landroid/emcom/EmailInfo;->latency:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 115
    const-string v1, ",successFlag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    iget-byte v1, p0, Landroid/emcom/EmailInfo;->successFlag:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 117
    const-string v1, ",abnormalDroppingFlag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    iget-byte v1, p0, Landroid/emcom/EmailInfo;->abnormalDroppingFlag:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 119
    const-string v1, ",emailStartDate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    iget v1, p0, Landroid/emcom/EmailInfo;->emailStartDate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 121
    const-string v1, ",emailStartTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    iget v1, p0, Landroid/emcom/EmailInfo;->emailStartTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 123
    const-string v1, ",emailEndTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    iget v1, p0, Landroid/emcom/EmailInfo;->emailEndTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 125
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    const-string v1, ",protocolType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    iget-byte v1, p0, Landroid/emcom/EmailInfo;->protocolType:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 128
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    const-string v1, ",emailThrouput: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    iget v1, p0, Landroid/emcom/EmailInfo;->emailThrouput:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 131
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 46
    iget-object v0, p0, Landroid/emcom/EmailInfo;->appName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    iget-byte v0, p0, Landroid/emcom/EmailInfo;->type:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 48
    iget v0, p0, Landroid/emcom/EmailInfo;->latency:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    iget-byte v0, p0, Landroid/emcom/EmailInfo;->successFlag:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 50
    iget-byte v0, p0, Landroid/emcom/EmailInfo;->abnormalDroppingFlag:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    iget-object v0, p0, Landroid/emcom/EmailInfo;->hostName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 52
    iget v0, p0, Landroid/emcom/EmailInfo;->emailStartDate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    iget v0, p0, Landroid/emcom/EmailInfo;->emailStartTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    iget v0, p0, Landroid/emcom/EmailInfo;->emailEndTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    iget-byte v0, p0, Landroid/emcom/EmailInfo;->protocolType:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    iget v0, p0, Landroid/emcom/EmailInfo;->emailThrouput:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    return-void
.end method
