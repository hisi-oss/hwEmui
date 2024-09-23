.class final Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;
.super Ljava/lang/Object;
.source "AppEyeUiProbe.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/zrhung/appeye/AppEyeUiProbe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AppEyeUIPChecker"
.end annotation


# static fields
.field private static final FREEZE_HAPPENED:I = 0x2

.field private static final INPUT_TIMEOUT_HAPPENED:I = 0x3

.field private static final LENGTH_OF_ARRAY:I = 0xa

.field private static final NO_EVENT_HAPPENED:I = 0x0

.field private static final UPPER_BOUND_OF_ARRAY:I = 0x9

.field private static final WARINIG_HAPPENED:I = 0x1


# instance fields
.field private BLOCK_FREEZE_TIMEOUT:J

.field private BLOCK_INPUT_TIMEOUT:J

.field private BLOCK_WARNING_TIMEOUT:J

.field private DEFAULT_CHECK_INTERVAL:J

.field private MSG_DELAY_FREEZE:J

.field private MSG_DELAY_WARNING:J

.field private VSYNC_CHECK_OFFSET:J

.field public checkStateForDispatchTime:I

.field public checkStateForMessageDelay:I

.field private configReady:Z

.field public curMessage:Landroid/os/Message;

.field public curMessageCallback:Ljava/lang/Runnable;

.field public curMessageTarget:Landroid/os/Handler;

.field public delayStartTime:J

.field public dispatchTime:J

.field public dispatching:Z

.field public enabled:Z

.field private firstFdEventTime:J

.field public firstInputTime:J

.field private functionEnabled:Z

.field private final isConfigLoadingDisabled:Z

.field public mCurrActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field public mDelayedMsgCache:Ljava/lang/StringBuilder;

