.class public Landroid/graphics/drawable/HwRippleForegroundProxy;
.super Landroid/graphics/drawable/HwRippleForeground;
.source "HwRippleForegroundProxy.java"


# instance fields
.field mHwRippleForegroundImpl:Landroid/graphics/drawable/HwRippleForegroundImpl;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/RippleDrawable;Landroid/graphics/Rect;ZZI)V
    .locals 7
    .param p1, "owner"    # Landroid/graphics/drawable/RippleDrawable;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "isBounded"    # Z
    .param p4, "forceSoftware"    # Z
    .param p5, "type"    # I

    .line 50
    invoke-direct/range {p0 .. p5}, Landroid/graphics/drawable/HwRippleForeground;-><init>(Landroid/graphics/drawable/RippleDrawable;Landroid/graphics/Rect;ZZI)V

    .line 51
    new-instance v6, Landroid/graphics/drawable/HwRippleForegroundImpl;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/HwRippleForegroundImpl;-><init>(Landroid/graphics/drawable/RippleDrawable;Landroid/graphics/Rect;ZZI)V

    iput-object v6, p0, Landroid/graphics/drawable/HwRippleForegroundProxy;->mHwRippleForegroundImpl:Landroid/graphics/drawable/HwRippleForegroundImpl;

    .line 52
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Z
    .locals 1
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "p"    # Landroid/graphics/Paint;

    .line 85
    iget-object v0, p0, Landroid/graphics/drawable/HwRippleForegroundProxy;->mHwRippleForegroundImpl:Landroid/graphics/drawable/HwRippleForegroundImpl;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Landroid/graphics/drawable/HwRippleForegroundProxy;->mHwRippleForegroundImpl:Landroid/graphics/drawable/HwRippleForegroundImpl;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/HwRippleForegroundImpl;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 87
    const/4 v0, 0x1

    return v0

    .line 89
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public end()V
    .locals 1

    .line 54
    iget-object v0, p0, Landroid/graphics/drawable/HwRippleForegroundProxy;->mHwRippleForegroundImpl:Landroid/graphics/drawable/HwRippleForegroundImpl;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Landroid/graphics/drawable/HwRippleForegroundProxy;->mHwRippleForegroundImpl:Landroid/graphics/drawable/HwRippleForegroundImpl;

    invoke-virtual {v0}, Landroid/graphics/drawable/HwRippleForegroundImpl;->end()V

    .line 57
    :cond_0
    return-void
.end method

.method public final enter(Z)V
    .locals 1
    .param p1, "fast"    # Z

    .line 70
    iget-object v0, p0, Landroid/graphics/drawable/HwRippleForegroundProxy;->mHwRippleForegroundImpl:Landroid/graphics/drawable/HwRippleForegroundImpl;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Landroid/graphics/drawable/HwRippleForegroundProxy;->mHwRippleForegroundImpl:Landroid/graphics/drawable/HwRippleForegroundImpl;

    invoke-virtual {v0}, Landroid/graphics/drawable/HwRippleForegroundImpl;->enter()V

    .line 73
    :cond_0
    return-void
.end method

.method public final exit()V
    .locals 1

    .line 75
    iget-object v0, p0, Landroid/graphics/drawable/HwRippleForegroundProxy;->mHwRippleForegroundImpl:Landroid/graphics/drawable/HwRippleForegroundImpl;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Landroid/graphics/drawable/HwRippleForegroundProxy;->mHwRippleForegroundImpl:Landroid/graphics/drawable/HwRippleForegroundImpl;

    invoke-virtual {v0}, Landroid/graphics/drawable/HwRippleForegroundImpl;->exit()V

    .line 78
    :cond_0
    return-void
.end method

.method public getBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 92
    iget-object v0, p0, Landroid/graphics/drawable/HwRippleForegroundProxy;->mHwRippleForegroundImpl:Landroid/graphics/drawable/HwRippleForegroundImpl;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Landroid/graphics/drawable/HwRippleForegroundProxy;->mHwRippleForegroundImpl:Landroid/graphics/drawable/HwRippleForegroundImpl;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/HwRippleForegroundImpl;->getBounds(Landroid/graphics/Rect;)V

    .line 95
    :cond_0
    return-void
.end method

.method public onBoundsChange()V
    .locals 1

    .line 60
    iget-object v0, p0, Landroid/graphics/drawable/HwRippleForegroundProxy;->mHwRippleForegroundImpl:Landroid/graphics/drawable/HwRippleForegroundImpl;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Landroid/graphics/drawable/HwRippleForegroundProxy;->mHwRippleForegroundImpl:Landroid/graphics/drawable/HwRippleForegroundImpl;

    invoke-virtual {v0}, Landroid/graphics/drawable/HwRippleForegroundImpl;->onBoundsChange()V

    .line 63
    :cond_0
    return-void
.end method

.method protected final onHotspotBoundsChanged()V
    .locals 1

    .line 80
    iget-object v0, p0, Landroid/graphics/drawable/HwRippleForegroundProxy;->mHwRippleForegroundImpl:Landroid/graphics/drawable/HwRippleForegroundImpl;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Landroid/graphics/drawable/HwRippleForegroundProxy;->mHwRippleForegroundImpl:Landroid/graphics/drawable/HwRippleForegroundImpl;

    invoke-virtual {v0}, Landroid/graphics/drawable/HwRippleForegroundImpl;->onHotspotBoundsChanged()V

    .line 83
    :cond_0
    return-void
.end method

.method public final setup(FI)V
    .locals 1
    .param p1, "maxRadius"    # F
    .param p2, "densityDpi"    # I

    .line 65
    iget-object v0, p0, Landroid/graphics/drawable/HwRippleForegroundProxy;->mHwRippleForegroundImpl:Landroid/graphics/drawable/HwRippleForegroundImpl;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Landroid/graphics/drawable/HwRippleForegroundProxy;->mHwRippleForegroundImpl:Landroid/graphics/drawable/HwRippleForegroundImpl;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/HwRippleForegroundImpl;->setup(FI)V

    .line 68
    :cond_0
    return-void
.end method
