.class public Lhuawei/android/security/facerecognition/FaceRecognizeEvent;
.super Ljava/lang/Object;
.source "FaceRecognizeEvent.java"


# static fields
.field public static final EV_CAMERA_INTERRUPT:I = 0x6

.field public static final EV_CANCEL_AUTH:I = 0x1

.field public static final EV_CANCEL_ENROLL:I = 0x2

.field public static final EV_CREATE_SESSION_RET:I = 0x4

.field public static final EV_FR_AUTH_ACQUIRED:I = 0xb

.field public static final EV_FR_AUTH_CANCEL:I = 0xc

.field public static final EV_FR_AUTH_RESULT:I = 0xa

.field public static final EV_FR_ENROLL_ACQUIRED:I = 0x8

.field public static final EV_FR_ENROLL_CANCEL:I = 0x9

.field public static final EV_FR_ENROLL_RESULT:I = 0x7

.field public static final EV_FR_REMOVED:I = 0xd

.field public static final EV_OPEN_CAMERA_RET:I = 0x3

.field public static final EV_REPEAT_REQUEST_RET:I = 0x5


# instance fields
.field private mArgs:[J

.field private mType:I


# direct methods
.method public varargs constructor <init>(I[J)V
    .locals 0
    .param p1, "eventType"    # I
    .param p2, "args"    # [J

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p1, p0, Lhuawei/android/security/facerecognition/FaceRecognizeEvent;->mType:I

    .line 27
    iput-object p2, p0, Lhuawei/android/security/facerecognition/FaceRecognizeEvent;->mArgs:[J

    .line 28
    return-void
.end method


# virtual methods
.method public getArgs()[J
    .locals 1

    .line 35
    iget-object v0, p0, Lhuawei/android/security/facerecognition/FaceRecognizeEvent;->mArgs:[J

    invoke-virtual {v0}, [J->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 31
    iget v0, p0, Lhuawei/android/security/facerecognition/FaceRecognizeEvent;->mType:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 40
    iget v0, p0, Lhuawei/android/security/facerecognition/FaceRecognizeEvent;->mType:I

    packed-switch v0, :pswitch_data_0

    .line 68
    const-string v0, "unknown"

    return-object v0

    .line 66
    :pswitch_0
    const-string v0, "face removed"

    return-object v0

    .line 64
    :pswitch_1
    const-string v0, "auth cancelled"

    return-object v0

    .line 62
    :pswitch_2
    const-string v0, "auth acquired"

    return-object v0

    .line 60
    :pswitch_3
    const-string v0, "auth result"

    return-object v0

    .line 58
    :pswitch_4
    const-string v0, "enroll cancelled"

    return-object v0

    .line 56
    :pswitch_5
    const-string v0, "enroll acquired"

    return-object v0

    .line 54
    :pswitch_6
    const-string v0, "enroll result"

    return-object v0

    .line 52
    :pswitch_7
    const-string v0, "camera interrupt"

    return-object v0

    .line 50
    :pswitch_8
    const-string v0, "repeat request"

    return-object v0

    .line 48
    :pswitch_9
    const-string v0, "create session"

    return-object v0

    .line 46
    :pswitch_a
    const-string v0, "open camera"

    return-object v0

    .line 44
    :pswitch_b
    const-string v0, "cancel enroll"

    return-object v0

    .line 42
    :pswitch_c
    const-string v0, "cancel auth"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
.end method
