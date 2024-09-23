.class public Lcom/android/internal/telephony/HwBaseInnerSmsManagerImpl;
.super Ljava/lang/Object;
.source "HwBaseInnerSmsManagerImpl.java"

# interfaces
.implements Lcom/android/internal/telephony/HwBaseInnerSmsManager;


# static fields
.field public static final CONFIG_ALLOW_ENABLING_WAP_PUSH_SI:Ljava/lang/String; = "allowEnablingWapPushSI"

.field public static final CONFIG_ENABLE_WAP_PUSH_SI:Ljava/lang/String; = "enableWapPushSI"

.field public static final CONFIG_GROUP_CHAT_DEFAULT_TO_MMS:Ljava/lang/String; = "groupChatDefaultsToMMS"

.field public static final CONFIG_SMS_DELIVERY_REPORT_SETTING:Ljava/lang/String; = "smsDeliveryReportSettingOnByDefault"

.field public static final CONFIG_SMS_USES_SIMPLE_CHARACTERS_ONLY:Ljava/lang/String; = "smsUsesSimpleCharactersOnly"

.field public static final CONFIG_USE_CUSTOM_USER_AGENT:Ljava/lang/String; = "useCustomUserAgent"

.field private static final CONTACT_PACKAGE_NAME:Ljava/lang/String; = "com.android.contacts"

.field private static final LOG_TAG:Ljava/lang/String; = "HwBaseInnerSmsManagerImpl"

.field private static final MMS_ACTIVITY_NAME:Ljava/lang/String; = "com.android.mms.ui.ComposeMessageActivity"

.field private static final MMS_PACKAGE_NAME:Ljava/lang/String; = "com.android.mms"

.field public static final SMS_GW_VP_ABSOLUTE_FORMAT:I = 0x18

.field public static final SMS_GW_VP_ENHANCED_FORMAT:I = 0x8

.field public static final SMS_GW_VP_RELATIVE_FORMAT:I = 0x10

.field private static gsmSmsMessageUtils:Lcom/android/internal/telephony/gsm/SmsMessageUtils;

.field private static final isAllowedCsFw:Z

.field private static mInstance:Lcom/android/internal/telephony/HwBaseInnerSmsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 59
    new-instance v0, Lcom/android/internal/telephony/gsm/SmsMessageUtils;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/SmsMessageUtils;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/HwBaseInnerSmsManagerImpl;->gsmSmsMessageUtils:Lcom/android/internal/telephony/gsm/SmsMessageUtils;

    .line 65
    new-instance v0, Lcom/android/internal/telephony/HwBaseInnerSmsManagerImpl;

    invoke-direct {v0}, Lcom/android/internal/telephony/HwBaseInnerSmsManagerImpl;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/HwBaseInnerSmsManagerImpl;->mInstance:Lcom/android/internal/telephony/HwBaseInnerSmsManager;

    .line 68
    const-string v0, "ro.config.hw_bastet_csfw"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/HwBaseInnerSmsManagerImpl;->isAllowedCsFw:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefault()Lcom/android/internal/telephony/HwBaseInnerSmsManager;
    .locals 1

    .line 72
    sget-object v0, Lcom/android/internal/telephony/HwBaseInnerSmsManagerImpl;->mInstance:Lcom/android/internal/telephony/HwBaseInnerSmsManager;

    return-object v0
.end method

.method private static getHwMmsPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 94
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 95
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.contacts"

    const-string v2, "com.android.mms.ui.ComposeMessageActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-nez v1, :cond_0

    .line 97
    const-string v1, "com.android.mms"

    return-object v1

    .line 99
    :cond_0
    const-string v1, "com.android.contacts"

    return-object v1
.end method

.method private getValidityPeriod(I)I
    .locals 3
    .param p1, "firstByte"    # I

    .line 161
    and-int/lit8 v0, p1, 0x18

    .line 162
    .local v0, "ValidityPeriod":I
    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    const/16 v1, 0x18

    if-eq v0, v1, :cond_1

    .line 173
    const-string v1, "PduParser"

    const-string v2, "unsupported validity format."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const/4 v1, 0x0

    return v1

    .line 164
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 169
    :cond_1
    const/4 v1, 0x7

    return v1
.end method


