.class Landroid/app/mtm/MultiTaskPolicy$1;
.super Ljava/lang/Object;
.source "MultiTaskPolicy.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/mtm/MultiTaskPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/mtm/MultiTaskPolicy;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/app/mtm/MultiTaskPolicy;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .line 34
    new-instance v0, Landroid/app/mtm/MultiTaskPolicy;

    invoke-direct {v0, p1}, Landroid/app/mtm/MultiTaskPolicy;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Landroid/app/mtm/MultiTaskPolicy$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/mtm/MultiTaskPolicy;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/app/mtm/MultiTaskPolicy;
    .locals 1
    .param p1, "size"    # I

    .line 38
    new-array v0, p1, [Landroid/app/mtm/MultiTaskPolicy;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Landroid/app/mtm/MultiTaskPolicy$1;->newArray(I)[Landroid/app/mtm/MultiTaskPolicy;

    move-result-object p1

    return-object p1
.end method
