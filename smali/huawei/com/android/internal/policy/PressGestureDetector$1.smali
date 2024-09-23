.class Lhuawei/com/android/internal/policy/PressGestureDetector$1;
.super Ljava/lang/Thread;
.source "PressGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhuawei/com/android/internal/policy/PressGestureDetector;->onAttached(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lhuawei/com/android/internal/policy/PressGestureDetector;

.field final synthetic val$windowType:I


# direct methods
.method constructor <init>(Lhuawei/com/android/internal/policy/PressGestureDetector;I)V
    .locals 0
    .param p1, "this$0"    # Lhuawei/com/android/internal/policy/PressGestureDetector;

    .line 118
    iput-object p1, p0, Lhuawei/com/android/internal/policy/PressGestureDetector$1;->this$0:Lhuawei/com/android/internal/policy/PressGestureDetector;

    iput p2, p0, Lhuawei/com/android/internal/policy/PressGestureDetector$1;->val$windowType:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 121
    iget-object v0, p0, Lhuawei/com/android/internal/policy/PressGestureDetector$1;->this$0:Lhuawei/com/android/internal/policy/PressGestureDetector;

    iget-object v1, p0, Lhuawei/com/android/internal/policy/PressGestureDetector$1;->this$0:Lhuawei/com/android/internal/policy/PressGestureDetector;

    invoke-static {v1}, Lhuawei/com/android/internal/policy/PressGestureDetector;->access$100(Lhuawei/com/android/internal/policy/PressGestureDetector;)Lhuawei/com/android/internal/policy/HiTouchSensor;

    move-result-object v1

    iget v2, p0, Lhuawei/com/android/internal/policy/PressGestureDetector$1;->val$windowType:I

    invoke-virtual {v1, v2}, Lhuawei/com/android/internal/policy/HiTouchSensor;->isUnsupportScence(I)Z

    move-result v1

    invoke-static {v0, v1}, Lhuawei/com/android/internal/policy/PressGestureDetector;->access$002(Lhuawei/com/android/internal/policy/PressGestureDetector;Z)Z

    .line 122
    const-string v0, "HiTouch_PressGestureDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAttached, package="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lhuawei/com/android/internal/policy/PressGestureDetector$1;->this$0:Lhuawei/com/android/internal/policy/PressGestureDetector;

    invoke-static {v2}, Lhuawei/com/android/internal/policy/PressGestureDetector;->access$200(Lhuawei/com/android/internal/policy/PressGestureDetector;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", windowType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lhuawei/com/android/internal/policy/PressGestureDetector$1;->val$windowType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mHiTouchRestricted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lhuawei/com/android/internal/policy/PressGestureDetector$1;->this$0:Lhuawei/com/android/internal/policy/PressGestureDetector;

    .line 123
    invoke-static {v2}, Lhuawei/com/android/internal/policy/PressGestureDetector;->access$000(Lhuawei/com/android/internal/policy/PressGestureDetector;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 122
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    return-void
.end method
