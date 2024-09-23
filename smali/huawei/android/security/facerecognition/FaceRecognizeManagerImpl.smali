.class public Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl;
.super Ljava/lang/Object;
.source "FaceRecognizeManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$CallbackHolder;,
        Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;,
        Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$FaceRecognizeCallback;,
        Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$AcquireInfo;,
        Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$FaceErrorCode;,
        Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$FaceRecognitionAbility;,
        Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$FaceInfo;
    }
.end annotation


# static fields
.field public static final CODE_CALLBACK_ACQUIRE:I = 0x3

.field public static final CODE_CALLBACK_BUSY:I = 0x4

.field public static final CODE_CALLBACK_CANCEL:I = 0x2

.field public static final CODE_CALLBACK_FACEID:I = 0x6

.field public static final CODE_CALLBACK_OUT_OF_MEM:I = 0x5

.field public static final CODE_CALLBACK_RESULT:I = 0x1

.field private static final FACERECOGNITION_OFF:I = 0x0

.field private static final FACERECOGNITION_ON:I = 0x1

.field private static final FACERECOGNIZE_SERVICE:Ljava/lang/String; = "facerecognition"

.field public static final FACE_MODE_SUPPORT_MASK:I = -0x1

.field public static final FACE_MODE_SUPPORT_POS:I = 0x5

.field public static final FACE_RECONITION_SUPPORT_MASK:I = 0x1

.field public static final FACE_RECONITION_SUPPORT_POS:I = 0x4

.field public static final FACE_SECURE_LEVEL_MASK:I = 0xf

.field public static final FACE_SECURE_LEVEL_POS:I = 0x0

.field public static final FLAG_SHEATH:I = 0x1

.field public static final REQUEST_OK:I = 0x0

.field private static final TAG:Ljava/lang/String;

.field public static final TYPE_CALLBACK_AUTH:I = 0x2

.field public static final TYPE_CALLBACK_ENROLL:I = 0x1

.field public static final TYPE_CALLBACK_REMOVE:I = 0x3


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentReq:Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;

