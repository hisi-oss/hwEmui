.class public final enum Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$StencilOp;
.super Ljava/lang/Enum;
.source "GFX.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StencilOp"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$StencilOp;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$StencilOp;

.field public static final enum DECREMENT:Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$StencilOp;

.field public static final enum INCREMENT:Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$StencilOp;

.field public static final enum INCREMENT_AND_WRAP:Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$StencilOp;

.field public static final enum INVERT:Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$StencilOp;

.field public static final enum KEEP:Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$StencilOp;

.field public static final enum REPLACE:Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$StencilOp;

.field public static final enum ZERO:Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$StencilOp;


# instance fields
.field public final v:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 76
    new-instance v0, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$StencilOp;

    const-string v1, "KEEP"

    const/4 v2, 0x0

    const/16 v3, 0x1e00

    invoke-direct {v0, v1, v2, v3}, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$StencilOp;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$StencilOp;->KEEP:Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$StencilOp;

    .line 77
    new-instance v0, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$StencilOp;

    const-string v1, "ZERO"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$StencilOp;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$StencilOp;->ZERO:Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$StencilOp;

    .line 78
    new-instance v0, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$StencilOp;

    const-string v1, "REPLACE"

    const/4 v4, 0x2

    const/16 v5, 0x1e01

    invoke-direct {v0, v1, v4, v5}, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$StencilOp;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$StencilOp;->REPLACE:Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$StencilOp;

    .line 79
    new-instance v0, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$StencilOp;

    const-string v1, "INCREMENT"

    const/4 v5, 0x3

    const/16 v6, 0x1e02

    invoke-direct {v0, v1, v5, v6}, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$StencilOp;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$StencilOp;->INCREMENT:Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$StencilOp;

    .line 80
    new-instance v0, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$StencilOp;

    const-string v1, "INCREMENT_AND_WRAP"

    const/4 v6, 0x4

    const v7, 0x8507

    invoke-direct {v0, v1, v6, v7}, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$StencilOp;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$StencilOp;->INCREMENT_AND_WRAP:Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$StencilOp;

    .line 81
    new-instance v0, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$StencilOp;

    const-string v1, "DECREMENT"

    const/4 v7, 0x5

    const v8, 0x8508

    invoke-direct {v0, v1, v7, v8}, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$StencilOp;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$StencilOp;->DECREMENT:Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$StencilOp;

    .line 82
    new-instance v0, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$StencilOp;

    const-string v1, "INVERT"

    const/4 v8, 0x6

    const/16 v9, 0x150a

    invoke-direct {v0, v1, v8, v9}, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$StencilOp;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$StencilOp;->INVERT:Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$StencilOp;

    .line 75
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$StencilOp;

    sget-object v1, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$StencilOp;->KEEP:Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$StencilOp;

    aput-object v1, v0, v2

    sget-object v1, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$StencilOp;->ZERO:Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$StencilOp;

    aput-object v1, v0, v3

    sget-object v1, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$StencilOp;->REPLACE:Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$StencilOp;

    aput-object v1, v0, v4

    sget-object v1, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$StencilOp;->INCREMENT:Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$StencilOp;

    aput-object v1, v0, v5

    sget-object v1, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$StencilOp;->INCREMENT_AND_WRAP:Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$StencilOp;

    aput-object v1, v0, v6

    sget-object v1, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$StencilOp;->DECREMENT:Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$StencilOp;

    aput-object v1, v0, v7

    sget-object v1, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$StencilOp;->INVERT:Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$StencilOp;

    aput-object v1, v0, v8

    sput-object v0, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$StencilOp;->$VALUES:[Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$StencilOp;

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

    .line 85
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 86
    iput p3, p0, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$StencilOp;->v:I

    .line 87
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$StencilOp;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 75
    const-class v0, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$StencilOp;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$StencilOp;

    return-object v0
.end method

.method public static values()[Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$StencilOp;
    .locals 1

    .line 75
    sget-object v0, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$StencilOp;->$VALUES:[Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$StencilOp;

    invoke-virtual {v0}, [Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$StencilOp;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$StencilOp;

    return-object v0
.end method
