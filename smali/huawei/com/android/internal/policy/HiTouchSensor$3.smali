.class Lhuawei/com/android/internal/policy/HiTouchSensor$3;
.super Ljava/lang/Object;
.source "HiTouchSensor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhuawei/com/android/internal/policy/HiTouchSensor;->processTonySlide(Ljava/lang/String;ILandroid/content/Intent;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lhuawei/com/android/internal/policy/HiTouchSensor;

.field final synthetic val$voiceIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lhuawei/com/android/internal/policy/HiTouchSensor;Landroid/content/Intent;)V
    .locals 0
    .param p1, "this$0"    # Lhuawei/com/android/internal/policy/HiTouchSensor;

    .line 455
    iput-object p1, p0, Lhuawei/com/android/internal/policy/HiTouchSensor$3;->this$0:Lhuawei/com/android/internal/policy/HiTouchSensor;

    iput-object p2, p0, Lhuawei/com/android/internal/policy/HiTouchSensor$3;->val$voiceIntent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 457
    iget-object v0, p0, Lhuawei/com/android/internal/policy/HiTouchSensor$3;->this$0:Lhuawei/com/android/internal/policy/HiTouchSensor;

    invoke-static {v0}, Lhuawei/com/android/internal/policy/HiTouchSensor;->access$200(Lhuawei/com/android/internal/policy/HiTouchSensor;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lhuawei/com/android/internal/policy/HiTouchSensor$3;->val$voiceIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 458
    return-void
.end method
