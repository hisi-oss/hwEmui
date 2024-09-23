.class Lhuawei/android/widget/HwActionMenuPresenter$SavedState;
.super Ljava/lang/Object;
.source "HwActionMenuPresenter.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhuawei/android/widget/HwActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lhuawei/android/widget/HwActionMenuPresenter$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public openSubMenuId:I

.field public overflowMenuShownInt:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 169
    new-instance v0, Lhuawei/android/widget/HwActionMenuPresenter$SavedState$1;

    invoke-direct {v0}, Lhuawei/android/widget/HwActionMenuPresenter$SavedState$1;-><init>()V

    sput-object v0, Lhuawei/android/widget/HwActionMenuPresenter$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lhuawei/android/widget/HwActionMenuPresenter$SavedState;->openSubMenuId:I

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lhuawei/android/widget/HwActionMenuPresenter$SavedState;->overflowMenuShownInt:I

    .line 156
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 160
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 165
    iget v0, p0, Lhuawei/android/widget/HwActionMenuPresenter$SavedState;->openSubMenuId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    iget v0, p0, Lhuawei/android/widget/HwActionMenuPresenter$SavedState;->overflowMenuShownInt:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    return-void
.end method