.field public mDelayedMsgList:[Ljava/lang/String;

.field private mMainQueue:Landroid/os/MessageQueue;

.field public outOfArrayBound:Z

.field private pid:I

.field final synthetic this$0:Landroid/zrhung/appeye/AppEyeUiProbe;

.field public waterLine:I

.field public writeIndexOfArray:I


# direct methods
.method public constructor <init>(Landroid/zrhung/appeye/AppEyeUiProbe;)V
    .locals 6

    .line 96
    iput-object p1, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->this$0:Landroid/zrhung/appeye/AppEyeUiProbe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->BLOCK_WARNING_TIMEOUT:J

    .line 58
    iget-wide v2, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->BLOCK_WARNING_TIMEOUT:J

    const-wide/16 v4, 0x2

    mul-long/2addr v2, v4

    iput-wide v2, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->BLOCK_FREEZE_TIMEOUT:J

    .line 59
    const-wide/16 v2, 0xfa0

    iput-wide v2, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->BLOCK_INPUT_TIMEOUT:J

    .line 60
    const-wide/16 v2, 0x3e8

    iput-wide v2, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->DEFAULT_CHECK_INTERVAL:J

    .line 61
    iput-wide v0, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->MSG_DELAY_WARNING:J

    .line 62
    iput-wide v2, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->VSYNC_CHECK_OFFSET:J

    .line 63
    iget-wide v0, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->MSG_DELAY_WARNING:J

    mul-long/2addr v0, v4

    iput-wide v0, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->MSG_DELAY_FREEZE:J

    .line 94
    const-string p1, "false"

    const-string v0, "ro.feature.dfr.appeye"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->isConfigLoadingDisabled:Z

    .line 97
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->enabled:Z

    .line 98
    iput-boolean p1, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->dispatching:Z

    .line 99
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->dispatchTime:J

    .line 100
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->curMessage:Landroid/os/Message;

    .line 101
    iput-object v2, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->curMessageTarget:Landroid/os/Handler;

    .line 102
    iput-object v2, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->curMessageCallback:Ljava/lang/Runnable;

    .line 103
    iput-wide v0, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->delayStartTime:J

    .line 104
    iput p1, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->waterLine:I

    .line 105
    const/16 v3, 0xa

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->mDelayedMsgList:[Ljava/lang/String;

    .line 106
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v3, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->mDelayedMsgCache:Ljava/lang/StringBuilder;

    .line 107
    iput p1, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->writeIndexOfArray:I

    .line 108
    iput-boolean p1, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->outOfArrayBound:Z

    .line 109
    iput-object v2, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->mCurrActivity:Ljava/lang/ref/WeakReference;

    .line 110
    iput p1, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->checkStateForDispatchTime:I

    .line 111
    iput p1, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->checkStateForMessageDelay:I

    .line 112
    iput-wide v0, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->firstInputTime:J

    .line 114
    iput-wide v0, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->firstFdEventTime:J

    .line 115
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    iput v0, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->pid:I

    .line 116
    iput-boolean p1, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->configReady:Z

    .line 117
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->functionEnabled:Z

    .line 118
    return-void
.end method

.method static synthetic access$800(Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;

    .line 56
    invoke-direct {p0}, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private checkDispatchTimeout()J
    .locals 13

    .line 174
    iget-boolean v0, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->dispatching:Z

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    if-eqz v0, :cond_9

    .line 175
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 176
    .local v6, "curTime":J
    iget-wide v8, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->dispatchTime:J

    sub-long v8, v6, v8

    .line 177
    .local v8, "elapsed":J
    iget-wide v10, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->BLOCK_FREEZE_TIMEOUT:J

    cmp-long v0, v8, v10

    const/16 v10, 0x101

    if-ltz v0, :cond_5

    .line 179
    iget v0, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->checkStateForDispatchTime:I

    if-nez v0, :cond_0

    iget-wide v11, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->BLOCK_WARNING_TIMEOUT:J

    .line 180
    invoke-direct {p0, v11, v12}, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->isLastVsyncTimeout(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    iput v3, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->checkStateForDispatchTime:I

    .line 182
    invoke-direct {p0, v10, v8, v9}, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->sendAppEyeEvents(SJ)V

    .line 185
    :cond_0
    iget v0, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->checkStateForDispatchTime:I

    const/16 v10, 0x104

    if-ne v0, v3, :cond_2

    .line 186
    const/16 v0, 0x102

    invoke-direct {p0, v0, v8, v9}, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->sendAppEyeEvents(SJ)V

    .line 187
    iput v2, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->checkStateForDispatchTime:I

    .line 188
    iget-wide v2, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->firstFdEventTime:J

    sub-long v2, v6, v2

    iget-wide v11, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->BLOCK_INPUT_TIMEOUT:J

    cmp-long v0, v2, v11

    if-lez v0, :cond_1

    iget-wide v2, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->firstFdEventTime:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    iget-wide v2, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->BLOCK_FREEZE_TIMEOUT:J

    .line 190
    invoke-direct {p0, v2, v3}, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->isLastVsyncTimeout(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 191
    invoke-direct {p0, v10, v8, v9}, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->sendAppEyeEvents(SJ)V

    .line 192
    iput v1, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->checkStateForDispatchTime:I

    goto :goto_0

    .line 193
    :cond_1
    iget-wide v0, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->firstFdEventTime:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_4

    invoke-direct {p0}, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->peekEvent()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 194
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->firstFdEventTime:J

    goto :goto_0

    .line 196
    :cond_2
    iget v0, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->checkStateForDispatchTime:I

    if-ne v0, v2, :cond_4

    .line 197
    iget-wide v2, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->firstFdEventTime:J

    sub-long v2, v6, v2

    iget-wide v11, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->BLOCK_INPUT_TIMEOUT:J

    cmp-long v0, v2, v11

    if-lez v0, :cond_3

    iget-wide v2, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->firstFdEventTime:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_3

    iget-wide v2, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->BLOCK_FREEZE_TIMEOUT:J

    .line 199
    invoke-direct {p0, v2, v3}, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->isLastVsyncTimeout(J)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 200
    invoke-direct {p0, v10, v8, v9}, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->sendAppEyeEvents(SJ)V

    .line 201
    iput v1, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->checkStateForDispatchTime:I

    goto :goto_0

    .line 202
    :cond_3
    iget-wide v0, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->firstFdEventTime:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_4

    invoke-direct {p0}, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->peekEvent()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 203
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->firstFdEventTime:J

    .line 206
    :cond_4
    :goto_0
    iget-wide v0, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->DEFAULT_CHECK_INTERVAL:J

    return-wide v0

    .line 207
    :cond_5
    iget-wide v11, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->BLOCK_WARNING_TIMEOUT:J

    cmp-long v0, v8, v11

    if-ltz v0, :cond_8

    .line 208
    iget v0, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->checkStateForDispatchTime:I

    if-nez v0, :cond_6

    iget-wide v0, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->BLOCK_WARNING_TIMEOUT:J

    .line 209
    invoke-direct {p0, v0, v1}, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->isLastVsyncTimeout(J)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 210
    invoke-direct {p0, v10, v8, v9}, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->sendAppEyeEvents(SJ)V

    .line 211
    iput v3, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->checkStateForDispatchTime:I

    .line 212
    invoke-direct {p0}, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->peekEvent()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 214
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->firstFdEventTime:J

    .line 217
    :cond_6
    iget-wide v0, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->firstFdEventTime:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_7

    invoke-direct {p0}, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->peekEvent()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 218
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->firstFdEventTime:J

    .line 221
    :cond_7
    iget-wide v0, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->DEFAULT_CHECK_INTERVAL:J

    return-wide v0

    .line 224
    :cond_8
    iget-wide v10, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->BLOCK_INPUT_TIMEOUT:J

    cmp-long v0, v10, v8

    if-gez v0, :cond_9

    iget-wide v10, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->BLOCK_WARNING_TIMEOUT:J

    cmp-long v0, v8, v10

    if-gez v0, :cond_9

    .line 225
    iget-wide v0, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->BLOCK_WARNING_TIMEOUT:J

    sub-long/2addr v0, v8

    return-wide v0

    .line 230
    .end local v6    # "curTime":J
    .end local v8    # "elapsed":J
    :cond_9
    iget-object v0, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->this$0:Landroid/zrhung/appeye/AppEyeUiProbe;

    invoke-static {v0}, Landroid/zrhung/appeye/AppEyeUiProbe;->access$000(Landroid/zrhung/appeye/AppEyeUiProbe;)Z

    move-result v0

    if-nez v0, :cond_a

    iget v0, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->checkStateForDispatchTime:I

    if-ne v0, v3, :cond_a

    iget-wide v6, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->firstFdEventTime:J

    cmp-long v0, v6, v4

    if-eqz v0, :cond_a

    .line 232
    const/16 v0, 0x103

    invoke-direct {p0, v0, v4, v5}, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->sendAppEyeEvents(SJ)V

    .line 236
    :cond_a
    iget-object v0, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->this$0:Landroid/zrhung/appeye/AppEyeUiProbe;

    invoke-static {v0}, Landroid/zrhung/appeye/AppEyeUiProbe;->access$000(Landroid/zrhung/appeye/AppEyeUiProbe;)Z

    move-result v0

    if-nez v0, :cond_c

    iget v0, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->checkStateForDispatchTime:I

    if-eq v0, v2, :cond_b

    iget v0, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->checkStateForDispatchTime:I

    if-ne v0, v1, :cond_c

    .line 238
    :cond_b
    const-string v0, "ZrHung.AppEyeUiProbe"

    const-string v1, "sendAppEye recover Events."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    const/16 v0, 0x118

    invoke-direct {p0, v0, v4, v5}, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->sendAppEyeEvents(SJ)V

    .line 243
    :cond_c
    const/4 v0, 0x0

    iput v0, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->checkStateForDispatchTime:I

    .line 244
    iput-wide v4, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->firstFdEventTime:J

    .line 245
    iget-wide v0, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->DEFAULT_CHECK_INTERVAL:J

    return-wide v0
.end method

.method private checkMessageDelay()V
    .locals 13

    .line 252
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 254
    .local v0, "curTime":J
    iget v2, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->waterLine:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    if-ne v2, v4, :cond_4

    .line 255
    iget-wide v8, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->delayStartTime:J

    sub-long v8, v0, v8

    iget-wide v10, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->MSG_DELAY_FREEZE:J

    cmp-long v2, v8, v10

    if-lez v2, :cond_3

    .line 256
    iget v2, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->checkStateForMessageDelay:I

    const/4 v3, 0x3

    const/16 v8, 0x107

    if-ne v2, v5, :cond_1

    .line 257
    const/16 v2, 0x105

    invoke-direct {p0, v2, v6, v7}, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->sendAppEyeEvents(SJ)V

    .line 258
    iget-wide v9, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->firstInputTime:J

    cmp-long v2, v9, v6

    if-eqz v2, :cond_0

    iget-wide v9, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->firstInputTime:J

    sub-long v9, v0, v9

    iget-wide v11, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->BLOCK_INPUT_TIMEOUT:J

    cmp-long v2, v9, v11

    if-lez v2, :cond_0

    .line 259
    invoke-direct {p0, v8, v6, v7}, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->sendAppEyeEvents(SJ)V

    .line 260
    iput v3, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->checkStateForMessageDelay:I

    goto :goto_0

    .line 262
    :cond_0
    iput v4, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->checkStateForMessageDelay:I

    goto :goto_0

    .line 264
    :cond_1
    iget v2, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->checkStateForMessageDelay:I

    if-ne v2, v4, :cond_2

    .line 265
    iget-wide v4, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->firstInputTime:J

    cmp-long v2, v4, v6

    if-eqz v2, :cond_2

    iget-wide v4, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->firstInputTime:J

    sub-long v4, v0, v4

    iget-wide v9, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->BLOCK_INPUT_TIMEOUT:J

    cmp-long v2, v4, v9

    if-lez v2, :cond_2

    .line 266
    invoke-direct {p0, v8, v6, v7}, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->sendAppEyeEvents(SJ)V

    .line 267
    iput v3, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->checkStateForMessageDelay:I

    .line 270
    :cond_2
    :goto_0
    return-void

    .line 271
    :cond_3
    iget-wide v8, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->delayStartTime:J

    sub-long v8, v0, v8

    iget-wide v10, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->MSG_DELAY_WARNING:J

    cmp-long v2, v8, v10

    if-lez v2, :cond_4

    .line 272
    const-string v2, "ZrHung.AppEyeUiProbe"

    const-string v4, "message delay warning"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-object v2, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->mDelayedMsgCache:Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->mDelayedMsgCache:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 275
    iget-object v2, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->mDelayedMsgCache:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->dumpDelayedMessageList()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    iput v5, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->checkStateForMessageDelay:I

    .line 277
    return-void

    .line 281
    :cond_4
    iget v2, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->checkStateForMessageDelay:I

    if-ne v2, v5, :cond_5

    .line 282
    iget v2, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->waterLine:I

    if-ne v2, v5, :cond_5

    .line 283
    const/16 v2, 0x106

    invoke-direct {p0, v2, v6, v7}, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->sendAppEyeEvents(SJ)V

    .line 287
    :cond_5
    iput v3, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->checkStateForMessageDelay:I

    .line 288
    return-void
.end method

.method private getActivityName()Ljava/lang/String;
    .locals 1

    .line 464
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityName()Ljava/lang/String;

    move-result-object v0

    .line 465
    .local v0, "activityName":Ljava/lang/String;
    return-object v0
.end method

.method private getHungConfig()V
    .locals 11

    .line 343
    iget-boolean v0, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->configReady:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 344
    return-void

    .line 346
    :cond_0
    iget-object v0, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->this$0:Landroid/zrhung/appeye/AppEyeUiProbe;

    invoke-static {v0}, Landroid/zrhung/appeye/AppEyeUiProbe;->access$100(Landroid/zrhung/appeye/AppEyeUiProbe;)S

    move-result v0

    invoke-static {v0}, Landroid/util/ZRHung;->getHungConfig(S)Landroid/util/ZRHung$HungConfig;

    move-result-object v0

    .line 347
    .local v0, "cfg":Landroid/util/ZRHung$HungConfig;
    if-nez v0, :cond_1

    .line 348
    const-string v2, "ZrHung.AppEyeUiProbe"

    const-string v3, "Failed to get config from zrhung"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    iput-boolean v1, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->configReady:Z

    .line 350
    return-void

    .line 353
    :cond_1
    iget v2, v0, Landroid/util/ZRHung$HungConfig;->status:I

    const/4 v3, 0x0

    if-nez v2, :cond_6

    .line 354
    iget-object v2, v0, Landroid/util/ZRHung$HungConfig;->value:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 355
    const-string v2, "ZrHung.AppEyeUiProbe"

    const-string v3, "Failed to get config from zrhung"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iput-boolean v1, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->configReady:Z

    .line 357
    return-void

    .line 359
    :cond_2
    iget-object v2, v0, Landroid/util/ZRHung$HungConfig;->value:Ljava/lang/String;

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 360
    .local v2, "configs":[Ljava/lang/String;
    const-string v4, "1"

    aget-object v5, v2, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->functionEnabled:Z

    .line 361
    move v4, v1

    .local v4, "i":I
    :goto_0
    array-length v5, v2

    if-ge v4, v5, :cond_5

    .line 362
    const-wide/16 v5, 0x0

    move-wide v7, v5

    .line 365
    .local v7, "time":J
    :try_start_0
    aget-object v9, v2, v4

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v7, v9

    .line 370
    nop

    .line 371
    cmp-long v5, v7, v5

    if-eqz v5, :cond_4

    .line 372
    packed-switch v4, :pswitch_data_0

    .end local v7    # "time":J
    goto :goto_2

    .line 392
    .restart local v7    # "time":J
    :pswitch_0
    iget-object v5, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->this$0:Landroid/zrhung/appeye/AppEyeUiProbe;

    const-wide/16 v9, 0x1

    cmp-long v6, v7, v9

    if-nez v6, :cond_3

    move v6, v1

    goto :goto_1

    :cond_3
    move v6, v3

    :goto_1
    invoke-static {v5, v6}, Landroid/zrhung/appeye/AppEyeUiProbe;->access$402(Landroid/zrhung/appeye/AppEyeUiProbe;Z)Z

    .line 393
    goto :goto_2

    .line 389
    :pswitch_1
    iput-wide v7, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->DEFAULT_CHECK_INTERVAL:J

    .line 390
    goto :goto_2

    .line 386
    :pswitch_2
    invoke-static {v7, v8}, Landroid/zrhung/appeye/AppEyeUiProbe;->access$302(J)J

    .line 387
    goto :goto_2

    .line 383
    :pswitch_3
    invoke-static {v7, v8}, Landroid/zrhung/appeye/AppEyeUiProbe;->access$202(J)J

    .line 384
    goto :goto_2

    .line 380
    :pswitch_4
    iput-wide v7, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->BLOCK_INPUT_TIMEOUT:J

    .line 381
    goto :goto_2

    .line 377
    :pswitch_5
    iput-wide v7, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->BLOCK_FREEZE_TIMEOUT:J

    .line 378
    goto :goto_2

    .line 374
    :pswitch_6
    iput-wide v7, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->BLOCK_WARNING_TIMEOUT:J

    .line 375
    goto :goto_2

    .line 367
    :catch_0
    move-exception v5

    .line 368
    .local v5, "e":Ljava/lang/NumberFormatException;
    const-string v6, "ZrHung.AppEyeUiProbe"

    const-string v9, "the config string cannot be parsed as long"

    invoke-static {v6, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    nop

    .line 361
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    .end local v7    # "time":J
    :cond_4
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 399
    .end local v4    # "i":I
    :cond_5
    iget-wide v3, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->BLOCK_WARNING_TIMEOUT:J

    iput-wide v3, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->MSG_DELAY_WARNING:J

    .line 400
    iget-wide v3, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->BLOCK_FREEZE_TIMEOUT:J

    iput-wide v3, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->MSG_DELAY_FREEZE:J

    .line 401
    iput-boolean v1, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->configReady:Z

    .line 402
    return-void

    .line 403
    .end local v2    # "configs":[Ljava/lang/String;
    :cond_6
    iget v2, v0, Landroid/util/ZRHung$HungConfig;->status:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_7

    iget v2, v0, Landroid/util/ZRHung$HungConfig;->status:I

    const/4 v4, -0x2

    if-ne v2, v4, :cond_8

    .line 405
    :cond_7
    const-string v2, "ZrHung.AppEyeUiProbe"

    const-string v4, "config is not support or there is no config"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    iput-boolean v1, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->configReady:Z

    .line 407
    iput-boolean v3, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->functionEnabled:Z

    .line 409
    :cond_8
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getMainMessageQueue()Landroid/os/MessageQueue;
    .locals 2

    .line 443
    iget-object v0, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->mMainQueue:Landroid/os/MessageQueue;

    if-nez v0, :cond_0

    .line 444
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    .line 445
    .local v0, "mainLooper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 446
    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v1

    iput-object v1, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->mMainQueue:Landroid/os/MessageQueue;

    .line 449
    .end local v0    # "mainLooper":Landroid/os/Looper;
    :cond_0
    iget-object v0, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->mMainQueue:Landroid/os/MessageQueue;

    return-object v0
.end method

.method private getPackageName()Ljava/lang/String;
    .locals 1

    .line 456
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    .line 457
    .local v0, "packageName":Ljava/lang/String;
    return-object v0
.end method

.method private getProcessName()Ljava/lang/String;
    .locals 1

    .line 472
    invoke-static {}, Landroid/app/ActivityThread;->currentProcessName()Ljava/lang/String;

    move-result-object v0

    .line 473
    .local v0, "processName":Ljava/lang/String;
    return-object v0
.end method

.method private getUid()I
    .locals 4

    .line 480
    const/4 v0, 0x0

    move v1, v0

    .line 482
    .local v1, "uid":I
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 483
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 484
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-direct {p0}, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 488
    .end local v1    # "uid":I
    .local v0, "uid":I
    move v1, v0

    .end local v0    # "uid":I
    .restart local v1    # "uid":I
    :cond_0
    goto :goto_0

    .line 486
    :catch_0
    move-exception v0

    .line 487
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "ZrHung.AppEyeUiProbe"

    const-string v3, "could not get uid"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return v1
.end method

.method private isCurrentActivityResume()Z
    .locals 5

    .line 493
    const/4 v0, 0x0

    .line 494
    .local v0, "tempActivity":Landroid/app/Activity;
    const/4 v1, 0x0

    .line 495
    .local v1, "isResume":Z
    iget-object v2, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->mCurrActivity:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_0

    .line 496
    iget-object v2, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->mCurrActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/app/Activity;

    .line 498
    :cond_0
    if-eqz v0, :cond_1

    .line 500
    :try_start_0
    const-class v2, Landroid/app/Activity;

    const-string v3, "mResumed"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 501
    .local v2, "mResumed":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 502
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v3

    .line 509
    .end local v2    # "mResumed":Ljava/lang/reflect/Field;
    :goto_0
    goto :goto_1

    .line 507
    :catch_0
    move-exception v2

    .line 508
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "ZrHung.AppEyeUiProbe"

    const-string v4, "isCurrentActivityResume exception"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 505
    :catch_1
    move-exception v2

    .line 506
    .local v2, "e":Ljava/lang/IllegalAccessException;
    const-string v3, "ZrHung.AppEyeUiProbe"

    const-string v4, "isCurrentActivityResume IllegalAccessException"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_0

    .line 503
    :catch_2
    move-exception v2

    .line 504
    .local v2, "e":Ljava/lang/NoSuchFieldException;
    const-string v3, "ZrHung.AppEyeUiProbe"

    const-string v4, "isCurrentActivityResume NoSuchFieldException"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "e":Ljava/lang/NoSuchFieldException;
    goto :goto_0

    .line 511
    :cond_1
    :goto_1
    const-string v2, "ZrHung.AppEyeUiProbe"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current Activity:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    return v1
.end method

.method private isLastVsyncTimeout(J)Z
    .locals 5
    .param p1, "timeout"    # J

    .line 431
    invoke-direct {p0}, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->getMainMessageQueue()Landroid/os/MessageQueue;

    move-result-object v0

    .line 432
    .local v0, "mainQueue":Landroid/os/MessageQueue;
    if-eqz v0, :cond_0

    .line 433
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, v0, Landroid/os/MessageQueue;->mLastVsyncEnd:J

    sub-long/2addr v1, v3

    iget-wide v3, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->VSYNC_CHECK_OFFSET:J

    sub-long v3, p1, v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 434
    const/4 v1, 0x1

    return v1

    .line 437
    :cond_0
    const-string v1, "ZrHung.AppEyeUiProbe"

    const-string v2, "UIP freezing Happened but we still have vsync signal, exclude this case"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->functionEnabled:Z

    .line 439
    return v1
.end method

.method private peekEvent()Z
    .locals 3

    .line 417
    const/4 v0, 0x0

    .line 418
    .local v0, "tempActivity":Landroid/app/Activity;
    iget-object v1, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->mCurrActivity:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 419
    iget-object v1, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->mCurrActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/app/Activity;

    .line 421
    :cond_0
    if-eqz v0, :cond_1

    .line 422
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 423
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    .line 424
    .local v1, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->peekEvent()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 425
    const/4 v2, 0x1

    return v2

    .line 427
    .end local v1    # "viewRootImpl":Landroid/view/ViewRootImpl;
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private sendAppEyeEvents(SJ)V
    .locals 9
    .param p1, "wpID"    # S
    .param p2, "elapsedTime"    # J

    .line 520
    :try_start_0
    new-instance v0, Landroid/zrhung/ZrHungData;

    invoke-direct {v0}, Landroid/zrhung/ZrHungData;-><init>()V

    .line 521
    .local v0, "data":Landroid/zrhung/ZrHungData;
    const-string v1, "uid"

    invoke-direct {p0}, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->getUid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/zrhung/ZrHungData;->putInt(Ljava/lang/String;I)V

    .line 522
    const-string v1, "pid"

    iget v2, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->pid:I

    invoke-virtual {v0, v1, v2}, Landroid/zrhung/ZrHungData;->putInt(Ljava/lang/String;I)V

    .line 523
    const-string v1, "packageName"

    invoke-direct {p0}, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/zrhung/ZrHungData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    const-string v1, "processName"

    invoke-direct {p0}, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->getProcessName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/zrhung/ZrHungData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 526
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 528
    .local v2, "cmd":Ljava/lang/String;
    iget-object v3, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->this$0:Landroid/zrhung/appeye/AppEyeUiProbe;

    invoke-static {v3}, Landroid/zrhung/appeye/AppEyeUiProbe;->access$500(Landroid/zrhung/appeye/AppEyeUiProbe;)Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;

    move-result-object v3

    iget-object v3, v3, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->curMessage:Landroid/os/Message;

    .line 529
    .local v3, "msg":Landroid/os/Message;
    iget-object v4, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->this$0:Landroid/zrhung/appeye/AppEyeUiProbe;

    invoke-static {v4}, Landroid/zrhung/appeye/AppEyeUiProbe;->access$500(Landroid/zrhung/appeye/AppEyeUiProbe;)Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;

    move-result-object v4

    iget-object v4, v4, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->curMessageTarget:Landroid/os/Handler;

    .line 530
    .local v4, "target":Landroid/os/Handler;
    iget-object v5, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->this$0:Landroid/zrhung/appeye/AppEyeUiProbe;

    invoke-static {v5}, Landroid/zrhung/appeye/AppEyeUiProbe;->access$500(Landroid/zrhung/appeye/AppEyeUiProbe;)Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;

    move-result-object v5

    iget-object v5, v5, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->curMessageCallback:Ljava/lang/Runnable;

    .line 531
    .local v5, "callback":Ljava/lang/Runnable;
    invoke-static {v3, v4, v5}, Landroid/zrhung/appeye/AppEyeUiProbe;->access$600(Landroid/os/Message;Landroid/os/Handler;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v6

    .line 534
    .local v6, "messageInfo":Ljava/lang/String;
    const/16 v7, 0x118

    if-eq p1, v7, :cond_3

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 598
    :pswitch_0
    const-string v7, "APPEYE_MTO_INPUT\n"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    const-string v7, "delayed messages are:\n"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    invoke-virtual {p0}, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->dumpDelayedMessageList()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 601
    const-string v7, "delayed messages 3s age are:\n"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 602
    iget-object v7, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->mDelayedMsgCache:Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 603
    goto/16 :goto_0

    .line 586
    :pswitch_1
    const-string v7, "APPEYE_MTO_SLOW\n"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    const-string v7, "activityName = "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    invoke-direct {p0}, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->getActivityName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    const-string v7, "\n"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    const-string v7, "delayed messages are:\n"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    invoke-virtual {p0}, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->dumpDelayedMessageList()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    const-string v7, "delayed messages 3s age are:\n"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 595
    iget-object v7, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->mDelayedMsgCache:Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    goto/16 :goto_0

    .line 578
    :pswitch_2
    const-string v7, "APPEYE_MTO_FREEZE\n"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    const-string v7, "delayed messages are:\n"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    invoke-virtual {p0}, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->dumpDelayedMessageList()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    const-string v7, "delayed messages 3s age are:\n"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    iget-object v7, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->mDelayedMsgCache:Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    const-string v7, "B"

    move-object v2, v7

    .line 584
    goto/16 :goto_0

    .line 567
    :pswitch_3
    iget-object v7, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->this$0:Landroid/zrhung/appeye/AppEyeUiProbe;

    invoke-static {v7}, Landroid/zrhung/appeye/AppEyeUiProbe;->access$000(Landroid/zrhung/appeye/AppEyeUiProbe;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 568
    const/16 p1, 0x11e

    .line 569
    :cond_0
    const-string v7, "APPEYE_UIP_INPUT\n"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    const-string v7, ", has taken "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    const-string v7, "ms"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    goto/16 :goto_0

    .line 565
    :pswitch_4
    goto/16 :goto_0

    .line 553
    :pswitch_5
    iget-object v7, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->this$0:Landroid/zrhung/appeye/AppEyeUiProbe;

    invoke-static {v7}, Landroid/zrhung/appeye/AppEyeUiProbe;->access$000(Landroid/zrhung/appeye/AppEyeUiProbe;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 554
    const/16 p1, 0x11d

    .line 555
    :cond_1
    const-string v7, "APPEYE_UIP_FREEZE\n"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    const-string v7, ", has taken "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    const-string v7, "ms"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    const-string v7, "B"

    move-object v2, v7

    .line 563
    goto :goto_0

    .line 536
    :pswitch_6
    iget-object v7, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->this$0:Landroid/zrhung/appeye/AppEyeUiProbe;

    invoke-static {v7}, Landroid/zrhung/appeye/AppEyeUiProbe;->access$000(Landroid/zrhung/appeye/AppEyeUiProbe;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 537
    const/16 p1, 0x11c

    .line 538
    :cond_2
    const-string v7, "APPEYE_UIP_WARNING\n"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    const-string v7, "activityName = "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    invoke-direct {p0}, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->getActivityName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    const-string v7, "\n"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    const-string v7, ", has taken "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    const-string v7, "ms"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "p="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->pid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v2, v7

    .line 551
    goto :goto_0

    .line 605
    :cond_3
    const-string v7, "APPEYE_UIP_RECOVER\n"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 606
    const-string v7, "delayed messages are:\n"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    invoke-virtual {p0}, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->dumpDelayedMessageList()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 608
    const-string v7, "delayed 6s messages are:\n"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 609
    iget-object v7, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->mDelayedMsgCache:Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    nop

    .line 614
    :goto_0
    sget-boolean v7, Landroid/util/Log;->HWINFO:Z

    if-nez v7, :cond_4

    .line 615
    const-string v7, ""

    move-object v2, v7

    .line 616
    :cond_4
    iget-object v7, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->this$0:Landroid/zrhung/appeye/AppEyeUiProbe;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, p1, v0, v2, v8}, Landroid/zrhung/appeye/AppEyeUiProbe;->access$700(Landroid/zrhung/appeye/AppEyeUiProbe;SLandroid/zrhung/ZrHungData;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 619
    .end local v0    # "data":Landroid/zrhung/ZrHungData;
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    .end local v2    # "cmd":Ljava/lang/String;
    .end local v3    # "msg":Landroid/os/Message;
    .end local v4    # "target":Landroid/os/Handler;
    .end local v5    # "callback":Ljava/lang/Runnable;
    .end local v6    # "messageInfo":Ljava/lang/String;
    goto :goto_1

    .line 617
    :catch_0
    move-exception v0

    .line 618
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "ZrHung.AppEyeUiProbe"

    const-string v2, "sendAppEyeEvent exception"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x101
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public addToDelayedMsgList(Ljava/lang/String;JJ)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "msgDelayed"    # J
    .param p4, "msgProcessed"    # J

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Message: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 296
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    const-string v1, ",delayed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    const-string v1, "ms,processed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    const-string v1, "ms."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    iget-object v1, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->mDelayedMsgList:[Ljava/lang/String;

    iget v2, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->writeIndexOfArray:I

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 304
    iget v1, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->writeIndexOfArray:I

    const/4 v2, 0x1

    const/16 v3, 0x9

    if-ne v1, v3, :cond_0

    .line 306
    const/4 v1, 0x0

    iput v1, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->writeIndexOfArray:I

    .line 307
    iput-boolean v2, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->outOfArrayBound:Z

    goto :goto_0

    .line 309
    :cond_0
    iget v1, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->writeIndexOfArray:I

    add-int/2addr v1, v2

    iput v1, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->writeIndexOfArray:I

    .line 311
    :goto_0
    return-void
.end method

.method public dumpDelayedMessageList()Ljava/lang/String;
    .locals 4

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 319
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-boolean v1, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->outOfArrayBound:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 321
    nop

    .local v2, "i":I
    :goto_0
    move v1, v2

    .end local v2    # "i":I
    .local v1, "i":I
    iget v2, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->writeIndexOfArray:I

    if-ge v1, v2, :cond_2

    .line 322
    iget-object v2, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->mDelayedMsgList:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    .line 327
    .end local v2    # "i":I
    :cond_0
    iget v1, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->writeIndexOfArray:I

    .restart local v1    # "i":I
    :goto_1
    iget-object v3, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->mDelayedMsgList:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 328
    iget-object v3, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->mDelayedMsgList:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 331
    .end local v1    # "i":I
    :cond_1
    nop

    .restart local v2    # "i":I
    :goto_2
    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    iget v2, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->writeIndexOfArray:I

    if-ge v1, v2, :cond_2

    .line 332
    iget-object v2, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->mDelayedMsgList:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_2

    .line 336
    .end local v2    # "i":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public run()V
    .locals 4

    .line 122
    const-string v0, "ZrHung.AppEyeUiProbe"

    const-string v1, "Runnable thread started."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :goto_0
    iget-boolean v0, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->isConfigLoadingDisabled:Z

    if-nez v0, :cond_0

    .line 125
    invoke-direct {p0}, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->getHungConfig()V

    .line 128
    :cond_0
    iget-boolean v0, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->functionEnabled:Z

    if-nez v0, :cond_1

    .line 129
    const-string v0, "ZrHung.AppEyeUiProbe"

    const-string v1, "apppuip fuction is not enabled, quit thread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    return-void

    .line 134
    :cond_1
    monitor-enter p0

    .line 135
    :try_start_0
    iget-boolean v0, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->enabled:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->this$0:Landroid/zrhung/appeye/AppEyeUiProbe;

    invoke-static {v0}, Landroid/zrhung/appeye/AppEyeUiProbe;->access$000(Landroid/zrhung/appeye/AppEyeUiProbe;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 136
    const/4 v0, 0x0

    iput v0, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->checkStateForDispatchTime:I

    .line 137
    iput v0, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->checkStateForMessageDelay:I

    .line 138
    invoke-direct {p0}, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->isCurrentActivityResume()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    .line 140
    :try_start_1
    const-string v0, "ZrHung.AppEyeUiProbe"

    const-string v1, "not watching, wait."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 142
    const-string v0, "ZrHung.AppEyeUiProbe"

    const-string v1, "restart watching"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    goto :goto_1

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    monitor-exit p0

    goto :goto_0

    .line 147
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->enabled:Z

    .line 150
    :cond_3
    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 152
    invoke-direct {p0}, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->checkDispatchTimeout()J

    move-result-wide v0

    .line 155
    .local v0, "timeout":J
    iget-object v2, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->this$0:Landroid/zrhung/appeye/AppEyeUiProbe;

    invoke-static {v2}, Landroid/zrhung/appeye/AppEyeUiProbe;->access$000(Landroid/zrhung/appeye/AppEyeUiProbe;)Z

    move-result v2

    if-nez v2, :cond_4

    iget v2, p0, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->checkStateForDispatchTime:I

    const/4 v3, 0x2

    if-ge v2, v3, :cond_4

    .line 156
    invoke-direct {p0}, Landroid/zrhung/appeye/AppEyeUiProbe$AppEyeUIPChecker;->checkMessageDelay()V

    .line 161
    :cond_4
    :try_start_3
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    .line 164
    nop

    .line 165
    .end local v0    # "timeout":J
    goto :goto_0

    .line 162
    .restart local v0    # "timeout":J
    :catch_1
    move-exception v2

    .line 163
    .local v2, "e":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 150
    .end local v0    # "timeout":J
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method
