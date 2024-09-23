.class public Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFXSurfaceView;
.super Landroid/opengl/GLSurfaceView;
.source "GFXSurfaceView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 20
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 21
    invoke-direct {p0}, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFXSurfaceView;->doInit()V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 25
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    invoke-direct {p0}, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFXSurfaceView;->doInit()V

    .line 27
    return-void
.end method

.method private doInit()V
    .locals 8

    .line 29
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFXSurfaceView;->setEGLContextClientVersion(I)V

    .line 30
    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x8

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFXSurfaceView;->setEGLConfigChooser(IIIIII)V

    .line 31
    invoke-virtual {p0}, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFXSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/16 v1, 0x438

    const/16 v2, 0x780

    invoke-interface {v0, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 32
    return-void
.end method


# virtual methods
.method public invalidate()V
    .locals 0

    .line 34
    invoke-virtual {p0}, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFXSurfaceView;->requestRender()V

    return-void
.end method
