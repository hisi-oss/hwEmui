.class Lcom/huawei/displayengine/ImageProcessor$InstanceHolder;
.super Ljava/lang/Object;
.source "ImageProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/displayengine/ImageProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InstanceHolder"
.end annotation


# static fields
.field public static mInstance:Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 76
    new-instance v0, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;

    invoke-direct {v0}, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;-><init>()V

    sput-object v0, Lcom/huawei/displayengine/ImageProcessor$InstanceHolder;->mInstance:Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
