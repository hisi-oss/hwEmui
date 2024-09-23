.class public final enum Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$PrimitiveType;
.super Ljava/lang/Enum;
.source "GFX.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PrimitiveType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$PrimitiveType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$PrimitiveType;

.field public static final enum TRIANGLE_STRIP:Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$PrimitiveType;


# instance fields
.field public final v:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 22
    new-instance v0, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$PrimitiveType;

    const-string v1, "TRIANGLE_STRIP"

    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$PrimitiveType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$PrimitiveType;->TRIANGLE_STRIP:Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$PrimitiveType;

    .line 21
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$PrimitiveType;

    sget-object v1, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$PrimitiveType;->TRIANGLE_STRIP:Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$PrimitiveType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$PrimitiveType;->$VALUES:[Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$PrimitiveType;

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

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 26
    iput p3, p0, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$PrimitiveType;->v:I

    .line 27
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$PrimitiveType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 21
    const-class v0, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$PrimitiveType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$PrimitiveType;

    return-object v0
.end method

.method public static values()[Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$PrimitiveType;
    .locals 1

    .line 21
    sget-object v0, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$PrimitiveType;->$VALUES:[Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$PrimitiveType;

    invoke-virtual {v0}, [Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$PrimitiveType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$PrimitiveType;

    return-object v0
.end method
