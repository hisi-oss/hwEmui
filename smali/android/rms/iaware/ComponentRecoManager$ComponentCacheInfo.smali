.class public Landroid/rms/iaware/ComponentRecoManager$ComponentCacheInfo;
.super Ljava/lang/Object;
.source "ComponentRecoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/rms/iaware/ComponentRecoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ComponentCacheInfo"
.end annotation


# instance fields
.field private mBadFunc:I

.field private mCompType:I

.field private mGoodFunc:I


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .param p1, "compType"    # I
    .param p2, "goodFunc"    # I
    .param p3, "badFunc"    # I

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput p1, p0, Landroid/rms/iaware/ComponentRecoManager$ComponentCacheInfo;->mCompType:I

    .line 87
    iput p2, p0, Landroid/rms/iaware/ComponentRecoManager$ComponentCacheInfo;->mGoodFunc:I

    .line 88
    iput p3, p0, Landroid/rms/iaware/ComponentRecoManager$ComponentCacheInfo;->mBadFunc:I

    .line 89
    return-void
.end method


# virtual methods
.method public getBadFunc()I
    .locals 1

    .line 100
    iget v0, p0, Landroid/rms/iaware/ComponentRecoManager$ComponentCacheInfo;->mBadFunc:I

    return v0
.end method

.method public getCompType()I
    .locals 1

    .line 92
    iget v0, p0, Landroid/rms/iaware/ComponentRecoManager$ComponentCacheInfo;->mCompType:I

    return v0
.end method

.method public getGoodFunc()I
    .locals 1

    .line 96
    iget v0, p0, Landroid/rms/iaware/ComponentRecoManager$ComponentCacheInfo;->mGoodFunc:I

    return v0
.end method