.field private mPendingReq:Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    const-class v0, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$FaceRecognizeCallback;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$FaceRecognizeCallback;

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    invoke-static {}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;->getInstance()Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;

    move-result-object v0

    invoke-static {v0, p1}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;->access$000(Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;Landroid/content/Context;)V

    .line 189
    invoke-static {}, Lhuawei/android/security/facerecognition/FaceCamera;->getInstance()Lhuawei/android/security/facerecognition/FaceCamera;

    move-result-object v0

    invoke-virtual {v0, p1}, Lhuawei/android/security/facerecognition/FaceCamera;->init(Landroid/content/Context;)V

    .line 190
    invoke-static {}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$CallbackHolder;->getInstance()Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$CallbackHolder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$CallbackHolder;->init(Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$FaceRecognizeCallback;)V

    .line 191
    iput-object p1, p0, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl;->mContext:Landroid/content/Context;

    .line 193
    invoke-static {}, Lhuawei/android/security/facerecognition/base/HwSecurityTaskThread;->getInstance()Lhuawei/android/security/facerecognition/base/HwSecurityTaskThread;

    move-result-object v0

    if-nez v0, :cond_0

    .line 194
    invoke-static {}, Lhuawei/android/security/facerecognition/base/HwSecurityTaskThread;->createInstance()V

    .line 195
    invoke-static {}, Lhuawei/android/security/facerecognition/base/HwSecurityTaskThread;->getInstance()Lhuawei/android/security/facerecognition/base/HwSecurityTaskThread;

    move-result-object v0

    invoke-virtual {v0}, Lhuawei/android/security/facerecognition/base/HwSecurityTaskThread;->startThread()V

    .line 197
    :cond_0
    invoke-static {}, Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter;->getInstance()Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter;

    move-result-object v0

    if-nez v0, :cond_1

    .line 198
    invoke-static {}, Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter;->createInstance()V

    .line 200
    :cond_1
    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 57
    sget-object v0, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static getCodeString(I)Ljava/lang/String;
    .locals 2
    .param p0, "code"    # I

    .line 884
    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 896
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 892
    :pswitch_0
    const-string v0, "request busy"

    return-object v0

    .line 888
    :pswitch_1
    const-string v0, "acquire"

    return-object v0

    .line 890
    :pswitch_2
    const-string v0, "cancel"

    return-object v0

    .line 886
    :pswitch_3
    const-string v0, "result"

    return-object v0

    .line 894
    :cond_0
    const-string v0, "faceId"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getErrorCodeString(II)Ljava/lang/String;
    .locals 2
    .param p0, "code"    # I
    .param p1, "errorCode"    # I

    .line 900
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 901
    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 929
    :pswitch_0
    const-string v0, "busy"

    return-object v0

    .line 927
    :pswitch_1
    const-string v0, "camera fail"

    return-object v0

    .line 925
    :pswitch_2
    const-string v0, "low temp & cap"

    return-object v0

    .line 923
    :pswitch_3
    const-string v0, "no face data"

    return-object v0

    .line 921
    :pswitch_4
    const-string v0, "invalid parameters"

    return-object v0

    .line 919
    :pswitch_5
    const-string v0, "in lockout mode"

    return-object v0

    .line 917
    :pswitch_6
    const-string v0, "over max faces"

    return-object v0

    .line 915
    :pswitch_7
    const-string v0, "hal invalid"

    return-object v0

    .line 913
    :pswitch_8
    const-string v0, "invoke init first"

    return-object v0

    .line 911
    :pswitch_9
    const-string v0, "time out"

    return-object v0

    .line 909
    :pswitch_a
    const-string v0, "compare fail"

    return-object v0

    .line 907
    :pswitch_b
    const-string v0, "cancelled"

    return-object v0

    .line 905
    :pswitch_c
    const-string v0, "failed"

    return-object v0

    .line 903
    :pswitch_d
    const-string v0, "success"

    return-object v0

    .line 931
    :cond_0
    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    .line 932
    packed-switch p1, :pswitch_data_1

    :pswitch_e
    goto :goto_0

    .line 982
    :pswitch_f
    const-string v0, "picture too dark"

    return-object v0

    .line 980
    :pswitch_10
    const-string v0, "half shadow"

    return-object v0

    .line 978
    :pswitch_11
    const-string v0, "too light"

    return-object v0

    .line 976
    :pswitch_12
    const-string v0, "too dark"

    return-object v0

    .line 974
    :pswitch_13
    const-string v0, "face not complete"

    return-object v0

    .line 972
    :pswitch_14
    const-string v0, "face blur"

    return-object v0

    .line 970
    :pswitch_15
    const-string v0, "multi faces"

    return-object v0

    .line 968
    :pswitch_16
    const-string v0, "mouth occlusion"

    return-object v0

    .line 966
    :pswitch_17
    const-string v0, "eyes closed"

    return-object v0

    .line 964
    :pswitch_18
    const-string v0, "eyes occlusion"

    return-object v0

    .line 962
    :pswitch_19
    const-string v0, "keep still"

    return-object v0

    .line 960
    :pswitch_1a
    const-string v0, "face too low"

    return-object v0

    .line 956
    :pswitch_1b
    const-string v0, "rotate right"

    return-object v0

    .line 958
    :pswitch_1c
    const-string v0, "face rise to high"

    return-object v0

    .line 954
    :pswitch_1d
    const-string v0, "rotate left"

    return-object v0

    .line 952
    :pswitch_1e
    const-string v0, "aliveness failure"

    return-object v0

    .line 950
    :pswitch_1f
    const-string v0, "aliveness warning"

    return-object v0

    .line 948
    :pswitch_20
    const-string v0, "offset bottom"

    return-object v0

    .line 944
    :pswitch_21
    const-string v0, "offset right"

    return-object v0

    .line 946
    :pswitch_22
    const-string v0, "offset top"

    return-object v0

    .line 942
    :pswitch_23
    const-string v0, "offset left"

    return-object v0

    .line 940
    :pswitch_24
    const-string v0, "face too large"

    return-object v0

    .line 938
    :pswitch_25
    const-string v0, "face too small"

    return-object v0

    .line 936
    :pswitch_26
    const-string v0, "no face detected"

    return-object v0

    .line 934
    :pswitch_27
    const-string v0, "bad quality"

    return-object v0

    .line 985
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_e
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_e
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method public static getTypeString(I)Ljava/lang/String;
    .locals 2
    .param p0, "type"    # I

    .line 871
    packed-switch p0, :pswitch_data_0

    .line 879
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 877
    :pswitch_0
    const-string v0, "REMOVE"

    return-object v0

    .line 875
    :pswitch_1
    const-string v0, "AUTH"

    return-object v0

    .line 873
    :pswitch_2
    const-string v0, "ENROLL"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static hasRequest(Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;J)Z
    .locals 2
    .param p0, "request"    # Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;
    .param p1, "reqId"    # J

    .line 866
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;->getReqId()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private sendCallback(IIII)V
    .locals 2
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I
    .param p3, "code"    # I
    .param p4, "errorCode"    # I

    .line 849
    packed-switch p2, :pswitch_data_0

    .line 860
    const/16 v0, 0x64

    goto :goto_0

    .line 857
    :pswitch_0
    const/4 v0, 0x3

    .line 858
    .local v0, "type":I
    goto :goto_0

    .line 854
    .end local v0    # "type":I
    :pswitch_1
    const/4 v0, 0x2

    .line 855
    .restart local v0    # "type":I
    goto :goto_0

    .line 851
    .end local v0    # "type":I
    :pswitch_2
    const/4 v0, 0x1

    .line 852
    .restart local v0    # "type":I
    nop

    .line 860
    :goto_0
    nop

    .line 862
    invoke-static {}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$CallbackHolder;->getInstance()Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$CallbackHolder;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p3, p4}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$CallbackHolder;->onCallbackEvent(IIII)V

    .line 863
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public authenticate(JILandroid/view/Surface;)I
    .locals 9
    .param p1, "opId"    # J
    .param p3, "flags"    # I
    .param p4, "preview"    # Landroid/view/Surface;

    .line 690
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 691
    .local v0, "surfaces":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    if-eqz p4, :cond_0

    .line 692
    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 694
    :cond_0
    new-instance v8, Lhuawei/android/security/facerecognition/request/AuthenticateRequest;

    iget-object v7, p0, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl;->mContext:Landroid/content/Context;

    move-object v1, v8

    move-wide v2, p1

    move-object v4, p0

    move v5, p3

    move-object v6, v0

    invoke-direct/range {v1 .. v7}, Lhuawei/android/security/facerecognition/request/AuthenticateRequest;-><init>(JLhuawei/android/security/facerecognition/FaceRecognizeManagerImpl;ILjava/util/List;Landroid/content/Context;)V

    .line 695
    .local v1, "request":Lhuawei/android/security/facerecognition/request/AuthenticateRequest;
    const/4 v2, 0x1

    invoke-static {v1, v2}, Lhuawei/android/security/facerecognition/base/HwSecurityTaskThread;->staticPushTask(Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;I)V

    .line 696
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 697
    .local v2, "current":J
    const-string v4, "PerformanceTime"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Time 1. start auth --- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhuawei/android/security/facerecognition/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    const/4 v4, 0x0

    return v4
