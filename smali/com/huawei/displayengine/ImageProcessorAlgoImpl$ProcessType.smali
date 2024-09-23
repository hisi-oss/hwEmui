.class Lcom/huawei/displayengine/ImageProcessorAlgoImpl$ProcessType;
.super Ljava/lang/Object;
.source "ImageProcessorAlgoImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/displayengine/ImageProcessorAlgoImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProcessType"
.end annotation


# static fields
.field public static final CREATE_COMMON:I = 0x1

.field public static final CREATE_IMAGE_ENGINE:I = 0x4

.field public static final DESTROY_COMMON:I = 0x2

.field public static final DESTROY_IMAGE_ENGINE:I = 0x6

.field public static final GET_INFO_FROM_COMMON:I = 0x3

.field public static final PROCESS_IMAGE_ENGINE:I = 0x5

.field public static final TRANSFORM_COLORSPACE:I = 0x7


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