# virtual methods
.method public allowToSetSmsWritePermission(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 107
    const-string v0, "com.android.contacts"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.android.mms"

    .line 108
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 112
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 109
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public checkSmsBlacklistFlag(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;)Z
    .locals 6
    .param p1, "p"    # Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;

    .line 303
    const/4 v0, 0x0

    .line 305
    .local v0, "blacklistFlag":Z
    sget-boolean v1, Lcom/android/internal/telephony/HwBaseInnerSmsManagerImpl;->isAllowedCsFw:Z

    if-eqz v1, :cond_0

    .line 307
    iget-object v1, p1, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    iget v2, p1, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    aget-byte v1, v1, v2

    const/16 v2, 0xff

    and-int/2addr v1, v2

    .line 308
    .local v1, "firstByteValue":I
    const-string v3, "HwBaseInnerSmsManagerImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parsePdu FirstByteValue: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    if-ne v2, v1, :cond_0

    .line 310
    iget v2, p1, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p1, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    .line 311
    const/4 v0, 0x1

    .line 312
    const-string v2, "HwBaseInnerSmsManagerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parsePdu blacklistFlag: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "p.mCur: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    .end local v1    # "firstByteValue":I
    :cond_0
    return v0
.end method

.method public doubleSmsStatusCheck(Lcom/android/internal/telephony/cdma/SmsMessage;)V
    .locals 0
    .param p1, "msg"    # Lcom/android/internal/telephony/cdma/SmsMessage;

    .line 210
    invoke-static {p1}, Lcom/android/internal/telephony/cdma/HwSmsMessage;->doubleSmsStatusCheck(Lcom/android/internal/telephony/cdma/SmsMessage;)V

    .line 211
    return-void
.end method

.method public encode7bitMultiSms(Lcom/android/internal/telephony/cdma/sms/UserData;[BZ)Z
    .locals 1
    .param p1, "uData"    # Lcom/android/internal/telephony/cdma/sms/UserData;
    .param p2, "udhData"    # [B
    .param p3, "force"    # Z

    .line 196
    invoke-static {p1, p2, p3}, Lcom/android/internal/telephony/cdma/sms/HwBearerData;->encode7bitMultiSms(Lcom/android/internal/telephony/cdma/sms/UserData;[BZ)Z

    move-result v0

    return v0
.end method

.method public encodeMsgCenterTimeStampCheck(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 0
    .param p1, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p2, "outStream"    # Lcom/android/internal/util/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .line 204
    invoke-static {p1, p2}, Lcom/android/internal/telephony/cdma/sms/HwBearerData;->encodeMsgCenterTimeStampCheck(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 206
    return-void
.end method

.method public fragmentForEmptyText()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 222
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 223
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    return-object v0
.end method

.method public getCdmaSub()I
    .locals 1

    .line 216
    invoke-static {}, Lcom/android/internal/telephony/cdma/HwSmsMessage;->getCdmaSub()I

    move-result v0

    return v0
.end method

.method public getNewbyte()[B
    .locals 2

    .line 231
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 232
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    .line 233
    const/16 v0, 0xfe

    new-array v0, v0, [B

    return-object v0

    .line 237
    :cond_0
    const/16 v0, 0xaf

    new-array v0, v0, [B

    return-object v0
.end method

.method public getUserDataGSM8Bit(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)Ljava/lang/String;
    .locals 1
    .param p1, "p"    # Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;
    .param p2, "septetCount"    # I

    .line 182
    invoke-static {p1, p2}, Lcom/android/internal/telephony/gsm/HwSmsMessage;->getUserDataGSM8Bit(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public parseForQcom(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .locals 6
    .param p1, "address"    # Ljava/lang/String;

    .line 321
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;-><init>()V

    .line 322
    .local v0, "addr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    iput-object p1, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->address:Ljava/lang/String;

    .line 323
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    .line 324
    iput v1, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    .line 325
    iput v1, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    .line 326
    iput v1, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    .line 327
    const/4 v2, 0x0

    .line 329
    .local v2, "origBytes":[B
    const/16 v3, 0x2b

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-eq v3, v4, :cond_0

    .line 331
    iput v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    .line 332
    iput v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    .line 333
    iput v1, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    .line 334
    iput v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    .line 336
    :cond_0
    const/16 v1, 0x40

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v4, :cond_1

    .line 338
    iput v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    .line 339
    const/4 v1, 0x2

    iput v1, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    .line 340
    iput v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    .line 344
    :cond_1
    invoke-static {p1}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->filterNumericSugarHw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 345
    .local v1, "filteredAddr":Ljava/lang/String;
    iget v3, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    if-nez v3, :cond_3

    .line 346
    if-eqz v1, :cond_2

    .line 347
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parseToDtmf(Ljava/lang/String;)[B

    move-result-object v2

    .line 349
    :cond_2
    if-nez v2, :cond_3

    .line 351
    iput v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    .line 355
    :cond_3
    iget v3, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    if-ne v3, v5, :cond_5

    .line 356
    if-nez v1, :cond_4

    .line 357
    invoke-static {p1}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->filterWhitespaceHw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 359
    :cond_4
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/sms/UserData;->stringToAscii(Ljava/lang/String;)[B

    move-result-object v2

    .line 360
    if-nez v2, :cond_5

    .line 361
    const/4 v3, 0x0

    return-object v3

    .line 364
    :cond_5
    if-eqz v2, :cond_6

    .line 365
    iput-object v2, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    .line 366
    array-length v3, v2

    iput v3, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    .line 368
    :cond_6
    return-object v0
.end method

.method public parseGsmSmsSubmit(Lcom/android/internal/telephony/gsm/SmsMessage;ILjava/lang/Object;I)Z
    .locals 5
    .param p1, "smsMessage"    # Lcom/android/internal/telephony/gsm/SmsMessage;
    .param p2, "mti"    # I
    .param p3, "parcel"    # Ljava/lang/Object;
    .param p4, "firstByte"    # I

    .line 118
    move-object v0, p3

    check-cast v0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;

    .line 120
    .local v0, "p":Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v2, p2, :cond_0

    return v1

    .line 123
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    .line 127
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getAddress()Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/android/internal/telephony/SmsMessageBaseUtils;->setOriginatingAddress(Lcom/android/internal/telephony/SmsMessageBase;Lcom/android/internal/telephony/SmsAddress;)V

    .line 131
    sget-object v3, Lcom/android/internal/telephony/HwBaseInnerSmsManagerImpl;->gsmSmsMessageUtils:Lcom/android/internal/telephony/gsm/SmsMessageUtils;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v4

    invoke-virtual {v3, p1, v4}, Lcom/android/internal/telephony/gsm/SmsMessageUtils;->setProtocolIdentifier(Lcom/android/internal/telephony/gsm/SmsMessage;I)V

    .line 135
    sget-object v3, Lcom/android/internal/telephony/HwBaseInnerSmsManagerImpl;->gsmSmsMessageUtils:Lcom/android/internal/telephony/gsm/SmsMessageUtils;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v4

    invoke-virtual {v3, p1, v4}, Lcom/android/internal/telephony/gsm/SmsMessageUtils;->setDataCodingScheme(Lcom/android/internal/telephony/gsm/SmsMessage;I)V

    .line 138
    iget v3, v0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    invoke-direct {p0, p4}, Lcom/android/internal/telephony/HwBaseInnerSmsManagerImpl;->getValidityPeriod(I)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    .line 140
    and-int/lit8 v3, p4, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_1

    move v1, v2

    nop

    .line 142
    .local v1, "hasUserDataHeader":Z
    :cond_1
    sget-object v3, Lcom/android/internal/telephony/HwBaseInnerSmsManagerImpl;->gsmSmsMessageUtils:Lcom/android/internal/telephony/gsm/SmsMessageUtils;

    invoke-virtual {v3, p1, v0, v1}, Lcom/android/internal/telephony/gsm/SmsMessageUtils;->parseUserData(Lcom/android/internal/telephony/gsm/SmsMessage;Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;Z)V

    .line 145
    return v2
.end method

.method public parseRUIMPdu(Lcom/android/internal/telephony/cdma/SmsMessage;[B)V
    .locals 0
    .param p1, "msg"    # Lcom/android/internal/telephony/cdma/SmsMessage;
    .param p2, "pdu"    # [B

    .line 188
    invoke-static {p1, p2}, Lcom/android/internal/telephony/cdma/HwSmsMessage;->parseRUIMPdu(Lcom/android/internal/telephony/cdma/SmsMessage;[B)V

    .line 190
    return-void
.end method

.method public putExtraDataToConfig(Landroid/os/BaseBundle;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "config"    # Landroid/os/BaseBundle;
    .param p2, "filtered"    # Landroid/os/Bundle;

    .line 273
    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 278
    :cond_0
    const-string v0, "smsUsesSimpleCharactersOnly"

    const-string v1, "smsUsesSimpleCharactersOnly"

    .line 279
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 278
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 282
    const-string v0, "groupChatDefaultsToMMS"

    const-string v1, "groupChatDefaultsToMMS"

    .line 283
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 282
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 286
    const-string v0, "useCustomUserAgent"

    const-string v1, "useCustomUserAgent"

    .line 287
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 286
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 290
    const-string v0, "smsDeliveryReportSettingOnByDefault"

    const-string v1, "smsDeliveryReportSettingOnByDefault"

    .line 291
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 290
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 294
    const-string v0, "enableWapPushSI"

    const-string v1, "enableWapPushSI"

    .line 295
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 294
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 296
    const-string v0, "allowEnablingWapPushSI"

    const-string v1, "allowEnablingWapPushSI"

    .line 297
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 296
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 299
    return-void

    .line 274
    :cond_1
    :goto_0
    const-string v0, "HwBaseInnerSmsManagerImpl"

    const-string v1, "putExtraDataToConfig config or filter is null, return."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    return-void
.end method

.method public shouldSetDefaultApplicationForPackage(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .line 80
    invoke-static {p2}, Lcom/android/internal/telephony/HwBaseInnerSmsManagerImpl;->getHwMmsPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "hwMmsPackageName":Ljava/lang/String;
    const-string v1, "HwBaseInnerSmsManagerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current packageName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", hwMmsPackageName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const-string v1, "ro.config.hw_privacymode"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 84
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "privacy_mode_on"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v3, v1, :cond_0

    .line 85
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "privacy_mode_state"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v3, v1, :cond_0

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 87
    return v2

    .line 89
    :cond_0
    return v3
.end method
