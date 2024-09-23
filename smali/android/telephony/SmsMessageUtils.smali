.class public Landroid/telephony/SmsMessageUtils;
.super Ljava/lang/Object;
.source "SmsMessageUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isCdmaVoice(I)Z
    .locals 1
    .param p0, "subscription"    # I

    .line 17
    invoke-static {p0}, Landroid/telephony/SmsMessage;->isCdmaVoiceHw(I)Z

    move-result v0

    return v0
.end method

.method public static useCdmaFormatForMoSms(I)Z
    .locals 1
    .param p0, "subscription"    # I

    .line 14
    invoke-static {p0}, Landroid/telephony/SmsMessage;->useCdmaFormatForMoSmsHw(I)Z

    move-result v0

    return v0
.end method
