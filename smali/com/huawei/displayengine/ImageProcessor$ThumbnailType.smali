.class public final enum Lcom/huawei/displayengine/ImageProcessor$ThumbnailType;
.super Ljava/lang/Enum;
.source "ImageProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/displayengine/ImageProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ThumbnailType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/huawei/displayengine/ImageProcessor$ThumbnailType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/huawei/displayengine/ImageProcessor$ThumbnailType;

.field public static final enum ANIMATION:Lcom/huawei/displayengine/ImageProcessor$ThumbnailType;

.field public static final enum DEFAULT:Lcom/huawei/displayengine/ImageProcessor$ThumbnailType;

.field public static final enum FAST:Lcom/huawei/displayengine/ImageProcessor$ThumbnailType;

.field public static final enum FULLSCREEN:Lcom/huawei/displayengine/ImageProcessor$ThumbnailType;

.field public static final enum GIF:Lcom/huawei/displayengine/ImageProcessor$ThumbnailType;

.field public static final enum HALFSCREEN:Lcom/huawei/displayengine/ImageProcessor$ThumbnailType;

.field public static final enum MICRO:Lcom/huawei/displayengine/ImageProcessor$ThumbnailType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 201
    new-instance v0, Lcom/huawei/displayengine/ImageProcessor$ThumbnailType;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/huawei/displayengine/ImageProcessor$ThumbnailType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/displayengine/ImageProcessor$ThumbnailType;->DEFAULT:Lcom/huawei/displayengine/ImageProcessor$ThumbnailType;

    .line 202
    new-instance v0, Lcom/huawei/displayengine/ImageProcessor$ThumbnailType;

    const-string v1, "MICRO"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/huawei/displayengine/ImageProcessor$ThumbnailType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/displayengine/ImageProcessor$ThumbnailType;->MICRO:Lcom/huawei/displayengine/ImageProcessor$ThumbnailType;

    .line 203
    new-instance v0, Lcom/huawei/displayengine/ImageProcessor$ThumbnailType;

    const-string v1, "FAST"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/huawei/displayengine/ImageProcessor$ThumbnailType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/displayengine/ImageProcessor$ThumbnailType;->FAST:Lcom/huawei/displayengine/ImageProcessor$ThumbnailType;

    .line 204
    new-instance v0, Lcom/huawei/displayengine/ImageProcessor$ThumbnailType;

    const-string v1, "ANIMATION"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/huawei/displayengine/ImageProcessor$ThumbnailType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/displayengine/ImageProcessor$ThumbnailType;->ANIMATION:Lcom/huawei/displayengine/ImageProcessor$ThumbnailType;

    .line 205
    new-instance v0, Lcom/huawei/displayengine/ImageProcessor$ThumbnailType;

    const-string v1, "FULLSCREEN"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/huawei/displayengine/ImageProcessor$ThumbnailType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/displayengine/ImageProcessor$ThumbnailType;->FULLSCREEN:Lcom/huawei/displayengine/ImageProcessor$ThumbnailType;

    .line 206
    new-instance v0, Lcom/huawei/displayengine/ImageProcessor$ThumbnailType;

    const-string v1, "HALFSCREEN"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/huawei/displayengine/ImageProcessor$ThumbnailType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/displayengine/ImageProcessor$ThumbnailType;->HALFSCREEN:Lcom/huawei/displayengine/ImageProcessor$ThumbnailType;

    .line 207
    new-instance v0, Lcom/huawei/displayengine/ImageProcessor$ThumbnailType;

    const-string v1, "GIF"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/huawei/displayengine/ImageProcessor$ThumbnailType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/displayengine/ImageProcessor$ThumbnailType;->GIF:Lcom/huawei/displayengine/ImageProcessor$ThumbnailType;

    .line 200
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/huawei/displayengine/ImageProcessor$ThumbnailType;

    sget-object v1, Lcom/huawei/displayengine/ImageProcessor$ThumbnailType;->DEFAULT:Lcom/huawei/displayengine/ImageProcessor$ThumbnailType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/huawei/displayengine/ImageProcessor$ThumbnailType;->MICRO:Lcom/huawei/displayengine/ImageProcessor$ThumbnailType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/huawei/displayengine/ImageProcessor$ThumbnailType;->FAST:Lcom/huawei/displayengine/ImageProcessor$ThumbnailType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/huawei/displayengine/ImageProcessor$ThumbnailType;->ANIMATION:Lcom/huawei/displayengine/ImageProcessor$ThumbnailType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/huawei/displayengine/ImageProcessor$ThumbnailType;->FULLSCREEN:Lcom/huawei/displayengine/ImageProcessor$ThumbnailType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/huawei/displayengine/ImageProcessor$ThumbnailType;->HALFSCREEN:Lcom/huawei/displayengine/ImageProcessor$ThumbnailType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/huawei/displayengine/ImageProcessor$ThumbnailType;->GIF:Lcom/huawei/displayengine/ImageProcessor$ThumbnailType;

    aput-object v1, v0, v8

    sput-object v0, Lcom/huawei/displayengine/ImageProcessor$ThumbnailType;->$VALUES:[Lcom/huawei/displayengine/ImageProcessor$ThumbnailType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 200
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/displayengine/ImageProcessor$ThumbnailType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 200
    const-class v0, Lcom/huawei/displayengine/ImageProcessor$ThumbnailType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/huawei/displayengine/ImageProcessor$ThumbnailType;

    return-object v0
.end method

.method public static values()[Lcom/huawei/displayengine/ImageProcessor$ThumbnailType;
    .locals 1

    .line 200
    sget-object v0, Lcom/huawei/displayengine/ImageProcessor$ThumbnailType;->$VALUES:[Lcom/huawei/displayengine/ImageProcessor$ThumbnailType;

    invoke-virtual {v0}, [Lcom/huawei/displayengine/ImageProcessor$ThumbnailType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/displayengine/ImageProcessor$ThumbnailType;

    return-object v0
.end method
