.class public Landroid/app/mtm/MultiTaskPolicy;
.super Ljava/lang/Object;
.source "MultiTaskPolicy.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/mtm/MultiTaskPolicy;",
            ">;"
        }
    .end annotation
.end field

.field static final TAG:Ljava/lang/String; = "MultiTaskPolicy"


# instance fields
.field private policy:I

.field private policyData:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Landroid/app/mtm/MultiTaskPolicy$1;

    invoke-direct {v0}, Landroid/app/mtm/MultiTaskPolicy$1;-><init>()V

    sput-object v0, Landroid/app/mtm/MultiTaskPolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "_policy"    # I
    .param p2, "_policyData"    # Landroid/os/Bundle;

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Landroid/app/mtm/MultiTaskPolicy;->policy:I

    .line 15
    iput-object p2, p0, Landroid/app/mtm/MultiTaskPolicy;->policyData:Landroid/os/Bundle;

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/mtm/MultiTaskPolicy;->policy:I

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/app/mtm/MultiTaskPolicy;->policyData:Landroid/os/Bundle;

    .line 21
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 24
    const/4 v0, 0x0

    return v0
.end method

.method public getPolicy()I
    .locals 1

    .line 43
    iget v0, p0, Landroid/app/mtm/MultiTaskPolicy;->policy:I

    return v0
.end method

.method public getPolicyData()Landroid/os/Bundle;
    .locals 1

    .line 47
    iget-object v0, p0, Landroid/app/mtm/MultiTaskPolicy;->policyData:Landroid/os/Bundle;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 28
    iget v0, p0, Landroid/app/mtm/MultiTaskPolicy;->policy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 29
    iget-object v0, p0, Landroid/app/mtm/MultiTaskPolicy;->policyData:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 30
    return-void
.end method
