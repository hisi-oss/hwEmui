.class public final enum Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$FramebufferTarget;
.super Ljava/lang/Enum;
.source "GFX.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FramebufferTarget"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$FramebufferTarget;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$FramebufferTarget;

.field public static final enum DRAW_FRAMEBUFFER:Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$FramebufferTarget;

.field public static final enum FRAMEBUFFER:Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$FramebufferTarget;

.field public static final enum READ_FRAMEBUFFER:Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$FramebufferTarget;


# instance fields
.field public final v:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 100
    new-instance v0, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$FramebufferTarget;

    const-string v1, "FRAMEBUFFER"

    const/4 v2, 0x0

    const v3, 0x8d40

    invoke-direct {v0, v1, v2, v3}, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$FramebufferTarget;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$FramebufferTarget;->FRAMEBUFFER:Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$FramebufferTarget;

    .line 101
    new-instance v0, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$FramebufferTarget;

    const-string v1, "READ_FRAMEBUFFER"

    const/4 v3, 0x1

    const v4, 0x8ca8

    invoke-direct {v0, v1, v3, v4}, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$FramebufferTarget;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$FramebufferTarget;->READ_FRAMEBUFFER:Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$FramebufferTarget;

    .line 102
    new-instance v0, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$FramebufferTarget;

    const-string v1, "DRAW_FRAMEBUFFER"

    const/4 v4, 0x2

    const v5, 0x8ca9

    invoke-direct {v0, v1, v4, v5}, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$FramebufferTarget;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$FramebufferTarget;->DRAW_FRAMEBUFFER:Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$FramebufferTarget;

    .line 99
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$FramebufferTarget;

    sget-object v1, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$FramebufferTarget;->FRAMEBUFFER:Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$FramebufferTarget;

    aput-object v1, v0, v2

    sget-object v1, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$FramebufferTarget;->READ_FRAMEBUFFER:Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$FramebufferTarget;

    aput-object v1, v0, v3

    sget-object v1, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$FramebufferTarget;->DRAW_FRAMEBUFFER:Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$FramebufferTarget;

    aput-object v1, v0, v4

    sput-object v0, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$FramebufferTarget;->$VALUES:[Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$FramebufferTarget;

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

    .line 104
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$FramebufferTarget;->v:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$FramebufferTarget;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 99
    const-class v0, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$FramebufferTarget;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$FramebufferTarget;

    return-object v0
.end method

.method public static values()[Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$FramebufferTarget;
    .locals 1

    .line 99
    sget-object v0, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$FramebufferTarget;->$VALUES:[Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$FramebufferTarget;

    invoke-virtual {v0}, [Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$FramebufferTarget;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$FramebufferTarget;

    return-object v0
.end method
