.class public Lhuawei/cust/aidl/SimFileInfo;
.super Ljava/lang/Object;
.source "SimFileInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lhuawei/cust/aidl/SimFileInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private gid1:Ljava/lang/String;

.field private gid2:Ljava/lang/String;

.field private iccid:Ljava/lang/String;

.field private imsi:Ljava/lang/String;

.field private mccMnc:Ljava/lang/String;

.field specialFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lhuawei/cust/aidl/SpecialFile;",
            ">;"
        }
    .end annotation
.end field

.field private spn:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Lhuawei/cust/aidl/SimFileInfo$1;

    invoke-direct {v0}, Lhuawei/cust/aidl/SimFileInfo$1;-><init>()V

    sput-object v0, Lhuawei/cust/aidl/SimFileInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lhuawei/cust/aidl/SimFileInfo;->specialFiles:Ljava/util/List;

    .line 24
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lhuawei/cust/aidl/SimFileInfo;->specialFiles:Ljava/util/List;

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhuawei/cust/aidl/SimFileInfo;->mccMnc:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhuawei/cust/aidl/SimFileInfo;->imsi:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhuawei/cust/aidl/SimFileInfo;->iccid:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhuawei/cust/aidl/SimFileInfo;->spn:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhuawei/cust/aidl/SimFileInfo;->gid1:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhuawei/cust/aidl/SimFileInfo;->gid2:Ljava/lang/String;

    .line 34
    sget-object v0, Lhuawei/cust/aidl/SpecialFile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lhuawei/cust/aidl/SimFileInfo;->specialFiles:Ljava/util/List;

    .line 35
    return-void
.end method

.method private static givePrintableMsg(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "value"    # Ljava/lang/String;

    .line 134
    const/4 v0, 0x0

    .line 135
    .local v0, "valueToPrint":Ljava/lang/String;
    if-eqz p0, :cond_1

    .line 136
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-le v1, v2, :cond_0

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "XXXXXXXXXXX"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 139
    :cond_0
    move-object v0, p0

    .line 142
    :cond_1
    :goto_0
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public getGid1()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lhuawei/cust/aidl/SimFileInfo;->gid1:Ljava/lang/String;

    return-object v0
.end method

.method public getGid2()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lhuawei/cust/aidl/SimFileInfo;->gid2:Ljava/lang/String;

    return-object v0
.end method

.method public getIccid()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lhuawei/cust/aidl/SimFileInfo;->iccid:Ljava/lang/String;

    return-object v0
.end method

.method public getImsi()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lhuawei/cust/aidl/SimFileInfo;->imsi:Ljava/lang/String;

    return-object v0
.end method

.method public getMccMnc()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lhuawei/cust/aidl/SimFileInfo;->mccMnc:Ljava/lang/String;

    return-object v0
.end method

.method public getSpecialFiles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lhuawei/cust/aidl/SpecialFile;",
            ">;"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lhuawei/cust/aidl/SimFileInfo;->specialFiles:Ljava/util/List;

    return-object v0
.end method

.method public getSpn()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lhuawei/cust/aidl/SimFileInfo;->spn:Ljava/lang/String;

    return-object v0
.end method

.method public setGid1(Ljava/lang/String;)V
    .locals 0
    .param p1, "gid1"    # Ljava/lang/String;

    .line 86
    iput-object p1, p0, Lhuawei/cust/aidl/SimFileInfo;->gid1:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setGid2(Ljava/lang/String;)V
    .locals 0
    .param p1, "gid2"    # Ljava/lang/String;

    .line 94
    iput-object p1, p0, Lhuawei/cust/aidl/SimFileInfo;->gid2:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setIccid(Ljava/lang/String;)V
    .locals 0
    .param p1, "iccid"    # Ljava/lang/String;

    .line 70
    iput-object p1, p0, Lhuawei/cust/aidl/SimFileInfo;->iccid:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setImsi(Ljava/lang/String;)V
    .locals 0
    .param p1, "imsi"    # Ljava/lang/String;

    .line 62
    iput-object p1, p0, Lhuawei/cust/aidl/SimFileInfo;->imsi:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setMccMnc(Ljava/lang/String;)V
    .locals 0
    .param p1, "mccMnc"    # Ljava/lang/String;

    .line 54
    iput-object p1, p0, Lhuawei/cust/aidl/SimFileInfo;->mccMnc:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setSpecialFiles(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lhuawei/cust/aidl/SpecialFile;",
            ">;)V"
        }
    .end annotation

    .line 102
    .local p1, "specialFiles":Ljava/util/List;, "Ljava/util/List<Lhuawei/cust/aidl/SpecialFile;>;"
    iput-object p1, p0, Lhuawei/cust/aidl/SimFileInfo;->specialFiles:Ljava/util/List;

    .line 103
    return-void
.end method

.method public setSpn(Ljava/lang/String;)V
    .locals 0
    .param p1, "spn"    # Ljava/lang/String;

    .line 78
    iput-object p1, p0, Lhuawei/cust/aidl/SimFileInfo;->spn:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SimFileInfo{mccMnc=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lhuawei/cust/aidl/SimFileInfo;->mccMnc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", imsi=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lhuawei/cust/aidl/SimFileInfo;->imsi:Ljava/lang/String;

    .line 125
    invoke-static {v2}, Lhuawei/cust/aidl/SimFileInfo;->givePrintableMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", iccid=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lhuawei/cust/aidl/SimFileInfo;->iccid:Ljava/lang/String;

    .line 126
    invoke-static {v2}, Lhuawei/cust/aidl/SimFileInfo;->givePrintableMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", spn=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lhuawei/cust/aidl/SimFileInfo;->spn:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", gid1=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lhuawei/cust/aidl/SimFileInfo;->gid1:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", gid2=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lhuawei/cust/aidl/SimFileInfo;->gid2:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", specialFiles="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lhuawei/cust/aidl/SimFileInfo;->specialFiles:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 123
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 112
    iget-object v0, p0, Lhuawei/cust/aidl/SimFileInfo;->mccMnc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lhuawei/cust/aidl/SimFileInfo;->imsi:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lhuawei/cust/aidl/SimFileInfo;->iccid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lhuawei/cust/aidl/SimFileInfo;->spn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lhuawei/cust/aidl/SimFileInfo;->gid1:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lhuawei/cust/aidl/SimFileInfo;->gid2:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lhuawei/cust/aidl/SimFileInfo;->specialFiles:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 119
    return-void
.end method
