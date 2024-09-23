.class public Landroid/widget/sr/PowerModeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerModeReceiver.java"


# static fields
.field public static final CHANGE_MODE_ACTION:Ljava/lang/String; = "huawei.intent.action.POWER_MODE_CHANGED_ACTION"

.field public static final CHANGE_MODE_STATE:Ljava/lang/String; = "state"

.field public static final NORMAL_DEFAULT_MODE_FLAG:I = 0x2

.field public static final NORMAL_POWER_SAVE_MODE_FLAG:I = 0x1

.field public static final TAG:Ljava/lang/String; = "BroadcastReceiver"


# instance fields
.field private mPowerMode:Landroid/widget/sr/PowerMode;


# direct methods
.method public constructor <init>(Landroid/widget/sr/PowerMode;)V
    .locals 0
    .param p1, "powerMode"    # Landroid/widget/sr/PowerMode;

    .line 23
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 24
    iput-object p1, p0, Landroid/widget/sr/PowerModeReceiver;->mPowerMode:Landroid/widget/sr/PowerMode;

    .line 25
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 29
    if-nez p2, :cond_0

    .line 30
    const-string v0, "BroadcastReceiver"

    const-string v1, "PowerModeReceiver.onReceive [intent == null]"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    return-void

    .line 33
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, "action":Ljava/lang/String;
    const-string v1, "huawei.intent.action.POWER_MODE_CHANGED_ACTION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 35
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 36
    .local v1, "bundle":Landroid/os/Bundle;
    if-nez v1, :cond_1

    .line 37
    const-string v2, "BroadcastReceiver"

    const-string v3, "PowerModeReceiver.onReceive [bundle == null]"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    return-void

    .line 40
    :cond_1
    const-string v2, "state"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 41
    .local v2, "powerValue":I
    iget-object v3, p0, Landroid/widget/sr/PowerModeReceiver;->mPowerMode:Landroid/widget/sr/PowerMode;

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    if-ne v3, v2, :cond_2

    .line 42
    const-string v4, "BroadcastReceiver"

    const-string v5, "Enter PowerSaveMode"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iget-object v4, p0, Landroid/widget/sr/PowerModeReceiver;->mPowerMode:Landroid/widget/sr/PowerMode;

    invoke-virtual {v4, v3}, Landroid/widget/sr/PowerMode;->setNormalPowerSaveMode(Z)V

    goto :goto_0

    .line 44
    :cond_2
    iget-object v3, p0, Landroid/widget/sr/PowerModeReceiver;->mPowerMode:Landroid/widget/sr/PowerMode;

    if-eqz v3, :cond_3

    const/4 v3, 0x2

    if-ne v3, v2, :cond_3

    .line 45
    const-string v3, "BroadcastReceiver"

    const-string v4, "Leave PowerSaveMode"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    iget-object v3, p0, Landroid/widget/sr/PowerModeReceiver;->mPowerMode:Landroid/widget/sr/PowerMode;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/sr/PowerMode;->setNormalPowerSaveMode(Z)V

    .line 49
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "powerValue":I
    :cond_3
    :goto_0
    return-void
.end method
