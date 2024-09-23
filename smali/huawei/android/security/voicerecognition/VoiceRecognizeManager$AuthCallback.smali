.class public abstract Lhuawei/android/security/voicerecognition/VoiceRecognizeManager$AuthCallback;
.super Ljava/lang/Object;
.source "VoiceRecognizeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AuthCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 620
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHeadsetStatusChange(I)V
    .locals 0
    .param p1, "status"    # I

    .line 629
    return-void
.end method

.method public onReceiveAuthVoice(II)Z
    .locals 1
    .param p1, "userId"    # I
    .param p2, "type"    # I

    .line 622
    const/4 v0, 0x0

    return v0
.end method

.method public onReceiveUnAuthVoice(III)V
    .locals 0
    .param p1, "userId"    # I
    .param p2, "type"    # I
    .param p3, "totalFailedTimes"    # I

    .line 626
    return-void
.end method
