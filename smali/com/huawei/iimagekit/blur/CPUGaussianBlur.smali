.class public Lcom/huawei/iimagekit/blur/CPUGaussianBlur;
.super Ljava/lang/Object;
.source "CPUGaussianBlur.java"


# static fields
.field private static volatile instance:Lcom/huawei/iimagekit/blur/CPUGaussianBlur;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/iimagekit/blur/CPUGaussianBlur;->instance:Lcom/huawei/iimagekit/blur/CPUGaussianBlur;

    .line 14
    sget-object v0, Lcom/huawei/iimagekit/blur/CPUGaussianBlur;->instance:Lcom/huawei/iimagekit/blur/CPUGaussianBlur;

    if-nez v0, :cond_0

    .line 15
    new-instance v0, Lcom/huawei/iimagekit/blur/CPUGaussianBlur;

    invoke-direct {v0}, Lcom/huawei/iimagekit/blur/CPUGaussianBlur;-><init>()V

    sput-object v0, Lcom/huawei/iimagekit/blur/CPUGaussianBlur;->instance:Lcom/huawei/iimagekit/blur/CPUGaussianBlur;

    .line 16
    :cond_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/huawei/iimagekit/blur/CPUGaussianBlur;
    .locals 1

    .line 19
    sget-object v0, Lcom/huawei/iimagekit/blur/CPUGaussianBlur;->instance:Lcom/huawei/iimagekit/blur/CPUGaussianBlur;

    return-object v0
.end method


# virtual methods
.method public native doBlur(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)I
.end method
