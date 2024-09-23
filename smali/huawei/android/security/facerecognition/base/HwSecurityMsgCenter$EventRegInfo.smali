.class Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter$EventRegInfo;
.super Ljava/lang/Object;
.source "HwSecurityMsgCenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EventRegInfo"
.end annotation


# instance fields
.field private mEnable:Z

.field private mListener:Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$EventListener;


# direct methods
.method private constructor <init>(Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$EventListener;Z)V
    .locals 0
    .param p1, "listener"    # Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$EventListener;
    .param p2, "enable"    # Z

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter$EventRegInfo;->mListener:Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$EventListener;

    .line 17
    iput-boolean p2, p0, Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter$EventRegInfo;->mEnable:Z

    .line 18
    return-void
.end method

.method synthetic constructor <init>(Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$EventListener;ZLhuawei/android/security/facerecognition/base/HwSecurityMsgCenter$1;)V
    .locals 0
    .param p1, "x0"    # Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$EventListener;
    .param p2, "x1"    # Z
    .param p3, "x2"    # Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter$1;

    .line 13
    invoke-direct {p0, p1, p2}, Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter$EventRegInfo;-><init>(Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$EventListener;Z)V

    return-void
.end method

.method static synthetic access$000(Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter$EventRegInfo;)Z
    .locals 1
    .param p0, "x0"    # Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter$EventRegInfo;

    .line 13
    iget-boolean v0, p0, Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter$EventRegInfo;->mEnable:Z

    return v0
.end method

.method static synthetic access$002(Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter$EventRegInfo;Z)Z
    .locals 0
    .param p0, "x0"    # Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter$EventRegInfo;
    .param p1, "x1"    # Z

    .line 13
    iput-boolean p1, p0, Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter$EventRegInfo;->mEnable:Z

    return p1
.end method

.method static synthetic access$200(Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter$EventRegInfo;)Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$EventListener;
    .locals 1
    .param p0, "x0"    # Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter$EventRegInfo;

    .line 13
    iget-object v0, p0, Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter$EventRegInfo;->mListener:Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$EventListener;

    return-object v0
.end method
