.class public Landroid/telephony/PhoneCallback;
.super Ljava/lang/Object;
.source "PhoneCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/PhoneCallback$IPhoneCallbackStub;,
        Landroid/telephony/PhoneCallback$MyHandler;
    }
.end annotation


# static fields
.field private static final EVENT_RESPONSE_CALLBACK_1:I = 0x1

.field private static final EVENT_RESPONSE_CALLBACK_2:I = 0x2

.field private static final EVENT_RESPONSE_CALLBACK_3:I = 0x3

.field private static final LOG_TAG:Ljava/lang/String; = "PhoneCallback"


# instance fields
.field mCallbackStub:Landroid/telephony/PhoneCallback$IPhoneCallbackStub;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Landroid/telephony/PhoneCallback$IPhoneCallbackStub;

    invoke-direct {v0, p0, p0}, Landroid/telephony/PhoneCallback$IPhoneCallbackStub;-><init>(Landroid/telephony/PhoneCallback;Landroid/telephony/PhoneCallback;)V

    iput-object v0, p0, Landroid/telephony/PhoneCallback;->mCallbackStub:Landroid/telephony/PhoneCallback$IPhoneCallbackStub;

    .line 37
    new-instance v0, Landroid/telephony/PhoneCallback$MyHandler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/telephony/PhoneCallback$MyHandler;-><init>(Landroid/telephony/PhoneCallback;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/telephony/PhoneCallback;->mHandler:Landroid/os/Handler;

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Landroid/telephony/PhoneCallback$IPhoneCallbackStub;

    invoke-direct {v0, p0, p0}, Landroid/telephony/PhoneCallback$IPhoneCallbackStub;-><init>(Landroid/telephony/PhoneCallback;Landroid/telephony/PhoneCallback;)V

    iput-object v0, p0, Landroid/telephony/PhoneCallback;->mCallbackStub:Landroid/telephony/PhoneCallback$IPhoneCallbackStub;

    .line 40
    new-instance v0, Landroid/telephony/PhoneCallback$MyHandler;

    invoke-direct {v0, p0, p1}, Landroid/telephony/PhoneCallback$MyHandler;-><init>(Landroid/telephony/PhoneCallback;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/telephony/PhoneCallback;->mHandler:Landroid/os/Handler;

    .line 41
    return-void
.end method

.method static synthetic access$000(Landroid/telephony/PhoneCallback;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/telephony/PhoneCallback;
    .param p1, "x1"    # Ljava/lang/String;

    .line 16
    invoke-direct {p0, p1}, Landroid/telephony/PhoneCallback;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Landroid/telephony/PhoneCallback;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Landroid/telephony/PhoneCallback;

    .line 16
    iget-object v0, p0, Landroid/telephony/PhoneCallback;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 99
    const-string v0, "PhoneCallback"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    return-void
.end method


# virtual methods
.method public onPhoneCallback1(I)V
    .locals 0
    .param p1, "parm"    # I

    .line 26
    return-void
.end method

.method public onPhoneCallback2(II)V
    .locals 0
    .param p1, "parm1"    # I
    .param p2, "param2"    # I

    .line 29
    return-void
.end method

.method public onPhoneCallback3(IILandroid/os/Bundle;)V
    .locals 0
    .param p1, "parm1"    # I
    .param p2, "param2"    # I
    .param p3, "param3"    # Landroid/os/Bundle;

    .line 32
    return-void
.end method
