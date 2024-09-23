.class public final enum Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;
.super Ljava/lang/Enum;
.source "ImageProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/displayengine/ImageProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ColorspaceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;

.field public static final enum ADOBE_RGB:Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;

.field public static final enum DISPLAY_P3:Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;

.field public static final enum SRGB:Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;

.field public static final enum SUPER_GAMUT:Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;

.field private static final mColorSpaceIdToEnum:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mColorSpace:Landroid/graphics/ColorSpace;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 175
    new-instance v0, Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;

    const-string v1, "SRGB"

    sget-object v2, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v2}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;-><init>(Ljava/lang/String;ILandroid/graphics/ColorSpace;)V

    sput-object v0, Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;->SRGB:Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;

    .line 176
    new-instance v0, Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;

    const-string v1, "ADOBE_RGB"

    sget-object v2, Landroid/graphics/ColorSpace$Named;->ADOBE_RGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v2}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v2

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;-><init>(Ljava/lang/String;ILandroid/graphics/ColorSpace;)V

    sput-object v0, Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;->ADOBE_RGB:Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;

    .line 177
    new-instance v0, Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;

    const-string v1, "DISPLAY_P3"

    sget-object v2, Landroid/graphics/ColorSpace$Named;->DISPLAY_P3:Landroid/graphics/ColorSpace$Named;

    invoke-static {v2}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v2

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;-><init>(Ljava/lang/String;ILandroid/graphics/ColorSpace;)V

    sput-object v0, Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;->DISPLAY_P3:Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;

    .line 178
    new-instance v0, Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;

    const-string v1, "SUPER_GAMUT"

    const/4 v2, 0x3

    const/4 v6, 0x0

    invoke-direct {v0, v1, v2, v6}, Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;-><init>(Ljava/lang/String;ILandroid/graphics/ColorSpace;)V

    sput-object v0, Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;->SUPER_GAMUT:Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;

    .line 174
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;

    sget-object v1, Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;->SRGB:Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;->ADOBE_RGB:Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;->DISPLAY_P3:Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;->SUPER_GAMUT:Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;->$VALUES:[Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;

    .line 181
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;->mColorSpaceIdToEnum:Ljava/util/Map;

    .line 183
    invoke-static {}, Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;->values()[Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v2, v0, v3

    .line 184
    .local v2, "type":Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;
    iget-object v4, v2, Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;->mColorSpace:Landroid/graphics/ColorSpace;

    if-eqz v4, :cond_0

    .line 185
    sget-object v4, Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;->mColorSpaceIdToEnum:Ljava/util/Map;

    iget-object v5, v2, Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;->mColorSpace:Landroid/graphics/ColorSpace;

    invoke-virtual {v5}, Landroid/graphics/ColorSpace;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    .end local v2    # "type":Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 188
    :cond_1
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILandroid/graphics/ColorSpace;)V
    .locals 0
    .param p3, "colorSpace"    # Landroid/graphics/ColorSpace;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/ColorSpace;",
            ")V"
        }
    .end annotation

    .line 189
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 190
    iput-object p3, p0, Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;->mColorSpace:Landroid/graphics/ColorSpace;

    .line 191
    return-void
.end method

.method public static getEnum(Landroid/graphics/ColorSpace;)Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;
    .locals 2
    .param p0, "colorSpace"    # Landroid/graphics/ColorSpace;

    .line 193
    if-nez p0, :cond_0

    .line 194
    const/4 v0, 0x0

    return-object v0

    .line 196
    :cond_0
    sget-object v0, Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;->mColorSpaceIdToEnum:Ljava/util/Map;

    invoke-virtual {p0}, Landroid/graphics/ColorSpace;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 174
    const-class v0, Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;

    return-object v0
.end method

.method public static values()[Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;
    .locals 1

    .line 174
    sget-object v0, Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;->$VALUES:[Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;

    invoke-virtual {v0}, [Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;

    return-object v0
.end method
