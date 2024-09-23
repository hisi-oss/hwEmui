.class public Landroid/rms/iaware/AppTypeRecoManager$AppTypeCacheInfo;
.super Ljava/lang/Object;
.source "AppTypeRecoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/rms/iaware/AppTypeRecoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppTypeCacheInfo"
.end annotation


# instance fields
.field private mAttr:I

.field private mSource:I

.field private mType:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "attr"    # I

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput p1, p0, Landroid/rms/iaware/AppTypeRecoManager$AppTypeCacheInfo;->mType:I

    .line 65
    iput p2, p0, Landroid/rms/iaware/AppTypeRecoManager$AppTypeCacheInfo;->mAttr:I

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Landroid/rms/iaware/AppTypeRecoManager$AppTypeCacheInfo;->mSource:I

    .line 67
    return-void
.end method

.method public constructor <init>(III)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "attr"    # I
    .param p3, "source"    # I

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput p1, p0, Landroid/rms/iaware/AppTypeRecoManager$AppTypeCacheInfo;->mType:I

    .line 59
    iput p2, p0, Landroid/rms/iaware/AppTypeRecoManager$AppTypeCacheInfo;->mAttr:I

    .line 60
    iput p3, p0, Landroid/rms/iaware/AppTypeRecoManager$AppTypeCacheInfo;->mSource:I

    .line 61
    return-void
.end method


# virtual methods
.method public getAttribute()I
    .locals 1

    .line 74
    iget v0, p0, Landroid/rms/iaware/AppTypeRecoManager$AppTypeCacheInfo;->mAttr:I

    return v0
.end method

.method public getRecogSource()I
    .locals 1

    .line 78
    iget v0, p0, Landroid/rms/iaware/AppTypeRecoManager$AppTypeCacheInfo;->mSource:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 70
    iget v0, p0, Landroid/rms/iaware/AppTypeRecoManager$AppTypeCacheInfo;->mType:I

    return v0
.end method

.method public setInfo(II)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "attr"    # I

    .line 82
    iput p1, p0, Landroid/rms/iaware/AppTypeRecoManager$AppTypeCacheInfo;->mType:I

    .line 83
    iput p2, p0, Landroid/rms/iaware/AppTypeRecoManager$AppTypeCacheInfo;->mAttr:I

    .line 84
    return-void
.end method
