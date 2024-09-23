.class public Landroid/app/mtm/iaware/HwAppStartupSettingFilter;
.super Ljava/lang/Object;
.source "HwAppStartupSettingFilter.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/mtm/iaware/HwAppStartupSettingFilter;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "HwAppStartupSettingFilter"

.field public static final VAL_ALL:I = -0x1


# instance fields
.field private mModifier:[I

.field private mPolicy:[I

.field private mShow:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 82
    new-instance v0, Landroid/app/mtm/iaware/HwAppStartupSettingFilter$1;

    invoke-direct {v0}, Landroid/app/mtm/iaware/HwAppStartupSettingFilter$1;-><init>()V

    sput-object v0, Landroid/app/mtm/iaware/HwAppStartupSettingFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x4

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Landroid/app/mtm/iaware/HwAppStartupSettingFilter;->mPolicy:[I

    .line 31
    new-array v1, v0, [I

    fill-array-data v1, :array_1

    iput-object v1, p0, Landroid/app/mtm/iaware/HwAppStartupSettingFilter;->mShow:[I

    .line 32
    new-array v0, v0, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Landroid/app/mtm/iaware/HwAppStartupSettingFilter;->mModifier:[I

    .line 35
    return-void

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_1
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_2
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x4

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Landroid/app/mtm/iaware/HwAppStartupSettingFilter;->mPolicy:[I

    .line 31
    new-array v1, v0, [I

    fill-array-data v1, :array_1

    iput-object v1, p0, Landroid/app/mtm/iaware/HwAppStartupSettingFilter;->mShow:[I

    .line 32
    new-array v0, v0, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Landroid/app/mtm/iaware/HwAppStartupSettingFilter;->mModifier:[I

    .line 96
    iget-object v0, p0, Landroid/app/mtm/iaware/HwAppStartupSettingFilter;->mPolicy:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    .line 97
    iget-object v0, p0, Landroid/app/mtm/iaware/HwAppStartupSettingFilter;->mShow:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    .line 98
    iget-object v0, p0, Landroid/app/mtm/iaware/HwAppStartupSettingFilter;->mModifier:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    .line 99
    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_1
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_2
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/mtm/iaware/HwAppStartupSettingFilter$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/app/mtm/iaware/HwAppStartupSettingFilter$1;

    .line 26
    invoke-direct {p0, p1}, Landroid/app/mtm/iaware/HwAppStartupSettingFilter;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method protected clone()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 112
    const/4 v0, 0x0

    .line 114
    .local v0, "obj":Landroid/app/mtm/iaware/HwAppStartupSettingFilter;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/mtm/iaware/HwAppStartupSettingFilter;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 117
    goto :goto_0

    .line 115
    :catch_0
    move-exception v1

    .line 116
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    const-string v2, "HwAppStartupSettingFilter"

    const-string v3, "clone catch exception!"

    invoke-static {v2, v3}, Landroid/rms/iaware/AwareLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .end local v1    # "e":Ljava/lang/CloneNotSupportedException;
    :goto_0
    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public getModifier()[I
    .locals 1

    .line 42
    iget-object v0, p0, Landroid/app/mtm/iaware/HwAppStartupSettingFilter;->mModifier:[I

    return-object v0
.end method

.method public getPolicy()[I
    .locals 1

    .line 38
    iget-object v0, p0, Landroid/app/mtm/iaware/HwAppStartupSettingFilter;->mPolicy:[I

    return-object v0
.end method

.method public getShow()[I
    .locals 1

    .line 46
    iget-object v0, p0, Landroid/app/mtm/iaware/HwAppStartupSettingFilter;->mShow:[I

    return-object v0
.end method

.method public setModifier([I)Landroid/app/mtm/iaware/HwAppStartupSettingFilter;
    .locals 2
    .param p1, "modifier"    # [I

    .line 57
    if-eqz p1, :cond_0

    array-length v0, p1

    iget-object v1, p0, Landroid/app/mtm/iaware/HwAppStartupSettingFilter;->mModifier:[I

    array-length v1, v1

    if-gt v0, v1, :cond_0

    .line 58
    iput-object p1, p0, Landroid/app/mtm/iaware/HwAppStartupSettingFilter;->mModifier:[I

    .line 60
    :cond_0
    return-object p0
.end method

.method public setPolicy([I)Landroid/app/mtm/iaware/HwAppStartupSettingFilter;
    .locals 2
    .param p1, "policy"    # [I

    .line 50
    if-eqz p1, :cond_0

    array-length v0, p1

    iget-object v1, p0, Landroid/app/mtm/iaware/HwAppStartupSettingFilter;->mPolicy:[I

    array-length v1, v1

    if-gt v0, v1, :cond_0

    .line 51
    iput-object p1, p0, Landroid/app/mtm/iaware/HwAppStartupSettingFilter;->mPolicy:[I

    .line 53
    :cond_0
    return-object p0
.end method

.method public setShow([I)Landroid/app/mtm/iaware/HwAppStartupSettingFilter;
    .locals 2
    .param p1, "show"    # [I

    .line 64
    if-eqz p1, :cond_0

    array-length v0, p1

    iget-object v1, p0, Landroid/app/mtm/iaware/HwAppStartupSettingFilter;->mShow:[I

    array-length v1, v1

    if-gt v0, v1, :cond_0

    .line 65
    iput-object p1, p0, Landroid/app/mtm/iaware/HwAppStartupSettingFilter;->mShow:[I

    .line 67
    :cond_0
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, " policy:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/mtm/iaware/HwAppStartupSettingFilter;->mPolicy:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    const-string v1, " modifier:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/mtm/iaware/HwAppStartupSettingFilter;->mModifier:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    const-string v1, " show:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/mtm/iaware/HwAppStartupSettingFilter;->mShow:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 77
    iget-object v0, p0, Landroid/app/mtm/iaware/HwAppStartupSettingFilter;->mPolicy:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 78
    iget-object v0, p0, Landroid/app/mtm/iaware/HwAppStartupSettingFilter;->mShow:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 79
    iget-object v0, p0, Landroid/app/mtm/iaware/HwAppStartupSettingFilter;->mModifier:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 80
    return-void
.end method
