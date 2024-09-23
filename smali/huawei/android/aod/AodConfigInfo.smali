.class public Lhuawei/android/aod/AodConfigInfo;
.super Ljava/lang/Object;
.source "AodConfigInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lhuawei/android/aod/AodConfigInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "AodConfigInfo"


# instance fields
.field public mAODWorkMode:I

.field public mAodItemRect:[Landroid/graphics/Rect;

.field public mBufferHeight:I

.field public mBufferWidth:I

.field public mClockTextArrayAreaHeight:I

.field public mClockTextWidth:I

.field public mCurrentTime:J

.field public mDualClock:I

.field public mFingerprintCount:I

.field public mFingerprintMode:I

.field public mForceUpdate:I

.field public mIntelliSwitch:I

.field public mSecondTimeZone:I

.field public mStatusString:Ljava/lang/String;

.field public mTimeFormat:I

.field public mTimeZone:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 91
    new-instance v0, Lhuawei/android/aod/AodConfigInfo$1;

    invoke-direct {v0}, Lhuawei/android/aod/AodConfigInfo$1;-><init>()V

    sput-object v0, Lhuawei/android/aod/AodConfigInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-direct {p0, p1}, Lhuawei/android/aod/AodConfigInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Lhuawei/android/aod/AodConfigInfo;)V
    .locals 0
    .param p1, "another"    # Lhuawei/android/aod/AodConfigInfo;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lhuawei/android/aod/AodConfigInfo;->mCurrentTime:J

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lhuawei/android/aod/AodConfigInfo;->mTimeZone:I

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lhuawei/android/aod/AodConfigInfo;->mSecondTimeZone:I

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lhuawei/android/aod/AodConfigInfo;->mTimeFormat:I

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lhuawei/android/aod/AodConfigInfo;->mDualClock:I

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lhuawei/android/aod/AodConfigInfo;->mBufferWidth:I

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lhuawei/android/aod/AodConfigInfo;->mBufferHeight:I

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lhuawei/android/aod/AodConfigInfo;->mIntelliSwitch:I

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lhuawei/android/aod/AodConfigInfo;->mAODWorkMode:I

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lhuawei/android/aod/AodConfigInfo;->mFingerprintCount:I

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lhuawei/android/aod/AodConfigInfo;->mFingerprintMode:I

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lhuawei/android/aod/AodConfigInfo;->mClockTextArrayAreaHeight:I

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lhuawei/android/aod/AodConfigInfo;->mClockTextWidth:I

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhuawei/android/aod/AodConfigInfo;->mStatusString:Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lhuawei/android/aod/AodConfigInfo;->mForceUpdate:I

    .line 82
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v0

    .line 83
    .local v0, "parcelables":[Landroid/os/Parcelable;
    if-eqz v0, :cond_0

    .line 84
    array-length v1, v0

    new-array v1, v1, [Landroid/graphics/Rect;

    iput-object v1, p0, Lhuawei/android/aod/AodConfigInfo;->mAodItemRect:[Landroid/graphics/Rect;

    .line 85
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 86
    iget-object v2, p0, Lhuawei/android/aod/AodConfigInfo;->mAodItemRect:[Landroid/graphics/Rect;

    aget-object v3, v0, v1

    check-cast v3, Landroid/graphics/Rect;

    aput-object v3, v2, v1

    .line 85
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 89
    .end local v1    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method public isDualClock()Z
    .locals 1

    .line 103
    iget v0, p0, Lhuawei/android/aod/AodConfigInfo;->mDualClock:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flag"    # I

    .line 48
    iget-wide v0, p0, Lhuawei/android/aod/AodConfigInfo;->mCurrentTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 49
    iget v0, p0, Lhuawei/android/aod/AodConfigInfo;->mTimeZone:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 50
    iget v0, p0, Lhuawei/android/aod/AodConfigInfo;->mSecondTimeZone:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    iget v0, p0, Lhuawei/android/aod/AodConfigInfo;->mTimeFormat:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    iget v0, p0, Lhuawei/android/aod/AodConfigInfo;->mDualClock:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    iget v0, p0, Lhuawei/android/aod/AodConfigInfo;->mBufferWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    iget v0, p0, Lhuawei/android/aod/AodConfigInfo;->mBufferHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    iget v0, p0, Lhuawei/android/aod/AodConfigInfo;->mIntelliSwitch:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    iget v0, p0, Lhuawei/android/aod/AodConfigInfo;->mAODWorkMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    iget v0, p0, Lhuawei/android/aod/AodConfigInfo;->mFingerprintCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    iget v0, p0, Lhuawei/android/aod/AodConfigInfo;->mFingerprintMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    iget v0, p0, Lhuawei/android/aod/AodConfigInfo;->mClockTextArrayAreaHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    iget v0, p0, Lhuawei/android/aod/AodConfigInfo;->mClockTextWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    iget-object v0, p0, Lhuawei/android/aod/AodConfigInfo;->mStatusString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    iget v0, p0, Lhuawei/android/aod/AodConfigInfo;->mForceUpdate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    iget-object v0, p0, Lhuawei/android/aod/AodConfigInfo;->mAodItemRect:[Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 64
    return-void
.end method
