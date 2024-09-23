.class Landroid/contentsensor/ViewTreeNode$1;
.super Ljava/lang/Object;
.source "ViewTreeNode.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/contentsensor/ViewTreeNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/contentsensor/ViewTreeNode;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/contentsensor/ViewTreeNode;
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 194
    new-instance v0, Landroid/contentsensor/ViewTreeNode;

    invoke-direct {v0, p1}, Landroid/contentsensor/ViewTreeNode;-><init>(Landroid/os/Parcel;)V

    .line 195
    .local v0, "nodeGroup":Landroid/contentsensor/ViewTreeNode;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 196
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 197
    sget-object v3, Landroid/contentsensor/ViewTreeNode;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/contentsensor/ViewTreeNode;

    invoke-virtual {v0, v3}, Landroid/contentsensor/ViewTreeNode;->setChildViewInList(Landroid/contentsensor/ViewTreeNode;)V

    .line 196
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 199
    .end local v2    # "i":I
    :cond_0
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 191
    invoke-virtual {p0, p1}, Landroid/contentsensor/ViewTreeNode$1;->createFromParcel(Landroid/os/Parcel;)Landroid/contentsensor/ViewTreeNode;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/contentsensor/ViewTreeNode;
    .locals 1
    .param p1, "size"    # I

    .line 204
    new-array v0, p1, [Landroid/contentsensor/ViewTreeNode;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 191
    invoke-virtual {p0, p1}, Landroid/contentsensor/ViewTreeNode$1;->newArray(I)[Landroid/contentsensor/ViewTreeNode;

    move-result-object p1

    return-object p1
.end method
