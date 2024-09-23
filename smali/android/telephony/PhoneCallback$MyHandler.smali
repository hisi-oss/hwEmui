.class Landroid/telephony/PhoneCallback$MyHandler;
.super Landroid/os/Handler;
.source "PhoneCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/PhoneCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/PhoneCallback;


# direct methods
.method public constructor <init>(Landroid/telephony/PhoneCallback;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 44
    iput-object p1, p0, Landroid/telephony/PhoneCallback$MyHandler;->this$0:Landroid/telephony/PhoneCallback;

    .line 45
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 46
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 49
    iget-object v0, p0, Landroid/telephony/PhoneCallback$MyHandler;->this$0:Landroid/telephony/PhoneCallback;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage what= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/PhoneCallback;->access$000(Landroid/telephony/PhoneCallback;Ljava/lang/String;)V

    .line 51
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 62
    iget-object v0, p0, Landroid/telephony/PhoneCallback$MyHandler;->this$0:Landroid/telephony/PhoneCallback;

    const-string v1, "handleMessage not handled message"

    invoke-static {v0, v1}, Landroid/telephony/PhoneCallback;->access$000(Landroid/telephony/PhoneCallback;Ljava/lang/String;)V

    goto :goto_0

    .line 59
    :pswitch_0
    iget-object v0, p0, Landroid/telephony/PhoneCallback$MyHandler;->this$0:Landroid/telephony/PhoneCallback;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, v3}, Landroid/telephony/PhoneCallback;->onPhoneCallback3(IILandroid/os/Bundle;)V

    .line 60
    goto :goto_0

    .line 56
    :pswitch_1
    iget-object v0, p0, Landroid/telephony/PhoneCallback$MyHandler;->this$0:Landroid/telephony/PhoneCallback;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1, v2}, Landroid/telephony/PhoneCallback;->onPhoneCallback2(II)V

    .line 57
    goto :goto_0

    .line 53
    :pswitch_2
    iget-object v0, p0, Landroid/telephony/PhoneCallback$MyHandler;->this$0:Landroid/telephony/PhoneCallback;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/telephony/PhoneCallback;->onPhoneCallback1(I)V

    .line 54
    nop

    .line 65
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
