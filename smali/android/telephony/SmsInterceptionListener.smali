.class public Landroid/telephony/SmsInterceptionListener;
.super Ljava/lang/Object;
.source "SmsInterceptionListener.java"


# instance fields
.field callback:Lcom/android/internal/telephony/ISmsInterceptionListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Landroid/telephony/SmsInterceptionListener$1;

    invoke-direct {v0, p0}, Landroid/telephony/SmsInterceptionListener$1;-><init>(Landroid/telephony/SmsInterceptionListener;)V

    iput-object v0, p0, Landroid/telephony/SmsInterceptionListener;->callback:Lcom/android/internal/telephony/ISmsInterceptionListener;

    return-void
.end method


# virtual methods
.method public handleSmsDeliverAction(Landroid/os/Bundle;)I
    .locals 1
    .param p1, "smsInfo"    # Landroid/os/Bundle;

    .line 24
    const/4 v0, 0x0

    return v0
.end method

.method public handleWapPushDeliverAction(Landroid/os/Bundle;)I
    .locals 1
    .param p1, "wapPushInfo"    # Landroid/os/Bundle;

    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public sendNumberBlockedRecord(Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "smsInfo"    # Landroid/os/Bundle;

    .line 42
    const/4 v0, 0x0

    return v0
.end method
