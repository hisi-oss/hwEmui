.class Landroid/app/servertransaction/ClientTransactionItemImpl$1;
.super Ljava/lang/Object;
.source "ClientTransactionItemImpl.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/servertransaction/ClientTransactionItemImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/servertransaction/ClientTransactionItemImpl;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/app/servertransaction/ClientTransactionItemImpl;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 57
    new-instance v0, Landroid/app/servertransaction/ClientTransactionItemImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/app/servertransaction/ClientTransactionItemImpl;-><init>(Landroid/os/Parcel;Landroid/app/servertransaction/ClientTransactionItemImpl$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 55
    invoke-virtual {p0, p1}, Landroid/app/servertransaction/ClientTransactionItemImpl$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/servertransaction/ClientTransactionItemImpl;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/app/servertransaction/ClientTransactionItemImpl;
    .locals 1
    .param p1, "size"    # I

    .line 61
    new-array v0, p1, [Landroid/app/servertransaction/ClientTransactionItemImpl;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 55
    invoke-virtual {p0, p1}, Landroid/app/servertransaction/ClientTransactionItemImpl$1;->newArray(I)[Landroid/app/servertransaction/ClientTransactionItemImpl;

    move-result-object p1

    return-object p1
.end method
