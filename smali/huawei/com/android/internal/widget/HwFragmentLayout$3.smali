.class Lhuawei/com/android/internal/widget/HwFragmentLayout$3;
.super Landroid/os/Handler;
.source "HwFragmentLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhuawei/com/android/internal/widget/HwFragmentLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lhuawei/com/android/internal/widget/HwFragmentLayout;


# direct methods
.method constructor <init>(Lhuawei/com/android/internal/widget/HwFragmentLayout;)V
    .locals 0
    .param p1, "this$0"    # Lhuawei/com/android/internal/widget/HwFragmentLayout;

    .line 480
    iput-object p1, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout$3;->this$0:Lhuawei/com/android/internal/widget/HwFragmentLayout;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 482
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 487
    :pswitch_0
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout$3;->this$0:Lhuawei/com/android/internal/widget/HwFragmentLayout;

    invoke-virtual {v0}, Lhuawei/com/android/internal/widget/HwFragmentLayout;->refreshFragmentLayout()V

    .line 488
    goto :goto_0

    .line 484
    :pswitch_1
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout$3;->this$0:Lhuawei/com/android/internal/widget/HwFragmentLayout;

    invoke-virtual {v0}, Lhuawei/com/android/internal/widget/HwFragmentLayout;->setSplitLineTouchDelegate()V

    .line 485
    nop

    .line 492
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
