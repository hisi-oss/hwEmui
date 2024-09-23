.class public Landroid/rms/iaware/AwareConfig;
.super Ljava/lang/Object;
.source "AwareConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/rms/iaware/AwareConfig$SubItem;,
        Landroid/rms/iaware/AwareConfig$Item;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/rms/iaware/AwareConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/rms/iaware/AwareConfig$Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    new-instance v0, Landroid/rms/iaware/AwareConfig$1;

    invoke-direct {v0}, Landroid/rms/iaware/AwareConfig$1;-><init>()V

    sput-object v0, Landroid/rms/iaware/AwareConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/rms/iaware/AwareConfig;->mItems:Ljava/util/List;

    .line 21
    iget-object v0, p0, Landroid/rms/iaware/AwareConfig;->mItems:Ljava/util/List;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/rms/iaware/AwareConfig$Item;",
            ">;)V"
        }
    .end annotation

    .line 15
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Landroid/rms/iaware/AwareConfig$Item;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Landroid/rms/iaware/AwareConfig;->mItems:Ljava/util/List;

    .line 17
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method public getConfigList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/rms/iaware/AwareConfig$Item;",
            ">;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Landroid/rms/iaware/AwareConfig;->mItems:Ljava/util/List;

    return-object v0
.end method

.method public setConfigList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/rms/iaware/AwareConfig$Item;",
            ">;)V"
        }
    .end annotation

    .line 29
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Landroid/rms/iaware/AwareConfig$Item;>;"
    iput-object p1, p0, Landroid/rms/iaware/AwareConfig;->mItems:Ljava/util/List;

    .line 30
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AwareConfigList [mItems="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/rms/iaware/AwareConfig;->mItems:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 44
    iget-object v0, p0, Landroid/rms/iaware/AwareConfig;->mItems:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 46
    return-void
.end method
