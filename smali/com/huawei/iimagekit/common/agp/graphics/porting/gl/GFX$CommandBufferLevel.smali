.class public final enum Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$CommandBufferLevel;
.super Ljava/lang/Enum;
.source "GFX.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CommandBufferLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$CommandBufferLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$CommandBufferLevel;

.field public static final enum PRIMARY:Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$CommandBufferLevel;

.field public static final enum SECONDARY:Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$CommandBufferLevel;


# instance fields
.field public final v:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 91
    new-instance v0, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$CommandBufferLevel;

    const-string v1, "PRIMARY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$CommandBufferLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$CommandBufferLevel;->PRIMARY:Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$CommandBufferLevel;

    .line 92
    new-instance v0, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$CommandBufferLevel;

    const-string v1, "SECONDARY"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$CommandBufferLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$CommandBufferLevel;->SECONDARY:Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$CommandBufferLevel;

    .line 90
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$CommandBufferLevel;

    sget-object v1, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$CommandBufferLevel;->PRIMARY:Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$CommandBufferLevel;

    aput-object v1, v0, v2

    sget-object v1, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$CommandBufferLevel;->SECONDARY:Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$CommandBufferLevel;

    aput-object v1, v0, v3

    sput-object v0, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$CommandBufferLevel;->$VALUES:[Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$CommandBufferLevel;

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

    .line 95
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 96
    iput p3, p0, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$CommandBufferLevel;->v:I

    .line 97
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$CommandBufferLevel;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 90
    const-class v0, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$CommandBufferLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$CommandBufferLevel;

    return-object v0
.end method

.method public static values()[Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$CommandBufferLevel;
    .locals 1

    .line 90
    sget-object v0, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$CommandBufferLevel;->$VALUES:[Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$CommandBufferLevel;

    invoke-virtual {v0}, [Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$CommandBufferLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$CommandBufferLevel;

    return-object v0
.end method
