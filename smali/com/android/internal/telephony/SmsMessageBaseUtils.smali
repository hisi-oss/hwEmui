.class public Lcom/android/internal/telephony/SmsMessageBaseUtils;
.super Ljava/lang/Object;
.source "SmsMessageBaseUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMessageBody(Lcom/android/internal/telephony/SmsMessageBase;)Ljava/lang/String;
    .locals 1
    .param p0, "smb"    # Lcom/android/internal/telephony/SmsMessageBase;

    .line 7
    if-eqz p0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mMessageBody:Ljava/lang/String;

    return-object v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getUserData(Lcom/android/internal/telephony/SmsMessageBase;)[B
    .locals 1
    .param p0, "smb"    # Lcom/android/internal/telephony/SmsMessageBase;

    .line 26
    if-eqz p0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mUserData:[B

    return-object v0

    .line 29
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static setOriginatingAddress(Lcom/android/internal/telephony/SmsMessageBase;Lcom/android/internal/telephony/SmsAddress;)V
    .locals 0
    .param p0, "smb"    # Lcom/android/internal/telephony/SmsMessageBase;
    .param p1, "smsOriginatingAddress"    # Lcom/android/internal/telephony/SmsAddress;

    .line 14
    if-eqz p0, :cond_0

    .line 15
    iput-object p1, p0, Lcom/android/internal/telephony/SmsMessageBase;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    .line 17
    :cond_0
    return-void
.end method

.method public static setPdu(Lcom/android/internal/telephony/SmsMessageBase;[B)V
    .locals 0
    .param p0, "smb"    # Lcom/android/internal/telephony/SmsMessageBase;
    .param p1, "pdu"    # [B

    .line 20
    if-eqz p0, :cond_0

    .line 21
    iput-object p1, p0, Lcom/android/internal/telephony/SmsMessageBase;->mPdu:[B

    .line 23
    :cond_0
    return-void
.end method
