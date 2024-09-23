.class public Lcom/huawei/iimagekit/blur/GPUGaussianBlur;
.super Lcom/huawei/iimagekit/blur/GPUBlurBase;
.source "GPUGaussianBlur.java"


# static fields
.field private static volatile instance:Lcom/huawei/iimagekit/blur/GPUGaussianBlur;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/iimagekit/blur/GPUGaussianBlur;->instance:Lcom/huawei/iimagekit/blur/GPUGaussianBlur;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 28
    invoke-direct {p0}, Lcom/huawei/iimagekit/blur/GPUBlurBase;-><init>()V

    .line 29
    invoke-static {p1}, Lcom/huawei/iimagekit/blur/GPUGaussianBlur;->initContext(Landroid/content/Context;)V

    .line 30
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/huawei/iimagekit/blur/GPUGaussianBlur;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 23
    sget-object v0, Lcom/huawei/iimagekit/blur/GPUGaussianBlur;->instance:Lcom/huawei/iimagekit/blur/GPUGaussianBlur;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/huawei/iimagekit/blur/GPUGaussianBlur;

    invoke-direct {v0, p0}, Lcom/huawei/iimagekit/blur/GPUGaussianBlur;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/huawei/iimagekit/blur/GPUGaussianBlur;->instance:Lcom/huawei/iimagekit/blur/GPUGaussianBlur;

    .line 26
    :cond_0
    sget-object v0, Lcom/huawei/iimagekit/blur/GPUGaussianBlur;->instance:Lcom/huawei/iimagekit/blur/GPUGaussianBlur;

    return-object v0
.end method


# virtual methods
.method public native doBlur(III)V
.end method
