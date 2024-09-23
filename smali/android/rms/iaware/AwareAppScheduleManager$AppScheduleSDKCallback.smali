.class Landroid/rms/iaware/AwareAppScheduleManager$AppScheduleSDKCallback;
.super Landroid/os/Binder;
.source "AwareAppScheduleManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/rms/iaware/AwareAppScheduleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppScheduleSDKCallback"
.end annotation


# static fields
.field private static final SDK_CALLBACK_DESCRIPTOR:Ljava/lang/String; = "android.rms.iaware.AppScheduleSDKCallback"

.field private static final TRANSACTION_initAppSchedulePolicy:I = 0x1


# instance fields
.field final synthetic this$0:Landroid/rms/iaware/AwareAppScheduleManager;


# direct methods
.method public constructor <init>(Landroid/rms/iaware/AwareAppScheduleManager;)V
    .locals 0

    .line 579
    iput-object p1, p0, Landroid/rms/iaware/AwareAppScheduleManager$AppScheduleSDKCallback;->this$0:Landroid/rms/iaware/AwareAppScheduleManager;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 580
    const-string p1, "android.rms.iaware.AppScheduleSDKCallback"

    invoke-virtual {p0, p0, p1}, Landroid/rms/iaware/AwareAppScheduleManager$AppScheduleSDKCallback;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 581
    return-void
.end method

