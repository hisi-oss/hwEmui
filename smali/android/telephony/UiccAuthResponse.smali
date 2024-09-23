.class public Landroid/telephony/UiccAuthResponse;
.super Ljava/lang/Object;
.source "UiccAuthResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/UiccAuthResponse$UiccAuthChallenge;,
        Landroid/telephony/UiccAuthResponse$UiccAuthResponseData;
    }
.end annotation


# static fields
.field public static final AUTH_RESP_FAIL:I = 0x1

.field public static final AUTH_RESP_SUCCESS:I = 0x0

.field public static final AUTH_RESP_SYNC_FAIL:I = 0x2

.field public static final AUTH_RESP_UNSUPPORTED:I = 0x3

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/UiccAuthResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mResult:I

.field public mUiccAuthChallenge:Landroid/telephony/UiccAuthResponse$UiccAuthChallenge;

.field public mUiccAuthSyncFail:Landroid/telephony/UiccAuthResponse$UiccAuthResponseData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 183
    new-instance v0, Landroid/telephony/UiccAuthResponse$1;

    invoke-direct {v0}, Landroid/telephony/UiccAuthResponse$1;-><init>()V

    sput-object v0, Landroid/telephony/UiccAuthResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Landroid/telephony/UiccAuthResponse$UiccAuthChallenge;

    invoke-direct {v0}, Landroid/telephony/UiccAuthResponse$UiccAuthChallenge;-><init>()V

    iput-object v0, p0, Landroid/telephony/UiccAuthResponse;->mUiccAuthChallenge:Landroid/telephony/UiccAuthResponse$UiccAuthChallenge;

    .line 43
    new-instance v0, Landroid/telephony/UiccAuthResponse$UiccAuthResponseData;

    invoke-direct {v0}, Landroid/telephony/UiccAuthResponse$UiccAuthResponseData;-><init>()V

    iput-object v0, p0, Landroid/telephony/UiccAuthResponse;->mUiccAuthSyncFail:Landroid/telephony/UiccAuthResponse$UiccAuthResponseData;

    .line 44
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Landroid/telephony/UiccAuthResponse$UiccAuthChallenge;

    invoke-direct {v0}, Landroid/telephony/UiccAuthResponse$UiccAuthChallenge;-><init>()V

    iput-object v0, p0, Landroid/telephony/UiccAuthResponse;->mUiccAuthChallenge:Landroid/telephony/UiccAuthResponse$UiccAuthChallenge;

    .line 65
    new-instance v0, Landroid/telephony/UiccAuthResponse$UiccAuthResponseData;

    invoke-direct {v0}, Landroid/telephony/UiccAuthResponse$UiccAuthResponseData;-><init>()V

    iput-object v0, p0, Landroid/telephony/UiccAuthResponse;->mUiccAuthSyncFail:Landroid/telephony/UiccAuthResponse$UiccAuthResponseData;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/UiccAuthResponse;->mResult:I

    .line 69
    iget v0, p0, Landroid/telephony/UiccAuthResponse;->mResult:I

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 71
    iget-object v0, p0, Landroid/telephony/UiccAuthResponse;->mUiccAuthChallenge:Landroid/telephony/UiccAuthResponse$UiccAuthChallenge;

    new-instance v2, Landroid/telephony/UiccAuthResponse$UiccAuthResponseData;

    invoke-direct {v2}, Landroid/telephony/UiccAuthResponse$UiccAuthResponseData;-><init>()V

    iput-object v2, v0, Landroid/telephony/UiccAuthResponse$UiccAuthChallenge;->mResData:Landroid/telephony/UiccAuthResponse$UiccAuthResponseData;

    .line 72
    iget-object v0, p0, Landroid/telephony/UiccAuthResponse;->mUiccAuthChallenge:Landroid/telephony/UiccAuthResponse$UiccAuthChallenge;

    iget-object v0, v0, Landroid/telephony/UiccAuthResponse$UiccAuthChallenge;->mResData:Landroid/telephony/UiccAuthResponse$UiccAuthResponseData;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v0, Landroid/telephony/UiccAuthResponse$UiccAuthResponseData;->present:I

    .line 73
    iget-object v0, p0, Landroid/telephony/UiccAuthResponse;->mUiccAuthChallenge:Landroid/telephony/UiccAuthResponse$UiccAuthChallenge;

    iget-object v0, v0, Landroid/telephony/UiccAuthResponse$UiccAuthChallenge;->mResData:Landroid/telephony/UiccAuthResponse$UiccAuthResponseData;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v0, Landroid/telephony/UiccAuthResponse$UiccAuthResponseData;->len:I

    .line 74
    iget-object v0, p0, Landroid/telephony/UiccAuthResponse;->mUiccAuthChallenge:Landroid/telephony/UiccAuthResponse$UiccAuthChallenge;

    iget-object v0, v0, Landroid/telephony/UiccAuthResponse$UiccAuthChallenge;->mResData:Landroid/telephony/UiccAuthResponse$UiccAuthResponseData;

    iget v0, v0, Landroid/telephony/UiccAuthResponse$UiccAuthResponseData;->len:I

    if-lez v0, :cond_0

    .line 75
    iget-object v0, p0, Landroid/telephony/UiccAuthResponse;->mUiccAuthChallenge:Landroid/telephony/UiccAuthResponse$UiccAuthChallenge;

    iget-object v0, v0, Landroid/telephony/UiccAuthResponse$UiccAuthChallenge;->mResData:Landroid/telephony/UiccAuthResponse$UiccAuthResponseData;

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    iput-object v2, v0, Landroid/telephony/UiccAuthResponse$UiccAuthResponseData;->data:[B

    goto :goto_0

    .line 77
    :cond_0
    iget-object v0, p0, Landroid/telephony/UiccAuthResponse;->mUiccAuthChallenge:Landroid/telephony/UiccAuthResponse$UiccAuthChallenge;

    iget-object v0, v0, Landroid/telephony/UiccAuthResponse$UiccAuthChallenge;->mResData:Landroid/telephony/UiccAuthResponse$UiccAuthResponseData;

    iput-object v1, v0, Landroid/telephony/UiccAuthResponse$UiccAuthResponseData;->data:[B

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 82
    :goto_0
    iget-object v0, p0, Landroid/telephony/UiccAuthResponse;->mUiccAuthChallenge:Landroid/telephony/UiccAuthResponse$UiccAuthChallenge;

    new-instance v2, Landroid/telephony/UiccAuthResponse$UiccAuthResponseData;

    invoke-direct {v2}, Landroid/telephony/UiccAuthResponse$UiccAuthResponseData;-><init>()V

    iput-object v2, v0, Landroid/telephony/UiccAuthResponse$UiccAuthChallenge;->mIkData:Landroid/telephony/UiccAuthResponse$UiccAuthResponseData;

    .line 83
    iget-object v0, p0, Landroid/telephony/UiccAuthResponse;->mUiccAuthChallenge:Landroid/telephony/UiccAuthResponse$UiccAuthChallenge;

    iget-object v0, v0, Landroid/telephony/UiccAuthResponse$UiccAuthChallenge;->mIkData:Landroid/telephony/UiccAuthResponse$UiccAuthResponseData;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v0, Landroid/telephony/UiccAuthResponse$UiccAuthResponseData;->present:I

    .line 84
    iget-object v0, p0, Landroid/telephony/UiccAuthResponse;->mUiccAuthChallenge:Landroid/telephony/UiccAuthResponse$UiccAuthChallenge;

    iget-object v0, v0, Landroid/telephony/UiccAuthResponse$UiccAuthChallenge;->mIkData:Landroid/telephony/UiccAuthResponse$UiccAuthResponseData;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v0, Landroid/telephony/UiccAuthResponse$UiccAuthResponseData;->len:I

    .line 85
    iget-object v0, p0, Landroid/telephony/UiccAuthResponse;->mUiccAuthChallenge:Landroid/telephony/UiccAuthResponse$UiccAuthChallenge;

    iget-object v0, v0, Landroid/telephony/UiccAuthResponse$UiccAuthChallenge;->mIkData:Landroid/telephony/UiccAuthResponse$UiccAuthResponseData;

    iget v0, v0, Landroid/telephony/UiccAuthResponse$UiccAuthResponseData;->len:I

    if-lez v0, :cond_1

    .line 86
    iget-object v0, p0, Landroid/telephony/UiccAuthResponse;->mUiccAuthChallenge:Landroid/telephony/UiccAuthResponse$UiccAuthChallenge;

    iget-object v0, v0, Landroid/telephony/UiccAuthResponse$UiccAuthChallenge;->mIkData:Landroid/telephony/UiccAuthResponse$UiccAuthResponseData;

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    iput-object v2, v0, Landroid/telephony/UiccAuthResponse$UiccAuthResponseData;->data:[B

    goto :goto_1

    .line 88
    :cond_1
    iget-object v0, p0, Landroid/telephony/UiccAuthResponse;->mUiccAuthChallenge:Landroid/telephony/UiccAuthResponse$UiccAuthChallenge;

    iget-object v0, v0, Landroid/telephony/UiccAuthResponse$UiccAuthChallenge;->mIkData:Landroid/telephony/UiccAuthResponse$UiccAuthResponseData;

    iput-object v1, v0, Landroid/telephony/UiccAuthResponse$UiccAuthResponseData;->data:[B

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 93
    :goto_1
    iget-object v0, p0, Landroid/telephony/UiccAuthResponse;->mUiccAuthChallenge:Landroid/telephony/UiccAuthResponse$UiccAuthChallenge;

    new-instance v2, Landroid/telephony/UiccAuthResponse$UiccAuthResponseData;

    invoke-direct {v2}, Landroid/telephony/UiccAuthResponse$UiccAuthResponseData;-><init>()V

    iput-object v2, v0, Landroid/telephony/UiccAuthResponse$UiccAuthChallenge;->mCkData:Landroid/telephony/UiccAuthResponse$UiccAuthResponseData;

    .line 94
    iget-object v0, p0, Landroid/telephony/UiccAuthResponse;->mUiccAuthChallenge:Landroid/telephony/UiccAuthResponse$UiccAuthChallenge;

    iget-object v0, v0, Landroid/telephony/UiccAuthResponse$UiccAuthChallenge;->mCkData:Landroid/telephony/UiccAuthResponse$UiccAuthResponseData;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v0, Landroid/telephony/UiccAuthResponse$UiccAuthResponseData;->present:I

    .line 95
    iget-object v0, p0, Landroid/telephony/UiccAuthResponse;->mUiccAuthChallenge:Landroid/telephony/UiccAuthResponse$UiccAuthChallenge;

    iget-object v0, v0, Landroid/telephony/UiccAuthResponse$UiccAuthChallenge;->mCkData:Landroid/telephony/UiccAuthResponse$UiccAuthResponseData;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v0, Landroid/telephony/UiccAuthResponse$UiccAuthResponseData;->len:I

    .line 96
    iget-object v0, p0, Landroid/telephony/UiccAuthResponse;->mUiccAuthChallenge:Landroid/telephony/UiccAuthResponse$UiccAuthChallenge;

    iget-object v0, v0, Landroid/telephony/UiccAuthResponse$UiccAuthChallenge;->mCkData:Landroid/telephony/UiccAuthResponse$UiccAuthResponseData;

    iget v0, v0, Landroid/telephony/UiccAuthResponse$UiccAuthResponseData;->len:I

    if-lez v0, :cond_2

    .line 97
    iget-object v0, p0, Landroid/telephony/UiccAuthResponse;->mUiccAuthChallenge:Landroid/telephony/UiccAuthResponse$UiccAuthChallenge;

    iget-object v0, v0, Landroid/telephony/UiccAuthResponse$UiccAuthChallenge;->mCkData:Landroid/telephony/UiccAuthResponse$UiccAuthResponseData;

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    iput-object v1, v0, Landroid/telephony/UiccAuthResponse$UiccAuthResponseData;->data:[B

    goto :goto_2

    .line 99
    :cond_2
    iget-object v0, p0, Landroid/telephony/UiccAuthResponse;->mUiccAuthChallenge:Landroid/telephony/UiccAuthResponse$UiccAuthChallenge;

    iget-object v0, v0, Landroid/telephony/UiccAuthResponse$UiccAuthChallenge;->mCkData:Landroid/telephony/UiccAuthResponse$UiccAuthResponseData;

    iput-object v1, v0, Landroid/telephony/UiccAuthResponse$UiccAuthResponseData;->data:[B

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    goto :goto_2

    .line 104
    :cond_3
    iget-object v0, p0, Landroid/telephony/UiccAuthResponse;->mUiccAuthSyncFail:Landroid/telephony/UiccAuthResponse$UiccAuthResponseData;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v0, Landroid/telephony/UiccAuthResponse$UiccAuthResponseData;->present:I

    .line 105
    iget-object v0, p0, Landroid/telephony/UiccAuthResponse;->mUiccAuthSyncFail:Landroid/telephony/UiccAuthResponse$UiccAuthResponseData;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v0, Landroid/telephony/UiccAuthResponse$UiccAuthResponseData;->len:I

    .line 106
    iget-object v0, p0, Landroid/telephony/UiccAuthResponse;->mUiccAuthSyncFail:Landroid/telephony/UiccAuthResponse$UiccAuthResponseData;

    iget v0, v0, Landroid/telephony/UiccAuthResponse$UiccAuthResponseData;->len:I

    if-lez v0, :cond_4

    .line 107
    iget-object v0, p0, Landroid/telephony/UiccAuthResponse;->mUiccAuthSyncFail:Landroid/telephony/UiccAuthResponse$UiccAuthResponseData;

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    iput-object v1, v0, Landroid/telephony/UiccAuthResponse$UiccAuthResponseData;->data:[B

    goto :goto_2

    .line 109
    :cond_4
    iget-object v0, p0, Landroid/telephony/UiccAuthResponse;->mUiccAuthSyncFail:Landroid/telephony/UiccAuthResponse$UiccAuthResponseData;

    iput-object v1, v0, Landroid/telephony/UiccAuthResponse$UiccAuthResponseData;->data:[B

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 114
    :goto_2
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/UiccAuthResponse$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/telephony/UiccAuthResponse$1;

    .line 28
    invoke-direct {p0, p1}, Landroid/telephony/UiccAuthResponse;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 139
    const/4 v0, 0x0

    return v0
.end method

.method public getAuthChallenge()Landroid/telephony/UiccAuthResponse$UiccAuthChallenge;
    .locals 1

    .line 127
    iget-object v0, p0, Landroid/telephony/UiccAuthResponse;->mUiccAuthChallenge:Landroid/telephony/UiccAuthResponse$UiccAuthChallenge;

    return-object v0
.end method

.method public getAuthSyncFail()Landroid/telephony/UiccAuthResponse$UiccAuthResponseData;
    .locals 1

    .line 134
    iget-object v0, p0, Landroid/telephony/UiccAuthResponse;->mUiccAuthSyncFail:Landroid/telephony/UiccAuthResponse$UiccAuthResponseData;

    return-object v0
.end method

.method public getCkData()Landroid/telephony/UiccAuthResponse$UiccAuthResponseData;
    .locals 1

    .line 206
    iget-object v0, p0, Landroid/telephony/UiccAuthResponse;->mUiccAuthChallenge:Landroid/telephony/UiccAuthResponse$UiccAuthChallenge;

    iget-object v0, v0, Landroid/telephony/UiccAuthResponse$UiccAuthChallenge;->mCkData:Landroid/telephony/UiccAuthResponse$UiccAuthResponseData;

    return-object v0
.end method

.method public getIkData()Landroid/telephony/UiccAuthResponse$UiccAuthResponseData;
    .locals 1

    .line 202
    iget-object v0, p0, Landroid/telephony/UiccAuthResponse;->mUiccAuthChallenge:Landroid/telephony/UiccAuthResponse$UiccAuthChallenge;

    iget-object v0, v0, Landroid/telephony/UiccAuthResponse$UiccAuthChallenge;->mIkData:Landroid/telephony/UiccAuthResponse$UiccAuthResponseData;

    return-object v0
.end method

.method public getResData()Landroid/telephony/UiccAuthResponse$UiccAuthResponseData;
    .locals 1

    .line 198
    iget-object v0, p0, Landroid/telephony/UiccAuthResponse;->mUiccAuthChallenge:Landroid/telephony/UiccAuthResponse$UiccAuthChallenge;

    iget-object v0, v0, Landroid/telephony/UiccAuthResponse$UiccAuthChallenge;->mResData:Landroid/telephony/UiccAuthResponse$UiccAuthResponseData;

    return-object v0
.end method

.method public getResult()I
    .locals 1

    .line 120
    iget v0, p0, Landroid/telephony/UiccAuthResponse;->mResult:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 144
    iget v0, p0, Landroid/telephony/UiccAuthResponse;->mResult:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    iget v0, p0, Landroid/telephony/UiccAuthResponse;->mResult:I

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 147
    iget-object v0, p0, Landroid/telephony/UiccAuthResponse;->mUiccAuthChallenge:Landroid/telephony/UiccAuthResponse$UiccAuthChallenge;

    iget-object v0, v0, Landroid/telephony/UiccAuthResponse$UiccAuthChallenge;->mResData:Landroid/telephony/UiccAuthResponse$UiccAuthResponseData;

    iget v0, v0, Landroid/telephony/UiccAuthResponse$UiccAuthResponseData;->present:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    iget-object v0, p0, Landroid/telephony/UiccAuthResponse;->mUiccAuthChallenge:Landroid/telephony/UiccAuthResponse$UiccAuthChallenge;

    iget-object v0, v0, Landroid/telephony/UiccAuthResponse$UiccAuthChallenge;->mResData:Landroid/telephony/UiccAuthResponse$UiccAuthResponseData;

    iget v0, v0, Landroid/telephony/UiccAuthResponse$UiccAuthResponseData;->len:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    iget-object v0, p0, Landroid/telephony/UiccAuthResponse;->mUiccAuthChallenge:Landroid/telephony/UiccAuthResponse$UiccAuthChallenge;

    iget-object v0, v0, Landroid/telephony/UiccAuthResponse$UiccAuthChallenge;->mResData:Landroid/telephony/UiccAuthResponse$UiccAuthResponseData;

    iget v0, v0, Landroid/telephony/UiccAuthResponse$UiccAuthResponseData;->len:I

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Landroid/telephony/UiccAuthResponse;->mUiccAuthChallenge:Landroid/telephony/UiccAuthResponse$UiccAuthChallenge;

    iget-object v0, v0, Landroid/telephony/UiccAuthResponse$UiccAuthChallenge;->mResData:Landroid/telephony/UiccAuthResponse$UiccAuthResponseData;

    iget-object v0, v0, Landroid/telephony/UiccAuthResponse$UiccAuthResponseData;->data:[B

    iget-object v2, p0, Landroid/telephony/UiccAuthResponse;->mUiccAuthChallenge:Landroid/telephony/UiccAuthResponse$UiccAuthChallenge;

    iget-object v2, v2, Landroid/telephony/UiccAuthResponse$UiccAuthChallenge;->mResData:Landroid/telephony/UiccAuthResponse$UiccAuthResponseData;

    iget v2, v2, Landroid/telephony/UiccAuthResponse$UiccAuthResponseData;->len:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Parcel;->writeByteArray([BII)V

    goto :goto_0

    .line 152
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    :goto_0
    iget-object v0, p0, Landroid/telephony/UiccAuthResponse;->mUiccAuthChallenge:Landroid/telephony/UiccAuthResponse$UiccAuthChallenge;

    iget-object v0, v0, Landroid/telephony/UiccAuthResponse$UiccAuthChallenge;->mIkData:Landroid/telephony/UiccAuthResponse$UiccAuthResponseData;

    iget v0, v0, Landroid/telephony/UiccAuthResponse$UiccAuthResponseData;->present:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    iget-object v0, p0, Landroid/telephony/UiccAuthResponse;->mUiccAuthChallenge:Landroid/telephony/UiccAuthResponse$UiccAuthChallenge;

    iget-object v0, v0, Landroid/telephony/UiccAuthResponse$UiccAuthChallenge;->mIkData:Landroid/telephony/UiccAuthResponse$UiccAuthResponseData;

    iget v0, v0, Landroid/telephony/UiccAuthResponse$UiccAuthResponseData;->len:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    iget-object v0, p0, Landroid/telephony/UiccAuthResponse;->mUiccAuthChallenge:Landroid/telephony/UiccAuthResponse$UiccAuthChallenge;

    iget-object v0, v0, Landroid/telephony/UiccAuthResponse$UiccAuthChallenge;->mIkData:Landroid/telephony/UiccAuthResponse$UiccAuthResponseData;

    iget v0, v0, Landroid/telephony/UiccAuthResponse$UiccAuthResponseData;->len:I

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Landroid/telephony/UiccAuthResponse;->mUiccAuthChallenge:Landroid/telephony/UiccAuthResponse$UiccAuthChallenge;

    iget-object v0, v0, Landroid/telephony/UiccAuthResponse$UiccAuthChallenge;->mIkData:Landroid/telephony/UiccAuthResponse$UiccAuthResponseData;

    iget-object v0, v0, Landroid/telephony/UiccAuthResponse$UiccAuthResponseData;->data:[B

    iget-object v2, p0, Landroid/telephony/UiccAuthResponse;->mUiccAuthChallenge:Landroid/telephony/UiccAuthResponse$UiccAuthChallenge;

    iget-object v2, v2, Landroid/telephony/UiccAuthResponse$UiccAuthChallenge;->mIkData:Landroid/telephony/UiccAuthResponse$UiccAuthResponseData;

    iget v2, v2, Landroid/telephony/UiccAuthResponse$UiccAuthResponseData;->len:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Parcel;->writeByteArray([BII)V

    goto :goto_1

    .line 161
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    :goto_1
    iget-object v0, p0, Landroid/telephony/UiccAuthResponse;->mUiccAuthChallenge:Landroid/telephony/UiccAuthResponse$UiccAuthChallenge;

    iget-object v0, v0, Landroid/telephony/UiccAuthResponse$UiccAuthChallenge;->mCkData:Landroid/telephony/UiccAuthResponse$UiccAuthResponseData;

    iget v0, v0, Landroid/telephony/UiccAuthResponse$UiccAuthResponseData;->present:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    iget-object v0, p0, Landroid/telephony/UiccAuthResponse;->mUiccAuthChallenge:Landroid/telephony/UiccAuthResponse$UiccAuthChallenge;

    iget-object v0, v0, Landroid/telephony/UiccAuthResponse$UiccAuthChallenge;->mCkData:Landroid/telephony/UiccAuthResponse$UiccAuthResponseData;

    iget v0, v0, Landroid/telephony/UiccAuthResponse$UiccAuthResponseData;->len:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    iget-object v0, p0, Landroid/telephony/UiccAuthResponse;->mUiccAuthChallenge:Landroid/telephony/UiccAuthResponse$UiccAuthChallenge;

    iget-object v0, v0, Landroid/telephony/UiccAuthResponse$UiccAuthChallenge;->mCkData:Landroid/telephony/UiccAuthResponse$UiccAuthResponseData;

    iget v0, v0, Landroid/telephony/UiccAuthResponse$UiccAuthResponseData;->len:I

    if-eqz v0, :cond_2

    .line 168
    iget-object v0, p0, Landroid/telephony/UiccAuthResponse;->mUiccAuthChallenge:Landroid/telephony/UiccAuthResponse$UiccAuthChallenge;

    iget-object v0, v0, Landroid/telephony/UiccAuthResponse$UiccAuthChallenge;->mCkData:Landroid/telephony/UiccAuthResponse$UiccAuthResponseData;

    iget-object v0, v0, Landroid/telephony/UiccAuthResponse$UiccAuthResponseData;->data:[B

    iget-object v2, p0, Landroid/telephony/UiccAuthResponse;->mUiccAuthChallenge:Landroid/telephony/UiccAuthResponse$UiccAuthChallenge;

    iget-object v2, v2, Landroid/telephony/UiccAuthResponse$UiccAuthChallenge;->mCkData:Landroid/telephony/UiccAuthResponse$UiccAuthResponseData;

    iget v2, v2, Landroid/telephony/UiccAuthResponse$UiccAuthResponseData;->len:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Parcel;->writeByteArray([BII)V

    goto :goto_2

    .line 170
    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 173
    :cond_3
    iget-object v0, p0, Landroid/telephony/UiccAuthResponse;->mUiccAuthSyncFail:Landroid/telephony/UiccAuthResponse$UiccAuthResponseData;

    iget v0, v0, Landroid/telephony/UiccAuthResponse$UiccAuthResponseData;->present:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 174
    iget-object v0, p0, Landroid/telephony/UiccAuthResponse;->mUiccAuthSyncFail:Landroid/telephony/UiccAuthResponse$UiccAuthResponseData;

    iget v0, v0, Landroid/telephony/UiccAuthResponse$UiccAuthResponseData;->len:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    iget-object v0, p0, Landroid/telephony/UiccAuthResponse;->mUiccAuthSyncFail:Landroid/telephony/UiccAuthResponse$UiccAuthResponseData;

    iget v0, v0, Landroid/telephony/UiccAuthResponse$UiccAuthResponseData;->len:I

    if-eqz v0, :cond_4

    .line 176
    iget-object v0, p0, Landroid/telephony/UiccAuthResponse;->mUiccAuthSyncFail:Landroid/telephony/UiccAuthResponse$UiccAuthResponseData;

    iget-object v0, v0, Landroid/telephony/UiccAuthResponse$UiccAuthResponseData;->data:[B

    iget-object v2, p0, Landroid/telephony/UiccAuthResponse;->mUiccAuthSyncFail:Landroid/telephony/UiccAuthResponse$UiccAuthResponseData;

    iget v2, v2, Landroid/telephony/UiccAuthResponse$UiccAuthResponseData;->len:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Parcel;->writeByteArray([BII)V

    goto :goto_2

    .line 178
    :cond_4
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 181
    :goto_2
    return-void
.end method
