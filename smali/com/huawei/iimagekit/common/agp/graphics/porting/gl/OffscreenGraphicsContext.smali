.class public Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/OffscreenGraphicsContext;
.super Ljava/lang/Object;
.source "OffscreenGraphicsContext.java"


# static fields
.field private static eglConf:Landroid/opengl/EGLConfig;

.field private static eglCtx:Landroid/opengl/EGLContext;

.field private static eglDisp:Landroid/opengl/EGLDisplay;

.field private static eglSurface:Landroid/opengl/EGLSurface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static destroy()V
    .locals 2

    .line 69
    invoke-static {}, Lcom/huawei/iimagekit/common/agp/graphics/engine/GraphicsContext;->destroy()V

    .line 70
    sget-object v0, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/OffscreenGraphicsContext;->eglDisp:Landroid/opengl/EGLDisplay;

    sget-object v1, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/OffscreenGraphicsContext;->eglCtx:Landroid/opengl/EGLContext;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 71
    sget-object v0, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/OffscreenGraphicsContext;->eglDisp:Landroid/opengl/EGLDisplay;

    sget-object v1, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/OffscreenGraphicsContext;->eglSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 72
    return-void
.end method

.method public static init()V
    .locals 14

    .line 40
    const/16 v0, 0xd

    new-array v2, v0, [I

    fill-array-data v2, :array_0

    .line 49
    .local v2, "confAttr":[I
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    .line 50
    .local v0, "ctxAttr":[I
    const/4 v1, 0x5

    new-array v1, v1, [I

    fill-array-data v1, :array_2

    move-object v9, v1

    .line 51
    .local v9, "surfaceAttr":[I
    const/4 v1, 0x2

    new-array v3, v1, [I

    fill-array-data v3, :array_3

    move-object v10, v3

    .local v10, "eglMajVers":[I
    new-array v3, v1, [I

    fill-array-data v3, :array_4

    move-object v11, v3

    .line 52
    .local v11, "eglMinVers":[I
    new-array v7, v1, [I

    fill-array-data v7, :array_5

    .line 54
    .local v7, "numConfigs":[I
    const/4 v12, 0x0

    invoke-static {v12}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v3

    sput-object v3, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/OffscreenGraphicsContext;->eglDisp:Landroid/opengl/EGLDisplay;

    .line 55
    sget-object v3, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/OffscreenGraphicsContext;->eglDisp:Landroid/opengl/EGLDisplay;

    invoke-static {v3, v10, v12, v11, v12}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    .line 56
    const-string v3, "EGL init with version %d.%d"

    new-array v4, v1, [Ljava/lang/Object;

    aget v5, v10, v12

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v12

    aget v5, v11, v12

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/huawei/iimagekit/blur/util/DebugUtil;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    new-array v13, v1, [Landroid/opengl/EGLConfig;

    .line 58
    .local v13, "conf":[Landroid/opengl/EGLConfig;
    sget-object v1, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/OffscreenGraphicsContext;->eglDisp:Landroid/opengl/EGLDisplay;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v4, v13

    invoke-static/range {v1 .. v8}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    .line 59
    aget-object v1, v13, v12

    sput-object v1, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/OffscreenGraphicsContext;->eglConf:Landroid/opengl/EGLConfig;

    .line 60
    sget-object v1, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/OffscreenGraphicsContext;->eglDisp:Landroid/opengl/EGLDisplay;

    sget-object v3, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/OffscreenGraphicsContext;->eglConf:Landroid/opengl/EGLConfig;

    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v1, v3, v4, v0, v12}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v1

    sput-object v1, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/OffscreenGraphicsContext;->eglCtx:Landroid/opengl/EGLContext;

    .line 61
    sget-object v1, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/OffscreenGraphicsContext;->eglDisp:Landroid/opengl/EGLDisplay;

    sget-object v3, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/OffscreenGraphicsContext;->eglConf:Landroid/opengl/EGLConfig;

    invoke-static {v1, v3, v9, v12}, Landroid/opengl/EGL14;->eglCreatePbufferSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;[II)Landroid/opengl/EGLSurface;

    move-result-object v1

    sput-object v1, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/OffscreenGraphicsContext;->eglSurface:Landroid/opengl/EGLSurface;

    .line 62
    sget-object v1, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/OffscreenGraphicsContext;->eglDisp:Landroid/opengl/EGLDisplay;

    sget-object v3, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/OffscreenGraphicsContext;->eglSurface:Landroid/opengl/EGLSurface;

    sget-object v4, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/OffscreenGraphicsContext;->eglSurface:Landroid/opengl/EGLSurface;

    sget-object v5, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/OffscreenGraphicsContext;->eglCtx:Landroid/opengl/EGLContext;

    invoke-static {v1, v3, v4, v5}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 63
    invoke-static {}, Lcom/huawei/iimagekit/common/agp/graphics/engine/GraphicsContext;->init()V

    .line 64
    return-void

    :array_0
    .array-data 4
        0x3040
        0x40
        0x3033
        0x1
        0x3024
        0x8
        0x3023
        0x8
        0x3021
        0x8
        0x3022
        0x8
        0x3038
    .end array-data

    :array_1
    .array-data 4
        0x3098
        0x3
        0x3038
    .end array-data

    :array_2
    .array-data 4
        0x3057
        0x1
        0x3056
        0x1
        0x3038
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public static init(Landroid/content/Context;)V
    .locals 0
    .param p0, "appContext"    # Landroid/content/Context;

    .line 35
    invoke-static {p0}, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/OffscreenGraphicsContext;->setAppContext(Landroid/content/Context;)V

    .line 36
    invoke-static {}, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/OffscreenGraphicsContext;->init()V

    .line 37
    return-void
.end method

.method public static setAppContext(Landroid/content/Context;)V
    .locals 0
    .param p0, "appContext"    # Landroid/content/Context;

    .line 66
    invoke-static {p0}, Lcom/huawei/iimagekit/common/agp/graphics/engine/GraphicsContext;->setAppContext(Landroid/content/Context;)V

    .line 67
    return-void
.end method
