.class public Lhuawei/cust/aidl/SimMatchRule;
.super Ljava/lang/Object;
.source "SimMatchRule.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lhuawei/cust/aidl/SimMatchRule;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private rule:I

.field specialFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lhuawei/cust/aidl/SpecialFile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Lhuawei/cust/aidl/SimMatchRule$1;

    invoke-direct {v0}, Lhuawei/cust/aidl/SimMatchRule$1;-><init>()V

    sput-object v0, Lhuawei/cust/aidl/SimMatchRule;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lhuawei/cust/aidl/SimMatchRule;->specialFiles:Ljava/util/List;

    .line 29
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lhuawei/cust/aidl/SimMatchRule;->specialFiles:Ljava/util/List;

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lhuawei/cust/aidl/SimMatchRule;->rule:I

    .line 33
    sget-object v0, Lhuawei/cust/aidl/SpecialFile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lhuawei/cust/aidl/SimMatchRule;->specialFiles:Ljava/util/List;

    .line 34
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public getRule()I
    .locals 1

    .line 49
    iget v0, p0, Lhuawei/cust/aidl/SimMatchRule;->rule:I

    return v0
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

    .line 57
    iget-object v0, p0, Lhuawei/cust/aidl/SimMatchRule;->specialFiles:Ljava/util/List;

    return-object v0
.end method

.method public setRule(I)V
    .locals 0
    .param p1, "rule"    # I

    .line 53
    iput p1, p0, Lhuawei/cust/aidl/SimMatchRule;->rule:I

    .line 54
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

    .line 61
    .local p1, "specialFiles":Ljava/util/List;, "Ljava/util/List<Lhuawei/cust/aidl/SpecialFile;>;"
    iput-object p1, p0, Lhuawei/cust/aidl/SimMatchRule;->specialFiles:Ljava/util/List;

    .line 62
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SimMatchRule{rule="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lhuawei/cust/aidl/SimMatchRule;->rule:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", specialFiles="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lhuawei/cust/aidl/SimMatchRule;->specialFiles:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 71
    iget v0, p0, Lhuawei/cust/aidl/SimMatchRule;->rule:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    iget-object v0, p0, Lhuawei/cust/aidl/SimMatchRule;->specialFiles:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 73
    return-void
.end method
