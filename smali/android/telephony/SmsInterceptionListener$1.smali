.class Landroid/telephony/SmsInterceptionListener$1;
.super Lcom/android/internal/telephony/ISmsInterceptionListener$Stub;
.source "SmsInterceptionListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/SmsInterceptionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/SmsInterceptionListener;


# direct methods
.method constructor <init>(Landroid/telephony/SmsInterceptionListener;)V
    .locals 0
    .param p1, "this$0"    # Landroid/telephony/SmsInterceptionListener;

    .line 49
    iput-object p1, p0, Landroid/telephony/SmsInterceptionListener$1;->this$0:Landroid/telephony/SmsInterceptionListener;

    invoke-direct {p0}, Lcom/android/internal/telephony/ISmsInterceptionListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public handleSmsDeliverActionInner(Landroid/os/Bundle;)I
    .locals 1
    .param p1, "smsInfo"    # Landroid/os/Bundle;

    .line 51
    iget-object v0, p0, Landroid/telephony/SmsInterceptionListener$1;->this$0:Landroid/telephony/SmsInterceptionListener;

    invoke-virtual {v0, p1}, Landroid/telephony/SmsInterceptionListener;->handleSmsDeliverAction(Landroid/os/Bundle;)I

    move-result v0

    return v0
.end method

.method public handleWapPushDeliverActionInner(Landroid/os/Bundle;)I
    .locals 1
    .param p1, "wapPushInfo"    # Landroid/os/Bundle;

    .line 56
    iget-object v0, p0, Landroid/telephony/SmsInterceptionListener$1;->this$0:Landroid/telephony/SmsInterceptionListener;

    invoke-virtual {v0, p1}, Landroid/telephony/SmsInterceptionListener;->handleWapPushDeliverAction(Landroid/os/Bundle;)I

    move-result v0

    return v0
.end method

.method public sendNumberBlockedRecordInner(Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "smsInfo"    # Landroid/os/Bundle;

    .line 60
    iget-object v0, p0, Landroid/telephony/SmsInterceptionListener$1;->this$0:Landroid/telephony/SmsInterceptionListener;

    invoke-virtual {v0, p1}, Landroid/telephony/SmsInterceptionListener;->sendNumberBlockedRecord(Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method
