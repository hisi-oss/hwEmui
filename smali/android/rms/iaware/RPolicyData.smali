.class public Landroid/rms/iaware/RPolicyData;
.super Ljava/lang/Object;
.source "RPolicyData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/rms/iaware/RPolicyData;",
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

    .line 56
    new-instance v0, Landroid/rms/iaware/RPolicyData$1;

    invoke-direct {v0}, Landroid/rms/iaware/RPolicyData$1;-><init>()V

    sput-object v0, Landroid/rms/iaware/RPolicyData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IILandroid/os/Bundle;)V
    .locals 0
    .param p1, "typeId"    # I
    .param p2, "featureId"    # I
    .param p3, "bundle"    # Landroid/os/Bundle;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Landroid/rms/iaware/RPolicyData;->mTypeId:I

    .line 30
    iput p2, p0, Landroid/rms/iaware/RPolicyData;->mFeatureId:I

    .line 31
    iput-object p3, p0, Landroid/rms/iaware/RPolicyData;->mBundle:Landroid/os/Bundle;

    .line 32
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public getBundle()Landroid/os/Bundle;
    .locals 1

    .line 43
    iget-object v0, p0, Landroid/rms/iaware/RPolicyData;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public getFeatureId()I
    .locals 1

    .line 39
    iget v0, p0, Landroid/rms/iaware/RPolicyData;->mFeatureId:I

    return v0
.end method

.method public getTypeId()I
    .locals 1

    .line 35
    iget v0, p0, Landroid/rms/iaware/RPolicyData;->mTypeId:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 47
    iget v0, p0, Landroid/rms/iaware/RPolicyData;->mTypeId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 48
    iget v0, p0, Landroid/rms/iaware/RPolicyData;->mFeatureId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    iget-object v0, p0, Landroid/rms/iaware/RPolicyData;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 50
    return-void
.end method
