.class public Lhuawei/android/widget/HwPopupWindow;
.super Landroid/widget/PopupWindow;
.source "HwPopupWindow.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 86
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, v0}, Lhuawei/android/widget/HwPopupWindow;-><init>(Landroid/view/View;II)V

    .line 87
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 113
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lhuawei/android/widget/HwPopupWindow;-><init>(Landroid/view/View;II)V

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lhuawei/android/widget/HwPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 58
    const v0, 0x1010076

    invoke-direct {p0, p1, p2, v0}, Lhuawei/android/widget/HwPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lhuawei/android/widget/HwPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 76
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "contentView"    # Landroid/view/View;

    .line 99
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lhuawei/android/widget/HwPopupWindow;-><init>(Landroid/view/View;II)V

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/view/View;II)V
    .locals 1
    .param p1, "contentView"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 129
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lhuawei/android/widget/HwPopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 130
    return-void
.end method

.method public constructor <init>(Landroid/view/View;IIZ)V
    .locals 0
    .param p1, "contentView"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "focusable"    # Z

    .line 145
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 146
    return-void
.end method
