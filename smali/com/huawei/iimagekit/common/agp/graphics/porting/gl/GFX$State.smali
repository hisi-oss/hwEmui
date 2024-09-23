.class public final enum Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$State;
.super Ljava/lang/Enum;
.source "GFX.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$State;

.field public static final enum BLEND:Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$State;


# instance fields
.field public final v:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 51
    new-instance v0, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$State;

    const-string v1, "BLEND"

    const/4 v2, 0x0

    const/16 v3, 0xbe2

    invoke-direct {v0, v1, v2, v3}, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$State;->BLEND:Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$State;

    .line 50
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$State;

    sget-object v1, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$State;->BLEND:Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$State;

    aput-object v1, v0, v2

    sput-object v0, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$State;->$VALUES:[Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$State;

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

    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 55
    iput p3, p0, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$State;->v:I

    .line 56
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 50
    const-class v0, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$State;

    return-object v0
.end method

.method public static values()[Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$State;
    .locals 1

    .line 50
    sget-object v0, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$State;->$VALUES:[Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$State;

    invoke-virtual {v0}, [Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$State;

    return-object v0
.end method
