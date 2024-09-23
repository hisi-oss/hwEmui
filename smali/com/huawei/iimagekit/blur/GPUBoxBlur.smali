.class public Lcom/huawei/iimagekit/blur/GPUBoxBlur;
.super Lcom/huawei/iimagekit/blur/GPUBlurBase;
.source "GPUBoxBlur.java"


# static fields
.field private static volatile instance:Lcom/huawei/iimagekit/blur/GPUBoxBlur;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/iimagekit/blur/GPUBoxBlur;->instance:Lcom/huawei/iimagekit/blur/GPUBoxBlur;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 30
    invoke-direct {p0}, Lcom/huawei/iimagekit/blur/GPUBlurBase;-><init>()V

    .line 31
    invoke-static {p1}, Lcom/huawei/iimagekit/blur/GPUBoxBlur;->initContext(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/huawei/iimagekit/blur/GPUBoxBlur;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 24
    sget-object v0, Lcom/huawei/iimagekit/blur/GPUBoxBlur;->instance:Lcom/huawei/iimagekit/blur/GPUBoxBlur;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/huawei/iimagekit/blur/GPUBoxBlur;

    invoke-direct {v0, p0}, Lcom/huawei/iimagekit/blur/GPUBoxBlur;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/huawei/iimagekit/blur/GPUBoxBlur;->instance:Lcom/huawei/iimagekit/blur/GPUBoxBlur;

    .line 27
    :cond_0
    sget-object v0, Lcom/huawei/iimagekit/blur/GPUBoxBlur;->instance:Lcom/huawei/iimagekit/blur/GPUBoxBlur;

    return-object v0
.end method


# virtual methods
.method public native doBlur(III)V
.end method
