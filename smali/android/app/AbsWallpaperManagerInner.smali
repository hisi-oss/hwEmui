.class public abstract Landroid/app/AbsWallpaperManagerInner;
.super Ljava/lang/Object;
.source "AbsWallpaperManagerInner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/AbsWallpaperManagerInner$IBlurWallpaperCallback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBlurBitmap(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 26
    const/4 v0, 0x0

    return-object v0
.end method

.method public setCallback(Landroid/app/AbsWallpaperManagerInner$IBlurWallpaperCallback;)V
    .locals 0
    .param p1, "callback"    # Landroid/app/AbsWallpaperManagerInner$IBlurWallpaperCallback;

    .line 30
    return-void
.end method
