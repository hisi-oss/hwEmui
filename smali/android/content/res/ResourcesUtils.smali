.class public Landroid/content/res/ResourcesUtils;
.super Lcom/huawei/utils/reflect/EasyInvokeUtils;
.source "ResourcesUtils.java"


# instance fields
.field loadDrawable:Lcom/huawei/utils/reflect/MethodObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/huawei/utils/reflect/MethodObject<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field mAccessLock:Lcom/huawei/utils/reflect/FieldObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/huawei/utils/reflect/FieldObject<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mColorDrawableCache:Lcom/huawei/utils/reflect/FieldObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/huawei/utils/reflect/FieldObject<",
            "Landroid/content/res/DrawableCache;",
            ">;"
        }
    .end annotation
.end field

.field mDrawableCache:Lcom/huawei/utils/reflect/FieldObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/huawei/utils/reflect/FieldObject<",
            "Landroid/content/res/DrawableCache;",
            ">;"
        }
    .end annotation
.end field

.field mPreloading:Lcom/huawei/utils/reflect/FieldObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/huawei/utils/reflect/FieldObject<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field mTmpConfig:Lcom/huawei/utils/reflect/FieldObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/huawei/utils/reflect/FieldObject<",
            "Landroid/content/res/Configuration;",
            ">;"
        }
    .end annotation
.end field

.field mTmpValue:Lcom/huawei/utils/reflect/FieldObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/huawei/utils/reflect/FieldObject<",
            "Landroid/util/TypedValue;",
            ">;"
        }
    .end annotation
.end field

.field sPreloadedDensity:Lcom/huawei/utils/reflect/FieldObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/huawei/utils/reflect/FieldObject<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/huawei/utils/reflect/EasyInvokeUtils;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccessLock(Landroid/content/res/ResourcesImpl;)Ljava/lang/Object;
    .locals 1
    .param p1, "obj"    # Landroid/content/res/ResourcesImpl;
    .annotation runtime Lcom/huawei/utils/reflect/annotation/GetField;
        fieldObject = "mAccessLock"
    .end annotation

    .line 58
    iget-object v0, p0, Landroid/content/res/ResourcesUtils;->mAccessLock:Lcom/huawei/utils/reflect/FieldObject;

    invoke-virtual {p0, v0, p1}, Landroid/content/res/ResourcesUtils;->getField(Lcom/huawei/utils/reflect/FieldObject;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getColorDrawableCache(Landroid/content/res/ResourcesImpl;)Landroid/content/res/DrawableCache;
    .locals 1
    .param p1, "obj"    # Landroid/content/res/ResourcesImpl;
    .annotation runtime Lcom/huawei/utils/reflect/annotation/GetField;
        fieldObject = "mColorDrawableCache"
    .end annotation

    .line 73
    iget-object v0, p0, Landroid/content/res/ResourcesUtils;->mColorDrawableCache:Lcom/huawei/utils/reflect/FieldObject;

    invoke-virtual {p0, v0, p1}, Landroid/content/res/ResourcesUtils;->getField(Lcom/huawei/utils/reflect/FieldObject;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/DrawableCache;

    return-object v0
.end method

.method public getDrawableCache(Landroid/content/res/ResourcesImpl;)Landroid/content/res/DrawableCache;
    .locals 1
    .param p1, "obj"    # Landroid/content/res/ResourcesImpl;
    .annotation runtime Lcom/huawei/utils/reflect/annotation/GetField;
        fieldObject = "mDrawableCache"
    .end annotation

    .line 68
    iget-object v0, p0, Landroid/content/res/ResourcesUtils;->mDrawableCache:Lcom/huawei/utils/reflect/FieldObject;

    invoke-virtual {p0, v0, p1}, Landroid/content/res/ResourcesUtils;->getField(Lcom/huawei/utils/reflect/FieldObject;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/DrawableCache;

    return-object v0
.end method

.method public getPreloadedDensity(Landroid/content/res/ResourcesImpl;)I
    .locals 1
    .param p1, "obj"    # Landroid/content/res/ResourcesImpl;
    .annotation runtime Lcom/huawei/utils/reflect/annotation/GetField;
        fieldObject = "sPreloadedDensity"
    .end annotation

    .line 63
    iget-object v0, p0, Landroid/content/res/ResourcesUtils;->sPreloadedDensity:Lcom/huawei/utils/reflect/FieldObject;

    invoke-virtual {p0, v0, p1}, Landroid/content/res/ResourcesUtils;->getField(Lcom/huawei/utils/reflect/FieldObject;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getPreloading(Landroid/content/res/ResourcesImpl;)Z
    .locals 1
    .param p1, "obj"    # Landroid/content/res/ResourcesImpl;
    .annotation runtime Lcom/huawei/utils/reflect/annotation/GetField;
        fieldObject = "mPreloading"
    .end annotation

    .line 53
    iget-object v0, p0, Landroid/content/res/ResourcesUtils;->mPreloading:Lcom/huawei/utils/reflect/FieldObject;

    invoke-virtual {p0, v0, p1}, Landroid/content/res/ResourcesUtils;->getField(Lcom/huawei/utils/reflect/FieldObject;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getTmpConfig(Landroid/content/res/ResourcesImpl;)Landroid/content/res/Configuration;
    .locals 1
    .param p1, "obj"    # Landroid/content/res/ResourcesImpl;
    .annotation runtime Lcom/huawei/utils/reflect/annotation/GetField;
        fieldObject = "mTmpConfig"
    .end annotation

    .line 38
    iget-object v0, p0, Landroid/content/res/ResourcesUtils;->mTmpConfig:Lcom/huawei/utils/reflect/FieldObject;

    invoke-virtual {p0, v0, p1}, Landroid/content/res/ResourcesUtils;->getField(Lcom/huawei/utils/reflect/FieldObject;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Configuration;

    return-object v0
.end method

.method public getTmpValue(Landroid/content/res/Resources;)Landroid/util/TypedValue;
    .locals 1
    .param p1, "obj"    # Landroid/content/res/Resources;
    .annotation runtime Lcom/huawei/utils/reflect/annotation/GetField;
        fieldObject = "mTmpValue"
    .end annotation

    .line 43
    iget-object v0, p0, Landroid/content/res/ResourcesUtils;->mTmpValue:Lcom/huawei/utils/reflect/FieldObject;

    invoke-virtual {p0, v0, p1}, Landroid/content/res/ResourcesUtils;->getField(Lcom/huawei/utils/reflect/FieldObject;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/TypedValue;

    return-object v0
.end method

.method public setTmpValue(Landroid/content/res/Resources;Landroid/util/TypedValue;)V
    .locals 1
    .param p1, "obj"    # Landroid/content/res/Resources;
    .param p2, "value"    # Landroid/util/TypedValue;
    .annotation runtime Lcom/huawei/utils/reflect/annotation/SetField;
        fieldObject = "mTmpValue"
    .end annotation

    .line 48
    iget-object v0, p0, Landroid/content/res/ResourcesUtils;->mTmpValue:Lcom/huawei/utils/reflect/FieldObject;

    invoke-virtual {p0, v0, p1, p2}, Landroid/content/res/ResourcesUtils;->setField(Lcom/huawei/utils/reflect/FieldObject;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 49
    return-void
.end method
