.class public final enum Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$CompareOp;
.super Ljava/lang/Enum;
.source "GFX.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CompareOp"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$CompareOp;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$CompareOp;

.field public static final enum ALWAYS:Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$CompareOp;

.field public static final enum EQUAL:Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$CompareOp;

.field public static final enum GREATER:Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$CompareOp;

.field public static final enum GREATER_OR_EQUAL:Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$CompareOp;

.field public static final enum LESS:Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$CompareOp;

.field public static final enum LESS_OR_EQUAL:Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$CompareOp;

.field public static final enum NEVER:Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$CompareOp;

.field public static final enum NOT_EQUAL:Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$CompareOp;


# instance fields
.field public final v:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 60
    new-instance v0, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$CompareOp;

    const-string v1, "NEVER"

    const/4 v2, 0x0

    const/16 v3, 0x200

    invoke-direct {v0, v1, v2, v3}, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$CompareOp;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$CompareOp;->NEVER:Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$CompareOp;

    .line 61
    new-instance v0, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$CompareOp;

    const-string v1, "LESS"

    const/4 v3, 0x1

    const/16 v4, 0x201

    invoke-direct {v0, v1, v3, v4}, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$CompareOp;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$CompareOp;->LESS:Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$CompareOp;

    .line 62
    new-instance v0, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$CompareOp;

    const-string v1, "EQUAL"

    const/4 v4, 0x2

    const/16 v5, 0x202

    invoke-direct {v0, v1, v4, v5}, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$CompareOp;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$CompareOp;->EQUAL:Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$CompareOp;

    .line 63
    new-instance v0, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$CompareOp;

    const-string v1, "LESS_OR_EQUAL"

    const/4 v5, 0x3

    const/16 v6, 0x203

    invoke-direct {v0, v1, v5, v6}, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$CompareOp;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$CompareOp;->LESS_OR_EQUAL:Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$CompareOp;

    .line 64
    new-instance v0, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$CompareOp;

    const-string v1, "GREATER"

    const/4 v6, 0x4

    const/16 v7, 0x204

    invoke-direct {v0, v1, v6, v7}, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$CompareOp;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$CompareOp;->GREATER:Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$CompareOp;

    .line 65
    new-instance v0, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$CompareOp;

    const-string v1, "NOT_EQUAL"

    const/4 v7, 0x5

    const/16 v8, 0x205

    invoke-direct {v0, v1, v7, v8}, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$CompareOp;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$CompareOp;->NOT_EQUAL:Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$CompareOp;

    .line 66
    new-instance v0, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$CompareOp;

    const-string v1, "GREATER_OR_EQUAL"

    const/4 v8, 0x6

    const/16 v9, 0x206

    invoke-direct {v0, v1, v8, v9}, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$CompareOp;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$CompareOp;->GREATER_OR_EQUAL:Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$CompareOp;

    .line 67
    new-instance v0, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$CompareOp;

    const-string v1, "ALWAYS"

    const/4 v9, 0x7

    const/16 v10, 0x207

    invoke-direct {v0, v1, v9, v10}, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$CompareOp;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$CompareOp;->ALWAYS:Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$CompareOp;

    .line 59
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$CompareOp;

    sget-object v1, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$CompareOp;->NEVER:Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$CompareOp;

    aput-object v1, v0, v2

    sget-object v1, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$CompareOp;->LESS:Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$CompareOp;

    aput-object v1, v0, v3

    sget-object v1, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$CompareOp;->EQUAL:Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$CompareOp;

    aput-object v1, v0, v4

    sget-object v1, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$CompareOp;->LESS_OR_EQUAL:Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$CompareOp;

    aput-object v1, v0, v5

    sget-object v1, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$CompareOp;->GREATER:Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$CompareOp;

    aput-object v1, v0, v6

    sget-object v1, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$CompareOp;->NOT_EQUAL:Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$CompareOp;

    aput-object v1, v0, v7

    sget-object v1, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$CompareOp;->GREATER_OR_EQUAL:Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$CompareOp;

    aput-object v1, v0, v8

    sget-object v1, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$CompareOp;->ALWAYS:Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$CompareOp;

    aput-object v1, v0, v9

    sput-object v0, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$CompareOp;->$VALUES:[Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$CompareOp;

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

    .line 70
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 71
    iput p3, p0, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$CompareOp;->v:I

    .line 72
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$CompareOp;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 59
    const-class v0, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$CompareOp;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$CompareOp;

    return-object v0
.end method

.method public static values()[Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$CompareOp;
    .locals 1

    .line 59
    sget-object v0, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$CompareOp;->$VALUES:[Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$CompareOp;

    invoke-virtual {v0}, [Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$CompareOp;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$CompareOp;

    return-object v0
.end method
