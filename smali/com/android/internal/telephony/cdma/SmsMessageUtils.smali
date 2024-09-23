.class public Lcom/android/internal/telephony/cdma/SmsMessageUtils;
.super Lcom/huawei/utils/reflect/EasyInvokeUtils;
.source "SmsMessageUtils.java"


# instance fields
.field mEnvelope:Lcom/huawei/utils/reflect/FieldObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/huawei/utils/reflect/FieldObject<",
            "Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;",
            ">;"
        }
    .end annotation
.end field

.field status:Lcom/huawei/utils/reflect/FieldObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/huawei/utils/reflect/FieldObject<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/huawei/utils/reflect/EasyInvokeUtils;-><init>()V

    return-void
.end method


# virtual methods
.method public getStatus(Lcom/android/internal/telephony/cdma/SmsMessage;)I
    .locals 1
    .param p1, "smsMessage"    # Lcom/android/internal/telephony/cdma/SmsMessage;
    .annotation runtime Lcom/huawei/utils/reflect/annotation/GetField;
        fieldObject = "status"
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessageUtils;->status:Lcom/huawei/utils/reflect/FieldObject;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/cdma/SmsMessageUtils;->getField(Lcom/huawei/utils/reflect/FieldObject;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public setEnvelope(Lcom/android/internal/telephony/cdma/SmsMessage;Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;)V
    .locals 1
    .param p1, "smsMessage"    # Lcom/android/internal/telephony/cdma/SmsMessage;
    .param p2, "value"    # Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    .annotation runtime Lcom/huawei/utils/reflect/annotation/SetField;
        fieldObject = "mEnvelope"
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessageUtils;->mEnvelope:Lcom/huawei/utils/reflect/FieldObject;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/cdma/SmsMessageUtils;->setField(Lcom/huawei/utils/reflect/FieldObject;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 19
    return-void
.end method

.method public setStatus(Lcom/android/internal/telephony/cdma/SmsMessage;I)V
    .locals 2
    .param p1, "smsMessage"    # Lcom/android/internal/telephony/cdma/SmsMessage;
    .param p2, "value"    # I
    .annotation runtime Lcom/huawei/utils/reflect/annotation/SetField;
        fieldObject = "status"
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessageUtils;->status:Lcom/huawei/utils/reflect/FieldObject;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/cdma/SmsMessageUtils;->setField(Lcom/huawei/utils/reflect/FieldObject;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 24
    return-void
.end method