.method private initAppSchedulePolicy([I)V
    .locals 10
    .param p1, "policy"    # [I

    .line 623
    const/4 v0, 0x0

    aget v1, p1, v0

    if-nez v1, :cond_0

    .line 624
    iget-object v1, p0, Landroid/rms/iaware/AwareAppScheduleManager$AppScheduleSDKCallback;->this$0:Landroid/rms/iaware/AwareAppScheduleManager;

    invoke-static {v1}, Landroid/rms/iaware/AwareAppScheduleManager;->access$900(Landroid/rms/iaware/AwareAppScheduleManager;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 625
    const-string v0, "AwareAppScheduleManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init: failed cause feature is disabled process:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/rms/iaware/AwareAppScheduleManager$AppScheduleSDKCallback;->this$0:Landroid/rms/iaware/AwareAppScheduleManager;

    invoke-static {v2}, Landroid/rms/iaware/AwareAppScheduleManager;->access$1000(Landroid/rms/iaware/AwareAppScheduleManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/rms/iaware/AwareLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    return-void

    .line 628
    :cond_0
    iget-object v1, p0, Landroid/rms/iaware/AwareAppScheduleManager$AppScheduleSDKCallback;->this$0:Landroid/rms/iaware/AwareAppScheduleManager;

    iget-object v2, p0, Landroid/rms/iaware/AwareAppScheduleManager$AppScheduleSDKCallback;->this$0:Landroid/rms/iaware/AwareAppScheduleManager;

    invoke-static {v2}, Landroid/rms/iaware/AwareAppScheduleManager;->access$1200(Landroid/rms/iaware/AwareAppScheduleManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/rms/iaware/AwareAppScheduleManager;->access$1102(Landroid/rms/iaware/AwareAppScheduleManager;Ljava/io/File;)Ljava/io/File;

    .line 629
    iget-object v1, p0, Landroid/rms/iaware/AwareAppScheduleManager$AppScheduleSDKCallback;->this$0:Landroid/rms/iaware/AwareAppScheduleManager;

    invoke-static {v1}, Landroid/rms/iaware/AwareAppScheduleManager;->access$1300(Landroid/rms/iaware/AwareAppScheduleManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v2, 0x1

    aget v3, p1, v2

    if-ne v2, v3, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v0

    :goto_0
    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 630
    iget-object v1, p0, Landroid/rms/iaware/AwareAppScheduleManager$AppScheduleSDKCallback;->this$0:Landroid/rms/iaware/AwareAppScheduleManager;

    const/4 v3, 0x2

    aget v4, p1, v3

    invoke-static {v1, v4}, Landroid/rms/iaware/AwareAppScheduleManager;->access$1402(Landroid/rms/iaware/AwareAppScheduleManager;I)I

    .line 631
    iget-object v1, p0, Landroid/rms/iaware/AwareAppScheduleManager$AppScheduleSDKCallback;->this$0:Landroid/rms/iaware/AwareAppScheduleManager;

    const-string v4, "com.tencent.mm"

    iget-object v5, p0, Landroid/rms/iaware/AwareAppScheduleManager$AppScheduleSDKCallback;->this$0:Landroid/rms/iaware/AwareAppScheduleManager;

    invoke-static {v5}, Landroid/rms/iaware/AwareAppScheduleManager;->access$1000(Landroid/rms/iaware/AwareAppScheduleManager;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x3

    if-eqz v4, :cond_2

    aget v4, p1, v5

    if-ne v2, v4, :cond_2

    move v4, v2

    goto :goto_1

    :cond_2
    move v4, v0

    :goto_1
    invoke-static {v1, v4}, Landroid/rms/iaware/AwareAppScheduleManager;->access$1502(Landroid/rms/iaware/AwareAppScheduleManager;Z)Z

    .line 632
    iget-object v1, p0, Landroid/rms/iaware/AwareAppScheduleManager$AppScheduleSDKCallback;->this$0:Landroid/rms/iaware/AwareAppScheduleManager;

    const/4 v4, 0x4

    aget v6, p1, v4

    if-ne v2, v6, :cond_3

    move v6, v2

    goto :goto_2

    :cond_3
    move v6, v0

    :goto_2
    invoke-static {v1, v6}, Landroid/rms/iaware/AwareAppScheduleManager;->access$1602(Landroid/rms/iaware/AwareAppScheduleManager;Z)Z

    .line 633
    iget-object v1, p0, Landroid/rms/iaware/AwareAppScheduleManager$AppScheduleSDKCallback;->this$0:Landroid/rms/iaware/AwareAppScheduleManager;

    invoke-static {v1}, Landroid/rms/iaware/AwareAppScheduleManager;->access$900(Landroid/rms/iaware/AwareAppScheduleManager;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 635
    const-string v1, "ro.huawei.build.version.incremental"

    const-string v6, ""

    invoke-static {v1, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 636
    .local v1, "hwSystemVersion":Ljava/lang/String;
    iget-object v6, p0, Landroid/rms/iaware/AwareAppScheduleManager$AppScheduleSDKCallback;->this$0:Landroid/rms/iaware/AwareAppScheduleManager;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    sget-object v7, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    goto :goto_3

    :cond_4
    move-object v7, v1

    :goto_3
    invoke-static {v6, v7}, Landroid/rms/iaware/AwareAppScheduleManager;->access$1702(Landroid/rms/iaware/AwareAppScheduleManager;Ljava/lang/String;)Ljava/lang/String;

    .line 639
    iget-object v6, p0, Landroid/rms/iaware/AwareAppScheduleManager$AppScheduleSDKCallback;->this$0:Landroid/rms/iaware/AwareAppScheduleManager;

    invoke-static {v6}, Landroid/rms/iaware/AwareAppScheduleManager;->access$1300(Landroid/rms/iaware/AwareAppScheduleManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    if-nez v6, :cond_6

    iget-object v6, p0, Landroid/rms/iaware/AwareAppScheduleManager$AppScheduleSDKCallback;->this$0:Landroid/rms/iaware/AwareAppScheduleManager;

    invoke-static {v6}, Landroid/rms/iaware/AwareAppScheduleManager;->access$1600(Landroid/rms/iaware/AwareAppScheduleManager;)Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_4

    :cond_5
    goto :goto_5

    :cond_6
    :goto_4
    move v0, v2

    .line 640
    .local v0, "learningOpen":Z
    :goto_5
    if-eqz v0, :cond_7

    iget-object v6, p0, Landroid/rms/iaware/AwareAppScheduleManager$AppScheduleSDKCallback;->this$0:Landroid/rms/iaware/AwareAppScheduleManager;

    invoke-static {v6}, Landroid/rms/iaware/AwareAppScheduleManager;->access$1800(Landroid/rms/iaware/AwareAppScheduleManager;)Landroid/os/HandlerThread;

    move-result-object v6

    if-nez v6, :cond_7

    .line 641
    iget-object v6, p0, Landroid/rms/iaware/AwareAppScheduleManager$AppScheduleSDKCallback;->this$0:Landroid/rms/iaware/AwareAppScheduleManager;

    new-instance v7, Landroid/os/HandlerThread;

    const-string v8, "queued-work-looper-schedule-handler"

    const/16 v9, 0xa

    invoke-direct {v7, v8, v9}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-static {v6, v7}, Landroid/rms/iaware/AwareAppScheduleManager;->access$1802(Landroid/rms/iaware/AwareAppScheduleManager;Landroid/os/HandlerThread;)Landroid/os/HandlerThread;

    .line 642
    iget-object v6, p0, Landroid/rms/iaware/AwareAppScheduleManager$AppScheduleSDKCallback;->this$0:Landroid/rms/iaware/AwareAppScheduleManager;

    invoke-static {v6}, Landroid/rms/iaware/AwareAppScheduleManager;->access$1800(Landroid/rms/iaware/AwareAppScheduleManager;)Landroid/os/HandlerThread;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/HandlerThread;->start()V

    .line 643
    iget-object v6, p0, Landroid/rms/iaware/AwareAppScheduleManager$AppScheduleSDKCallback;->this$0:Landroid/rms/iaware/AwareAppScheduleManager;

    new-instance v7, Landroid/rms/iaware/AwareAppScheduleManager$AppScheduleHandler;

    iget-object v8, p0, Landroid/rms/iaware/AwareAppScheduleManager$AppScheduleSDKCallback;->this$0:Landroid/rms/iaware/AwareAppScheduleManager;

    iget-object v9, p0, Landroid/rms/iaware/AwareAppScheduleManager$AppScheduleSDKCallback;->this$0:Landroid/rms/iaware/AwareAppScheduleManager;

    invoke-static {v9}, Landroid/rms/iaware/AwareAppScheduleManager;->access$1800(Landroid/rms/iaware/AwareAppScheduleManager;)Landroid/os/HandlerThread;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/rms/iaware/AwareAppScheduleManager$AppScheduleHandler;-><init>(Landroid/rms/iaware/AwareAppScheduleManager;Landroid/os/Looper;)V

    invoke-static {v6, v7}, Landroid/rms/iaware/AwareAppScheduleManager;->access$1902(Landroid/rms/iaware/AwareAppScheduleManager;Landroid/rms/iaware/AwareAppScheduleManager$AppScheduleHandler;)Landroid/rms/iaware/AwareAppScheduleManager$AppScheduleHandler;

    .line 644
    iget-object v6, p0, Landroid/rms/iaware/AwareAppScheduleManager$AppScheduleSDKCallback;->this$0:Landroid/rms/iaware/AwareAppScheduleManager;

    invoke-static {v6}, Landroid/rms/iaware/AwareAppScheduleManager;->access$1900(Landroid/rms/iaware/AwareAppScheduleManager;)Landroid/rms/iaware/AwareAppScheduleManager$AppScheduleHandler;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/rms/iaware/AwareAppScheduleManager$AppScheduleHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 645
    .local v2, "readMsg":Landroid/os/Message;
    iget-object v6, p0, Landroid/rms/iaware/AwareAppScheduleManager$AppScheduleSDKCallback;->this$0:Landroid/rms/iaware/AwareAppScheduleManager;

    invoke-static {v6}, Landroid/rms/iaware/AwareAppScheduleManager;->access$1900(Landroid/rms/iaware/AwareAppScheduleManager;)Landroid/rms/iaware/AwareAppScheduleManager$AppScheduleHandler;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/rms/iaware/AwareAppScheduleManager$AppScheduleHandler;->sendMessage(Landroid/os/Message;)Z

    .line 646
    iget-object v6, p0, Landroid/rms/iaware/AwareAppScheduleManager$AppScheduleSDKCallback;->this$0:Landroid/rms/iaware/AwareAppScheduleManager;

    invoke-static {v6}, Landroid/rms/iaware/AwareAppScheduleManager;->access$1900(Landroid/rms/iaware/AwareAppScheduleManager;)Landroid/rms/iaware/AwareAppScheduleManager$AppScheduleHandler;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/rms/iaware/AwareAppScheduleManager$AppScheduleHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 647
    .local v3, "finishLearnedMsg":Landroid/os/Message;
    iget-object v6, p0, Landroid/rms/iaware/AwareAppScheduleManager$AppScheduleSDKCallback;->this$0:Landroid/rms/iaware/AwareAppScheduleManager;

    invoke-static {v6}, Landroid/rms/iaware/AwareAppScheduleManager;->access$1900(Landroid/rms/iaware/AwareAppScheduleManager;)Landroid/rms/iaware/AwareAppScheduleManager$AppScheduleHandler;

    move-result-object v6

    const-wide/16 v7, 0x1388

    invoke-virtual {v6, v3, v7, v8}, Landroid/rms/iaware/AwareAppScheduleManager$AppScheduleHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 648
    iget-object v6, p0, Landroid/rms/iaware/AwareAppScheduleManager$AppScheduleSDKCallback;->this$0:Landroid/rms/iaware/AwareAppScheduleManager;

    invoke-static {v6}, Landroid/rms/iaware/AwareAppScheduleManager;->access$1900(Landroid/rms/iaware/AwareAppScheduleManager;)Landroid/rms/iaware/AwareAppScheduleManager$AppScheduleHandler;

    move-result-object v6

    const-wide/16 v7, 0x3a98

    invoke-virtual {v6, v4, v7, v8}, Landroid/rms/iaware/AwareAppScheduleManager$AppScheduleHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 649
    iget-object v4, p0, Landroid/rms/iaware/AwareAppScheduleManager$AppScheduleSDKCallback;->this$0:Landroid/rms/iaware/AwareAppScheduleManager;

    invoke-static {v4}, Landroid/rms/iaware/AwareAppScheduleManager;->access$1900(Landroid/rms/iaware/AwareAppScheduleManager;)Landroid/rms/iaware/AwareAppScheduleManager$AppScheduleHandler;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/rms/iaware/AwareAppScheduleManager$AppScheduleHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 650
    .local v4, "finishHandlerMsg":Landroid/os/Message;
    iget-object v5, p0, Landroid/rms/iaware/AwareAppScheduleManager$AppScheduleSDKCallback;->this$0:Landroid/rms/iaware/AwareAppScheduleManager;

    invoke-static {v5}, Landroid/rms/iaware/AwareAppScheduleManager;->access$1900(Landroid/rms/iaware/AwareAppScheduleManager;)Landroid/rms/iaware/AwareAppScheduleManager$AppScheduleHandler;

    move-result-object v5

    const-wide/16 v6, 0x4e20

    invoke-virtual {v5, v4, v6, v7}, Landroid/rms/iaware/AwareAppScheduleManager$AppScheduleHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 653
    .end local v2    # "readMsg":Landroid/os/Message;
    .end local v3    # "finishLearnedMsg":Landroid/os/Message;
    .end local v4    # "finishHandlerMsg":Landroid/os/Message;
    :cond_7
    iget-object v2, p0, Landroid/rms/iaware/AwareAppScheduleManager$AppScheduleSDKCallback;->this$0:Landroid/rms/iaware/AwareAppScheduleManager;

    iget-object v3, p0, Landroid/rms/iaware/AwareAppScheduleManager$AppScheduleSDKCallback;->this$0:Landroid/rms/iaware/AwareAppScheduleManager;

    invoke-static {v3}, Landroid/rms/iaware/AwareAppScheduleManager;->access$2000(Landroid/rms/iaware/AwareAppScheduleManager;)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/rms/iaware/AwareAppScheduleManager;->access$2100(Landroid/rms/iaware/AwareAppScheduleManager;Landroid/content/pm/ApplicationInfo;)V

    .line 654
    const-string v2, "AwareAppScheduleManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init: success process:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/rms/iaware/AwareAppScheduleManager$AppScheduleSDKCallback;->this$0:Landroid/rms/iaware/AwareAppScheduleManager;

    invoke-static {v4}, Landroid/rms/iaware/AwareAppScheduleManager;->access$1000(Landroid/rms/iaware/AwareAppScheduleManager;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/rms/iaware/AwareLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    .end local v0    # "learningOpen":Z
    .end local v1    # "hwSystemVersion":Ljava/lang/String;
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 613
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 585
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Landroid/rms/iaware/AwareAppScheduleManager$AppScheduleSDKCallback;->this$0:Landroid/rms/iaware/AwareAppScheduleManager;

    invoke-static {v2}, Landroid/rms/iaware/AwareAppScheduleManager;->access$700(Landroid/rms/iaware/AwareAppScheduleManager;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 586
    const-string v0, "AwareAppScheduleManager"

    const-string v2, "init policy is later!"

    invoke-static {v0, v2}, Landroid/rms/iaware/AwareLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    return v1

    .line 589
    :cond_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    .line 607
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 592
    :cond_1
    :try_start_0
    const-string v2, "android.rms.iaware.AppScheduleSDKCallback"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 596
    nop

    .line 597
    const/16 v2, 0x8

    new-array v3, v2, [I

    .line 598
    .local v3, "policy":[I
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readIntArray([I)V

    .line 599
    iget-object v4, p0, Landroid/rms/iaware/AwareAppScheduleManager$AppScheduleSDKCallback;->this$0:Landroid/rms/iaware/AwareAppScheduleManager;

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/rms/iaware/AwareAppScheduleManager;->access$802(Landroid/rms/iaware/AwareAppScheduleManager;Ljava/lang/String;)Ljava/lang/String;

    .line 600
    array-length v4, v3

    if-eq v4, v2, :cond_2

    .line 601
    const-string v0, "AwareAppScheduleManager"

    const-string v2, "policy is error"

    invoke-static {v0, v2}, Landroid/rms/iaware/AwareLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    return v1

    .line 604
    :cond_2
    invoke-direct {p0, v3}, Landroid/rms/iaware/AwareAppScheduleManager$AppScheduleSDKCallback;->initAppSchedulePolicy([I)V

    .line 605
    return v0

    .line 593
    .end local v3    # "policy":[I
    :catch_0
    move-exception v0

    .line 594
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v2, "AwareAppScheduleManager"

    const-string v3, "enforceInterface SDK_CALLBACK_DESCRIPTOR failed"

    invoke-static {v2, v3}, Landroid/rms/iaware/AwareLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    return v1
.end method
