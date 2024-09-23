.class public Lhuawei/com/android/internal/widget/HwWidgetUtils;
.super Ljava/lang/Object;
.source "HwWidgetUtils.java"


# static fields
.field private static final ACTIONBAR_BACKGROUND_THEMED_FLAG:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final isActionbarBackgroundThemed(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 27
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 28
    return v0

    .line 31
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2050029

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 32
    .local v1, "color":I
    if-nez v1, :cond_1

    const/4 v0, 0x1

    nop

    :cond_1
    return v0
.end method
