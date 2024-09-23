.class public Lcom/huawei/iimagekit/common/agp/graphics/engine/GraphicsContext;
.super Ljava/lang/Object;
.source "GraphicsContext.java"


# static fields
.field private static mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    const-string v0, "System.loadLibrary iimagekit_jni"

    invoke-static {v0}, Lcom/huawei/iimagekit/blur/util/DebugUtil;->log(Ljava/lang/String;)V

    .line 20
    const-string v0, "iimagekit_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static destroy()V
    .locals 0

    .line 40
    invoke-static {}, Lcom/huawei/iimagekit/common/agp/graphics/GFX2D;->destroy()V

    .line 41
    return-void
.end method

.method public static getAppContext()Landroid/content/Context;
    .locals 1

    .line 43
    sget-object v0, Lcom/huawei/iimagekit/common/agp/graphics/engine/GraphicsContext;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static init()V
    .locals 1

    .line 29
    sget-object v0, Lcom/huawei/iimagekit/common/agp/graphics/engine/GraphicsContext;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 30
    const-string v0, "ERROR: call setAppContext before calling init"

    invoke-static {v0}, Lcom/huawei/iimagekit/blur/util/DebugUtil;->log(Ljava/lang/String;)V

    .line 31
    return-void

    .line 33
    :cond_0
    invoke-static {}, Lcom/huawei/iimagekit/common/agp/graphics/GFX2D;->init()V

    .line 35
    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 0
    .param p0, "appContext"    # Landroid/content/Context;

    .line 25
    invoke-static {p0}, Lcom/huawei/iimagekit/common/agp/graphics/engine/GraphicsContext;->setAppContext(Landroid/content/Context;)V

    .line 26
    invoke-static {}, Lcom/huawei/iimagekit/common/agp/graphics/engine/GraphicsContext;->init()V

    .line 27
    return-void
.end method

.method public static setAppContext(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .line 36
    sput-object p0, Lcom/huawei/iimagekit/common/agp/graphics/engine/GraphicsContext;->mContext:Landroid/content/Context;

    return-void
.end method
