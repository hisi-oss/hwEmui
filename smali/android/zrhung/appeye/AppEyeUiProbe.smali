.class public final Landroid/zrhung/appeye/AppEyeUiProbe;
.super Landroid/zrhung/ZrHungImpl;
.source "AppEyeUiProbe.java"

# interfaces
.implements Landroid/zrhung/IAppEyeUiProbe;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;
    }
.end annotation


# static fields
.field private static final MAIN_THREAD_MESSAGE_CALLBACK:Ljava/lang/String; = "android.app.LoadedApk$ReceiverDispatcher$Args"

.field private static final MSG_DELAY_WATERLINE_DELAY:I = 0x2

.field private static final MSG_DELAY_WATERLINE_FINE:I = 0x0

.field private static final MSG_DELAY_WATERLINE_WARNING:I = 0x1

.field private static MSG_DELAY_WATERMARK_DELAY:J = 0x0L

.field private static MSG_DELAY_WATERMARK_WARNING:J = 0x0L

.field private static final SYSTEMUI_PKG_NAME:Ljava/lang/String; = "com.android.systemui"

.field private static final TAG:Ljava/lang/String; = "ZrHung.AppEyeUiProbe"

.field private static mSingleton:Landroid/zrhung/appeye/AppEyeUiProbe;


# instance fields
.field private mChecker:Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;

.field private mCheckerThread:Ljava/lang/Thread;

.field private mEnableSystemUIChecking:Z

.field private mIsSystemUi:Z

.field private mPackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 43
    const-wide/16 v0, 0x3e8

    sput-wide v0, Landroid/zrhung/appeye/AppEyeUiProbe;->MSG_DELAY_WATERMARK_WARNING:J

    .line 44
    const-wide/16 v0, 0xbb8

    sput-wide v0, Landroid/zrhung/appeye/AppEyeUiProbe;->MSG_DELAY_WATERMARK_DELAY:J

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "wpName"    # Ljava/lang/String;

    .line 639
    invoke-direct {p0, p1}, Landroid/zrhung/ZrHungImpl;-><init>(Ljava/lang/String;)V

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/zrhung/appeye/AppEyeUiProbe;->mIsSystemUi:Z

    .line 54
    iput-boolean v0, p0, Landroid/zrhung/appeye/AppEyeUiProbe;->mEnableSystemUIChecking:Z

    .line 640
    new-instance v0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;

    invoke-direct {v0, p0}, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;-><init>(Landroid/zrhung/appeye/AppEyeUiProbe;)V

    iput-object v0, p0, Landroid/zrhung/appeye/AppEyeUiProbe;->mChecker:Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;

    .line 641
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/zrhung/appeye/AppEyeUiProbe;->mCheckerThread:Ljava/lang/Thread;

    .line 642
    const-string v0, "ZrHung.AppEyeUiProbe"

    const-string v1, "AppEyeUIP created."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    return-void
.end method

.method static synthetic access$000(Landroid/zrhung/appeye/AppEyeUiProbe;)Z
    .locals 1
    .param p0, "x0"    # Landroid/zrhung/appeye/AppEyeUiProbe;

    .line 36
    iget-boolean v0, p0, Landroid/zrhung/appeye/AppEyeUiProbe;->mIsSystemUi:Z

    return v0
.end method

.method static synthetic access$100(Landroid/zrhung/appeye/AppEyeUiProbe;)S
    .locals 1
    .param p0, "x0"    # Landroid/zrhung/appeye/AppEyeUiProbe;

    .line 36
    iget-short v0, p0, Landroid/zrhung/appeye/AppEyeUiProbe;->mWpId:S

    return v0
.end method

.method static synthetic access$202(J)J
    .locals 0
    .param p0, "x0"    # J

    .line 36
    sput-wide p0, Landroid/zrhung/appeye/AppEyeUiProbe;->MSG_DELAY_WATERMARK_WARNING:J

    return-wide p0
.end method

.method static synthetic access$302(J)J
    .locals 0
    .param p0, "x0"    # J

    .line 36
    sput-wide p0, Landroid/zrhung/appeye/AppEyeUiProbe;->MSG_DELAY_WATERMARK_DELAY:J

    return-wide p0
