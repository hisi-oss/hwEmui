.class public final enum Lcom/huawei/displayengine/ImageProcessor$TileEngineType;
.super Ljava/lang/Enum;
.source "ImageProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/displayengine/ImageProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TileEngineType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/huawei/displayengine/ImageProcessor$TileEngineType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/huawei/displayengine/ImageProcessor$TileEngineType;

.field public static final enum NON_SR:Lcom/huawei/displayengine/ImageProcessor$TileEngineType;

.field public static final enum SR:Lcom/huawei/displayengine/ImageProcessor$TileEngineType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 211
    new-instance v0, Lcom/huawei/displayengine/ImageProcessor$TileEngineType;

    const-string v1, "SR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/huawei/displayengine/ImageProcessor$TileEngineType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/displayengine/ImageProcessor$TileEngineType;->SR:Lcom/huawei/displayengine/ImageProcessor$TileEngineType;

    .line 212
    new-instance v0, Lcom/huawei/displayengine/ImageProcessor$TileEngineType;

    const-string v1, "NON_SR"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/huawei/displayengine/ImageProcessor$TileEngineType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/displayengine/ImageProcessor$TileEngineType;->NON_SR:Lcom/huawei/displayengine/ImageProcessor$TileEngineType;

    .line 210
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/huawei/displayengine/ImageProcessor$TileEngineType;

    sget-object v1, Lcom/huawei/displayengine/ImageProcessor$TileEngineType;->SR:Lcom/huawei/displayengine/ImageProcessor$TileEngineType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/huawei/displayengine/ImageProcessor$TileEngineType;->NON_SR:Lcom/huawei/displayengine/ImageProcessor$TileEngineType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/huawei/displayengine/ImageProcessor$TileEngineType;->$VALUES:[Lcom/huawei/displayengine/ImageProcessor$TileEngineType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 210
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/displayengine/ImageProcessor$TileEngineType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 210
    const-class v0, Lcom/huawei/displayengine/ImageProcessor$TileEngineType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/huawei/displayengine/ImageProcessor$TileEngineType;

    return-object v0
.end method

.method public static values()[Lcom/huawei/displayengine/ImageProcessor$TileEngineType;
    .locals 1

    .line 210
    sget-object v0, Lcom/huawei/displayengine/ImageProcessor$TileEngineType;->$VALUES:[Lcom/huawei/displayengine/ImageProcessor$TileEngineType;

    invoke-virtual {v0}, [Lcom/huawei/displayengine/ImageProcessor$TileEngineType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/displayengine/ImageProcessor$TileEngineType;

    return-object v0
.end method