.end method

.method public cancelAuthenticate(J)I
    .locals 2
    .param p1, "opId"    # J

    .line 703
    new-instance v0, Lhuawei/android/security/facerecognition/request/CancelRequest;

    const/4 v1, 0x2

    invoke-direct {v0, p1, p2, p0, v1}, Lhuawei/android/security/facerecognition/request/CancelRequest;-><init>(JLhuawei/android/security/facerecognition/FaceRecognizeManagerImpl;I)V

    .line 704
    .local v0, "request":Lhuawei/android/security/facerecognition/request/CancelRequest;
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lhuawei/android/security/facerecognition/base/HwSecurityTaskThread;->staticPushTask(Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;I)V

    .line 705
    const/4 v1, 0x0

    return v1
.end method

.method public cancelEnroll(I)I
    .locals 4
    .param p1, "reqId"    # I

    .line 727
    new-instance v0, Lhuawei/android/security/facerecognition/request/CancelRequest;

    int-to-long v1, p1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, p0, v3}, Lhuawei/android/security/facerecognition/request/CancelRequest;-><init>(JLhuawei/android/security/facerecognition/FaceRecognizeManagerImpl;I)V

    .line 728
    .local v0, "request":Lhuawei/android/security/facerecognition/request/CancelRequest;
    invoke-static {v0, v3}, Lhuawei/android/security/facerecognition/base/HwSecurityTaskThread;->staticPushTask(Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;I)V

    .line 729
    const/4 v1, 0x0

    return v1
