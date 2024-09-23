.class Landroid/graphics/AwareBitmapCacher$MyHandler;
.super Landroid/os/Handler;
.source "AwareBitmapCacher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/AwareBitmapCacher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/graphics/AwareBitmapCacher;


# direct methods
.method public constructor <init>(Landroid/graphics/AwareBitmapCacher;)V
    .locals 0

    .line 278
    iput-object p1, p0, Landroid/graphics/AwareBitmapCacher$MyHandler;->this$0:Landroid/graphics/AwareBitmapCacher;

    .line 279
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 280
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 284
    if-nez p1, :cond_0

    .line 285
    const-string v0, "AwareBitmapCacher"

    const-string v1, "null == msg"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    return-void

    .line 289
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 298
    :pswitch_0
    iget-object v0, p0, Landroid/graphics/AwareBitmapCacher$MyHandler;->this$0:Landroid/graphics/AwareBitmapCacher;

    invoke-static {v0}, Landroid/graphics/AwareBitmapCacher;->access$200(Landroid/graphics/AwareBitmapCacher;)V

    .line 299
    goto :goto_0

    .line 294
    :pswitch_1
    const/16 v0, 0x3ea

    invoke-virtual {p0, v0}, Landroid/graphics/AwareBitmapCacher$MyHandler;->removeMessages(I)V

    .line 295
    iget-object v0, p0, Landroid/graphics/AwareBitmapCacher$MyHandler;->this$0:Landroid/graphics/AwareBitmapCacher;

    invoke-static {v0}, Landroid/graphics/AwareBitmapCacher;->access$100(Landroid/graphics/AwareBitmapCacher;)V

    .line 296
    goto :goto_0

    .line 291
    :pswitch_2
    iget-object v0, p0, Landroid/graphics/AwareBitmapCacher$MyHandler;->this$0:Landroid/graphics/AwareBitmapCacher;

    invoke-static {v0}, Landroid/graphics/AwareBitmapCacher;->access$000(Landroid/graphics/AwareBitmapCacher;)V

    .line 292
    nop

    .line 303
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
