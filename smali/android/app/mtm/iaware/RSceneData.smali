.class public Landroid/app/mtm/iaware/RSceneData;
.super Ljava/lang/Object;
.source "RSceneData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/mtm/iaware/RSceneData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBundle:Landroid/os/Bundle;

.field private mFeatureId:I

.field private mTypeId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 77
    new-instance v0, Landroid/app/mtm/iaware/RSceneData$1;

    invoke-direct {v0}, Landroid/app/mtm/iaware/RSceneData$1;-><init>()V

    sput-object v0, Landroid/app/mtm/iaware/RSceneData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IILandroid/os/Bundle;)V
    .locals 0
    .param p1, "typeId"    # I
    .param p2, "featureId"    # I
    .param p3, "bundle"    # Landroid/os/Bundle;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Landroid/app/mtm/iaware/RSceneData;->mTypeId:I

    .line 32
    iput p2, p0, Landroid/app/mtm/iaware/RSceneData;->mFeatureId:I

    .line 33
    iput-object p3, p0, Landroid/app/mtm/iaware/RSceneData;->mBundle:Landroid/os/Bundle;

    .line 34
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public getBundle()Landroid/os/Bundle;
    .locals 1

    .line 53
    iget-object v0, p0, Landroid/app/mtm/iaware/RSceneData;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public getFeatureId()I
    .locals 1

    .line 45
    iget v0, p0, Landroid/app/mtm/iaware/RSceneData;->mFeatureId:I

    return v0
.end method

.method public getTypeId()I
    .locals 1

    .line 37
    iget v0, p0, Landroid/app/mtm/iaware/RSceneData;->mTypeId:I

    return v0
.end method

.method public setBundle(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 57
    iput-object p1, p0, Landroid/app/mtm/iaware/RSceneData;->mBundle:Landroid/os/Bundle;

    .line 58
    return-void
.end method

.method public setFeatureId(I)V
    .locals 0
    .param p1, "featureId"    # I

    .line 49
    iput p1, p0, Landroid/app/mtm/iaware/RSceneData;->mFeatureId:I

    .line 50
    return-void
.end method

.method public setTypeId(I)V
    .locals 0
    .param p1, "typeId"    # I

    .line 41
    iput p1, p0, Landroid/app/mtm/iaware/RSceneData;->mTypeId:I

    .line 42
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RSceneData[mTypeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/app/mtm/iaware/RSceneData;->mTypeId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mFeatureId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/app/mtm/iaware/RSceneData;->mFeatureId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mBundle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/mtm/iaware/RSceneData;->mBundle:Landroid/os/Bundle;

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

    .line 72
    iget v0, p0, Landroid/app/mtm/iaware/RSceneData;->mTypeId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    iget v0, p0, Landroid/app/mtm/iaware/RSceneData;->mFeatureId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    iget-object v0, p0, Landroid/app/mtm/iaware/RSceneData;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 75
    return-void
.end method
