.class Lhuawei/android/security/voicerecognition/VoiceRecognizeManager$3;
.super Lhuawei/android/security/voicerecognition/IHeadsetStatusCallback$Stub;
.source "VoiceRecognizeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;


# direct methods
.method constructor <init>(Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;)V
    .locals 0
    .param p1, "this$0"    # Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;

    .line 559
    iput-object p1, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager$3;->this$0:Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;

    invoke-direct {p0}, Lhuawei/android/security/voicerecognition/IHeadsetStatusCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onHeadsetStatusChange(I)V
    .locals 3
    .param p1, "status"    # I

    .line 562
    iget-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager$3;->this$0:Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;

    invoke-static {v0}, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->access$900(Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 563
    iget-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager$3;->this$0:Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;

    invoke-static {v0}, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->access$900(Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 565
    :cond_0
    iget-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager$3;->this$0:Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;

    invoke-static {v0, p1}, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->access$800(Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;I)V

    .line 567
    :goto_0
    return-void
.end method
