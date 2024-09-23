.class public Lcom/android/internal/widget/HwDecorCaptionView;
.super Lcom/android/internal/widget/AbsHwDecorCaptionView;
.source "HwDecorCaptionView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "DecorCaptionView"

.field private static final mDoubleClickInterval:J = 0x1f4L


# instance fields
.field private mBack:Landroid/view/View;

.field private final mBackRect:Landroid/graphics/Rect;

.field private mCaption:Landroid/view/View;

.field private mCheckForDragging:Z

.field private mClickTarget:Landroid/view/View;

.field private mClose:Landroid/view/View;

.field private final mCloseRect:Landroid/graphics/Rect;

.field private mContent:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mDragSlop:I

.field private mDragging:Z

.field private mFullScreen:Landroid/view/View;

.field private final mFullScreenRect:Landroid/graphics/Rect;

.field private mIsLight:Z

.field private mLastClickTime:J

.field private mMaximize:Landroid/view/View;

.field private final mMaximizeRect:Landroid/graphics/Rect;

.field private mMinimize:Landroid/view/View;

.field private final mMinimizeRect:Landroid/graphics/Rect;

.field private mMyHandler:Landroid/os/Handler;

.field private mOverlayWithAppContent:Z

.field private mOwner:Lcom/android/internal/policy/PhoneWindow;

.field private mShow:Z

.field private mTitleView:Landroid/widget/TextView;

.field private mTouchDispatchList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTouchDownX:I

.field private mTouchDownY:I

.field private mUseRtlRes:Z

