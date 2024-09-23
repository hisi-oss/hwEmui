.class Landroid/app/mtm/iaware/HwAppStartupSettingFilter$1;
.super Ljava/lang/Object;
.source "HwAppStartupSettingFilter.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/mtm/iaware/HwAppStartupSettingFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/mtm/iaware/HwAppStartupSettingFilter;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/app/mtm/iaware/HwAppStartupSettingFilter;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .line 86
    new-instance v0, Landroid/app/mtm/iaware/HwAppStartupSettingFilter;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/app/mtm/iaware/HwAppStartupSettingFilter;-><init>(Landroid/os/Parcel;Landroid/app/mtm/iaware/HwAppStartupSettingFilter$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 83
    invoke-virtual {p0, p1}, Landroid/app/mtm/iaware/HwAppStartupSettingFilter$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/mtm/iaware/HwAppStartupSettingFilter;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/app/mtm/iaware/HwAppStartupSettingFilter;
    .locals 1
    .param p1, "size"    # I

    .line 91
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/app/mtm/iaware/HwAppStartupSettingFilter;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 83
    invoke-virtual {p0, p1}, Landroid/app/mtm/iaware/HwAppStartupSettingFilter$1;->newArray(I)[Landroid/app/mtm/iaware/HwAppStartupSettingFilter;

    move-result-object p1

    return-object p1
.end method
