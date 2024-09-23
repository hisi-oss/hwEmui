.class Lhuawei/android/pfw/HwPFWStartupControlScope$1;
.super Ljava/lang/Object;
.source "HwPFWStartupControlScope.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhuawei/android/pfw/HwPFWStartupControlScope;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lhuawei/android/pfw/HwPFWStartupControlScope;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lhuawei/android/pfw/HwPFWStartupControlScope;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .line 43
    new-instance v0, Lhuawei/android/pfw/HwPFWStartupControlScope;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lhuawei/android/pfw/HwPFWStartupControlScope;-><init>(Landroid/os/Parcel;Lhuawei/android/pfw/HwPFWStartupControlScope$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lhuawei/android/pfw/HwPFWStartupControlScope$1;->createFromParcel(Landroid/os/Parcel;)Lhuawei/android/pfw/HwPFWStartupControlScope;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lhuawei/android/pfw/HwPFWStartupControlScope;
    .locals 1
    .param p1, "size"    # I

    .line 48
    const/4 v0, 0x0

    new-array v0, v0, [Lhuawei/android/pfw/HwPFWStartupControlScope;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lhuawei/android/pfw/HwPFWStartupControlScope$1;->newArray(I)[Lhuawei/android/pfw/HwPFWStartupControlScope;

    move-result-object p1

    return-object p1
.end method
