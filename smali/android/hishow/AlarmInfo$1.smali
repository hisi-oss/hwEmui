.class Landroid/hishow/AlarmInfo$1;
.super Ljava/lang/Object;
.source "AlarmInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hishow/AlarmInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hishow/AlarmInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hishow/AlarmInfo;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .line 59
    new-instance v0, Landroid/hishow/AlarmInfo;

    invoke-direct {v0, p1}, Landroid/hishow/AlarmInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 57
    invoke-virtual {p0, p1}, Landroid/hishow/AlarmInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hishow/AlarmInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/hishow/AlarmInfo;
    .locals 1
    .param p1, "size"    # I

    .line 63
    new-array v0, p1, [Landroid/hishow/AlarmInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 57
    invoke-virtual {p0, p1}, Landroid/hishow/AlarmInfo$1;->newArray(I)[Landroid/hishow/AlarmInfo;

    move-result-object p1

    return-object p1
.end method
