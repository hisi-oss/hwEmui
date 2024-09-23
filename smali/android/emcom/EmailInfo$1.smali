.class Landroid/emcom/EmailInfo$1;
.super Ljava/lang/Object;
.source "EmailInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/emcom/EmailInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/emcom/EmailInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/emcom/EmailInfo;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 62
    new-instance v0, Landroid/emcom/EmailInfo;

    invoke-direct {v0, p1}, Landroid/emcom/EmailInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 59
    invoke-virtual {p0, p1}, Landroid/emcom/EmailInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/emcom/EmailInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/emcom/EmailInfo;
    .locals 1
    .param p1, "size"    # I

    .line 67
    new-array v0, p1, [Landroid/emcom/EmailInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 59
    invoke-virtual {p0, p1}, Landroid/emcom/EmailInfo$1;->newArray(I)[Landroid/emcom/EmailInfo;

    move-result-object p1

    return-object p1
.end method