.field private mWindowState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 84
    invoke-direct {p0, p1}, Lcom/android/internal/widget/AbsHwDecorCaptionView;-><init>(Landroid/content/Context;)V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mShow:Z

    .line 46
    iput-boolean v0, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mDragging:Z

    .line 48
    iput-boolean v0, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mOverlayWithAppContent:Z

    .line 59
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mMyHandler:Landroid/os/Handler;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mTouchDispatchList:Ljava/util/ArrayList;

    .line 70
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mCloseRect:Landroid/graphics/Rect;

    .line 71
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mMaximizeRect:Landroid/graphics/Rect;

    .line 72
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mMinimizeRect:Landroid/graphics/Rect;

    .line 73
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mBackRect:Landroid/graphics/Rect;

    .line 74
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mFullScreenRect:Landroid/graphics/Rect;

    .line 78
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mLastClickTime:J

    .line 85
    invoke-direct {p0, p1}, Lcom/android/internal/widget/HwDecorCaptionView;->init(Landroid/content/Context;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 89
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/AbsHwDecorCaptionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mShow:Z

    .line 46
    iput-boolean v0, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mDragging:Z

    .line 48
    iput-boolean v0, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mOverlayWithAppContent:Z

    .line 59
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mMyHandler:Landroid/os/Handler;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mTouchDispatchList:Ljava/util/ArrayList;

    .line 70
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mCloseRect:Landroid/graphics/Rect;

    .line 71
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mMaximizeRect:Landroid/graphics/Rect;

    .line 72
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mMinimizeRect:Landroid/graphics/Rect;

    .line 73
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mBackRect:Landroid/graphics/Rect;

    .line 74
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mFullScreenRect:Landroid/graphics/Rect;

    .line 78
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mLastClickTime:J

    .line 90
    invoke-direct {p0, p1}, Lcom/android/internal/widget/HwDecorCaptionView;->init(Landroid/content/Context;)V

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 94
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/widget/AbsHwDecorCaptionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mShow:Z

    .line 46
    iput-boolean v0, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mDragging:Z

    .line 48
    iput-boolean v0, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mOverlayWithAppContent:Z

    .line 59
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mMyHandler:Landroid/os/Handler;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mTouchDispatchList:Ljava/util/ArrayList;

    .line 70
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mCloseRect:Landroid/graphics/Rect;

    .line 71
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mMaximizeRect:Landroid/graphics/Rect;

    .line 72
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mMinimizeRect:Landroid/graphics/Rect;

    .line 73
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mBackRect:Landroid/graphics/Rect;

    .line 74
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mFullScreenRect:Landroid/graphics/Rect;

    .line 78
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mLastClickTime:J

    .line 95
    invoke-direct {p0, p1}, Lcom/android/internal/widget/HwDecorCaptionView;->init(Landroid/content/Context;)V

    .line 96
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/widget/HwDecorCaptionView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/HwDecorCaptionView;

    .line 40
    invoke-direct {p0}, Lcom/android/internal/widget/HwDecorCaptionView;->cleanAllViews()V

    return-void
.end method

.method private backWindow()V
    .locals 3

    .line 501
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/internal/widget/HwDecorCaptionView;->sendEvent(III)V

    .line 502
    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/HwDecorCaptionView;->sendEvent(III)V

    .line 503
    return-void
.end method

.method private calTouchedView(Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 198
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 199
    .local v0, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 200
    .local v1, "y":I
    iget-object v2, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mMaximizeRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mMaximize:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 201
    iget-object v2, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mMaximize:Landroid/view/View;

    return-object v2

    .line 203
    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mCloseRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mClose:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 204
    iget-object v2, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mClose:Landroid/view/View;

    return-object v2

    .line 206
    :cond_1
    iget-object v2, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mMinimizeRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mMinimize:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    .line 207
    iget-object v2, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mMinimize:Landroid/view/View;

    return-object v2

    .line 209
    :cond_2
    iget-object v2, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mBackRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mBack:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    .line 210
    iget-object v2, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mBack:Landroid/view/View;

    return-object v2

    .line 213
    :cond_3
    iget-object v2, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mFullScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mFullScreen:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_4

    .line 214
    iget-object v2, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mFullScreen:Landroid/view/View;

    return-object v2

    .line 217
    :cond_4
    const/4 v2, 0x0

    return-object v2
.end method

.method private cleanAllViews()V
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mMinimize:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 139
    iget-object v0, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mMinimize:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setHovered(Z)V

    .line 140
    iget-object v0, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mMaximize:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 141
    iget-object v0, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mMaximize:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setHovered(Z)V

    .line 142
    iget-object v0, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mClose:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 143
    iget-object v0, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mClose:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setHovered(Z)V

    .line 144
    iget-object v0, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mFullScreen:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 145
    iget-object v0, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mFullScreen:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setHovered(Z)V

    .line 146
    return-void
.end method

.method private clickView(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .line 226
    iget-object v0, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mMaximize:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 227
    invoke-direct {p0}, Lcom/android/internal/widget/HwDecorCaptionView;->maximizeWindow()V

    goto/16 :goto_0

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mFullScreen:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 230
    invoke-direct {p0}, Lcom/android/internal/widget/HwDecorCaptionView;->fullscreenWindow()V

    goto/16 :goto_0

    .line 232
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mClose:Landroid/view/View;

    const-wide/16 v1, 0x12c

    if-ne p1, v0, :cond_3

    .line 233
    invoke-static {}, Landroid/util/HwPCUtils;->enabledInPad()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "com.android.incallui"

    iget-object v3, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/util/HwPCUtils;->isPcCastMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 234
    invoke-direct {p0}, Lcom/android/internal/widget/HwDecorCaptionView;->minimizeWindow()V

    .line 235
    const/16 v0, 0x12c

    .line 236
    .local v0, "DELAY_MINED_TO_LAST_HOVER":I
    iget-object v3, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mMyHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/internal/widget/HwDecorCaptionView$1;

    invoke-direct {v4, p0}, Lcom/android/internal/widget/HwDecorCaptionView$1;-><init>(Lcom/android/internal/widget/HwDecorCaptionView;)V

    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 242
    .end local v0    # "DELAY_MINED_TO_LAST_HOVER":I
    goto :goto_0

    .line 243
    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mContext:Landroid/content/Context;

    const/16 v1, 0x2720

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exit app:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/HwPCUtils;->bdReport(Landroid/content/Context;ILjava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/PhoneWindow;->dispatchOnWindowDismissed(ZZ)V

    goto :goto_0

    .line 246
    :cond_3
    iget-object v0, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mMinimize:Landroid/view/View;

    if-ne p1, v0, :cond_4

    .line 247
    invoke-direct {p0}, Lcom/android/internal/widget/HwDecorCaptionView;->minimizeWindow()V

    .line 248
    const/16 v0, 0x12c

    .line 249
    .restart local v0    # "DELAY_MINED_TO_LAST_HOVER":I
    iget-object v3, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mMyHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/internal/widget/HwDecorCaptionView$2;

    invoke-direct {v4, p0}, Lcom/android/internal/widget/HwDecorCaptionView$2;-><init>(Lcom/android/internal/widget/HwDecorCaptionView;)V

    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 255
    .end local v0    # "DELAY_MINED_TO_LAST_HOVER":I
    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mBack:Landroid/view/View;

    if-ne p1, v0, :cond_5

    .line 256
    invoke-direct {p0}, Lcom/android/internal/widget/HwDecorCaptionView;->backWindow()V

    .line 259
    :cond_5
    :goto_0
    return-void
.end method

.method private fullscreenWindow()V
    .locals 5

    .line 511
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getAppToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/app/IActivityManager;->getTaskForActivity(Landroid/os/IBinder;Z)I

    move-result v0

    .line 512
    .local v0, "taskId":I
    invoke-static {}, Landroid/util/HwPCUtils;->getHwPCManager()Landroid/pc/IHwPCManager;

    move-result-object v1

    .line 513
    .local v1, "pcManager":Landroid/pc/IHwPCManager;
    if-eqz v1, :cond_0

    .line 514
    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-interface {v1, v0, v2}, Landroid/pc/IHwPCManager;->hwResizeTask(ILandroid/graphics/Rect;)V

    .line 515
    iget-object v2, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mFullScreen:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/internal/widget/HwDecorCaptionView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x2020228

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 519
    .end local v0    # "taskId":I
    .end local v1    # "pcManager":Landroid/pc/IHwPCManager;
    :cond_0
    goto :goto_0

    .line 517
    :catch_0
    move-exception v0

    .line 518
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "DecorCaptionView"

    const-string v2, "fullscreenWindow, Cannot change task workspace."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 99
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mDragSlop:I

    .line 100
    iput-object p1, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mContext:Landroid/content/Context;

    .line 101
    return-void
.end method

.method private isFullscreen()Z
    .locals 1

    .line 577
    iget v0, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mWindowState:I

    invoke-static {v0}, Landroid/content/res/HwPCMultiWindowCompatibility;->isLayoutFullscreen(I)Z

    move-result v0

    return v0
.end method

.method private isVisible()Z
    .locals 1

    .line 467
    iget-boolean v0, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mShow:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/widget/HwDecorCaptionView;->isFullscreen()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private maximizeWindow()V
    .locals 5

    .line 483
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getAppToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/app/IActivityManager;->getTaskForActivity(Landroid/os/IBinder;Z)I

    move-result v0

    .line 484
    .local v0, "taskId":I
    invoke-static {}, Landroid/util/HwPCUtils;->getHwPCManager()Landroid/pc/IHwPCManager;

    move-result-object v1

    .line 485
    .local v1, "pcManager":Landroid/pc/IHwPCManager;
    if-eqz v1, :cond_1

    .line 486
    invoke-virtual {p0}, Lcom/android/internal/widget/HwDecorCaptionView;->isMaximized()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 487
    const/high16 v2, -0x40800000    # -1.0f

    invoke-interface {v1, v0, v2, v2}, Landroid/pc/IHwPCManager;->hwRestoreTask(IFF)V

    .line 488
    iget-object v2, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mMaximize:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/internal/widget/HwDecorCaptionView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x2020217

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 490
    :cond_0
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v2, v2, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-interface {v1, v0, v3}, Landroid/pc/IHwPCManager;->hwResizeTask(ILandroid/graphics/Rect;)V

    .line 491
    iget-object v2, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mMaximize:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/internal/widget/HwDecorCaptionView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x20202cb

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 497
    .end local v0    # "taskId":I
    .end local v1    # "pcManager":Landroid/pc/IHwPCManager;
    :cond_1
    :goto_0
    goto :goto_1

    .line 495
    :catch_0
    move-exception v0

    .line 496
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "DecorCaptionView"

    const-string v2, "maximizeWindow, Cannot change task workspace."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method private minimizeWindow()V
    .locals 3

    .line 472
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getAppToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/app/IActivityManager;->moveActivityTaskToBack(Landroid/os/IBinder;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 475
    goto :goto_0

    .line 473
    :catch_0
    move-exception v0

    .line 474
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "DecorCaptionView"

    const-string v2, "minimizeWindow, Cannot change task workspace."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private passedSlop(II)Z
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 372
    iget v0, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mTouchDownX:I

    sub-int v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mDragSlop:I

    if-gt v0, v1, :cond_1

    iget v0, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mTouchDownY:I

    sub-int v0, p2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mDragSlop:I

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private updateCaptionVisibility()V
    .locals 3

    .line 461
    iget-boolean v0, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mShow:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/internal/widget/HwDecorCaptionView;->isFullscreen()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 462
    .local v0, "invisible":Z
    :goto_1
    iget-object v2, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mCaption:Landroid/view/View;

    if-eqz v0, :cond_2

    const/16 v1, 0x8

    nop

    :cond_2
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 463
    iget-object v1, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mCaption:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 464
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 387
    instance-of v0, p3, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    .line 392
    const/4 v0, 0x2

    if-ge p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/HwDecorCaptionView;->getChildCount()I

    move-result v1

    if-ge v1, v0, :cond_0

    .line 397
    const/4 v0, 0x0

    invoke-super {p0, p1, v0, p3}, Lcom/android/internal/widget/AbsHwDecorCaptionView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 398
    iput-object p1, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mContent:Landroid/view/View;

    .line 399
    return-void

    .line 393
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DecorCaptionView can only handle 1 client view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 388
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "params "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " must subclass MarginLayoutParams"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public buildTouchDispatchChildList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 356
    iget-object v0, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mTouchDispatchList:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 357
    iget-object v0, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mCaption:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mTouchDispatchList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mCaption:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mContent:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 361
    iget-object v0, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mTouchDispatchList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mContent:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 363
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mTouchDispatchList:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 569
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    return v0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 558
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 553
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/android/internal/widget/HwDecorCaptionView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 564
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getCaption()Landroid/view/View;
    .locals 1

    .line 548
    iget-object v0, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mCaption:Landroid/view/View;

    return-object v0
.end method

.method public getCaptionHeight()I
    .locals 1

    .line 537
    iget-object v0, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mCaption:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mCaption:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCaptionShowing()Z
    .locals 1

    .line 533
    iget-boolean v0, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mShow:Z

    return v0
.end method

.method public isMaximized()Z
    .locals 1

    .line 573
    iget v0, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mWindowState:I

    invoke-static {v0}, Landroid/content/res/HwPCMultiWindowCompatibility;->isLayoutMaximized(I)Z

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 222
    invoke-direct {p0, p1}, Lcom/android/internal/widget/HwDecorCaptionView;->clickView(Landroid/view/View;)V

    .line 223
    return-void
.end method

.method public onConfigurationChanged(Z)V
    .locals 0
    .param p1, "show"    # Z

    .line 381
    iput-boolean p1, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mShow:Z

    .line 382
    invoke-direct {p0}, Lcom/android/internal/widget/HwDecorCaptionView;->updateCaptionVisibility()V

    .line 383
    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    .line 105
    invoke-super {p0}, Lcom/android/internal/widget/AbsHwDecorCaptionView;->onFinishInflate()V

    .line 106
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/HwDecorCaptionView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mCaption:Landroid/view/View;

    .line 107
    iget-object v0, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->hasRtlSupport()Z

    move-result v0

    .line 108
    .local v0, "isRtlSupport":Z
    iget-object v1, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    .line 109
    .local v1, "layoutDirection":I
    if-nez v0, :cond_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 110
    iput-boolean v2, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mUseRtlRes:Z

    .line 112
    :cond_0
    iget-boolean v2, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mUseRtlRes:Z

    if-eqz v2, :cond_1

    const v2, 0x21000ca

    goto :goto_0

    :cond_1
    const v2, 0x21000b1

    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/HwDecorCaptionView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mMaximize:Landroid/view/View;

    .line 113
    iget-boolean v2, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mUseRtlRes:Z

    if-eqz v2, :cond_2

    const v2, 0x21000cc

    goto :goto_1

    :cond_2
    const v2, 0x21000b3

    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/HwDecorCaptionView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mClose:Landroid/view/View;

    .line 114
    iget-boolean v2, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mUseRtlRes:Z

    if-eqz v2, :cond_3

    const v2, 0x21000cb

    goto :goto_2

    :cond_3
    const v2, 0x21000b2

    :goto_2
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/HwDecorCaptionView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mMinimize:Landroid/view/View;

    .line 115
    iget-boolean v2, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mUseRtlRes:Z

    if-eqz v2, :cond_4

    const v2, 0x21000cd

    goto :goto_3

    :cond_4
    const v2, 0x21000b4

    :goto_3
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/HwDecorCaptionView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mBack:Landroid/view/View;

    .line 116
    iget-boolean v2, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mUseRtlRes:Z

    if-eqz v2, :cond_5

    const v2, 0x21000c9

    goto :goto_4

    :cond_5
    const v2, 0x21000b0

    :goto_4
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/HwDecorCaptionView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mTitleView:Landroid/widget/TextView;

    .line 117
    iget-boolean v2, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mUseRtlRes:Z

    if-eqz v2, :cond_6

    const v2, 0x21000ce

    goto :goto_5

    :cond_6
    const v2, 0x21000c8

    :goto_5
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/HwDecorCaptionView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mFullScreen:Landroid/view/View;

    .line 119
    iget-object v2, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mMaximize:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    iget-object v2, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mClose:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object v2, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mMinimize:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object v2, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mBack:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object v2, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mFullScreen:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    invoke-virtual {p0}, Lcom/android/internal/widget/HwDecorCaptionView;->isMaximized()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 125
    iget-object v2, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mMaximize:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/internal/widget/HwDecorCaptionView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x20202cb

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 127
    :cond_7
    iget-object v2, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mMaximize:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/internal/widget/HwDecorCaptionView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x2020217

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 130
    :goto_6
    invoke-direct {p0}, Lcom/android/internal/widget/HwDecorCaptionView;->isFullscreen()Z

    move-result v2

    if-nez v2, :cond_8

    .line 131
    iget-object v2, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mFullScreen:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/internal/widget/HwDecorCaptionView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x2020228

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 135
    :cond_8
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 191
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 192
    invoke-direct {p0, p1}, Lcom/android/internal/widget/HwDecorCaptionView;->calTouchedView(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mClickTarget:Landroid/view/View;

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mClickTarget:Landroid/view/View;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 426
    iget-object v0, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mCaption:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_0

    .line 427
    iget-object v0, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mCaption:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mCaption:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mCaption:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 428
    iget-object v0, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mCaption:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget-object v2, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mCaption:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v0, v2

    .line 429
    .local v0, "captionHeight":I
    iget-object v2, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mMaximize:Landroid/view/View;

    iget-object v3, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mMaximizeRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 430
    iget-object v2, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mClose:Landroid/view/View;

    iget-object v3, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mCloseRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 431
    iget-object v2, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mMinimize:Landroid/view/View;

    iget-object v3, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mMinimizeRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 432
    iget-object v2, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mBack:Landroid/view/View;

    iget-object v3, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mBackRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 433
    iget-object v2, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mFullScreen:Landroid/view/View;

    iget-object v3, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mFullScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 435
    .end local v0    # "captionHeight":I
    :cond_0
    const/4 v0, 0x0

    .line 436
    .restart local v0    # "captionHeight":I
    iget-object v2, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mMaximizeRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 437
    iget-object v2, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mCloseRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 438
    iget-object v2, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mMinimizeRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 439
    iget-object v2, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mBackRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 440
    iget-object v2, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mFullScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 443
    :goto_0
    iget-object v2, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mContent:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 444
    iget-boolean v2, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mOverlayWithAppContent:Z

    if-eqz v2, :cond_1

    .line 445
    iget-object v2, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mContent:Landroid/view/View;

    iget-object v3, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mContent:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mContent:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v2, v1, v1, v3, v4}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 447
    :cond_1
    iget-object v2, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mContent:Landroid/view/View;

    iget-object v3, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mContent:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mContent:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v2, v1, v0, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 452
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    iget-object v2, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mMaximize:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mMaximize:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mClose:Landroid/view/View;

    .line 453
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mClose:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 452
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/internal/policy/PhoneWindow;->notifyRestrictedCaptionAreaCallback(IIII)V

    .line 454
    return-void
.end method

.method protected onMeasure(II)V
    .locals 13
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 404
    iget-object v0, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mCaption:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 405
    iget-object v3, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mCaption:Landroid/view/View;

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move v4, p1

    move v6, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/widget/HwDecorCaptionView;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 406
    iget-object v0, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mCaption:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 408
    .local v6, "captionHeight":I
    :goto_0
    move v6, v0

    goto :goto_1

    .end local v6    # "captionHeight":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 410
    .restart local v6    # "captionHeight":I
    :goto_1
    iget-object v0, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mContent:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 411
    iget-boolean v0, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mOverlayWithAppContent:Z

    if-eqz v0, :cond_1

    .line 412
    iget-object v8, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mContent:Landroid/view/View;

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object v7, p0

    move v9, p1

    move v11, p2

    invoke-virtual/range {v7 .. v12}, Lcom/android/internal/widget/HwDecorCaptionView;->measureChildWithMargins(Landroid/view/View;IIII)V

    goto :goto_2

    .line 414
    :cond_1
    iget-object v2, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mContent:Landroid/view/View;

    const/4 v4, 0x0

    move-object v1, p0

    move v3, p1

    move v5, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/widget/HwDecorCaptionView;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 419
    :cond_2
    :goto_2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 420
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 419
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/HwDecorCaptionView;->setMeasuredDimension(II)V

    .line 421
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 17
    .param p1, "v"    # Landroid/view/View;
    .param p2, "e"    # Landroid/view/MotionEvent;

    move-object/from16 v1, p0

    .line 288
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v2, v0

    .line 289
    .local v2, "x":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v3, v0

    .line 290
    .local v3, "y":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    move-object/from16 v4, p2

    invoke-virtual {v4, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x3

    if-ne v0, v7, :cond_0

    move v0, v5

    goto :goto_0

    :cond_0
    move v0, v6

    :goto_0
    move v7, v0

    .line 291
    .local v7, "fromMouse":Z
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v0

    and-int/2addr v0, v5

    if-eqz v0, :cond_1

    move v0, v5

    goto :goto_1

    :cond_1
    move v0, v6

    :goto_1
    move v8, v0

    .line 292
    .local v8, "primaryButton":Z
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_5

    .line 308
    :pswitch_0
    iget-boolean v0, v1, Lcom/android/internal/widget/HwDecorCaptionView;->mDragging:Z

    if-nez v0, :cond_a

    iget-boolean v0, v1, Lcom/android/internal/widget/HwDecorCaptionView;->mCheckForDragging:Z

    if-eqz v0, :cond_a

    if-nez v7, :cond_2

    invoke-direct {v1, v2, v3}, Lcom/android/internal/widget/HwDecorCaptionView;->passedSlop(II)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 309
    :cond_2
    iput-boolean v6, v1, Lcom/android/internal/widget/HwDecorCaptionView;->mCheckForDragging:Z

    .line 310
    iput-boolean v5, v1, Lcom/android/internal/widget/HwDecorCaptionView;->mDragging:Z

    .line 311
    iget-object v0, v1, Lcom/android/internal/widget/HwDecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    iget-object v9, v0, Landroid/view/ViewRootImpl;->mOffset:Landroid/graphics/Point;

    .line 312
    .local v9, "offset":Landroid/graphics/Point;
    if-nez v9, :cond_3

    move v0, v6

    goto :goto_2

    :cond_3
    iget v0, v9, Landroid/graphics/Point;->x:I

    :goto_2
    move v10, v0

    .line 313
    .local v10, "offsetX":I
    if-nez v9, :cond_4

    move v0, v6

    goto :goto_3

    :cond_4
    iget v0, v9, Landroid/graphics/Point;->y:I

    :goto_3
    move v11, v0

    .line 314
    .local v11, "offsetY":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/HwDecorCaptionView;->isMaximized()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 316
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v12, v1, Lcom/android/internal/widget/HwDecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v12}, Lcom/android/internal/policy/PhoneWindow;->getAppToken()Landroid/os/IBinder;

    move-result-object v12

    invoke-interface {v0, v12, v6}, Landroid/app/IActivityManager;->getTaskForActivity(Landroid/os/IBinder;Z)I

    move-result v0

    .line 317
    .local v0, "taskId":I
    invoke-static {}, Landroid/util/HwPCUtils;->getHwPCManager()Landroid/pc/IHwPCManager;

    move-result-object v12

    .line 318
    .local v12, "pcManager":Landroid/pc/IHwPCManager;
    if-eqz v12, :cond_5

    .line 319
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v13

    int-to-float v14, v10

    add-float/2addr v13, v14

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v14

    int-to-float v15, v11

    add-float/2addr v14, v15

    invoke-interface {v12, v0, v13, v14}, Landroid/pc/IHwPCManager;->hwRestoreTask(IFF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    .end local v0    # "taskId":I
    .end local v12    # "pcManager":Landroid/pc/IHwPCManager;
    :cond_5
    goto :goto_4

    .line 321
    :catch_0
    move-exception v0

    .line 322
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v12, "DecorCaptionView"

    const-string v13, "Cannot change task workspace."

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_6
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    int-to-float v12, v10

    add-float/2addr v0, v12

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v12

    int-to-float v13, v11

    add-float/2addr v12, v13

    invoke-virtual {v1, v0, v12}, Lcom/android/internal/widget/HwDecorCaptionView;->startMovingTask(FF)Z

    .line 329
    .end local v9    # "offset":Landroid/graphics/Point;
    .end local v10    # "offsetX":I
    .end local v11    # "offsetY":I
    goto :goto_5

    .line 334
    :pswitch_1
    iget-boolean v0, v1, Lcom/android/internal/widget/HwDecorCaptionView;->mDragging:Z

    if-nez v0, :cond_7

    .line 335
    goto :goto_5

    .line 338
    :cond_7
    iput-boolean v6, v1, Lcom/android/internal/widget/HwDecorCaptionView;->mDragging:Z

    .line 339
    iget-boolean v0, v1, Lcom/android/internal/widget/HwDecorCaptionView;->mCheckForDragging:Z

    xor-int/2addr v0, v5

    return v0

    .line 294
    :pswitch_2
    iget-boolean v0, v1, Lcom/android/internal/widget/HwDecorCaptionView;->mShow:Z

    if-nez v0, :cond_8

    .line 296
    return v6

    .line 300
    :cond_8
    if-eqz v7, :cond_9

    if-eqz v8, :cond_a

    .line 301
    :cond_9
    iput-boolean v5, v1, Lcom/android/internal/widget/HwDecorCaptionView;->mCheckForDragging:Z

    .line 302
    iput v2, v1, Lcom/android/internal/widget/HwDecorCaptionView;->mTouchDownX:I

    .line 303
    iput v3, v1, Lcom/android/internal/widget/HwDecorCaptionView;->mTouchDownY:I

    .line 342
    :cond_a
    :goto_5
    iget-boolean v0, v1, Lcom/android/internal/widget/HwDecorCaptionView;->mDragging:Z

    if-nez v0, :cond_c

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v5, :cond_c

    .line 343
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v9

    .line 344
    .local v9, "time":J
    iget-wide v11, v1, Lcom/android/internal/widget/HwDecorCaptionView;->mLastClickTime:J

    const-wide/16 v13, 0x0

    cmp-long v0, v11, v13

    if-eqz v0, :cond_b

    iget-wide v11, v1, Lcom/android/internal/widget/HwDecorCaptionView;->mLastClickTime:J

    sub-long v11, v9, v11

    const-wide/16 v15, 0x1f4

    cmp-long v0, v11, v15

    if-gez v0, :cond_b

    .line 345
    iput-wide v13, v1, Lcom/android/internal/widget/HwDecorCaptionView;->mLastClickTime:J

    .line 346
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/HwDecorCaptionView;->maximizeWindow()V

    goto :goto_6

    .line 348
    :cond_b
    iput-wide v9, v1, Lcom/android/internal/widget/HwDecorCaptionView;->mLastClickTime:J

    .line 351
    .end local v9    # "time":J
    :cond_c
    :goto_6
    iget-boolean v0, v1, Lcom/android/internal/widget/HwDecorCaptionView;->mDragging:Z

    if-nez v0, :cond_e

    iget-boolean v0, v1, Lcom/android/internal/widget/HwDecorCaptionView;->mCheckForDragging:Z

    if-eqz v0, :cond_d

    goto :goto_7

    :cond_d
    move v5, v6

    nop

    :cond_e
    :goto_7
    return v5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 263
    iget-object v0, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mClickTarget:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 264
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 265
    .local v0, "action":I
    iget-object v2, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mClickTarget:Landroid/view/View;

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    const/4 v4, 0x2

    if-ne v0, v4, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setPressed(Z)V

    .line 266
    if-ne v0, v3, :cond_2

    .line 267
    invoke-direct {p0, p1}, Lcom/android/internal/widget/HwDecorCaptionView;->calTouchedView(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v1

    .line 269
    .local v1, "view":Landroid/view/View;
    iget-object v2, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mClickTarget:Landroid/view/View;

    if-ne v2, v1, :cond_2

    .line 271
    invoke-direct {p0, v1}, Lcom/android/internal/widget/HwDecorCaptionView;->clickView(Landroid/view/View;)V

    .line 275
    .end local v1    # "view":Landroid/view/View;
    :cond_2
    if-eq v0, v3, :cond_3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 276
    :cond_3
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mClickTarget:Landroid/view/View;

    .line 278
    :cond_4
    return v3

    .line 280
    .end local v0    # "action":I
    :cond_5
    return v1
.end method

.method public onWindowStateChanged(I)V
    .locals 4
    .param p1, "state"    # I

    .line 581
    const-string v0, "HwPCMultiWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowStateChanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mTitleView:Landroid/widget/TextView;

    if-nez v2, :cond_0

    const-string v2, "NULL"

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mWindowState:I

    .line 582
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " isFullscreen "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/widget/HwDecorCaptionView;->isFullscreen()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isMaximized "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/widget/HwDecorCaptionView;->isMaximized()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 581
    invoke-static {v0, v1}, Landroid/util/HwPCUtils;->log(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    invoke-direct {p0}, Lcom/android/internal/widget/HwDecorCaptionView;->cleanAllViews()V

    .line 585
    iget v0, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mWindowState:I

    if-eq v0, p1, :cond_8

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    goto/16 :goto_4

    .line 589
    :cond_1
    iput p1, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mWindowState:I

    .line 590
    invoke-direct {p0}, Lcom/android/internal/widget/HwDecorCaptionView;->isVisible()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_7

    .line 591
    iget-object v0, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mCaption:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 592
    iget v0, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mWindowState:I

    invoke-static {v0}, Landroid/content/res/HwPCMultiWindowCompatibility;->isMaximizeable(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 593
    iget-object v0, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mMaximize:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 595
    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mMaximize:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 596
    invoke-virtual {p0}, Lcom/android/internal/widget/HwDecorCaptionView;->isMaximized()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 597
    iget-object v0, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mMaximize:Landroid/view/View;

    const v2, 0x20302b1

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 598
    iget-object v0, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mMaximize:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/internal/widget/HwDecorCaptionView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x20202cb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 600
    :cond_3
    iget-object v0, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mMaximize:Landroid/view/View;

    const v2, 0x20302b3

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 601
    iget-object v0, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mMaximize:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/internal/widget/HwDecorCaptionView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x2020217

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 606
    :goto_1
    iget v0, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mWindowState:I

    invoke-static {v0}, Landroid/content/res/HwPCMultiWindowCompatibility;->isFullscreenable(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 607
    invoke-direct {p0}, Lcom/android/internal/widget/HwDecorCaptionView;->isFullscreen()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 608
    iget-object v0, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mFullScreen:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 610
    :cond_4
    iget-boolean v0, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mUseRtlRes:Z

    if-eqz v0, :cond_5

    .line 611
    iget-object v0, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mFullScreen:Landroid/view/View;

    const v1, 0x2030302

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2

    .line 613
    :cond_5
    iget-object v0, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mFullScreen:Landroid/view/View;

    const v1, 0x20302fc

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 615
    :goto_2
    iget-object v0, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mFullScreen:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/internal/widget/HwDecorCaptionView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2020228

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 618
    :cond_6
    iget-object v0, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mFullScreen:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 622
    :cond_7
    iget-object v0, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mCaption:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 624
    :goto_3
    return-void

    .line 586
    :cond_8
    :goto_4
    return-void
.end method

.method public processKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 662
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v2, 0x6f

    if-ne v0, v2, :cond_3

    invoke-direct {p0}, Lcom/android/internal/widget/HwDecorCaptionView;->isFullscreen()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 663
    iget-object v0, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mContext:Landroid/content/Context;

    .line 664
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.huawei.himovie"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mContext:Landroid/content/Context;

    .line 666
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.huawei.himovie.overseas"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mContext:Landroid/content/Context;

    .line 667
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.huawei.cloud"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 669
    :cond_0
    return v1

    .line 672
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->getAppToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Landroid/app/IActivityManager;->getTaskForActivity(Landroid/os/IBinder;Z)I

    move-result v0

    .line 673
    .local v0, "taskId":I
    invoke-static {}, Landroid/util/HwPCUtils;->getHwPCManager()Landroid/pc/IHwPCManager;

    move-result-object v1

    .line 674
    .local v1, "pcManager":Landroid/pc/IHwPCManager;
    if-eqz v1, :cond_2

    .line 675
    const/high16 v2, -0x40800000    # -1.0f

    invoke-interface {v1, v0, v2, v2}, Landroid/pc/IHwPCManager;->hwRestoreTask(IFF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 679
    .end local v0    # "taskId":I
    .end local v1    # "pcManager":Landroid/pc/IHwPCManager;
    :cond_2
    goto :goto_0

    .line 677
    :catch_0
    move-exception v0

    .line 678
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "DecorCaptionView"

    const-string v2, "maximizeWindow, Cannot change task workspace."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 682
    :cond_3
    return v1
.end method

.method public removeContentView()V
    .locals 1

    .line 541
    iget-object v0, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mContent:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 542
    iget-object v0, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mContent:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/HwDecorCaptionView;->removeView(Landroid/view/View;)V

    .line 543
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mContent:Landroid/view/View;

    .line 545
    :cond_0
    return-void
.end method

.method public sendEvent(III)V
    .locals 16
    .param p1, "code"    # I
    .param p2, "metaState"    # I
    .param p3, "action"    # I

    .line 524
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    .line 525
    .local v13, "downTime":J
    new-instance v15, Landroid/view/KeyEvent;

    const/4 v7, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/16 v11, 0x48

    const/16 v12, 0x101

    move-object v0, v15

    move-wide v1, v13

    move-wide v3, v13

    move/from16 v5, p3

    move/from16 v6, p1

    move/from16 v8, p2

    invoke-direct/range {v0 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 529
    .local v0, "ev":Landroid/view/KeyEvent;
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 530
    return-void
.end method

.method public setPhoneWindow(Lcom/android/internal/policy/PhoneWindow;Z)V
    .locals 6
    .param p1, "owner"    # Lcom/android/internal/policy/PhoneWindow;
    .param p2, "show"    # Z

    .line 149
    iput-object p1, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    .line 150
    iput-boolean p2, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mShow:Z

    .line 151
    invoke-virtual {p1}, Lcom/android/internal/policy/PhoneWindow;->isOverlayWithDecorCaptionEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mOverlayWithAppContent:Z

    .line 152
    iget-boolean v0, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mOverlayWithAppContent:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mCaption:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 157
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/widget/HwDecorCaptionView;->updateCaptionVisibility()V

    .line 160
    iget-object v0, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    sget-object v2, Landroid/view/ViewOutlineProvider;->BOUNDS:Landroid/view/ViewOutlineProvider;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 163
    :try_start_0
    invoke-static {}, Landroid/util/HwPCUtils;->getHwPCManager()Landroid/pc/IHwPCManager;

    move-result-object v0

    .line 164
    .local v0, "pcManager":Landroid/pc/IHwPCManager;
    if-eqz v0, :cond_1

    .line 165
    iget-object v2, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->getAppToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/pc/IHwPCManager;->getWindowState(Landroid/os/IBinder;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/HwDecorCaptionView;->onWindowStateChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    .end local v0    # "pcManager":Landroid/pc/IHwPCManager;
    :cond_1
    goto :goto_0

    .line 167
    :catch_0
    move-exception v0

    .line 168
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "DecorCaptionView"

    const-string v3, "Cannot get window state."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    iget-object v0, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 172
    .local v0, "attributes":Landroid/view/WindowManager$LayoutParams;
    iget-object v2, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 173
    .local v2, "context":Landroid/content/Context;
    if-eqz v2, :cond_3

    invoke-static {}, Landroid/util/HwPCUtils;->enabledInPad()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v2}, Landroid/util/HwPCUtils;->isValidExtDisplayId(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 174
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 175
    .local v3, "packageName":Ljava/lang/String;
    if-eqz v0, :cond_3

    const-string v4, "com.android.contacts"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 176
    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 177
    .local v4, "gravity":I
    const/16 v5, 0x55

    if-ne v4, v5, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    move v5, v1

    .line 178
    .local v5, "isBottomRight":Z
    :goto_1
    if-eqz v5, :cond_3

    .line 179
    iput-boolean v1, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mShow:Z

    .line 180
    invoke-direct {p0}, Lcom/android/internal/widget/HwDecorCaptionView;->updateCaptionVisibility()V

    .line 185
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "gravity":I
    .end local v5    # "isBottomRight":Z
    :cond_3
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 658
    iget-object v0, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 659
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .line 368
    const/4 v0, 0x0

    return v0
.end method

.method public updateShade(Z)V
    .locals 3
    .param p1, "isLight"    # Z

    .line 627
    iput-boolean p1, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mIsLight:Z

    .line 628
    iget-boolean v0, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mUseRtlRes:Z

    if-eqz v0, :cond_0

    .line 629
    iget-object v0, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mBack:Landroid/view/View;

    const v1, 0x2030301

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 631
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mBack:Landroid/view/View;

    const v1, 0x20302b5

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 633
    :goto_0
    iget-object v0, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mMinimize:Landroid/view/View;

    const v1, 0x20302b7

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 634
    invoke-virtual {p0}, Lcom/android/internal/widget/HwDecorCaptionView;->isMaximized()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 635
    iget-object v0, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mMaximize:Landroid/view/View;

    const v1, 0x20302b1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 636
    iget-object v0, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mMaximize:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/internal/widget/HwDecorCaptionView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x20202cb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 638
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mMaximize:Landroid/view/View;

    const v1, 0x20302b3

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 639
    iget-object v0, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mMaximize:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/internal/widget/HwDecorCaptionView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2020217

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 642
    :goto_1
    invoke-direct {p0}, Lcom/android/internal/widget/HwDecorCaptionView;->isFullscreen()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 643
    iget-object v0, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mFullScreen:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 645
    :cond_2
    iget-boolean v0, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mUseRtlRes:Z

    if-eqz v0, :cond_3

    .line 646
    iget-object v0, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mFullScreen:Landroid/view/View;

    const v1, 0x2030302

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2

    .line 648
    :cond_3
    iget-object v0, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mFullScreen:Landroid/view/View;

    const v1, 0x20302fc

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 650
    :goto_2
    iget-object v0, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mFullScreen:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/internal/widget/HwDecorCaptionView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2020228

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 653
    :goto_3
    iget-object v0, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mClose:Landroid/view/View;

    const v1, 0x20302b9

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 654
    iget-object v0, p0, Lcom/android/internal/widget/HwDecorCaptionView;->mTitleView:Landroid/widget/TextView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 655
    return-void
.end method
