.class public Lhuawei/android/pfw/HwPFWStartupPackageList;
.super Ljava/lang/Object;
.source "HwPFWStartupPackageList.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lhuawei/android/pfw/HwPFWStartupPackageList;",
            ">;"
        }
    .end annotation
.end field

.field public static final STARTUP_LIST_TYPE_FWK_APP_SYSTEM_BLACK:I = 0x3

.field public static final STARTUP_LIST_TYPE_FWK_APP_THIRD_WHITE:I = 0x2

.field public static final STARTUP_LIST_TYPE_FWK_PREBUILT_SYSTEM_BLACK:I = 0x1

.field public static final STARTUP_LIST_TYPE_FWK_PREBUILT_THIRD_WHITE:I = 0x0

.field public static final STARTUP_LIST_TYPE_MUST_CONTROL_APPS:I = 0x4


# instance fields
.field private mListType:I

.field private mPackageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    new-instance v0, Lhuawei/android/pfw/HwPFWStartupPackageList$1;

    invoke-direct {v0}, Lhuawei/android/pfw/HwPFWStartupPackageList$1;-><init>()V

    sput-object v0, Lhuawei/android/pfw/HwPFWStartupPackageList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "type"    # I

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lhuawei/android/pfw/HwPFWStartupPackageList;->mPackageList:Ljava/util/List;

    .line 21
    iput p1, p0, Lhuawei/android/pfw/HwPFWStartupPackageList;->mListType:I

    .line 22
    iget-object v0, p0, Lhuawei/android/pfw/HwPFWStartupPackageList;->mPackageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 23
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lhuawei/android/pfw/HwPFWStartupPackageList;->mPackageList:Ljava/util/List;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lhuawei/android/pfw/HwPFWStartupPackageList;->mListType:I

    .line 61
    iget-object v0, p0, Lhuawei/android/pfw/HwPFWStartupPackageList;->mPackageList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 62
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lhuawei/android/pfw/HwPFWStartupPackageList$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lhuawei/android/pfw/HwPFWStartupPackageList$1;

    .line 9
    invoke-direct {p0, p1}, Lhuawei/android/pfw/HwPFWStartupPackageList;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public copyOutPackageList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 32
    .local p1, "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lhuawei/android/pfw/HwPFWStartupPackageList;->mPackageList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 33
    return-void
.end method

.method public describeContents()I
    .locals 1

    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public setPackageList(ILjava/util/List;)V
    .locals 1
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 26
    .local p2, "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput p1, p0, Lhuawei/android/pfw/HwPFWStartupPackageList;->mListType:I

    .line 27
    iget-object v0, p0, Lhuawei/android/pfw/HwPFWStartupPackageList;->mPackageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 28
    iget-object v0, p0, Lhuawei/android/pfw/HwPFWStartupPackageList;->mPackageList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 29
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 42
    iget v0, p0, Lhuawei/android/pfw/HwPFWStartupPackageList;->mListType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    iget-object v0, p0, Lhuawei/android/pfw/HwPFWStartupPackageList;->mPackageList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 44
    return-void
.end method
