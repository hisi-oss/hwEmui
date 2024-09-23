.class Lhuawei/com/android/internal/policy/PressGestureDetector$2;
.super Ljava/lang/Object;
.source "PressGestureDetector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhuawei/com/android/internal/policy/PressGestureDetector;->startCountingTime()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lhuawei/com/android/internal/policy/PressGestureDetector;


# direct methods
.method constructor <init>(Lhuawei/com/android/internal/policy/PressGestureDetector;)V
    .locals 0
    .param p1, "this$0"    # Lhuawei/com/android/internal/policy/PressGestureDetector;

    .line 360
    iput-object p1, p0, Lhuawei/com/android/internal/policy/PressGestureDetector$2;->this$0:Lhuawei/com/android/internal/policy/PressGestureDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 363
    iget-object v0, p0, Lhuawei/com/android/internal/policy/PressGestureDetector$2;->this$0:Lhuawei/com/android/internal/policy/PressGestureDetector;

    iget-object v1, p0, Lhuawei/com/android/internal/policy/PressGestureDetector$2;->this$0:Lhuawei/com/android/internal/policy/PressGestureDetector;

    invoke-static {v1}, Lhuawei/com/android/internal/policy/PressGestureDetector;->access$300(Lhuawei/com/android/internal/policy/PressGestureDetector;)F

    move-result v1

    iget-object v2, p0, Lhuawei/com/android/internal/policy/PressGestureDetector$2;->this$0:Lhuawei/com/android/internal/policy/PressGestureDetector;

    invoke-static {v2}, Lhuawei/com/android/internal/policy/PressGestureDetector;->access$400(Lhuawei/com/android/internal/policy/PressGestureDetector;)F

    move-result v2

    iget-object v3, p0, Lhuawei/com/android/internal/policy/PressGestureDetector$2;->this$0:Lhuawei/com/android/internal/policy/PressGestureDetector;

    invoke-static {v3}, Lhuawei/com/android/internal/policy/PressGestureDetector;->access$500(Lhuawei/com/android/internal/policy/PressGestureDetector;)F

    move-result v3

    iget-object v4, p0, Lhuawei/com/android/internal/policy/PressGestureDetector$2;->this$0:Lhuawei/com/android/internal/policy/PressGestureDetector;

    invoke-static {v4}, Lhuawei/com/android/internal/policy/PressGestureDetector;->access$600(Lhuawei/com/android/internal/policy/PressGestureDetector;)F

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Lhuawei/com/android/internal/policy/PressGestureDetector;->access$700(Lhuawei/com/android/internal/policy/PressGestureDetector;FFFF)Z

    .line 364
    return-void
.end method
