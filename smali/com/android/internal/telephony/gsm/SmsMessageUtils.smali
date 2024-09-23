.class public Lcom/android/internal/telephony/gsm/SmsMessageUtils;
.super Ljava/lang/Object;
.source "SmsMessageUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parseUserData(Lcom/android/internal/telephony/gsm/SmsMessage;Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;Z)V
    .locals 0
    .param p1, "smsMessage"    # Lcom/android/internal/telephony/gsm/SmsMessage;
    .param p2, "p"    # Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;
    .param p3, "hasUserDataHeader"    # Z

    .line 27
    invoke-virtual {p1, p2, p3}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseUserDataHw(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;Z)V

    .line 28
    return-void
.end method

.method public setDataCodingScheme(Lcom/android/internal/telephony/gsm/SmsMessage;I)V
    .locals 0
    .param p1, "smsMessage"    # Lcom/android/internal/telephony/gsm/SmsMessage;
    .param p2, "value"    # I

    .line 22
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/gsm/SmsMessage;->setDataCodingSchemeHw(I)V

    .line 23
    return-void
.end method

.method public setProtocolIdentifier(Lcom/android/internal/telephony/gsm/SmsMessage;I)V
    .locals 0
    .param p1, "smsMessage"    # Lcom/android/internal/telephony/gsm/SmsMessage;
    .param p2, "value"    # I

    .line 17
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/gsm/SmsMessage;->setProtocolIdentifierHw(I)V

    .line 18
    return-void
.end method
