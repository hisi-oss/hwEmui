.class public Lhuawei/android/pfw/HwPFWStartupSetting;
.super Ljava/lang/Object;
.source "HwPFWStartupSetting.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lhuawei/android/pfw/HwPFWStartupSetting;",
            ">;"
        }
    .end annotation
.end field

.field public static final STARTUP_STATUS_ALLOW:I = 0x1

.field public static final STARTUP_STATUS_FORBID:I = 0x0

.field public static final STARTUP_STATUS_UNKNOWN:I = 0x2

.field public static final STARTUP_TYPE_NUM:I = 0x2

.field public static final STARTUP_TYPE_RECEIVER:I = 0x0

.field public static final STARTUP_TYPE_SERVICE_PROVIDER:I = 0x1


# instance fields
.field private mAllow:I

.field private mPackageName:Ljava/lang/String;

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 68
    new-instance v0, Lhuawei/android/pfw/HwPFWStartupSetting$1;

    invoke-direct {v0}, Lhuawei/android/pfw/HwPFWStartupSetting$1;-><init>()V

    sput-object v0, Lhuawei/android/pfw/HwPFWStartupSetting;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhuawei/android/pfw/HwPFWStartupSetting;->mPackageName:Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lhuawei/android/pfw/HwPFWStartupSetting;->mType:I

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lhuawei/android/pfw/HwPFWStartupSetting;->mAllow:I

    .line 85
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lhuawei/android/pfw/HwPFWStartupSetting$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lhuawei/android/pfw/HwPFWStartupSetting$1;

    .line 6
    invoke-direct {p0, p1}, Lhuawei/android/pfw/HwPFWStartupSetting;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "type"    # I

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lhuawei/android/pfw/HwPFWStartupSetting;->mPackageName:Ljava/lang/String;

    .line 29
    iput p2, p0, Lhuawei/android/pfw/HwPFWStartupSetting;->mType:I

    .line 30
    const/4 v0, 0x2

    iput v0, p0, Lhuawei/android/pfw/HwPFWStartupSetting;->mAllow:I

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "allow"    # I

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lhuawei/android/pfw/HwPFWStartupSetting;->mPackageName:Ljava/lang/String;

    .line 23
    iput p2, p0, Lhuawei/android/pfw/HwPFWStartupSetting;->mType:I

    .line 24
    iput p3, p0, Lhuawei/android/pfw/HwPFWStartupSetting;->mAllow:I

    .line 25
    return-void
.end method


# virtual methods
.method protected clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 94
    const/4 v0, 0x0

    .line 96
    .local v0, "o":Lhuawei/android/pfw/HwPFWStartupSetting;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhuawei/android/pfw/HwPFWStartupSetting;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 99
    goto :goto_0

    .line 97
    :catch_0
    move-exception v1

    .line 98
    .local v1, "ex":Ljava/lang/CloneNotSupportedException;
    invoke-virtual {v1}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    .line 100
    .end local v1    # "ex":Ljava/lang/CloneNotSupportedException;
    :goto_0
    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public getAllowValue()I
    .locals 1

    .line 42
    iget v0, p0, Lhuawei/android/pfw/HwPFWStartupSetting;->mAllow:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lhuawei/android/pfw/HwPFWStartupSetting;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeValue()I
    .locals 1

    .line 38
    iget v0, p0, Lhuawei/android/pfw/HwPFWStartupSetting;->mType:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HwPFWStartupSetting {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lhuawei/android/pfw/HwPFWStartupSetting;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lhuawei/android/pfw/HwPFWStartupSetting;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", allow: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lhuawei/android/pfw/HwPFWStartupSetting;->mAllow:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public valid()Z
    .locals 4

    .line 47
    iget v0, p0, Lhuawei/android/pfw/HwPFWStartupSetting;->mType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lhuawei/android/pfw/HwPFWStartupSetting;->mType:I

    if-eq v2, v0, :cond_0

    .line 48
    return v1

    .line 50
    :cond_0
    iget v0, p0, Lhuawei/android/pfw/HwPFWStartupSetting;->mAllow:I

    if-eqz v0, :cond_1

    iget v0, p0, Lhuawei/android/pfw/HwPFWStartupSetting;->mAllow:I

    if-eq v2, v0, :cond_1

    const/4 v0, 0x2

    iget v3, p0, Lhuawei/android/pfw/HwPFWStartupSetting;->mAllow:I

    if-eq v0, v3, :cond_1

    .line 51
    return v1

    .line 53
    :cond_1
    return v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 63
    iget-object v0, p0, Lhuawei/android/pfw/HwPFWStartupSetting;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    iget v0, p0, Lhuawei/android/pfw/HwPFWStartupSetting;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    iget v0, p0, Lhuawei/android/pfw/HwPFWStartupSetting;->mAllow:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    return-void
.end method
