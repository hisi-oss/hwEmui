.class public final enum Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$FilterType;
.super Ljava/lang/Enum;
.source "GFX.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FilterType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$FilterType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$FilterType;

.field public static final enum LINEAR:Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$FilterType;

.field public static final enum NEAREST:Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$FilterType;


# instance fields
.field public final v:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 31
    new-instance v0, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$FilterType;

    const-string v1, "NEAREST"

    const/4 v2, 0x0

    const/16 v3, 0x2600

    invoke-direct {v0, v1, v2, v3}, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$FilterType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$FilterType;->NEAREST:Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$FilterType;

    new-instance v0, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$FilterType;

    const-string v1, "LINEAR"

    const/4 v3, 0x1

    const/16 v4, 0x2601

    invoke-direct {v0, v1, v3, v4}, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$FilterType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$FilterType;->LINEAR:Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$FilterType;

    .line 30
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$FilterType;

    sget-object v1, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$FilterType;->NEAREST:Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$FilterType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$FilterType;->LINEAR:Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$FilterType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$FilterType;->$VALUES:[Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$FilterType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "v"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 35
    iput p3, p0, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$FilterType;->v:I

    .line 36
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$FilterType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 30
    const-class v0, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$FilterType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$FilterType;

    return-object v0
.end method

.method public static values()[Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$FilterType;
    .locals 1

    .line 30
    sget-object v0, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$FilterType;->$VALUES:[Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$FilterType;

    invoke-virtual {v0}, [Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$FilterType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$FilterType;

    return-object v0
.end method
