.class public final enum Lcom/huawei/displayengine/ImageProcessor$AlgoType;
.super Ljava/lang/Enum;
.source "ImageProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/displayengine/ImageProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AlgoType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/huawei/displayengine/ImageProcessor$AlgoType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/huawei/displayengine/ImageProcessor$AlgoType;

.field public static final enum ACE:Lcom/huawei/displayengine/ImageProcessor$AlgoType;

.field public static final enum ACM:Lcom/huawei/displayengine/ImageProcessor$AlgoType;

.field public static final enum GMP:Lcom/huawei/displayengine/ImageProcessor$AlgoType;

.field public static final enum LUT3D:Lcom/huawei/displayengine/ImageProcessor$AlgoType;

.field public static final enum SHARPNESS:Lcom/huawei/displayengine/ImageProcessor$AlgoType;

.field public static final enum SR:Lcom/huawei/displayengine/ImageProcessor$AlgoType;


# instance fields
.field private mId:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 216
    new-instance v0, Lcom/huawei/displayengine/ImageProcessor$AlgoType;

    const-string v1, "ACE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/huawei/displayengine/ImageProcessor$AlgoType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/displayengine/ImageProcessor$AlgoType;->ACE:Lcom/huawei/displayengine/ImageProcessor$AlgoType;

    .line 217
    new-instance v0, Lcom/huawei/displayengine/ImageProcessor$AlgoType;

    const-string v1, "SR"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lcom/huawei/displayengine/ImageProcessor$AlgoType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/displayengine/ImageProcessor$AlgoType;->SR:Lcom/huawei/displayengine/ImageProcessor$AlgoType;

    .line 218
    new-instance v0, Lcom/huawei/displayengine/ImageProcessor$AlgoType;

    const-string v1, "SHARPNESS"

    const/4 v5, 0x4

    invoke-direct {v0, v1, v4, v5}, Lcom/huawei/displayengine/ImageProcessor$AlgoType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/displayengine/ImageProcessor$AlgoType;->SHARPNESS:Lcom/huawei/displayengine/ImageProcessor$AlgoType;

    .line 219
    new-instance v0, Lcom/huawei/displayengine/ImageProcessor$AlgoType;

    const-string v1, "GMP"

    const/4 v6, 0x3

    const/16 v7, 0x8

    invoke-direct {v0, v1, v6, v7}, Lcom/huawei/displayengine/ImageProcessor$AlgoType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/displayengine/ImageProcessor$AlgoType;->GMP:Lcom/huawei/displayengine/ImageProcessor$AlgoType;

    .line 220
    new-instance v0, Lcom/huawei/displayengine/ImageProcessor$AlgoType;

    const-string v1, "ACM"

    const/16 v7, 0x10

    invoke-direct {v0, v1, v5, v7}, Lcom/huawei/displayengine/ImageProcessor$AlgoType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/displayengine/ImageProcessor$AlgoType;->ACM:Lcom/huawei/displayengine/ImageProcessor$AlgoType;

    .line 221
    new-instance v0, Lcom/huawei/displayengine/ImageProcessor$AlgoType;

    const-string v1, "LUT3D"

    const/4 v7, 0x5

    const/16 v8, 0x20

    invoke-direct {v0, v1, v7, v8}, Lcom/huawei/displayengine/ImageProcessor$AlgoType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/displayengine/ImageProcessor$AlgoType;->LUT3D:Lcom/huawei/displayengine/ImageProcessor$AlgoType;

    .line 215
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/huawei/displayengine/ImageProcessor$AlgoType;

    sget-object v1, Lcom/huawei/displayengine/ImageProcessor$AlgoType;->ACE:Lcom/huawei/displayengine/ImageProcessor$AlgoType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/huawei/displayengine/ImageProcessor$AlgoType;->SR:Lcom/huawei/displayengine/ImageProcessor$AlgoType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/huawei/displayengine/ImageProcessor$AlgoType;->SHARPNESS:Lcom/huawei/displayengine/ImageProcessor$AlgoType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/huawei/displayengine/ImageProcessor$AlgoType;->GMP:Lcom/huawei/displayengine/ImageProcessor$AlgoType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/huawei/displayengine/ImageProcessor$AlgoType;->ACM:Lcom/huawei/displayengine/ImageProcessor$AlgoType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/huawei/displayengine/ImageProcessor$AlgoType;->LUT3D:Lcom/huawei/displayengine/ImageProcessor$AlgoType;

    aput-object v1, v0, v7

    sput-object v0, Lcom/huawei/displayengine/ImageProcessor$AlgoType;->$VALUES:[Lcom/huawei/displayengine/ImageProcessor$AlgoType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 224
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/huawei/displayengine/ImageProcessor$AlgoType;->mId:I

    return-void
.end method

.method public static getType(Ljava/util/Set;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/huawei/displayengine/ImageProcessor$AlgoType;",
            ">;)I"
        }
    .end annotation

    .line 226
    .local p0, "types":Ljava/util/Set;, "Ljava/util/Set<Lcom/huawei/displayengine/ImageProcessor$AlgoType;>;"
    if-nez p0, :cond_0

    .line 227
    const/4 v0, 0x0

    return v0

    .line 229
    :cond_0
    const/4 v0, 0x0

    .line 230
    .local v0, "id":I
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/displayengine/ImageProcessor$AlgoType;

    .line 231
    .local v2, "type":Lcom/huawei/displayengine/ImageProcessor$AlgoType;
    iget v3, v2, Lcom/huawei/displayengine/ImageProcessor$AlgoType;->mId:I

    or-int/2addr v0, v3

    .line 232
    .end local v2    # "type":Lcom/huawei/displayengine/ImageProcessor$AlgoType;
    goto :goto_0

    .line 233
    :cond_1
    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/displayengine/ImageProcessor$AlgoType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 215
    const-class v0, Lcom/huawei/displayengine/ImageProcessor$AlgoType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/huawei/displayengine/ImageProcessor$AlgoType;

    return-object v0
.end method

.method public static values()[Lcom/huawei/displayengine/ImageProcessor$AlgoType;
    .locals 1

    .line 215
    sget-object v0, Lcom/huawei/displayengine/ImageProcessor$AlgoType;->$VALUES:[Lcom/huawei/displayengine/ImageProcessor$AlgoType;

    invoke-virtual {v0}, [Lcom/huawei/displayengine/ImageProcessor$AlgoType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/displayengine/ImageProcessor$AlgoType;

    return-object v0
.end method
