.class Lhuawei/android/security/voicerecognition/VoiceRecognizeManager$MyHandler;
.super Landroid/os/Handler;
.source "VoiceRecognizeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;


# direct methods
.method private constructor <init>(Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .line 451
    iput-object p1, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager$MyHandler;->this$0:Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;

    .line 452
    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 453
    return-void
.end method

.method synthetic constructor <init>(Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;Landroid/content/Context;Lhuawei/android/security/voicerecognition/VoiceRecognizeManager$1;)V
    .locals 0
    .param p1, "x0"    # Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;
    .param p2, "x1"    # Landroid/content/Context;
    .param p3, "x2"    # Lhuawei/android/security/voicerecognition/VoiceRecognizeManager$1;

    .line 450
    invoke-direct {p0, p1, p2}, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager$MyHandler;-><init>(Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;Landroid/content/Context;)V

    return-void
.end method

.method private constructor <init>(Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 455
    iput-object p1, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager$MyHandler;->this$0:Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;

    .line 456
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 457
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 461
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 484
    :pswitch_0
    iget-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager$MyHandler;->this$0:Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->access$800(Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;I)V

    .line 485
    goto :goto_0

    .line 481
    :pswitch_1
    iget-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager$MyHandler;->this$0:Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->access$700(Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;I)V

    .line 482
    goto :goto_0

    .line 478
    :pswitch_2
    iget-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager$MyHandler;->this$0:Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2}, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->access$600(Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;II)V

    .line 479
    goto :goto_0

    .line 475
    :pswitch_3
    iget-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager$MyHandler;->this$0:Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2}, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->access$500(Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;II)V

    .line 476
    goto :goto_0

    .line 472
    :pswitch_4
    iget-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager$MyHandler;->this$0:Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->access$400(Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;I)V

    .line 473
    goto :goto_0

    .line 469
    :pswitch_5
    iget-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager$MyHandler;->this$0:Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->access$300(Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;I)V

    .line 470
    goto :goto_0

    .line 466
    :pswitch_6
    iget-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager$MyHandler;->this$0:Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2}, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->access$200(Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;II)V

    .line 467
    goto :goto_0

    .line 463
    :pswitch_7
    iget-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager$MyHandler;->this$0:Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2}, Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;->access$100(Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;II)V

    .line 464
    nop

    .line 489
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
