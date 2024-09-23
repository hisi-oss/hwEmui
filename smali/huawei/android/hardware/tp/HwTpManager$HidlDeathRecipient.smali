.class final Lhuawei/android/hardware/tp/HwTpManager$HidlDeathRecipient;
.super Ljava/lang/Object;
.source "HwTpManager.java"

# interfaces
.implements Landroid/os/IHwBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhuawei/android/hardware/tp/HwTpManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "HidlDeathRecipient"
.end annotation


# instance fields
.field final synthetic this$0:Lhuawei/android/hardware/tp/HwTpManager;


# direct methods
.method constructor <init>(Lhuawei/android/hardware/tp/HwTpManager;)V
    .locals 0
    .param p1, "this$0"    # Lhuawei/android/hardware/tp/HwTpManager;

    .line 148
    iput-object p1, p0, Lhuawei/android/hardware/tp/HwTpManager$HidlDeathRecipient;->this$0:Lhuawei/android/hardware/tp/HwTpManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public serviceDied(J)V
    .locals 3
    .param p1, "cookie"    # J

    .line 151
    const-string v0, "HwTpManager"

    const-string v1, "TP service has died"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v0, p0, Lhuawei/android/hardware/tp/HwTpManager$HidlDeathRecipient;->this$0:Lhuawei/android/hardware/tp/HwTpManager;

    invoke-static {v0}, Lhuawei/android/hardware/tp/HwTpManager;->access$200(Lhuawei/android/hardware/tp/HwTpManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 153
    :try_start_0
    iget-object v1, p0, Lhuawei/android/hardware/tp/HwTpManager$HidlDeathRecipient;->this$0:Lhuawei/android/hardware/tp/HwTpManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lhuawei/android/hardware/tp/HwTpManager;->access$302(Lhuawei/android/hardware/tp/HwTpManager;Z)Z

    .line 154
    iget-object v1, p0, Lhuawei/android/hardware/tp/HwTpManager$HidlDeathRecipient;->this$0:Lhuawei/android/hardware/tp/HwTpManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lhuawei/android/hardware/tp/HwTpManager;->access$402(Lhuawei/android/hardware/tp/HwTpManager;Lvendor/huawei/hardware/tp/V1_0/ITouchscreen;)Lvendor/huawei/hardware/tp/V1_0/ITouchscreen;

    .line 155
    monitor-exit v0

    .line 156
    return-void

    .line 155
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
