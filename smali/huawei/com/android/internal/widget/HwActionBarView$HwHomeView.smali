.class public Lhuawei/com/android/internal/widget/HwActionBarView$HwHomeView;
.super Lcom/android/internal/widget/ActionBarView$HomeView;
.source "HwActionBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhuawei/com/android/internal/widget/HwActionBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HwHomeView"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 118
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/ActionBarView$HomeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 119
    return-void
.end method


# virtual methods
.method public getStartOffset()I
    .locals 1

    .line 130
    const/4 v0, 0x0

    return v0
.end method

.method protected layoutUpView(Landroid/view/View;IIIIII)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "upLeft"    # I
    .param p3, "upTop"    # I
    .param p4, "upRight"    # I
    .param p5, "upBottom"    # I
    .param p6, "leftMargin"    # I
    .param p7, "upOffset"    # I

    .line 136
    return-void
.end method

.method public setShowIcon(Z)V
    .locals 1
    .param p1, "showIcon"    # Z

    .line 126
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/android/internal/widget/ActionBarView$HomeView;->setShowIcon(Z)V

    .line 127
    return-void
.end method

.method public setShowUp(Z)V
    .locals 0
    .param p1, "isUp"    # Z

    .line 123
    return-void
.end method
