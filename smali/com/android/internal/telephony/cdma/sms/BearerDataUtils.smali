.class public Lcom/android/internal/telephony/cdma/sms/BearerDataUtils;
.super Lcom/huawei/utils/reflect/EasyInvokeUtils;
.source "BearerDataUtils.java"


# instance fields
.field SUBPARAM_MESSAGE_CENTER_TIME_STAMP:Lcom/huawei/utils/reflect/FieldObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/huawei/utils/reflect/FieldObject<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field countAsciiSeptets:Lcom/huawei/utils/reflect/MethodObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/huawei/utils/reflect/MethodObject<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/huawei/utils/reflect/EasyInvokeUtils;-><init>()V

    return-void
.end method


# virtual methods
.method public countAsciiSeptets(Lcom/android/internal/telephony/cdma/sms/BearerData;Ljava/lang/CharSequence;Z)I
    .locals 4
    .param p1, "bearerData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p2, "msg"    # Ljava/lang/CharSequence;
    .param p3, "force"    # Z
    .annotation runtime Lcom/huawei/utils/reflect/annotation/InvokeMethod;
        methodObject = "countAsciiSeptets"
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerDataUtils;->countAsciiSeptets:Lcom/huawei/utils/reflect/MethodObject;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/cdma/sms/BearerDataUtils;->invokeMethod(Lcom/huawei/utils/reflect/MethodObject;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getSubparamMsgCenterTimeStamp(Lcom/android/internal/telephony/cdma/sms/BearerData;)B
    .locals 1
    .param p1, "bearerData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .annotation runtime Lcom/huawei/utils/reflect/annotation/GetField;
        fieldObject = "SUBPARAM_MESSAGE_CENTER_TIME_STAMP"
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerDataUtils;->SUBPARAM_MESSAGE_CENTER_TIME_STAMP:Lcom/huawei/utils/reflect/FieldObject;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/cdma/sms/BearerDataUtils;->getField(Lcom/huawei/utils/reflect/FieldObject;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    return v0
.end method
