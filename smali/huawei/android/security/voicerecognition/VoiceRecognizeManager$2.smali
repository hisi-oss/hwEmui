.class Lhuawei/android/security/voicerecognition/VoiceRecognizeManager$2;
.super Lhuawei/android/security/voicerecognition/IVoiceAuthCallback$Stub;
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

    .line 530
    iput-object p1, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager$2;->this$0:Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;

    invoke-direct {p0}, Lhuawei/android/security/voicerecognition/IVoiceAuthCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onHeadsetStatusChange(I)V
    .locals 4
    .param p1, "status"    # I

    .line 551
    iget-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager$2;->this$0:Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;

    invoke-static {v0}, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->access$900(Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 552
    iget-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager$2;->this$0:Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;

    invoke-static {v0}, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->access$900(Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 554
    :cond_0
    iget-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager$2;->this$0:Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;

    invoke-static {v0, p1}, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->access$700(Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;I)V

    .line 556
    :goto_0
    return-void
.end method

.method public onReceiveAuthVoice(II)V
    .locals 3
    .param p1, "userId"    # I
    .param p2, "type"    # I

    .line 533
    iget-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager$2;->this$0:Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;

    invoke-static {v0}, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->access$900(Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 534
    iget-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager$2;->this$0:Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;

    invoke-static {v0}, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->access$900(Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 536
    :cond_0
    iget-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager$2;->this$0:Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;

    invoke-static {v0, p1, p2}, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->access$500(Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;II)V

    .line 538
    :goto_0
    return-void
.end method

.method public onReceiveUnAuthVoice(II)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "type"    # I

    .line 542
    iget-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager$2;->this$0:Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;

    invoke-static {v0}, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->access$900(Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 543
    iget-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager$2;->this$0:Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;

    invoke-static {v0}, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->access$900(Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 545
    :cond_0
    iget-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager$2;->this$0:Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;

    invoke-static {v0, p1, p2}, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->access$600(Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;II)V

    .line 547
    :goto_0
    return-void
.end method
