.class public final enum Lcom/huawei/displayengine/ImageProcessor$ImageType;
.super Ljava/lang/Enum;
.source "ImageProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/displayengine/ImageProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/huawei/displayengine/ImageProcessor$ImageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/huawei/displayengine/ImageProcessor$ImageType;

.field public static final enum NORMAL:Lcom/huawei/displayengine/ImageProcessor$ImageType;

.field public static final enum SKIN_BEAUTY:Lcom/huawei/displayengine/ImageProcessor$ImageType;

.field public static final enum VIVID:Lcom/huawei/displayengine/ImageProcessor$ImageType;

.field public static final enum WIDE_COLOR_SPACE:Lcom/huawei/displayengine/ImageProcessor$ImageType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 238
    new-instance v0, Lcom/huawei/displayengine/ImageProcessor$ImageType;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/huawei/displayengine/ImageProcessor$ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/displayengine/ImageProcessor$ImageType;->NORMAL:Lcom/huawei/displayengine/ImageProcessor$ImageType;

    .line 239
    new-instance v0, Lcom/huawei/displayengine/ImageProcessor$ImageType;

    const-string v1, "WIDE_COLOR_SPACE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/huawei/displayengine/ImageProcessor$ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/displayengine/ImageProcessor$ImageType;->WIDE_COLOR_SPACE:Lcom/huawei/displayengine/ImageProcessor$ImageType;

    .line 240
    new-instance v0, Lcom/huawei/displayengine/ImageProcessor$ImageType;

    const-string v1, "SKIN_BEAUTY"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/huawei/displayengine/ImageProcessor$ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/displayengine/ImageProcessor$ImageType;->SKIN_BEAUTY:Lcom/huawei/displayengine/ImageProcessor$ImageType;

    .line 241
    new-instance v0, Lcom/huawei/displayengine/ImageProcessor$ImageType;

    const-string v1, "VIVID"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/huawei/displayengine/ImageProcessor$ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/displayengine/ImageProcessor$ImageType;->VIVID:Lcom/huawei/displayengine/ImageProcessor$ImageType;

    .line 237
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/huawei/displayengine/ImageProcessor$ImageType;

    sget-object v1, Lcom/huawei/displayengine/ImageProcessor$ImageType;->NORMAL:Lcom/huawei/displayengine/ImageProcessor$ImageType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/huawei/displayengine/ImageProcessor$ImageType;->WIDE_COLOR_SPACE:Lcom/huawei/displayengine/ImageProcessor$ImageType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/huawei/displayengine/ImageProcessor$ImageType;->SKIN_BEAUTY:Lcom/huawei/displayengine/ImageProcessor$ImageType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/huawei/displayengine/ImageProcessor$ImageType;->VIVID:Lcom/huawei/displayengine/ImageProcessor$ImageType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/huawei/displayengine/ImageProcessor$ImageType;->$VALUES:[Lcom/huawei/displayengine/ImageProcessor$ImageType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 237
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/displayengine/ImageProcessor$ImageType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 237
    const-class v0, Lcom/huawei/displayengine/ImageProcessor$ImageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/huawei/displayengine/ImageProcessor$ImageType;

    return-object v0
.end method

.method public static values()[Lcom/huawei/displayengine/ImageProcessor$ImageType;
    .locals 1

    .line 237
    sget-object v0, Lcom/huawei/displayengine/ImageProcessor$ImageType;->$VALUES:[Lcom/huawei/displayengine/ImageProcessor$ImageType;

    invoke-virtual {v0}, [Lcom/huawei/displayengine/ImageProcessor$ImageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/displayengine/ImageProcessor$ImageType;

    return-object v0
.end method
