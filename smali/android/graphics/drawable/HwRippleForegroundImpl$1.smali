.class Landroid/graphics/drawable/HwRippleForegroundImpl$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "HwRippleForegroundImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/HwRippleForegroundImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/graphics/drawable/HwRippleForegroundImpl;


# direct methods
.method constructor <init>(Landroid/graphics/drawable/HwRippleForegroundImpl;)V
    .locals 0
    .param p1, "this$0"    # Landroid/graphics/drawable/HwRippleForegroundImpl;

    .line 389
    iput-object p1, p0, Landroid/graphics/drawable/HwRippleForegroundImpl$1;->this$0:Landroid/graphics/drawable/HwRippleForegroundImpl;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 392
    iget-object v0, p0, Landroid/graphics/drawable/HwRippleForegroundImpl$1;->this$0:Landroid/graphics/drawable/HwRippleForegroundImpl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/graphics/drawable/HwRippleForegroundImpl;->access$002(Landroid/graphics/drawable/HwRippleForegroundImpl;Z)Z

    .line 393
    iget-object v0, p0, Landroid/graphics/drawable/HwRippleForegroundImpl$1;->this$0:Landroid/graphics/drawable/HwRippleForegroundImpl;

    invoke-static {v0}, Landroid/graphics/drawable/HwRippleForegroundImpl;->access$100(Landroid/graphics/drawable/HwRippleForegroundImpl;)V

    .line 394
    iget-object v0, p0, Landroid/graphics/drawable/HwRippleForegroundImpl$1;->this$0:Landroid/graphics/drawable/HwRippleForegroundImpl;

    invoke-static {v0}, Landroid/graphics/drawable/HwRippleForegroundImpl;->access$200(Landroid/graphics/drawable/HwRippleForegroundImpl;)V

    .line 396
    iget-object v0, p0, Landroid/graphics/drawable/HwRippleForegroundImpl$1;->this$0:Landroid/graphics/drawable/HwRippleForegroundImpl;

    invoke-static {v0}, Landroid/graphics/drawable/HwRippleForegroundImpl;->access$300(Landroid/graphics/drawable/HwRippleForegroundImpl;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Landroid/graphics/drawable/HwRippleForegroundImpl$1;->this$0:Landroid/graphics/drawable/HwRippleForegroundImpl;

    invoke-static {v0}, Landroid/graphics/drawable/HwRippleForegroundImpl;->access$400(Landroid/graphics/drawable/HwRippleForegroundImpl;)V

    .line 399
    :cond_0
    return-void
.end method