.end method

.method public enroll(II[BLandroid/view/Surface;)I
    .locals 8
    .param p1, "reqId"    # I
    .param p2, "flags"    # I
    .param p3, "token"    # [B
    .param p4, "preview"    # Landroid/view/Surface;

    .line 717
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 718
    .local v0, "surfaces":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    if-eqz p4, :cond_0

    .line 719
    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 721
    :cond_0
    new-instance v7, Lhuawei/android/security/facerecognition/request/EnrollRequest;

    move-object v1, v7

    move v2, p1

    move-object v3, p0

    move-object v4, p3

    move v5, p2

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lhuawei/android/security/facerecognition/request/EnrollRequest;-><init>(ILhuawei/android/security/facerecognition/FaceRecognizeManagerImpl;[BILjava/util/List;)V

    .line 722
    .local v1, "request":Lhuawei/android/security/facerecognition/request/EnrollRequest;
    const/4 v2, 0x1

    invoke-static {v1, v2}, Lhuawei/android/security/facerecognition/base/HwSecurityTaskThread;->staticPushTask(Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;I)V

    .line 723
    const/4 v2, 0x0

    return v2
.end method

.method public getAngleDim()I
    .locals 1

    .line 771
    invoke-static {}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;->getInstance()Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;

    move-result-object v0

    invoke-virtual {v0}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;->getAngleDim()I

    move-result v0

    return v0
.end method

.method public getEnrolledFaceIDs()[I
    .locals 1

    .line 755
    invoke-static {}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;->getInstance()Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;

    move-result-object v0

    invoke-virtual {v0}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;->getEnrolledFaceRecognizes()[I

    move-result-object v0

    return-object v0
.end method

.method public getFaceInfo(I)Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$FaceInfo;
    .locals 1
    .param p1, "faceId"    # I

    .line 759
    invoke-static {}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;->getInstance()Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;->getFaceInfo(I)Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$FaceInfo;

    move-result-object v0

    return-object v0
.end method

.method public getFaceRecognitionAbility()Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$FaceRecognitionAbility;
    .locals 1

    .line 763
    invoke-static {}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;->getInstance()Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;

    move-result-object v0

    invoke-virtual {v0}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;->getFaceRecognitionAbility()Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$FaceRecognitionAbility;

    move-result-object v0

    return-object v0
.end method

.method public getHardwareSupportType()I
    .locals 1

    .line 767
    invoke-static {}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;->getInstance()Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;

    move-result-object v0

    invoke-virtual {v0}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;->getHardwareSupportType()I

    move-result v0

    return v0
.end method

.method public getPayResult([I[B[I[B)I
    .locals 1
    .param p1, "faceId"    # [I
    .param p2, "token"    # [B
    .param p3, "tokenLen"    # [I
    .param p4, "reserve"    # [B

    .line 713
    invoke-static {}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;->getInstance()Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;->getPayResult([I[B[I[B)I

    move-result v0

    return v0
.end method

.method public getRemainingNum()I
    .locals 1

    .line 779
    invoke-static {}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;->getInstance()Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;

    move-result-object v0

    invoke-virtual {v0}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;->getRemainingNum()I

    move-result v0

    return v0
.end method

.method public getRemainingTime()J
    .locals 2

    .line 783
    invoke-static {}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;->getInstance()Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;

    move-result-object v0

    invoke-virtual {v0}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;->getRemainingTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTotalAuthFailedTimes()I
    .locals 1

    .line 787
    invoke-static {}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;->getInstance()Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;

    move-result-object v0

    invoke-virtual {v0}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;->getTotalAuthFailedTimes()I

    move-result v0

    return v0
.end method

.method public init()I
    .locals 1

    .line 747
    invoke-static {}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;->getInstance()Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;

    move-result-object v0

    invoke-virtual {v0}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;->initAlgo()I

    move-result v0

    return v0
.end method

.method public onCancelReq(JI)Z
    .locals 6
    .param p1, "reqId"    # J
    .param p3, "cancelType"    # I

    .line 832
    const/4 v0, 0x1

    const/4 v1, 0x2

    if-ne p3, v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 833
    .local v2, "type":I
    :goto_0
    iget-object v3, p0, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl;->mCurrentReq:Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;

    invoke-static {v3, p1, p2}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl;->hasRequest(Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;J)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 834
    iget-object v0, p0, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl;->mCurrentReq:Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;

    invoke-virtual {v0}, Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;->setActiveCanceled()V

    .line 835
    return v4

    .line 836
    :cond_1
    iget-object v3, p0, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl;->mPendingReq:Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;

    invoke-static {v3, p1, p2}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl;->hasRequest(Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;J)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 837
    const/4 v3, 0x0

    iput-object v3, p0, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl;->mPendingReq:Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;

    .line 838
    invoke-static {}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$CallbackHolder;->getInstance()Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$CallbackHolder;

    move-result-object v3

    long-to-int v5, p1

    invoke-virtual {v3, v5, v2, v0, v1}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$CallbackHolder;->onCallbackEvent(IIII)V

    .line 839
    invoke-static {}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$CallbackHolder;->getInstance()Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$CallbackHolder;

    move-result-object v3

    long-to-int v5, p1

    invoke-virtual {v3, v5, v2, v1, v4}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$CallbackHolder;->onCallbackEvent(IIII)V

    .line 840
    return v0

    .line 842
    :cond_2
    invoke-static {}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$CallbackHolder;->getInstance()Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$CallbackHolder;

    move-result-object v3

    long-to-int v5, p1

    invoke-virtual {v3, v5, v2, v1, v4}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$CallbackHolder;->onCallbackEvent(IIII)V

    .line 843
    return v0
.end method

.method public onNewRequest(Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;)V
    .locals 7
    .param p1, "req"    # Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;

    .line 791
    iget-object v0, p0, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl;->mCurrentReq:Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;

    const/16 v1, 0xd

    const/4 v2, 0x1

    const/4 v3, 0x4

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    .line 792
    iget-object v0, p0, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl;->mCurrentReq:Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;

    invoke-virtual {v0}, Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;->isActiveCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl;->mPendingReq:Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;

    if-nez v0, :cond_0

    .line 793
    sget-object v0, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl;->TAG:Ljava/lang/String;

    const-string v1, "add to pending"

    invoke-static {v0, v1}, Lhuawei/android/security/facerecognition/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    iput-object p1, p0, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl;->mPendingReq:Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;

    goto/16 :goto_0

    .line 796
    :cond_0
    sget-object v0, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "current busy, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl;->mCurrentReq:Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;

    invoke-virtual {v6}, Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lhuawei/android/security/facerecognition/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    invoke-virtual {p1}, Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;->getReqId()J

    move-result-wide v5

    long-to-int v0, v5

    invoke-virtual {p1}, Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;->getType()I

    move-result v5

    invoke-direct {p0, v0, v5, v3, v4}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl;->sendCallback(IIII)V

    .line 798
    invoke-virtual {p1}, Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;->getReqId()J

    move-result-wide v3

    long-to-int v0, v3

    invoke-virtual {p1}, Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;->getType()I

    move-result v3

    invoke-direct {p0, v0, v3, v2, v1}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl;->sendCallback(IIII)V

    goto :goto_0

    .line 801
    :cond_1
    iget-object v0, p0, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl;->mPendingReq:Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;

    if-eqz v0, :cond_2

    .line 802
    sget-object v0, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pending busy"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl;->mPendingReq:Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;

    invoke-virtual {v6}, Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lhuawei/android/security/facerecognition/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    invoke-virtual {p1}, Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;->getReqId()J

    move-result-wide v5

    long-to-int v0, v5

    invoke-virtual {p1}, Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;->getType()I

    move-result v5

    invoke-direct {p0, v0, v5, v3, v4}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl;->sendCallback(IIII)V

    .line 804
    invoke-virtual {p1}, Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;->getReqId()J

    move-result-wide v3

    long-to-int v0, v3

    invoke-virtual {p1}, Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;->getType()I

    move-result v3

    invoke-direct {p0, v0, v3, v2, v1}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl;->sendCallback(IIII)V

    goto :goto_0

    .line 806
    :cond_2
    invoke-virtual {p1}, Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;->onReqStart()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 807
    iput-object p1, p0, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl;->mCurrentReq:Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;

    goto :goto_0

    .line 809
    :cond_3
    const-string v0, "request"

    const-string v1, "out of memory"

    invoke-static {v0, v1}, Lhuawei/android/security/facerecognition/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    invoke-virtual {p1}, Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;->getReqId()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p1}, Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;->getType()I

    move-result v1

    const/4 v2, 0x5

    invoke-direct {p0, v0, v1, v2, v4}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl;->sendCallback(IIII)V

    .line 814
    :goto_0
    return-void
.end method

.method public onRequestEnd(Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;)V
    .locals 4
    .param p1, "req"    # Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;

    .line 817
    const/4 v0, 0x0

    iput-object v0, p0, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl;->mCurrentReq:Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;

    .line 818
    iget-object v1, p0, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl;->mPendingReq:Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;

    if-eqz v1, :cond_1

    .line 819
    iget-object v1, p0, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl;->mPendingReq:Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;

    iput-object v1, p0, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl;->mCurrentReq:Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;

    .line 820
    iput-object v0, p0, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl;->mPendingReq:Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;

    .line 821
    iget-object v0, p0, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl;->mCurrentReq:Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;

    invoke-virtual {v0}, Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;->onReqStart()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 822
    sget-object v0, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl;->TAG:Ljava/lang/String;

    const-string v1, "replace current with pending"

    invoke-static {v0, v1}, Lhuawei/android/security/facerecognition/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 824
    :cond_0
    const-string v0, "request"

    const-string v1, "out of memory"

    invoke-static {v0, v1}, Lhuawei/android/security/facerecognition/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    invoke-virtual {p1}, Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;->getReqId()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p1}, Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;->getType()I

    move-result v1

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl;->sendCallback(IIII)V

    .line 828
    :cond_1
    :goto_0
    return-void
.end method

.method public postEnroll()I
    .locals 1

    .line 737
    invoke-static {}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;->getInstance()Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;

    move-result-object v0

    invoke-virtual {v0}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;->postEnroll()I

    move-result v0

    return v0
.end method

.method public preEnroll()J
    .locals 2

    .line 733
    invoke-static {}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;->getInstance()Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;

    move-result-object v0

    invoke-virtual {v0}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;->preEnroll()J

    move-result-wide v0

    return-wide v0
.end method

.method public preparePayInfo([B[B[B)I
    .locals 1
    .param p1, "aaid"    # [B
    .param p2, "nonce"    # [B
    .param p3, "extra"    # [B

    .line 709
    invoke-static {}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;->getInstance()Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;->preparePayInfo([B[B[B)I

    move-result v0

    return v0
.end method

.method public release()I
    .locals 1

    .line 751
    invoke-static {}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;->getInstance()Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;

    move-result-object v0

    invoke-virtual {v0}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;->releaseAlgo()I

    move-result v0

    return v0
.end method

.method public remove(II)I
    .locals 2
    .param p1, "reqId"    # I
    .param p2, "faceId"    # I

    .line 741
    new-instance v0, Lhuawei/android/security/facerecognition/request/RemoveRequest;

    invoke-direct {v0, p1, p0, p2}, Lhuawei/android/security/facerecognition/request/RemoveRequest;-><init>(ILhuawei/android/security/facerecognition/FaceRecognizeManagerImpl;I)V

    .line 742
    .local v0, "request":Lhuawei/android/security/facerecognition/request/RemoveRequest;
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lhuawei/android/security/facerecognition/base/HwSecurityTaskThread;->staticPushTask(Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;I)V

    .line 743
    const/4 v1, 0x0

    return v1
.end method

.method public resetTimeout()V
    .locals 1

    .line 775
    invoke-static {}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;->getInstance()Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;

    move-result-object v0

    invoke-virtual {v0}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;->resetTimeout()V

    .line 776
    return-void
.end method
