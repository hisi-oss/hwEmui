.class public final enum Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$BlendFactor;
.super Ljava/lang/Enum;
.source "GFX.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BlendFactor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$BlendFactor;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$BlendFactor;

.field public static final enum CONST_ALPHA:Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$BlendFactor;

.field public static final enum DST_ALPHA:Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$BlendFactor;

.field public static final enum ONE:Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$BlendFactor;

.field public static final enum ONE_MINUS_CONST_ALPHA:Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$BlendFactor;

.field public static final enum ONE_MINUS_DST_ALPHA:Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$BlendFactor;

.field public static final enum ONE_MINUS_SRC_ALPHA:Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$BlendFactor;

.field public static final enum SRC_ALPHA:Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$BlendFactor;

.field public static final enum ZERO:Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$BlendFactor;


# instance fields
.field public final v:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 40
    new-instance v0, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$BlendFactor;

    const-string v1, "SRC_ALPHA"

    const/4 v2, 0x0

    const/16 v3, 0x302

    invoke-direct {v0, v1, v2, v3}, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$BlendFactor;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$BlendFactor;->SRC_ALPHA:Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$BlendFactor;

    new-instance v0, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$BlendFactor;

    const-string v1, "ONE_MINUS_SRC_ALPHA"

    const/4 v3, 0x1

    const/16 v4, 0x303

    invoke-direct {v0, v1, v3, v4}, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$BlendFactor;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$BlendFactor;->ONE_MINUS_SRC_ALPHA:Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$BlendFactor;

    .line 41
    new-instance v0, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$BlendFactor;

    const-string v1, "CONST_ALPHA"

    const/4 v4, 0x2

    const v5, 0x8003

    invoke-direct {v0, v1, v4, v5}, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$BlendFactor;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$BlendFactor;->CONST_ALPHA:Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$BlendFactor;

    new-instance v0, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$BlendFactor;

    const-string v1, "ONE_MINUS_CONST_ALPHA"

    const/4 v5, 0x3

    const v6, 0x8004

    invoke-direct {v0, v1, v5, v6}, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$BlendFactor;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$BlendFactor;->ONE_MINUS_CONST_ALPHA:Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$BlendFactor;

    .line 42
    new-instance v0, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$BlendFactor;

    const-string v1, "DST_ALPHA"

    const/4 v6, 0x4

    const/16 v7, 0x304

    invoke-direct {v0, v1, v6, v7}, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$BlendFactor;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$BlendFactor;->DST_ALPHA:Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$BlendFactor;

    new-instance v0, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$BlendFactor;

    const-string v1, "ONE_MINUS_DST_ALPHA"

    const/4 v7, 0x5

    const/16 v8, 0x305

    invoke-direct {v0, v1, v7, v8}, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$BlendFactor;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$BlendFactor;->ONE_MINUS_DST_ALPHA:Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$BlendFactor;

    new-instance v0, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$BlendFactor;

    const-string v1, "ZERO"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v2}, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$BlendFactor;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$BlendFactor;->ZERO:Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$BlendFactor;

    new-instance v0, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$BlendFactor;

    const-string v1, "ONE"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9, v3}, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$BlendFactor;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$BlendFactor;->ONE:Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$BlendFactor;

    .line 39
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$BlendFactor;

    sget-object v1, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$BlendFactor;->SRC_ALPHA:Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$BlendFactor;

    aput-object v1, v0, v2

    sget-object v1, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$BlendFactor;->ONE_MINUS_SRC_ALPHA:Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$BlendFactor;

    aput-object v1, v0, v3

    sget-object v1, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$BlendFactor;->CONST_ALPHA:Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$BlendFactor;

    aput-object v1, v0, v4

    sget-object v1, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$BlendFactor;->ONE_MINUS_CONST_ALPHA:Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$BlendFactor;

    aput-object v1, v0, v5

    sget-object v1, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$BlendFactor;->DST_ALPHA:Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$BlendFactor;

    aput-object v1, v0, v6

    sget-object v1, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$BlendFactor;->ONE_MINUS_DST_ALPHA:Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$BlendFactor;

    aput-object v1, v0, v7

    sget-object v1, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$BlendFactor;->ZERO:Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$BlendFactor;

    aput-object v1, v0, v8

    sget-object v1, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$BlendFactor;->ONE:Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$BlendFactor;

    aput-object v1, v0, v9

    sput-object v0, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$BlendFactor;->$VALUES:[Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$BlendFactor;

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

    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 46
    iput p3, p0, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$BlendFactor;->v:I

    .line 47
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$BlendFactor;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 39
    const-class v0, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$BlendFactor;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$BlendFactor;

    return-object v0
.end method

.method public static values()[Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$BlendFactor;
    .locals 1

    .line 39
    sget-object v0, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$BlendFactor;->$VALUES:[Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$BlendFactor;

    invoke-virtual {v0}, [Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$BlendFactor;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$BlendFactor;

    return-object v0
.end method
