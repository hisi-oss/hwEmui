.class public Lhuawei/android/pfw/HwPFWStartupControlScope;
.super Ljava/lang/Object;
.source "HwPFWStartupControlScope.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lhuawei/android/pfw/HwPFWStartupControlScope;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mSystemBlackPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mThirdWhitePackages:Ljava/util/List;
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

    .line 39
    new-instance v0, Lhuawei/android/pfw/HwPFWStartupControlScope$1;

    invoke-direct {v0}, Lhuawei/android/pfw/HwPFWStartupControlScope$1;-><init>()V

    sput-object v0, Lhuawei/android/pfw/HwPFWStartupControlScope;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lhuawei/android/pfw/HwPFWStartupControlScope;->mSystemBlackPackages:Ljava/util/List;

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lhuawei/android/pfw/HwPFWStartupControlScope;->mThirdWhitePackages:Ljava/util/List;

    .line 15
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lhuawei/android/pfw/HwPFWStartupControlScope;->mSystemBlackPackages:Ljava/util/List;

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lhuawei/android/pfw/HwPFWStartupControlScope;->mThirdWhitePackages:Ljava/util/List;

    .line 53
    iget-object v0, p0, Lhuawei/android/pfw/HwPFWStartupControlScope;->mSystemBlackPackages:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 54
    iget-object v0, p0, Lhuawei/android/pfw/HwPFWStartupControlScope;->mThirdWhitePackages:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 55
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lhuawei/android/pfw/HwPFWStartupControlScope$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lhuawei/android/pfw/HwPFWStartupControlScope$1;

    .line 9
    invoke-direct {p0, p1}, Lhuawei/android/pfw/HwPFWStartupControlScope;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private clear()V
    .locals 1

    .line 58
    iget-object v0, p0, Lhuawei/android/pfw/HwPFWStartupControlScope;->mSystemBlackPackages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 59
    iget-object v0, p0, Lhuawei/android/pfw/HwPFWStartupControlScope;->mThirdWhitePackages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 60
    return-void
.end method


# virtual methods
.method public copyOutScope(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 24
    .local p1, "systemBlack":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "thirdWhite":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lhuawei/android/pfw/HwPFWStartupControlScope;->mSystemBlackPackages:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 25
    iget-object v0, p0, Lhuawei/android/pfw/HwPFWStartupControlScope;->mThirdWhitePackages:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 26
    return-void
.end method

.method public describeContents()I
    .locals 1

    .line 30
    const/4 v0, 0x0

    return v0
.end method

.method public setScope(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 18
    .local p1, "systemBlack":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "thirdWhite":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lhuawei/android/pfw/HwPFWStartupControlScope;->clear()V

    .line 19
    iget-object v0, p0, Lhuawei/android/pfw/HwPFWStartupControlScope;->mSystemBlackPackages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 20
    iget-object v0, p0, Lhuawei/android/pfw/HwPFWStartupControlScope;->mThirdWhitePackages:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 21
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 35
    iget-object v0, p0, Lhuawei/android/pfw/HwPFWStartupControlScope;->mSystemBlackPackages:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 36
    iget-object v0, p0, Lhuawei/android/pfw/HwPFWStartupControlScope;->mThirdWhitePackages:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 37
    return-void
.end method
