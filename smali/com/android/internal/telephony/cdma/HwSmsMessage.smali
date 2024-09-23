.class public Lcom/android/internal/telephony/cdma/HwSmsMessage;
.super Ljava/lang/Object;
.source "HwSmsMessage.java"


# static fields
.field private static final BEARER_DATA:B = 0x8t

.field private static final BEARER_REPLY_OPTION:B = 0x6t

.field private static final CAUSE_CODES:B = 0x7t

.field private static final DELIVERY_ACK_SUCCESS:[B

.field private static final DELIVERY_ACK_SUCCESS_EN:Ljava/lang/String; = "succ"

.field private static final DESTINATION_ADDRESS:B = 0x4t

.field private static final DESTINATION_SUB_ADDRESS:B = 0x5t

.field private static final LOGGABLE_TAG:Ljava/lang/String; = "CDMA:SMS"

.field static final LOG_TAG:Ljava/lang/String; = "SmsMessage"

.field private static final ORIGINATING_ADDRESS:B = 0x2t

.field private static final ORIGINATING_SUB_ADDRESS:B = 0x3t

.field private static PLUS_TRANFER_IN_AP:Z = false

.field private static final SERVICE_CATEGORY:B = 0x1t

.field private static final TELESERVICE_IDENTIFIER:B = 0x0t

.field private static final VDBG:Z = false

.field private static smsMessageUtils:Lcom/android/internal/telephony/cdma/SmsMessageUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 81
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/telephony/cdma/HwSmsMessage;->DELIVERY_ACK_SUCCESS:[B

    .line 88
    nop

    .line 89
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/internal/telephony/HwModemCapability;->isCapabilitySupport(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/android/internal/telephony/cdma/HwSmsMessage;->PLUS_TRANFER_IN_AP:Z

    .line 91
    const-class v0, Lcom/android/internal/telephony/cdma/SmsMessageUtils;

    invoke-static {v0}, Lcom/huawei/utils/reflect/EasyInvokeFactory;->getInvokeUtils(Ljava/lang/Class;)Lcom/huawei/utils/reflect/EasyInvokeUtils;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/SmsMessageUtils;

    sput-object v0, Lcom/android/internal/telephony/cdma/HwSmsMessage;->smsMessageUtils:Lcom/android/internal/telephony/cdma/SmsMessageUtils;

    return-void

    nop

    :array_0
    .array-data 1
        0x62t
        0x10t
        0x52t
        -0x61t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static convertionDTMFDigits(Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;I)V
    .locals 5
    .param p0, "addr"    # Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .param p1, "length"    # I

    .line 477
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 478
    .local v0, "strBuf":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    if-ge v1, p1, :cond_4

    .line 479
    const/16 v2, 0xf

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    aget-byte v3, v3, v1

    and-int/2addr v2, v3

    .line 480
    .local v2, "val":I
    const/16 v3, 0xa

    const/4 v4, 0x1

    if-lt v2, v4, :cond_0

    const/16 v4, 0x9

    if-gt v2, v4, :cond_0

    .line 481
    invoke-static {v2, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 482
    :cond_0
    if-ne v3, v2, :cond_1

    .line 483
    const/16 v3, 0x30

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 484
    :cond_1
    const/16 v3, 0xb

    if-ne v3, v2, :cond_2

    .line 485
    const/16 v3, 0x2a

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 486
    :cond_2
    const/16 v3, 0xc

    if-ne v3, v2, :cond_3

    .line 487
    const/16 v3, 0x23

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 489
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    .line 478
    .end local v2    # "val":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 491
    .end local v1    # "j":I
    :cond_4
    return-void
.end method

.method public static doubleSmsStatusCheck(Lcom/android/internal/telephony/cdma/SmsMessage;)V
    .locals 7
    .param p0, "msg"    # Lcom/android/internal/telephony/cdma/SmsMessage;

    .line 527
    if-nez p0, :cond_0

    .line 528
    return-void

    .line 530
    :cond_0
    const-string v0, "SmsMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DELIVERY_ACK message old status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/internal/telephony/cdma/HwSmsMessage;->smsMessageUtils:Lcom/android/internal/telephony/cdma/SmsMessageUtils;

    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/cdma/SmsMessageUtils;->getStatus(Lcom/android/internal/telephony/cdma/SmsMessage;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    const-string v0, "TELECOM"

    const-string v1, "ro.config.operators"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/internal/telephony/cdma/HwSmsMessage;->smsMessageUtils:Lcom/android/internal/telephony/cdma/SmsMessageUtils;

    .line 533
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/SmsMessageUtils;->getStatus(Lcom/android/internal/telephony/cdma/SmsMessage;)I

    move-result v0

    if-eqz v0, :cond_4

    .line 534
    const-string v0, "SmsMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "network is China Telecom,and status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/internal/telephony/cdma/HwSmsMessage;->smsMessageUtils:Lcom/android/internal/telephony/cdma/SmsMessageUtils;

    invoke-virtual {v3, p0}, Lcom/android/internal/telephony/cdma/SmsMessageUtils;->getStatus(Lcom/android/internal/telephony/cdma/SmsMessage;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    const-string v0, ""

    .line 537
    .local v0, "userDataStr":Ljava/lang/String;
    const-string v2, ""

    .line 539
    .local v2, "successStr":Ljava/lang/String;
    :try_start_0
    invoke-static {p0}, Lcom/android/internal/telephony/SmsMessageBaseUtils;->getUserData(Lcom/android/internal/telephony/SmsMessageBase;)[B

    move-result-object v3

    .line 540
    .local v3, "userData":[B
    if-eqz v3, :cond_1

    .line 541
    new-instance v4, Ljava/lang/String;

    const-string v5, "utf-16be"

    invoke-direct {v4, v3, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-object v0, v4

    .line 543
    :cond_1
    new-instance v4, Ljava/lang/String;

    sget-object v5, Lcom/android/internal/telephony/cdma/HwSmsMessage;->DELIVERY_ACK_SUCCESS:[B

    const-string v6, "utf-16be"

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v4

    .line 548
    .end local v3    # "userData":[B
    goto :goto_0

    .line 544
    :catch_0
    move-exception v3

    .line 545
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "SmsMessage"

    const-string v5, "not support charset utf-16be"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_0
    const-string v3, "SmsMessage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "userDataStr = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ";successStr = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    const-string v3, "SmsMessage"

    const-string v4, "mMessageBody"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 559
    invoke-static {p0}, Lcom/android/internal/telephony/SmsMessageBaseUtils;->getMessageBody(Lcom/android/internal/telephony/SmsMessageBase;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 560
    invoke-static {p0}, Lcom/android/internal/telephony/SmsMessageBaseUtils;->getMessageBody(Lcom/android/internal/telephony/SmsMessageBase;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "succ"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 561
    :cond_2
    const-string v3, "SmsMessage"

    const-string v4, "mUserData contains DELIVERY_ACK_SUCCESS, so should set status = 0"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    sget-object v3, Lcom/android/internal/telephony/cdma/HwSmsMessage;->smsMessageUtils:Lcom/android/internal/telephony/cdma/SmsMessageUtils;

    invoke-virtual {v3, p0, v1}, Lcom/android/internal/telephony/cdma/SmsMessageUtils;->setStatus(Lcom/android/internal/telephony/cdma/SmsMessage;I)V

    .line 564
    .end local v0    # "userDataStr":Ljava/lang/String;
    .end local v2    # "successStr":Ljava/lang/String;
    :cond_3
    goto :goto_1

    .line 566
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getStatus()I

    move-result v0

    if-eqz v0, :cond_5

    .line 567
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getStatus()I

    move-result v0

    .line 568
    .local v0, "status":I
    shr-int/lit8 v0, v0, 0x10

    .line 569
    shr-int/lit8 v2, v0, 0x8

    .line 570
    .local v2, "errClass":I
    and-int/lit16 v3, v0, 0xff

    .line 571
    .local v3, "errCause":I
    const-string v4, "SmsMessage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CDMA sms status = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", errClass = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",  errCause = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    if-nez v2, :cond_5

    .line 574
    const/4 v4, 0x3

    if-eq v4, v3, :cond_5

    .line 576
    sget-object v4, Lcom/android/internal/telephony/cdma/HwSmsMessage;->smsMessageUtils:Lcom/android/internal/telephony/cdma/SmsMessageUtils;

    invoke-virtual {v4, p0, v1}, Lcom/android/internal/telephony/cdma/SmsMessageUtils;->setStatus(Lcom/android/internal/telephony/cdma/SmsMessage;I)V

    .line 582
    .end local v0    # "status":I
    .end local v2    # "errClass":I
    .end local v3    # "errCause":I
    :cond_5
    :goto_1
    const-string v0, "SmsMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DELIVERY_ACK message new status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/internal/telephony/cdma/HwSmsMessage;->smsMessageUtils:Lcom/android/internal/telephony/cdma/SmsMessageUtils;

    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/cdma/SmsMessageUtils;->getStatus(Lcom/android/internal/telephony/cdma/SmsMessage;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    return-void
.end method

.method public static getCdmaSub()I
    .locals 6

    .line 590
    invoke-static {}, Landroid/telephony/HwTelephonyManagerInner;->getDefault()Landroid/telephony/HwTelephonyManagerInner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/HwTelephonyManagerInner;->isFullNetworkSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 591
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    .line 592
    .local v0, "phoneCount":I
    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 593
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v3

    aget v3, v3, v1

    .line 594
    .local v3, "cdmaSubId":I
    const/4 v4, 0x2

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType(I)I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 595
    const/4 v4, 0x5

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 596
    const-string v1, "SmsMessage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCdmaSubId find cdma phone subId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    return v3

    .line 592
    .end local v3    # "cdmaSubId":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 602
    .end local v0    # "phoneCount":I
    .end local v2    # "i":I
    :cond_1
    const-string v0, "SmsMessage"

    const-string v2, "use default cdma phone sub 0"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    return v1
.end method

.method public static getSubmitDeliverPdu(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 2
    .param p0, "isSubmitPdu"    # Z
    .param p1, "mcTimeStamp"    # Ljava/lang/String;
    .param p2, "destAddr"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "smsHeader"    # Lcom/android/internal/telephony/SmsHeader;

    .line 113
    if-eqz p3, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 120
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 121
    .local v0, "uData":Lcom/android/internal/telephony/cdma/sms/UserData;
    iput-object p3, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 122
    iput-object p4, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 123
    invoke-static {p0, p2, p1, v0}, Lcom/android/internal/telephony/cdma/HwSmsMessage;->privateGetSubmitDeliverPdu(ZLjava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v1

    return-object v1

    .line 115
    .end local v0    # "uData":Lcom/android/internal/telephony/cdma/sms/UserData;
    :cond_1
    :goto_0
    const-string v0, "CDMA/SmsMessage"

    const-string v1, "empty message or destAddr"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    const/4 v0, 0x0

    return-object v0
.end method

.method protected static parseAddress([BLcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;)V
    .locals 12
    .param p0, "address"    # [B
    .param p1, "addr"    # Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 401
    if-eqz p0, :cond_6

    .line 404
    :try_start_0
    new-instance v0, Lcom/android/internal/util/BitwiseInputStream;

    invoke-direct {v0, p0}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 405
    .local v0, "inStream":Lcom/android/internal/util/BitwiseInputStream;
    invoke-virtual {v0}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v1

    if-lez v1, :cond_5

    .line 406
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v2

    iput v2, p1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    .line 407
    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v2

    iput v2, p1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    .line 408
    const/4 v2, 0x2

    .line 409
    .local v2, "readCount":I
    const/4 v3, 0x0

    .line 411
    .local v3, "digitsSize":I
    iget v4, p1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    const/4 v5, 0x4

    if-ne v1, v4, :cond_0

    .line 412
    const/16 v1, 0x8

    .line 413
    .end local v3    # "digitsSize":I
    .local v1, "digitsSize":I
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    iput v3, p1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    .line 414
    add-int/lit8 v2, v2, 0x3

    .line 416
    iget v3, p1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    if-nez v3, :cond_1

    .line 417
    invoke-virtual {v0, v5}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    iput v3, p1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    .line 418
    add-int/lit8 v2, v2, 0x4

    goto :goto_0

    .line 421
    .end local v1    # "digitsSize":I
    .restart local v3    # "digitsSize":I
    :cond_0
    const/4 v1, 0x4

    .line 424
    .end local v3    # "digitsSize":I
    .restart local v1    # "digitsSize":I
    :cond_1
    :goto_0
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    iput v4, p1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    .line 425
    add-int/2addr v2, v3

    .line 426
    iget v4, p1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    .line 427
    .local v4, "numOfDigits":I
    move v6, v4

    .line 429
    .local v6, "length":I
    const/4 v7, 0x0

    .line 430
    .local v7, "readDigitsOK":Z
    const/4 v8, 0x0

    .line 431
    .local v8, "i":I
    new-array v9, v4, [B

    iput-object v9, p1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    .line 433
    :goto_1
    if-nez v7, :cond_4

    .line 434
    if-gtz v4, :cond_2

    .line 435
    const/4 v7, 0x1

    .line 436
    goto :goto_3

    .line 439
    :cond_2
    const/4 v9, 0x0

    .line 440
    .local v9, "val":I
    if-ne v5, v1, :cond_3

    .line 441
    invoke-virtual {v0, v5}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v10

    move v9, v10

    goto :goto_2

    .line 443
    :cond_3
    invoke-virtual {v0, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v10

    move v9, v10

    .line 446
    :goto_2
    iget-object v10, p1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    int-to-byte v11, v9

    aput-byte v11, v10, v8

    .line 447
    add-int/lit8 v4, v4, -0x1

    .line 448
    add-int/lit8 v8, v8, 0x1

    .line 449
    .end local v9    # "val":I
    goto :goto_1

    .line 452
    :cond_4
    :goto_3
    iget v3, p1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    if-nez v3, :cond_5

    .line 453
    invoke-static {p1, v6}, Lcom/android/internal/telephony/cdma/HwSmsMessage;->convertionDTMFDigits(Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;I)V
    :try_end_0
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 472
    .end local v0    # "inStream":Lcom/android/internal/util/BitwiseInputStream;
    .end local v1    # "digitsSize":I
    .end local v2    # "readCount":I
    .end local v4    # "numOfDigits":I
    .end local v6    # "length":I
    .end local v7    # "readDigitsOK":Z
    .end local v8    # "i":I
    :cond_5
    goto :goto_4

    .line 470
    :catch_0
    move-exception v0

    .line 471
    .local v0, "ex":Lcom/android/internal/util/BitwiseInputStream$AccessException;
    const-string v1, "SmsMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseAddress decode failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    .end local v0    # "ex":Lcom/android/internal/util/BitwiseInputStream$AccessException;
    :cond_6
    :goto_4
    return-void
.end method

.method protected static parseCauseCodes([BLcom/android/internal/telephony/cdma/sms/SmsEnvelope;)V
    .locals 4
    .param p0, "causeCodes"    # [B
    .param p1, "env"    # Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    .line 500
    if-eqz p0, :cond_1

    .line 503
    :try_start_0
    new-instance v0, Lcom/android/internal/util/BitwiseInputStream;

    invoke-direct {v0, p0}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 504
    .local v0, "inStream":Lcom/android/internal/util/BitwiseInputStream;
    invoke-virtual {v0}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v1

    if-lez v1, :cond_0

    .line 505
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v1

    int-to-byte v1, v1

    iput-byte v1, p1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->replySeqNo:B

    .line 506
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v1

    int-to-byte v1, v1

    iput-byte v1, p1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->errorClass:B

    .line 507
    iget-byte v1, p1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->errorClass:B

    if-eqz v1, :cond_0

    .line 508
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v1

    int-to-byte v1, v1

    iput-byte v1, p1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->causeCode:B
    :try_end_0
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "inStream":Lcom/android/internal/util/BitwiseInputStream;
    goto :goto_0

    .line 513
    :catch_0
    move-exception v0

    .line 514
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "SmsMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseCauseCodes: conversion from byte array to object failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "ex":Ljava/lang/Exception;
    goto :goto_1

    .line 511
    :catch_1
    move-exception v0

    .line 512
    .local v0, "ex":Lcom/android/internal/util/BitwiseInputStream$AccessException;
    const-string v1, "SmsMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseCauseCodes decode failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    .end local v0    # "ex":Lcom/android/internal/util/BitwiseInputStream$AccessException;
    :cond_0
    :goto_0
    nop

    .line 517
    :cond_1
    :goto_1
    return-void
.end method

.method public static parseRUIMPdu(Lcom/android/internal/telephony/cdma/SmsMessage;[B)V
    .locals 14
    .param p0, "msg"    # Lcom/android/internal/telephony/cdma/SmsMessage;
    .param p1, "pdu"    # [B

    .line 256
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 257
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 258
    .local v1, "dis":Ljava/io/DataInputStream;
    new-instance v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    invoke-direct {v2}, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;-><init>()V

    .line 259
    .local v2, "env":Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    new-instance v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-direct {v3}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;-><init>()V

    .line 260
    .local v3, "addr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    const/4 v4, 0x0

    .line 261
    .local v4, "readSmsEnvOK":Z
    const/4 v5, 0x0

    new-array v6, v5, [B

    .line 262
    .local v6, "address":[B
    new-array v7, v5, [B

    .line 263
    .local v7, "subAddress":[B
    new-array v8, v5, [B

    .line 264
    .local v8, "causeCodes":[B
    new-array v9, v5, [B

    iput-object v9, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    .line 267
    move v9, v5

    .line 275
    .local v9, "readLenth":I
    :try_start_0
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v10

    iput v10, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    .line 277
    :goto_0
    if-nez v4, :cond_2

    .line 279
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v10

    .line 280
    .local v10, "message_paramID":B
    const/16 v11, 0xff

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v12

    and-int/2addr v11, v12

    .line 282
    .local v11, "message_len":I
    packed-switch v10, :pswitch_data_0

    .end local v10    # "message_paramID":B
    .end local v11    # "message_len":I
    goto/16 :goto_1

    .line 329
    .restart local v10    # "message_paramID":B
    .restart local v11    # "message_len":I
    :pswitch_0
    new-array v12, v11, [B

    iput-object v12, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    .line 331
    iget-object v12, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    invoke-virtual {v1, v12, v5, v11}, Ljava/io/DataInputStream;->read([BII)I

    move-result v12

    move v9, v12

    .line 332
    if-eq v9, v11, :cond_0

    .line 333
    const-string v12, "SmsMessage"

    const-string v13, "DataInputStream read error"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :cond_0
    const/4 v4, 0x1

    .line 337
    goto :goto_1

    .line 319
    :pswitch_1
    new-array v12, v11, [B

    move-object v8, v12

    .line 321
    invoke-virtual {v1, v8, v5, v11}, Ljava/io/DataInputStream;->read([BII)I

    move-result v12

    move v9, v12

    .line 322
    if-eq v9, v11, :cond_1

    .line 323
    const-string v12, "SmsMessage"

    const-string v13, "DataInputStream read error"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 315
    :pswitch_2
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v12

    iput v12, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerReply:I

    .line 316
    goto :goto_1

    .line 305
    :pswitch_3
    new-array v12, v11, [B

    move-object v7, v12

    .line 307
    invoke-virtual {v1, v7, v5, v11}, Ljava/io/DataInputStream;->read([BII)I

    move-result v12

    move v9, v12

    .line 308
    if-eq v9, v11, :cond_1

    .line 309
    const-string v12, "SmsMessage"

    const-string v13, "DataInputStream read error"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 294
    :pswitch_4
    new-array v12, v11, [B

    move-object v6, v12

    .line 296
    invoke-virtual {v1, v6, v5, v11}, Ljava/io/DataInputStream;->read([BII)I

    move-result v12

    move v9, v12

    .line 297
    if-eq v9, v11, :cond_1

    .line 298
    const-string v12, "SmsMessage"

    const-string v13, "DataInputStream read error"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 289
    :pswitch_5
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readShort()S

    move-result v12

    iput v12, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    .line 290
    goto :goto_1

    .line 285
    :pswitch_6
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readShort()S

    move-result v12

    iput v12, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    .line 286
    nop

    .line 342
    .end local v10    # "message_paramID":B
    .end local v11    # "message_len":I
    :cond_1
    :goto_1
    goto :goto_0

    .line 344
    :cond_2
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    goto :goto_2

    .line 345
    :catch_0
    move-exception v10

    .line 346
    .local v10, "ex":Ljava/lang/Exception;
    const-string v11, "SmsMessage"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "createFromPdu: conversion from byte array to object failed: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    .end local v10    # "ex":Ljava/lang/Exception;
    :goto_2
    invoke-static {v6, v3}, Lcom/android/internal/telephony/cdma/HwSmsMessage;->parseAddress([BLcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;)V

    .line 353
    sget-boolean v10, Lcom/android/internal/telephony/cdma/HwSmsMessage;->PLUS_TRANFER_IN_AP:Z

    if-eqz v10, :cond_5

    .line 354
    new-instance v10, Ljava/lang/String;

    iget-object v11, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 355
    .local v10, "number":Ljava/lang/String;
    invoke-static {v10}, Lcom/android/internal/telephony/cdma/HwCustPlusAndIddNddConvertUtils;->replaceIddNddWithPlusForSms(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 356
    iget v11, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_3

    if-eqz v10, :cond_3

    .line 358
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_3

    .line 359
    invoke-virtual {v10, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v11, 0x2b

    if-eq v5, v11, :cond_3

    .line 360
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "+"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 361
    const-string v5, "SmsMessage"

    const-string v11, "HwSmsMessage->parseRUIMPdu ton == SmsAddress.TON_INTERNATIONAL"

    invoke-static {v5, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :cond_3
    if-eqz v10, :cond_4

    .line 365
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    iput-object v5, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    .line 368
    :cond_4
    iget-object v5, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    array-length v5, v5

    iput v5, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    .line 371
    .end local v10    # "number":Ljava/lang/String;
    :cond_5
    invoke-static {v8, v2}, Lcom/android/internal/telephony/cdma/HwSmsMessage;->parseCauseCodes([BLcom/android/internal/telephony/cdma/sms/SmsEnvelope;)V

    .line 374
    invoke-static {p0, v3}, Lcom/android/internal/telephony/SmsMessageBaseUtils;->setOriginatingAddress(Lcom/android/internal/telephony/SmsMessageBase;Lcom/android/internal/telephony/SmsAddress;)V

    .line 375
    iput-object v3, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 376
    sget-object v5, Lcom/android/internal/telephony/cdma/HwSmsMessage;->smsMessageUtils:Lcom/android/internal/telephony/cdma/SmsMessageUtils;

    invoke-virtual {v5, p0, v2}, Lcom/android/internal/telephony/cdma/SmsMessageUtils;->setEnvelope(Lcom/android/internal/telephony/cdma/SmsMessage;Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;)V

    .line 377
    invoke-static {p0, p1}, Lcom/android/internal/telephony/SmsMessageBaseUtils;->setPdu(Lcom/android/internal/telephony/SmsMessageBase;[B)V

    .line 380
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->parseSms()V

    .line 385
    const-string v5, "CDMA:SMS"

    const/4 v10, 0x2

    invoke-static {v5, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 387
    invoke-static {v7}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    .line 392
    :cond_6
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static privateGetSubmitDeliverPdu(ZLjava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 19
    .param p0, "isSubmitPdu"    # Z
    .param p1, "origAddrStr"    # Ljava/lang/String;
    .param p2, "mcTimestamp"    # Ljava/lang/String;
    .param p3, "userData"    # Lcom/android/internal/telephony/cdma/sms/UserData;

    .line 133
    const/4 v0, 0x0

    .line 134
    .local v0, "destAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    sget-boolean v1, Lcom/android/internal/telephony/cdma/HwSmsMessage;->PLUS_TRANFER_IN_AP:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 136
    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->parseAddrForSMSMO(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v0

    .line 137
    if-nez v0, :cond_0

    .line 138
    const-string v1, "SmsMessage"

    const-string v3, "privateGetSubmitDeliverPdu, CdmaSmsAddress parse error."

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    return-object v2

    .line 147
    .end local v0    # "destAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .local v1, "destAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    :cond_0
    :goto_0
    move-object v1, v0

    goto :goto_1

    .line 143
    .end local v1    # "destAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .restart local v0    # "destAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    :cond_1
    nop

    .line 144
    invoke-static/range {p1 .. p1}, Landroid/telephony/PhoneNumberUtils;->cdmaCheckAndProcessPlusCodeForSms(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 143
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parse(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v0

    goto :goto_0

    .line 147
    .end local v0    # "destAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .restart local v1    # "destAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    :goto_1
    if-nez v1, :cond_2

    return-object v2

    .line 149
    :cond_2
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/BearerData;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;-><init>()V

    move-object v3, v0

    .line 151
    .local v3, "bearerData":Lcom/android/internal/telephony/cdma/sms/BearerData;
    invoke-static {}, Lcom/android/internal/telephony/cdma/SmsMessage;->getNextMessageId()I

    move-result v0

    iput v0, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    .line 152
    const/4 v0, 0x0

    iput-boolean v0, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->userAckReq:Z

    .line 153
    iput-boolean v0, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->readAckReq:Z

    .line 154
    iput-boolean v0, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->reportReq:Z

    .line 155
    iput-boolean v0, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->deliveryAckReq:Z

    .line 157
    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz p0, :cond_3

    .line 158
    iput v4, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    .line 159
    iput-boolean v5, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->priorityIndicatorSet:Z

    .line 160
    iput v0, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->priority:I

    goto :goto_2

    .line 163
    :cond_3
    iput v5, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    .line 165
    new-instance v5, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    invoke-direct {v5}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;-><init>()V

    .line 167
    .local v5, "msgTimeStamp":Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;
    invoke-static/range {p2 .. p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->set(J)V

    .line 169
    iput-object v5, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    .line 172
    .end local v5    # "msgTimeStamp":Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;
    :goto_2
    move-object/from16 v5, p3

    iput-object v5, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    .line 174
    invoke-static {v3}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode(Lcom/android/internal/telephony/cdma/sms/BearerData;)[B

    move-result-object v6

    .line 175
    .local v6, "encodedBearerData":[B
    const-string v7, "CDMA:SMS"

    invoke-static {v7, v4}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 176
    const-string v4, "SmsMessage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MO (encoded) BearerData = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    if-eqz v6, :cond_4

    .line 178
    const-string v4, "SmsMessage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MO raw BearerData = \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_4
    if-nez v6, :cond_5

    return-object v2

    .line 184
    :cond_5
    const/16 v4, 0x16b

    .line 185
    .local v4, "outputLen":I
    const/16 v7, 0xff

    .line 186
    .local v7, "paddingDigit":I
    const/4 v8, 0x0

    .line 187
    .local v8, "digitCount":I
    const/4 v9, 0x0

    .line 188
    .local v9, "digitNum":I
    :try_start_0
    new-instance v10, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v10, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 189
    .local v10, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v11, Ljava/io/DataOutputStream;

    invoke-direct {v11, v10}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 191
    .local v11, "dos":Ljava/io/DataOutputStream;
    const/16 v12, 0x1002

    invoke-virtual {v11, v12}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 192
    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->write(I)V

    .line 193
    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 194
    iget v12, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    invoke-virtual {v11, v12}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 195
    iget v12, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    invoke-virtual {v11, v12}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 196
    iget v12, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    invoke-virtual {v11, v12}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 197
    iget v12, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    invoke-virtual {v11, v12}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 198
    iget v12, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    invoke-virtual {v11, v12}, Ljava/io/DataOutputStream;->write(I)V

    .line 200
    iget-object v12, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    iget-object v13, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    array-length v13, v13

    invoke-virtual {v11, v12, v0, v13}, Ljava/io/DataOutputStream;->write([BII)V

    .line 210
    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 211
    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->write(I)V

    .line 212
    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->write(I)V

    .line 218
    array-length v12, v6

    invoke-virtual {v11, v12}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 219
    array-length v12, v6

    invoke-virtual {v11, v6, v0, v12}, Ljava/io/DataOutputStream;->write([BII)V

    .line 230
    invoke-virtual {v11}, Ljava/io/DataOutputStream;->close()V

    .line 232
    new-instance v12, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    invoke-direct {v12}, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;-><init>()V

    .line 233
    .local v12, "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v13

    iput-object v13, v12, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;->encodedMessage:[B

    .line 234
    iget-object v13, v12, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;->encodedMessage:[B

    array-length v14, v13

    :goto_3
    if-ge v0, v14, :cond_6

    aget-byte v15, v13, v0

    move/from16 v16, v15

    .line 236
    .local v16, "content":B
    const-string v2, "SmsMessage"
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v17, v1

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1    # "destAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .local v17, "destAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v18, v3

    :try_start_2
    const-string v3, "pdu is"

    .end local v3    # "bearerData":Lcom/android/internal/telephony/cdma/sms/BearerData;
    .local v18, "bearerData":Lcom/android/internal/telephony/cdma/sms/BearerData;
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, v16

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .end local v16    # "content":B
    .local v3, "content":B
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    .end local v3    # "content":B
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v1, v17

    move-object/from16 v3, v18

    const/4 v2, 0x0

    goto :goto_3

    .line 240
    .end local v4    # "outputLen":I
    .end local v7    # "paddingDigit":I
    .end local v8    # "digitCount":I
    .end local v9    # "digitNum":I
    .end local v10    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v11    # "dos":Ljava/io/DataOutputStream;
    .end local v12    # "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .end local v18    # "bearerData":Lcom/android/internal/telephony/cdma/sms/BearerData;
    .local v3, "bearerData":Lcom/android/internal/telephony/cdma/sms/BearerData;
    :catch_0
    move-exception v0

    move-object/from16 v18, v3

    .end local v3    # "bearerData":Lcom/android/internal/telephony/cdma/sms/BearerData;
    .restart local v18    # "bearerData":Lcom/android/internal/telephony/cdma/sms/BearerData;
    goto :goto_4

    .line 238
    .end local v17    # "destAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .end local v18    # "bearerData":Lcom/android/internal/telephony/cdma/sms/BearerData;
    .restart local v1    # "destAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .restart local v3    # "bearerData":Lcom/android/internal/telephony/cdma/sms/BearerData;
    .restart local v4    # "outputLen":I
    .restart local v7    # "paddingDigit":I
    .restart local v8    # "digitCount":I
    .restart local v9    # "digitNum":I
    .restart local v10    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v11    # "dos":Ljava/io/DataOutputStream;
    .restart local v12    # "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :cond_6
    move-object/from16 v17, v1

    move-object/from16 v18, v3

    .end local v1    # "destAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .end local v3    # "bearerData":Lcom/android/internal/telephony/cdma/sms/BearerData;
    .restart local v17    # "destAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .restart local v18    # "bearerData":Lcom/android/internal/telephony/cdma/sms/BearerData;
    const/4 v1, 0x0

    iput-object v1, v12, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;->encodedScAddress:[B
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 239
    return-object v12

    .line 240
    .end local v4    # "outputLen":I
    .end local v7    # "paddingDigit":I
    .end local v8    # "digitCount":I
    .end local v9    # "digitNum":I
    .end local v10    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v11    # "dos":Ljava/io/DataOutputStream;
    .end local v12    # "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :catch_1
    move-exception v0

    goto :goto_4

    .end local v17    # "destAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .end local v18    # "bearerData":Lcom/android/internal/telephony/cdma/sms/BearerData;
    .restart local v1    # "destAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .restart local v3    # "bearerData":Lcom/android/internal/telephony/cdma/sms/BearerData;
    :catch_2
    move-exception v0

    move-object/from16 v17, v1

    move-object/from16 v18, v3

    .line 241
    .end local v1    # "destAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .end local v3    # "bearerData":Lcom/android/internal/telephony/cdma/sms/BearerData;
    .local v0, "ex":Ljava/io/IOException;
    .restart local v17    # "destAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .restart local v18    # "bearerData":Lcom/android/internal/telephony/cdma/sms/BearerData;
    :goto_4
    const-string v1, "SmsMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "creating SubmitPdu failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    .end local v0    # "ex":Ljava/io/IOException;
    const/4 v1, 0x0

    return-object v1
.end method
