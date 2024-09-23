.class Lhuawei/com/android/internal/policy/HiTouchSensor$2;
.super Landroid/database/ContentObserver;
.source "HiTouchSensor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhuawei/com/android/internal/policy/HiTouchSensor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lhuawei/com/android/internal/policy/HiTouchSensor;


# direct methods
.method constructor <init>(Lhuawei/com/android/internal/policy/HiTouchSensor;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lhuawei/com/android/internal/policy/HiTouchSensor;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 248
    iput-object p1, p0, Lhuawei/com/android/internal/policy/HiTouchSensor$2;->this$0:Lhuawei/com/android/internal/policy/HiTouchSensor;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z
    .annotation build Ljava/lang/annotation/RCUnownedThisRef;
    .end annotation

    .line 252
    iget-object v0, p0, Lhuawei/com/android/internal/policy/HiTouchSensor$2;->this$0:Lhuawei/com/android/internal/policy/HiTouchSensor;

    invoke-static {v0}, Lhuawei/com/android/internal/policy/HiTouchSensor;->access$100(Lhuawei/com/android/internal/policy/HiTouchSensor;)V

    .line 253
    return-void
.end method
