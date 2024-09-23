.class Lhuawei/android/security/voicerecognition/VoiceRecognizeManager$1;
.super Lhuawei/android/security/voicerecognition/IVoiceRecognizeServiceReceiver$Stub;
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

    .line 492
    iput-object p1, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager$1;->this$0:Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;

    invoke-direct {p0}, Lhuawei/android/security/voicerecognition/IVoiceRecognizeServiceReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onOptCallback(IIII)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "code"    # I
    .param p3, "subCode1"    # I
    .param p4, "subCode2"    # I

    .line 495
    const/4 v0, 0x0

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 518
    :pswitch_0
    iget-object v2, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager$1;->this$0:Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;

    invoke-static {v2}, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->access$900(Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 519
    iget-object v2, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager$1;->this$0:Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;

    invoke-static {v2}, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->access$900(Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3, p2, v0, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 521
    :cond_0
    iget-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager$1;->this$0:Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;

    invoke-static {v0, p2}, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->access$400(Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;I)V

    .line 523
    goto :goto_0

    .line 511
    :pswitch_1
    iget-object v2, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager$1;->this$0:Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;

    invoke-static {v2}, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->access$900(Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 512
    iget-object v2, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager$1;->this$0:Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;

    invoke-static {v2}, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->access$900(Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3, p2, v0, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 514
    :cond_1
    iget-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager$1;->this$0:Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;

    invoke-static {v0, p2}, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->access$400(Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;I)V

    .line 516
    goto :goto_0

    .line 504
    :pswitch_2
    iget-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager$1;->this$0:Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;

    invoke-static {v0}, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->access$900(Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 505
    iget-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager$1;->this$0:Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;

    invoke-static {v0}, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->access$900(Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2, p2, p3, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 507
    :cond_2
    iget-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager$1;->this$0:Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;

    invoke-static {v0, p2, p3}, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->access$200(Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;II)V

    .line 509
    goto :goto_0

    .line 497
    :pswitch_3
    iget-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager$1;->this$0:Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;

    invoke-static {v0}, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->access$900(Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 498
    iget-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager$1;->this$0:Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;

    invoke-static {v0}, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->access$900(Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p2, p3, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 500
    :cond_3
    iget-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager$1;->this$0:Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;

    invoke-static {v0, p2, p3}, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->access$100(Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;II)V

    .line 502
    nop

    .line 527
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
