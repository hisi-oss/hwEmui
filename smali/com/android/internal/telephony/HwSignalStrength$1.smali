.class Lcom/android/internal/telephony/HwSignalStrength$1;
.super Landroid/content/BroadcastReceiver;
.source "HwSignalStrength.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/HwSignalStrength;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/HwSignalStrength;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/HwSignalStrength;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/HwSignalStrength;

    .line 804
    iput-object p1, p0, Lcom/android/internal/telephony/HwSignalStrength$1;->this$0:Lcom/android/internal/telephony/HwSignalStrength;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 807
    const-string v0, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 808
    const-string v0, "phone"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 809
    .local v0, "phoneId":I
    iget-object v1, p0, Lcom/android/internal/telephony/HwSignalStrength$1;->this$0:Lcom/android/internal/telephony/HwSignalStrength;

    invoke-static {v1}, Lcom/android/internal/telephony/HwSignalStrength;->access$300(Lcom/android/internal/telephony/HwSignalStrength;)I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 810
    const-string v1, "HwSignalStrength"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACTION_CARRIER_CONFIG_CHANGED  phoneId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    iget-object v1, p0, Lcom/android/internal/telephony/HwSignalStrength$1;->this$0:Lcom/android/internal/telephony/HwSignalStrength;

    invoke-static {v1}, Lcom/android/internal/telephony/HwSignalStrength;->access$400(Lcom/android/internal/telephony/HwSignalStrength;)V

    .line 813
    :cond_0
    return-void

    .line 815
    .end local v0    # "phoneId":I
    :cond_1
    return-void
.end method