.end method

.method static synthetic access$402(Landroid/zrhung/appeye/AppEyeUiProbe;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/zrhung/appeye/AppEyeUiProbe;
    .param p1, "x1"    # Z

    .line 36
    iput-boolean p1, p0, Landroid/zrhung/appeye/AppEyeUiProbe;->mEnableSystemUIChecking:Z

    return p1
.end method

.method static synthetic access$500(Landroid/zrhung/appeye/AppEyeUiProbe;)Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;
    .locals 1
    .param p0, "x0"    # Landroid/zrhung/appeye/AppEyeUiProbe;

    .line 36
    iget-object v0, p0, Landroid/zrhung/appeye/AppEyeUiProbe;->mChecker:Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;

    return-object v0
.end method

.method static synthetic access$600(Landroid/os/Message;Landroid/os/Handler;Ljava/lang/Runnable;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/os/Message;
    .param p1, "x1"    # Landroid/os/Handler;
    .param p2, "x2"    # Ljava/lang/Runnable;

    .line 36
    invoke-static {p0, p1, p2}, Landroid/zrhung/appeye/AppEyeUiProbe;->dumpMessage(Landroid/os/Message;Landroid/os/Handler;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Landroid/zrhung/appeye/AppEyeUiProbe;SLandroid/zrhung/ZrHungData;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Landroid/zrhung/appeye/AppEyeUiProbe;
    .param p1, "x1"    # S
    .param p2, "x2"    # Landroid/zrhung/ZrHungData;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;

    .line 36
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/zrhung/appeye/AppEyeUiProbe;->sendAppEyeEvent(SLandroid/zrhung/ZrHungData;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private addDelayedMsgList(J)V
    .locals 10
    .param p1, "msgDelayed"    # J

    .line 783
    sget-boolean v0, Landroid/util/Log;->HWINFO:Z

    if-eqz v0, :cond_0

    .line 784
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Landroid/zrhung/appeye/AppEyeUiProbe;->mChecker:Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;

    iget-wide v2, v2, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->dispatchTime:J

    sub-long/2addr v0, v2

    .line 785
    .local v0, "msgProcessed":J
    iget-object v2, p0, Landroid/zrhung/appeye/AppEyeUiProbe;->mChecker:Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;

    iget-object v2, v2, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->curMessage:Landroid/os/Message;

    iget-object v3, p0, Landroid/zrhung/appeye/AppEyeUiProbe;->mChecker:Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;

    iget-object v3, v3, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->curMessageTarget:Landroid/os/Handler;

    iget-object v4, p0, Landroid/zrhung/appeye/AppEyeUiProbe;->mChecker:Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;

    iget-object v4, v4, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->curMessageCallback:Ljava/lang/Runnable;

    invoke-static {v2, v3, v4}, Landroid/zrhung/appeye/AppEyeUiProbe;->dumpMessage(Landroid/os/Message;Landroid/os/Handler;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v2

    .line 787
    .local v2, "messageInfo":Ljava/lang/String;
    iget-object v4, p0, Landroid/zrhung/appeye/AppEyeUiProbe;->mChecker:Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;

    move-object v5, v2

    move-wide v6, p1

    move-wide v8, v0

    invoke-virtual/range {v4 .. v9}, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->addToDelayedMsgList(Ljava/lang/String;JJ)V

    .line 789
    .end local v0    # "msgProcessed":J
    .end local v2    # "messageInfo":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private static dumpMessage(Landroid/os/Message;Landroid/os/Handler;Ljava/lang/Runnable;)Ljava/lang/String;
    .locals 4
    .param p0, "message"    # Landroid/os/Message;
    .param p1, "target"    # Landroid/os/Handler;
    .param p2, "callback"    # Ljava/lang/Runnable;

    .line 796
    if-nez p0, :cond_0

    .line 797
    const-string v0, "message is null"

    return-object v0

    .line 798
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 799
    .local v0, "b":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 801
    if-eqz p1, :cond_6

    .line 802
    if-eqz p2, :cond_2

    .line 804
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 805
    .local v1, "callbackClass":Ljava/lang/String;
    const-string v2, " callback="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 806
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 807
    const-string v2, "android.app.LoadedApk$ReceiverDispatcher$Args"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 808
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "callbackClass":Ljava/lang/String;
    goto :goto_0

    .line 810
    :catch_0
    move-exception v1

    .line 811
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "ZrHung.AppEyeUiProbe"

    const-string v3, "Could not get Class Name"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 812
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    goto :goto_1

    .line 814
    :cond_2
    const-string v1, " what="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 815
    iget v1, p0, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 818
    :goto_1
    iget v1, p0, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_3

    .line 819
    const-string v1, " arg1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 820
    iget v1, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 823
    :cond_3
    iget v1, p0, Landroid/os/Message;->arg2:I

    if-eqz v1, :cond_4

    .line 824
    const-string v1, " arg2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 825
    iget v1, p0, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 828
    :cond_4
    :try_start_1
    iget-object v1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_5

    .line 829
    const-string v1, " obj="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 830
    iget-object v1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 834
    :cond_5
    goto :goto_2

    .line 832
    :catch_1
    move-exception v1

    .line 833
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v2, "ZrHung.AppEyeUiProbe"

    const-string v3, "Could not get Obj"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 835
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    const-string v1, " target="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 836
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 838
    :cond_6
    const-string v1, " barrier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 839
    iget v1, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 842
    :goto_3
    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 843
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static declared-synchronized get()Landroid/zrhung/appeye/AppEyeUiProbe;
    .locals 3

    const-class v0, Landroid/zrhung/appeye/AppEyeUiProbe;

    monitor-enter v0

    .line 628
    :try_start_0
    sget-object v1, Landroid/zrhung/appeye/AppEyeUiProbe;->mSingleton:Landroid/zrhung/appeye/AppEyeUiProbe;

    if-nez v1, :cond_0

    .line 629
    new-instance v1, Landroid/zrhung/appeye/AppEyeUiProbe;

    const-string v2, "appeye_uiprobe"

    invoke-direct {v1, v2}, Landroid/zrhung/appeye/AppEyeUiProbe;-><init>(Ljava/lang/String;)V

    sput-object v1, Landroid/zrhung/appeye/AppEyeUiProbe;->mSingleton:Landroid/zrhung/appeye/AppEyeUiProbe;

    .line 632
    :cond_0
    sget-object v1, Landroid/zrhung/appeye/AppEyeUiProbe;->mSingleton:Landroid/zrhung/appeye/AppEyeUiProbe;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 627
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private initBgWorkingPackageList()V
    .locals 2

    .line 847
    iget-object v0, p0, Landroid/zrhung/appeye/AppEyeUiProbe;->mPackageName:Ljava/lang/String;

    if-nez v0, :cond_3

    iget-boolean v0, p0, Landroid/zrhung/appeye/AppEyeUiProbe;->mEnableSystemUIChecking:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 851
    :cond_0
    iget-object v0, p0, Landroid/zrhung/appeye/AppEyeUiProbe;->mChecker:Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;

    if-eqz v0, :cond_1

    .line 852
    iget-object v0, p0, Landroid/zrhung/appeye/AppEyeUiProbe;->mChecker:Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;

    invoke-static {v0}, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->access$800(Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/zrhung/appeye/AppEyeUiProbe;->mPackageName:Ljava/lang/String;

    .line 855
    :cond_1
    const-string v0, "com.android.systemui"

    iget-object v1, p0, Landroid/zrhung/appeye/AppEyeUiProbe;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Landroid/zrhung/appeye/AppEyeUiProbe;->mSingleton:Landroid/zrhung/appeye/AppEyeUiProbe;

    if-eqz v0, :cond_2

    .line 856
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/zrhung/appeye/AppEyeUiProbe;->mIsSystemUi:Z

    .line 857
    sget-object v0, Landroid/zrhung/appeye/AppEyeUiProbe;->mSingleton:Landroid/zrhung/appeye/AppEyeUiProbe;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/zrhung/appeye/AppEyeUiProbe;->start(Landroid/zrhung/ZrHungData;)Z

    .line 859
    :cond_2
    return-void

    .line 848
    :cond_3
    :goto_0
    return-void
.end method

.method private setCurrActivity(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 732
    iget-object v0, p0, Landroid/zrhung/appeye/AppEyeUiProbe;->mChecker:Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->mCurrActivity:Ljava/lang/ref/WeakReference;

    .line 733
    return-void
.end method

.method private setFirstInputTime(J)V
    .locals 5
    .param p1, "inputTime"    # J

    .line 718
    iget-object v0, p0, Landroid/zrhung/appeye/AppEyeUiProbe;->mChecker:Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;

    iget v0, v0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->waterLine:I

    const-wide/16 v1, 0x0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Landroid/zrhung/appeye/AppEyeUiProbe;->mChecker:Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;

    iget-wide v3, v0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->firstInputTime:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    .line 719
    iget-object v0, p0, Landroid/zrhung/appeye/AppEyeUiProbe;->mChecker:Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;

    iput-wide p1, v0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->firstInputTime:J

    goto :goto_0

    .line 720
    :cond_0
    iget-object v0, p0, Landroid/zrhung/appeye/AppEyeUiProbe;->mChecker:Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;

    iget v0, v0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->waterLine:I

    const/4 v3, 0x1

    if-ge v0, v3, :cond_1

    iget-object v0, p0, Landroid/zrhung/appeye/AppEyeUiProbe;->mChecker:Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;

    iget-wide v3, v0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->firstInputTime:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_1

    .line 721
    iget-object v0, p0, Landroid/zrhung/appeye/AppEyeUiProbe;->mChecker:Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;

    iput-wide v1, v0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->firstInputTime:J

    .line 724
    :cond_1
    :goto_0
    invoke-direct {p0}, Landroid/zrhung/appeye/AppEyeUiProbe;->initBgWorkingPackageList()V

    .line 725
    return-void
.end method


# virtual methods
.method public beginDispatching(Landroid/os/Message;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "target"    # Landroid/os/Handler;
    .param p3, "callback"    # Ljava/lang/Runnable;

    .line 740
    iget-object v0, p0, Landroid/zrhung/appeye/AppEyeUiProbe;->mChecker:Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->dispatchTime:J

    .line 741
    iget-object v0, p0, Landroid/zrhung/appeye/AppEyeUiProbe;->mChecker:Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->dispatching:Z

    .line 742
    iget-object v0, p0, Landroid/zrhung/appeye/AppEyeUiProbe;->mChecker:Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;

    iput-object p1, v0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->curMessage:Landroid/os/Message;

    .line 743
    iget-object v0, p0, Landroid/zrhung/appeye/AppEyeUiProbe;->mChecker:Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;

    iput-object p2, v0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->curMessageTarget:Landroid/os/Handler;

    .line 744
    iget-object v0, p0, Landroid/zrhung/appeye/AppEyeUiProbe;->mChecker:Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;

    iput-object p3, v0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->curMessageCallback:Ljava/lang/Runnable;

    .line 745
    return-void
.end method

.method public check(Landroid/zrhung/ZrHungData;)Z
    .locals 5
    .param p1, "args"    # Landroid/zrhung/ZrHungData;

    .line 683
    const-string v0, "method"

    invoke-virtual {p1, v0}, Landroid/zrhung/ZrHungData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 684
    .local v0, "method":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0xdc858e3

    const/4 v3, 0x1

    if-eq v1, v2, :cond_3

    const v2, 0x3d24e14d

    if-eq v1, v2, :cond_2

    const v2, 0x66f9b1e9

    if-eq v1, v2, :cond_1

    const v2, 0x72a9a4bf

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "beginDispatching"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const-string v1, "setFirstInputTime"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x3

    goto :goto_1

    :cond_2
    const-string v1, "endDispatching"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v3

    goto :goto_1

    :cond_3
    const-string v1, "setCurrActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x2

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 706
    const-string v1, "ZrHung.AppEyeUiProbe"

    const-string v2, "unexpected method which should be handled."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 699
    :pswitch_0
    const-string v1, "inputTime"

    invoke-virtual {p1, v1}, Landroid/zrhung/ZrHungData;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 700
    .local v1, "inputTime":J
    invoke-direct {p0, v1, v2}, Landroid/zrhung/appeye/AppEyeUiProbe;->setFirstInputTime(J)V

    .line 702
    goto :goto_2

    .line 695
    .end local v1    # "inputTime":J
    :pswitch_1
    const-string v1, "activity"

    invoke-virtual {p1, v1}, Landroid/zrhung/ZrHungData;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 696
    .local v1, "activity":Landroid/app/Activity;
    invoke-direct {p0, v1}, Landroid/zrhung/appeye/AppEyeUiProbe;->setCurrActivity(Landroid/app/Activity;)V

    .line 697
    goto :goto_2

    .line 692
    .end local v1    # "activity":Landroid/app/Activity;
    :pswitch_2
    invoke-virtual {p0}, Landroid/zrhung/appeye/AppEyeUiProbe;->endDispatching()V

    .line 693
    goto :goto_2

    .line 686
    :pswitch_3
    const-string v1, "message"

    invoke-virtual {p1, v1}, Landroid/zrhung/ZrHungData;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    .line 687
    .local v1, "msg":Landroid/os/Message;
    const-string v2, "target"

    invoke-virtual {p1, v2}, Landroid/zrhung/ZrHungData;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    .line 688
    .local v2, "target":Landroid/os/Handler;
    const-string v4, "callback"

    invoke-virtual {p1, v4}, Landroid/zrhung/ZrHungData;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Runnable;

    .line 689
    .local v4, "callback":Ljava/lang/Runnable;
    invoke-virtual {p0, v1, v2, v4}, Landroid/zrhung/appeye/AppEyeUiProbe;->beginDispatching(Landroid/os/Message;Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 690
    nop

    .line 710
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "target":Landroid/os/Handler;
    .end local v4    # "callback":Ljava/lang/Runnable;
    :goto_2
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public endDispatching()V
    .locals 7

    .line 752
    iget-object v0, p0, Landroid/zrhung/appeye/AppEyeUiProbe;->mChecker:Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;

    iget-object v0, v0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->curMessage:Landroid/os/Message;

    if-nez v0, :cond_0

    .line 753
    return-void

    .line 755
    :cond_0
    iget-object v0, p0, Landroid/zrhung/appeye/AppEyeUiProbe;->mChecker:Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;

    iget-wide v0, v0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->dispatchTime:J

    iget-object v2, p0, Landroid/zrhung/appeye/AppEyeUiProbe;->mChecker:Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;

    iget-object v2, v2, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->curMessage:Landroid/os/Message;

    iget-wide v2, v2, Landroid/os/Message;->expectedDispatchTime:J

    sub-long/2addr v0, v2

    .line 757
    .local v0, "msgDelayed":J
    sget-wide v2, Landroid/zrhung/appeye/AppEyeUiProbe;->MSG_DELAY_WATERMARK_DELAY:J

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-ltz v2, :cond_1

    .line 758
    invoke-direct {p0, v0, v1}, Landroid/zrhung/appeye/AppEyeUiProbe;->addDelayedMsgList(J)V

    .line 759
    iget-object v2, p0, Landroid/zrhung/appeye/AppEyeUiProbe;->mChecker:Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;

    iget v2, v2, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->waterLine:I

    const/4 v4, 0x2

    if-eq v2, v4, :cond_3

    .line 760
    iget-object v2, p0, Landroid/zrhung/appeye/AppEyeUiProbe;->mChecker:Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iput-wide v5, v2, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->delayStartTime:J

    .line 761
    iget-object v2, p0, Landroid/zrhung/appeye/AppEyeUiProbe;->mChecker:Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;

    iput v4, v2, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->waterLine:I

    goto :goto_0

    .line 763
    :cond_1
    sget-wide v4, Landroid/zrhung/appeye/AppEyeUiProbe;->MSG_DELAY_WATERMARK_WARNING:J

    cmp-long v2, v0, v4

    if-ltz v2, :cond_2

    .line 764
    invoke-direct {p0, v0, v1}, Landroid/zrhung/appeye/AppEyeUiProbe;->addDelayedMsgList(J)V

    .line 765
    iget-object v2, p0, Landroid/zrhung/appeye/AppEyeUiProbe;->mChecker:Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;

    iget v2, v2, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->waterLine:I

    const/4 v4, 0x1

    if-eq v2, v4, :cond_3

    .line 766
    iget-object v2, p0, Landroid/zrhung/appeye/AppEyeUiProbe;->mChecker:Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;

    iput v4, v2, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->waterLine:I

    goto :goto_0

    .line 770
    :cond_2
    iget-object v2, p0, Landroid/zrhung/appeye/AppEyeUiProbe;->mChecker:Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;

    iget v2, v2, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->waterLine:I

    if-eqz v2, :cond_3

    .line 771
    iget-object v2, p0, Landroid/zrhung/appeye/AppEyeUiProbe;->mChecker:Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;

    iput v3, v2, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->waterLine:I

    .line 772
    iget-object v2, p0, Landroid/zrhung/appeye/AppEyeUiProbe;->mChecker:Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;

    iput v3, v2, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->writeIndexOfArray:I

    .line 773
    iget-object v2, p0, Landroid/zrhung/appeye/AppEyeUiProbe;->mChecker:Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;

    iput-boolean v3, v2, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->outOfArrayBound:Z

    .line 776
    :cond_3
    :goto_0
    iget-object v2, p0, Landroid/zrhung/appeye/AppEyeUiProbe;->mChecker:Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;

    iput-boolean v3, v2, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->dispatching:Z

    .line 777
    iget-object v2, p0, Landroid/zrhung/appeye/AppEyeUiProbe;->mChecker:Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->curMessage:Landroid/os/Message;

    .line 778
    iget-object v2, p0, Landroid/zrhung/appeye/AppEyeUiProbe;->mChecker:Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;

    iput-object v3, v2, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->curMessageTarget:Landroid/os/Handler;

    .line 779
    iget-object v2, p0, Landroid/zrhung/appeye/AppEyeUiProbe;->mChecker:Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;

    iput-object v3, v2, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->curMessageCallback:Ljava/lang/Runnable;

    .line 780
    return-void
.end method

.method public start(Landroid/zrhung/ZrHungData;)Z
    .locals 4
    .param p1, "args"    # Landroid/zrhung/ZrHungData;

    .line 651
    monitor-enter p0

    .line 652
    :try_start_0
    iget-object v0, p0, Landroid/zrhung/appeye/AppEyeUiProbe;->mCheckerThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 653
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Landroid/zrhung/appeye/AppEyeUiProbe;->mChecker:Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Landroid/zrhung/appeye/AppEyeUiProbe;->mCheckerThread:Ljava/lang/Thread;

    .line 654
    iget-object v0, p0, Landroid/zrhung/appeye/AppEyeUiProbe;->mCheckerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 656
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 658
    iget-object v0, p0, Landroid/zrhung/appeye/AppEyeUiProbe;->mChecker:Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;

    monitor-enter v0

    .line 659
    :try_start_1
    iget-object v1, p0, Landroid/zrhung/appeye/AppEyeUiProbe;->mChecker:Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->enabled:Z

    .line 660
    const-string v1, "ZrHung.AppEyeUiProbe"

    const-string v3, "notify runnable to start."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    iget-object v1, p0, Landroid/zrhung/appeye/AppEyeUiProbe;->mChecker:Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 662
    monitor-exit v0

    .line 663
    return v2

    .line 662
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 656
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public stop(Landroid/zrhung/ZrHungData;)Z
    .locals 2
    .param p1, "args"    # Landroid/zrhung/ZrHungData;

    .line 672
    const-string v0, "ZrHung.AppEyeUiProbe"

    const-string v1, "stop checker."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    iget-object v0, p0, Landroid/zrhung/appeye/AppEyeUiProbe;->mChecker:Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->enabled:Z

    .line 674
    const/4 v0, 0x1

    return v0
.end method
