.class Lcom/android/internal/widget/HwDecorCaptionView$2;
.super Ljava/lang/Object;
.source "HwDecorCaptionView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/HwDecorCaptionView;->clickView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/HwDecorCaptionView;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/HwDecorCaptionView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/widget/HwDecorCaptionView;

    .line 249
    iput-object p1, p0, Lcom/android/internal/widget/HwDecorCaptionView$2;->this$0:Lcom/android/internal/widget/HwDecorCaptionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/android/internal/widget/HwDecorCaptionView$2;->this$0:Lcom/android/internal/widget/HwDecorCaptionView;

    invoke-static {v0}, Lcom/android/internal/widget/HwDecorCaptionView;->access$000(Lcom/android/internal/widget/HwDecorCaptionView;)V

    .line 253
    return-void
.end method
