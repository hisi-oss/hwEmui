.class Lhuawei/com/android/internal/app/HwLocalePickerWithRegionEx$1;
.super Ljava/lang/Object;
.source "HwLocalePickerWithRegionEx.java"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhuawei/com/android/internal/app/HwLocalePickerWithRegionEx;->onViewCreated(Landroid/content/Context;Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lhuawei/com/android/internal/app/HwLocalePickerWithRegionEx;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$mBottomPadding:I

.field final synthetic val$mLeftPadding:I

.field final synthetic val$mRightPadding:I

.field final synthetic val$mSearchviewContainer:Landroid/widget/LinearLayout;

.field final synthetic val$mTopPadding:I


# direct methods
.method constructor <init>(Lhuawei/com/android/internal/app/HwLocalePickerWithRegionEx;Landroid/content/Context;Landroid/widget/LinearLayout;IIII)V
    .locals 0
    .param p1, "this$0"    # Lhuawei/com/android/internal/app/HwLocalePickerWithRegionEx;

    .line 185
    iput-object p1, p0, Lhuawei/com/android/internal/app/HwLocalePickerWithRegionEx$1;->this$0:Lhuawei/com/android/internal/app/HwLocalePickerWithRegionEx;

    iput-object p2, p0, Lhuawei/com/android/internal/app/HwLocalePickerWithRegionEx$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lhuawei/com/android/internal/app/HwLocalePickerWithRegionEx$1;->val$mSearchviewContainer:Landroid/widget/LinearLayout;

    iput p4, p0, Lhuawei/com/android/internal/app/HwLocalePickerWithRegionEx$1;->val$mLeftPadding:I

    iput p5, p0, Lhuawei/com/android/internal/app/HwLocalePickerWithRegionEx$1;->val$mTopPadding:I

    iput p6, p0, Lhuawei/com/android/internal/app/HwLocalePickerWithRegionEx$1;->val$mRightPadding:I

    iput p7, p0, Lhuawei/com/android/internal/app/HwLocalePickerWithRegionEx$1;->val$mBottomPadding:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "windowInsets"    # Landroid/view/WindowInsets;

    .line 188
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    .line 189
    .local v0, "cutout":Landroid/view/DisplayCutout;
    if-eqz v0, :cond_2

    .line 190
    iget-object v1, p0, Lhuawei/com/android/internal/app/HwLocalePickerWithRegionEx$1;->this$0:Lhuawei/com/android/internal/app/HwLocalePickerWithRegionEx;

    iget-object v2, p0, Lhuawei/com/android/internal/app/HwLocalePickerWithRegionEx$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lhuawei/com/android/internal/app/HwLocalePickerWithRegionEx;->getDisplayRotate(Landroid/content/Context;)I

    move-result v1

    .line 191
    .local v1, "rotate":I
    const/4 v2, 0x1

    if-ne v2, v1, :cond_0

    .line 192
    iget-object v2, p0, Lhuawei/com/android/internal/app/HwLocalePickerWithRegionEx$1;->val$mSearchviewContainer:Landroid/widget/LinearLayout;

    iget v3, p0, Lhuawei/com/android/internal/app/HwLocalePickerWithRegionEx$1;->val$mLeftPadding:I

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p0, Lhuawei/com/android/internal/app/HwLocalePickerWithRegionEx$1;->val$mTopPadding:I

    iget v5, p0, Lhuawei/com/android/internal/app/HwLocalePickerWithRegionEx$1;->val$mRightPadding:I

    iget v6, p0, Lhuawei/com/android/internal/app/HwLocalePickerWithRegionEx$1;->val$mBottomPadding:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_0

    .line 193
    :cond_0
    const/4 v2, 0x3

    if-ne v2, v1, :cond_1

    .line 194
    iget-object v2, p0, Lhuawei/com/android/internal/app/HwLocalePickerWithRegionEx$1;->val$mSearchviewContainer:Landroid/widget/LinearLayout;

    iget v3, p0, Lhuawei/com/android/internal/app/HwLocalePickerWithRegionEx$1;->val$mLeftPadding:I

    iget v4, p0, Lhuawei/com/android/internal/app/HwLocalePickerWithRegionEx$1;->val$mTopPadding:I

    iget v5, p0, Lhuawei/com/android/internal/app/HwLocalePickerWithRegionEx$1;->val$mRightPadding:I

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, p0, Lhuawei/com/android/internal/app/HwLocalePickerWithRegionEx$1;->val$mBottomPadding:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_0

    .line 196
    :cond_1
    iget-object v2, p0, Lhuawei/com/android/internal/app/HwLocalePickerWithRegionEx$1;->val$mSearchviewContainer:Landroid/widget/LinearLayout;

    iget v3, p0, Lhuawei/com/android/internal/app/HwLocalePickerWithRegionEx$1;->val$mLeftPadding:I

    iget v4, p0, Lhuawei/com/android/internal/app/HwLocalePickerWithRegionEx$1;->val$mTopPadding:I

    iget v5, p0, Lhuawei/com/android/internal/app/HwLocalePickerWithRegionEx$1;->val$mRightPadding:I

    iget v6, p0, Lhuawei/com/android/internal/app/HwLocalePickerWithRegionEx$1;->val$mBottomPadding:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 198
    .end local v1    # "rotate":I
    :goto_0
    goto :goto_1

    .line 199
    :cond_2
    iget-object v1, p0, Lhuawei/com/android/internal/app/HwLocalePickerWithRegionEx$1;->val$mSearchviewContainer:Landroid/widget/LinearLayout;

    iget v2, p0, Lhuawei/com/android/internal/app/HwLocalePickerWithRegionEx$1;->val$mLeftPadding:I

    iget v3, p0, Lhuawei/com/android/internal/app/HwLocalePickerWithRegionEx$1;->val$mTopPadding:I

    iget v4, p0, Lhuawei/com/android/internal/app/HwLocalePickerWithRegionEx$1;->val$mRightPadding:I

    iget v5, p0, Lhuawei/com/android/internal/app/HwLocalePickerWithRegionEx$1;->val$mBottomPadding:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 201
    :goto_1
    return-object p2
.end method
