.class Landroid/telephony/UiccAuthResponse$1;
.super Ljava/lang/Object;
.source "UiccAuthResponse.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/UiccAuthResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/telephony/UiccAuthResponse;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/telephony/UiccAuthResponse;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 188
    new-instance v0, Landroid/telephony/UiccAuthResponse;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/telephony/UiccAuthResponse;-><init>(Landroid/os/Parcel;Landroid/telephony/UiccAuthResponse$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 184
    invoke-virtual {p0, p1}, Landroid/telephony/UiccAuthResponse$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telephony/UiccAuthResponse;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/telephony/UiccAuthResponse;
    .locals 1
    .param p1, "size"    # I

    .line 192
    new-array v0, p1, [Landroid/telephony/UiccAuthResponse;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 184
    invoke-virtual {p0, p1}, Landroid/telephony/UiccAuthResponse$1;->newArray(I)[Landroid/telephony/UiccAuthResponse;

    move-result-object p1

    return-object p1
.end method
