.class public Landroid/zrhung/appeye/AppEyeBinderBlock;
.super Landroid/zrhung/ZrHungImpl;
.source "AppEyeBinderBlock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/zrhung/appeye/AppEyeBinderBlock$ReadTransactionThread;
    }
.end annotation


# static fields
.field public static final CONSTANTPATH:Ljava/lang/String; = "/sys/kernel/debug/binder/proc/"

.field private static final MAX_BINDER_CALL_DEPTH:I = 0x2

.field public static final PROCESS_ERROR:I = -0x1

.field public static final PROCESS_IS_NATIVE:I = 0x1

.field public static final PROCESS_NOT_NATIVE:I = 0x0

.field static final TAG:Ljava/lang/String; = "AppEyeBinderBlock"

.field private static mInstance:Landroid/zrhung/appeye/AppEyeBinderBlock;

.field private static final mLock:Ljava/lang/Object;

.field private static final mPidMap:Landroid/util/SparseIntArray;


# instance fields
.field private BINDER_TRANS_PATH:Ljava/lang/String;

.field private HUAWEI_BINDER_TRANS_PATH:Ljava/lang/String;

.field private mBlockSourcePid:I

.field private mConfiged:Z

.field private mEnableMinimizeDumpList:Z

.field private mExpiredBinderPidLists:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mHanderThread:Landroid/os/HandlerThread;

.field private mInterestedNativeStack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sb:Ljava/lang/StringBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/zrhung/appeye/AppEyeBinderBlock;->mLock:Ljava/lang/Object;

    .line 509
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroid/zrhung/appeye/AppEyeBinderBlock;->mPidMap:Landroid/util/SparseIntArray;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "wpName"    # Ljava/lang/String;

    .line 73
    invoke-direct {p0, p1}, Landroid/zrhung/ZrHungImpl;-><init>(Ljava/lang/String;)V

    .line 52
    const-string v0, "/sys/kernel/debug/binder/transactions"

    iput-object v0, p0, Landroid/zrhung/appeye/AppEyeBinderBlock;->BINDER_TRANS_PATH:Ljava/lang/String;

    .line 54
    const-string v0, "/sys/kernel/debug/binder/transaction_proc"

    iput-object v0, p0, Landroid/zrhung/appeye/AppEyeBinderBlock;->HUAWEI_BINDER_TRANS_PATH:Ljava/lang/String;

    .line 63
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Landroid/zrhung/appeye/AppEyeBinderBlock;->sb:Ljava/lang/StringBuffer;

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/zrhung/appeye/AppEyeBinderBlock;->mExpiredBinderPidLists:Ljava/util/HashMap;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/zrhung/appeye/AppEyeBinderBlock;->mInterestedNativeStack:Ljava/util/ArrayList;

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Landroid/zrhung/appeye/AppEyeBinderBlock;->mBlockSourcePid:I

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/zrhung/appeye/AppEyeBinderBlock;->mConfiged:Z

    .line 70
    iput-boolean v0, p0, Landroid/zrhung/appeye/AppEyeBinderBlock;->mEnableMinimizeDumpList:Z

    .line 74
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "writingThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/zrhung/appeye/AppEyeBinderBlock;->mHanderThread:Landroid/os/HandlerThread;

    .line 75
    iget-object v0, p0, Landroid/zrhung/appeye/AppEyeBinderBlock;->mHanderThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 76
    return-void
.end method

.method private clearDumpStackPidListIfNeeded(Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V
    .locals 3
    .param p3, "pid"    # I
    .param p4, "tid"    # I
    .param p5, "isNeedClearList"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;IIZ)V"
        }
    .end annotation

    .line 185
    .local p1, "notNativeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p2, "nativeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-ne p3, v0, :cond_0

    .line 187
    return-void

    .line 190
    :cond_0
    if-eqz p5, :cond_2

    .line 192
    if-eqz p2, :cond_1

    .line 193
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 194
    invoke-direct {p0, p2}, Landroid/zrhung/appeye/AppEyeBinderBlock;->updateNativeDumpStackPidList(Ljava/util/ArrayList;)V

    .line 198
    :cond_1
    if-eqz p1, :cond_2

    .line 199
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 201
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    :cond_2
    const-string v0, "AppEyeBinderBlock"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " isNeedClearDumpBackStackTracePidList:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    return-void
.end method

.method private static getBlockedBinderInfo(Ljava/lang/String;Landroid/util/SparseIntArray;)Ljava/lang/String;
    .locals 11
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "PidMap"    # Landroid/util/SparseIntArray;

    .line 433
    const-string v0, "([\\s\\S]*)\t(\\d+):(\\d+) to (\\d+):(\\d+) code ([0-9a-f]+) wait:(\\d+).(\\d+) s"

    .line 434
    .local v0, "regEx":Ljava/lang/String;
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 435
    .local v1, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 442
    .local v2, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 443
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 444
    .local v3, "from_pid":Ljava/lang/String;
    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 445
    .local v4, "from_tid":Ljava/lang/String;
    const/4 v5, 0x4

    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 446
    .local v5, "to_pid":Ljava/lang/String;
    const/4 v6, 0x5

    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 447
    .local v6, "to_tid":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 448
    invoke-static {v3}, Landroid/zrhung/appeye/AppEyeBinderBlock;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v4}, Landroid/zrhung/appeye/AppEyeBinderBlock;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {p1, v7, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 449
    invoke-static {v5}, Landroid/zrhung/appeye/AppEyeBinderBlock;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v6}, Landroid/zrhung/appeye/AppEyeBinderBlock;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {p1, v7, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 452
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "]\t"

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :cond_1
    const-string v8, "\t"

    :goto_0
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    invoke-static {v3}, Landroid/zrhung/appeye/AppEyeBinderBlock;->readProcName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Landroid/zrhung/appeye/AppEyeBinderBlock;->readProcName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ") -> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    invoke-static {v5}, Landroid/zrhung/appeye/AppEyeBinderBlock;->readProcName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Landroid/zrhung/appeye/AppEyeBinderBlock;->readProcName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ") code "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x6

    .line 455
    invoke-virtual {v2, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " wait:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x7

    invoke-virtual {v2, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v8, 0x8

    invoke-virtual {v2, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " s\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 452
    return-object v7

    .line 457
    .end local v3    # "from_pid":Ljava/lang/String;
    .end local v4    # "from_tid":Ljava/lang/String;
    .end local v5    # "to_pid":Ljava/lang/String;
    .end local v6    # "to_tid":Ljava/lang/String;
    :cond_2
    const/4 v3, 0x0

    return-object v3
.end method

.method private getConfigure()V
    .locals 5

    .line 102
    iget-boolean v0, p0, Landroid/zrhung/appeye/AppEyeBinderBlock;->mConfiged:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 103
    return-void

    .line 105
    :cond_0
    const/16 v0, 0x10b

    invoke-static {v0}, Landroid/util/ZRHung;->getHungConfig(S)Landroid/util/ZRHung$HungConfig;

    move-result-object v0

    .line 106
    .local v0, "cfg":Landroid/util/ZRHung$HungConfig;
    if-nez v0, :cond_1

    .line 107
    const-string v2, "AppEyeBinderBlock"

    const-string v3, "Failed to get config from zrhung"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iput-boolean v1, p0, Landroid/zrhung/appeye/AppEyeBinderBlock;->mConfiged:Z

    .line 109
    return-void

    .line 112
    :cond_1
    iget v2, v0, Landroid/util/ZRHung$HungConfig;->status:I

    const/4 v3, 0x0

    if-nez v2, :cond_4

    .line 113
    iget-object v2, v0, Landroid/util/ZRHung$HungConfig;->value:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 114
    const-string v2, "AppEyeBinderBlock"

    const-string v3, "Failed to get config from zrhung"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iput-boolean v1, p0, Landroid/zrhung/appeye/AppEyeBinderBlock;->mConfiged:Z

    .line 116
    return-void

    .line 118
    :cond_2
    iget-object v2, v0, Landroid/util/ZRHung$HungConfig;->value:Ljava/lang/String;

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 120
    .local v2, "configs":[Ljava/lang/String;
    array-length v4, v2

    if-ge v4, v1, :cond_3

    .line 121
    const-string v3, "AppEyeBinderBlock"

    const-string v4, "Wrong Config size"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iput-boolean v1, p0, Landroid/zrhung/appeye/AppEyeBinderBlock;->mConfiged:Z

    .line 123
    return-void

    .line 126
    :cond_3
    aget-object v3, v2, v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, p0, Landroid/zrhung/appeye/AppEyeBinderBlock;->mEnableMinimizeDumpList:Z

    .line 127
    iput-boolean v1, p0, Landroid/zrhung/appeye/AppEyeBinderBlock;->mConfiged:Z

    .line 128
    invoke-direct {p0, v2}, Landroid/zrhung/appeye/AppEyeBinderBlock;->initInterestedNativeProcessList([Ljava/lang/String;)V

    .line 129
    return-void

    .line 130
    .end local v2    # "configs":[Ljava/lang/String;
    :cond_4
    iget v2, v0, Landroid/util/ZRHung$HungConfig;->status:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_5

    iget v2, v0, Landroid/util/ZRHung$HungConfig;->status:I

    const/4 v4, -0x2

    if-ne v2, v4, :cond_6

    .line 131
    :cond_5
    const-string v2, "AppEyeBinderBlock"

    const-string v4, "config is not support or there is no config"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iput-boolean v1, p0, Landroid/zrhung/appeye/AppEyeBinderBlock;->mConfiged:Z

    .line 133
    iput-boolean v3, p0, Landroid/zrhung/appeye/AppEyeBinderBlock;->mEnableMinimizeDumpList:Z

    .line 135
    :cond_6
    return-void
.end method

.method private static getFatherPid(I)I
    .locals 5
    .param p0, "pid"    # I

    .line 379
    const/4 v0, -0x1

    .line 381
    .local v0, "fartherPid":I
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/proc/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/stat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 382
    .local v1, "lineString":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 383
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    .line 384
    .local v2, "beginNumber":I
    const-string v3, " "

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/zrhung/appeye/AppEyeBinderBlock;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v3

    .line 388
    .end local v1    # "lineString":Ljava/lang/String;
    .end local v2    # "beginNumber":I
    :cond_0
    goto :goto_0

    .line 386
    :catch_0
    move-exception v1

    .line 387
    .local v1, "ex":Ljava/io/IOException;
    const-string v2, "AppEyeBinderBlock"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception info e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    .end local v1    # "ex":Ljava/io/IOException;
    :goto_0
    return v0
.end method

.method private static getHuaweiBinderProcInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 17
    .param p0, "str"    # Ljava/lang/String;

    .line 462
    const-string v0, "(\\d+)\t([\\s\\S]*)\t(\\d+)\t(\\d+)\t(\\d+)\t(\\d+)\t(\\d+)"

    .line 463
    .local v0, "regEx":Ljava/lang/String;
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 464
    .local v1, "pattern":Ljava/util/regex/Pattern;
    move-object/from16 v2, p0

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 473
    .local v3, "matcher":Ljava/util/regex/Matcher;
    const-string v4, "\t< -- "

    .line 474
    .local v4, "Suffix":Ljava/lang/String;
    const/4 v5, 0x0

    .line 475
    .local v5, "needSuffix":Z
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 476
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/zrhung/appeye/AppEyeBinderBlock;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 477
    .local v6, "pid":I
    const/4 v8, 0x2

    invoke-virtual {v3, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    .line 478
    .local v8, "context":Ljava/lang/String;
    const/4 v9, 0x3

    invoke-virtual {v3, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/zrhung/appeye/AppEyeBinderBlock;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 479
    .local v9, "requested_threads":I
    const/4 v10, 0x4

    invoke-virtual {v3, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/zrhung/appeye/AppEyeBinderBlock;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 480
    .local v10, "requested_threads_started":I
    const/4 v11, 0x5

    invoke-virtual {v3, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/zrhung/appeye/AppEyeBinderBlock;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 481
    .local v11, "max_threads":I
    const/4 v12, 0x6

    invoke-virtual {v3, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/zrhung/appeye/AppEyeBinderBlock;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 482
    .local v12, "ready_threads":I
    const/4 v13, 0x7

    invoke-virtual {v3, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/zrhung/appeye/AppEyeBinderBlock;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 484
    .local v13, "free_async_space":I
    add-int v14, v12, v9

    if-nez v14, :cond_0

    if-lt v10, v11, :cond_0

    if-eqz v11, :cond_0

    .line 487
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "no binder thread"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 488
    const/4 v5, 0x1

    .line 491
    :cond_0
    const v14, 0x19000

    if-ge v13, v14, :cond_2

    .line 492
    if-eqz v5, :cond_1

    .line 493
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " & "

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 495
    :cond_1
    const/4 v5, 0x1

    .line 496
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "binder memory < 100KB"

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 499
    :cond_2
    sget-object v7, Landroid/zrhung/appeye/AppEyeBinderBlock;->mPidMap:Landroid/util/SparseIntArray;

    const/4 v15, -0x1

    invoke-virtual {v7, v6, v15}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    if-gez v7, :cond_4

    if-lt v13, v14, :cond_4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ""

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/zrhung/appeye/AppEyeBinderBlock;->readProcName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v14, "system_server"

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_0

    .line 502
    :cond_3
    const/4 v7, 0x0

    return-object v7

    .line 500
    :cond_4
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "\t"

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v14

    const/16 v15, 0x8

    if-lt v14, v15, :cond_5

    move-object v14, v8

    goto :goto_1

    :cond_5
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "\t"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    :goto_1
    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "\t"

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "\t\t"

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "\t\t"

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "\t\t\t"

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "\t\t\t\t\t"

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz v5, :cond_6

    move-object v14, v4

    goto :goto_2

    :cond_6
    const-string v14, ""

    :goto_2
    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "\n"

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 506
    .end local v6    # "pid":I
    .end local v8    # "context":Ljava/lang/String;
    .end local v9    # "requested_threads":I
    .end local v10    # "requested_threads_started":I
    .end local v11    # "max_threads":I
    .end local v12    # "ready_threads":I
    .end local v13    # "free_async_space":I
    :cond_7
    const/4 v6, 0x0

    return-object v6
.end method

.method private getIndirectBlockedBinderPidList(I)Ljava/util/Set;
    .locals 7
    .param p1, "pid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 257
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 259
    .local v0, "blockedBinderPidList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v1, p0, Landroid/zrhung/appeye/AppEyeBinderBlock;->mExpiredBinderPidLists:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 260
    invoke-direct {p0, p1}, Landroid/zrhung/appeye/AppEyeBinderBlock;->parseTransactionLogs(I)V

    .line 262
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 263
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_2

    .line 264
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 265
    .local v2, "curPids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 266
    .local v4, "pid_from":I
    iget-object v5, p0, Landroid/zrhung/appeye/AppEyeBinderBlock;->mExpiredBinderPidLists:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    .line 267
    .local v5, "pids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    if-eqz v5, :cond_0

    .line 268
    invoke-interface {v0, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 270
    .end local v4    # "pid_from":I
    .end local v5    # "pids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_0
    goto :goto_1

    .line 263
    .end local v2    # "curPids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 272
    .end local v1    # "i":I
    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 273
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 274
    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;)Landroid/zrhung/appeye/AppEyeBinderBlock;
    .locals 2
    .param p0, "wpName"    # Ljava/lang/String;

    .line 79
    sget-object v0, Landroid/zrhung/appeye/AppEyeBinderBlock;->mInstance:Landroid/zrhung/appeye/AppEyeBinderBlock;

    if-nez v0, :cond_1

    .line 80
    sget-object v0, Landroid/zrhung/appeye/AppEyeBinderBlock;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 81
    :try_start_0
    sget-object v1, Landroid/zrhung/appeye/AppEyeBinderBlock;->mInstance:Landroid/zrhung/appeye/AppEyeBinderBlock;

    if-nez v1, :cond_0

    .line 82
    new-instance v1, Landroid/zrhung/appeye/AppEyeBinderBlock;

    invoke-direct {v1, p0}, Landroid/zrhung/appeye/AppEyeBinderBlock;-><init>(Ljava/lang/String;)V

    sput-object v1, Landroid/zrhung/appeye/AppEyeBinderBlock;->mInstance:Landroid/zrhung/appeye/AppEyeBinderBlock;

    .line 84
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 86
    :cond_1
    :goto_0
    sget-object v0, Landroid/zrhung/appeye/AppEyeBinderBlock;->mInstance:Landroid/zrhung/appeye/AppEyeBinderBlock;

    return-object v0
.end method

.method private static getTransactionLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "str"    # Ljava/lang/String;

    .line 512
    const-string v0, "outgoing transaction .+ from (\\d+):(\\d+) to (\\d+):(\\d+) code ([0-9a-f]+) .+"

    .line 513
    .local v0, "regEx":Ljava/lang/String;
    const-string v1, "outgoing transaction .+ from (\\d+):(\\d+) to (\\d+):(\\d+) code ([0-9a-f]+) .+"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 514
    .local v1, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 515
    .local v2, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 516
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/zrhung/appeye/AppEyeBinderBlock;->readProcName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/zrhung/appeye/AppEyeBinderBlock;->readProcName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ") -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x4

    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/zrhung/appeye/AppEyeBinderBlock;->readProcName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/zrhung/appeye/AppEyeBinderBlock;->readProcName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ") code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x5

    .line 520
    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 516
    return-object v3

    .line 523
    :cond_0
    const/4 v3, 0x0

    return-object v3
.end method

.method private initInterestedNativeProcessList([Ljava/lang/String;)V
    .locals 3
    .param p1, "configs"    # [Ljava/lang/String;

    .line 139
    if-eqz p1, :cond_2

    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto :goto_1

    .line 142
    :cond_0
    iget-object v0, p0, Landroid/zrhung/appeye/AppEyeBinderBlock;->mInterestedNativeStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 143
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 144
    iget-object v1, p0, Landroid/zrhung/appeye/AppEyeBinderBlock;->mInterestedNativeStack:Ljava/util/ArrayList;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 146
    .end local v0    # "i":I
    :cond_1
    return-void

    .line 140
    :cond_2
    :goto_1
    return-void
.end method

.method public static isNativeProcess(I)I
    .locals 3
    .param p0, "pid"    # I

    .line 367
    if-gtz p0, :cond_0

    .line 368
    const-string v0, "AppEyeBinderBlock"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pid less than 0, pid is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    const/4 v0, -0x1

    return v0

    .line 371
    :cond_0
    invoke-static {p0}, Landroid/zrhung/appeye/AppEyeBinderBlock;->getFatherPid(I)I

    move-result v0

    .line 372
    .local v0, "fatherPid":I
    if-lez v0, :cond_1

    invoke-static {v0}, Landroid/zrhung/appeye/AppEyeBinderBlock;->isZygoteProcess(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 373
    const/4 v1, 0x0

    return v1

    .line 375
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method private static isZygoteProcess(I)Z
    .locals 5
    .param p0, "pid"    # I

    .line 394
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/proc/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/stat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 395
    .local v0, "lineString":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 396
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 397
    .local v1, "beginNumber":I
    const-string v3, ")"

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 398
    .local v3, "tempString":Ljava/lang/String;
    const-string v4, "main"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_0

    .line 399
    return v2

    .line 404
    .end local v0    # "lineString":Ljava/lang/String;
    .end local v1    # "beginNumber":I
    .end local v3    # "tempString":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 402
    :catch_0
    move-exception v0

    .line 403
    .local v0, "ex":Ljava/io/IOException;
    const-string v1, "AppEyeBinderBlock"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception info e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    .end local v0    # "ex":Ljava/io/IOException;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private static parseInt(Ljava/lang/String;)I
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .line 91
    const/4 v0, -0x1

    .line 93
    .local v0, "value":I
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 96
    goto :goto_0

    .line 94
    :catch_0
    move-exception v1

    .line 95
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v2, "AppEyeBinderBlock"

    const-string v3, "parseInt NumberFormatException"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :goto_0
    return v0
.end method

.method private parseTransactionLogs(I)V
    .locals 20
    .param p1, "pid"    # I

    move-object/from16 v1, p0

    .line 278
    const/4 v2, 0x0

    .line 280
    .local v2, "buff":Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 282
    .local v3, "in":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 283
    .local v4, "reader":Ljava/io/Reader;
    const-string v0, ""

    .line 284
    .local v0, "regEx":Ljava/lang/String;
    iget-object v5, v1, Landroid/zrhung/appeye/AppEyeBinderBlock;->mExpiredBinderPidLists:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    if-nez v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 285
    .local v5, "isNeedcheck":Z
    :goto_0
    const/4 v7, 0x0

    .line 286
    .local v7, "isHuaweiLog":Z
    new-instance v8, Ljava/io/File;

    iget-object v9, v1, Landroid/zrhung/appeye/AppEyeBinderBlock;->HUAWEI_BINDER_TRANS_PATH:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 287
    .local v8, "file":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 288
    const-string v0, "([\\s\\S]*)\t(\\d+):(\\d+) to (\\d+):(\\d+) code ([0-9a-f]+) wait:(\\d+).(\\d+) s"

    .line 289
    const/4 v7, 0x1

    .line 299
    .end local v0    # "regEx":Ljava/lang/String;
    .local v7, "regEx":Ljava/lang/String;
    .local v9, "isHuaweiLog":Z
    :goto_1
    move v9, v7

    move-object v7, v0

    goto :goto_2

    .line 291
    .end local v9    # "isHuaweiLog":Z
    .restart local v0    # "regEx":Ljava/lang/String;
    .local v7, "isHuaweiLog":Z
    :cond_1
    new-instance v9, Ljava/io/File;

    iget-object v10, v1, Landroid/zrhung/appeye/AppEyeBinderBlock;->BINDER_TRANS_PATH:Ljava/lang/String;

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v8, v9

    .line 292
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_2

    .line 293
    const-string v6, "AppEyeBinderBlock"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "file not exists : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Landroid/zrhung/appeye/AppEyeBinderBlock;->BINDER_TRANS_PATH:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    return-void

    .line 296
    :cond_2
    const-string v0, "(outgoing) transaction .+ from (\\d+):(\\d+) to (\\d+):(\\d+) code ([0-9a-f]+) .+"

    goto :goto_1

    .line 299
    .end local v0    # "regEx":Ljava/lang/String;
    .local v7, "regEx":Ljava/lang/String;
    .restart local v9    # "isHuaweiLog":Z
    :goto_2
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v3, v0

    .line 300
    new-instance v0, Ljava/io/InputStreamReader;

    const-string v10, "UTF-8"

    invoke-direct {v0, v3, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object v4, v0

    .line 301
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v0

    .line 302
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 303
    .local v0, "readLine":Ljava/lang/String;
    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v10

    .line 304
    .local v10, "pattern":Ljava/util/regex/Pattern;
    :goto_3
    if-eqz v0, :cond_8

    .line 305
    invoke-virtual {v10, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    .line 306
    .local v11, "matcher":Ljava/util/regex/Matcher;
    const/4 v12, 0x0

    .line 307
    .local v12, "from_pid":Ljava/lang/String;
    const/4 v13, 0x0

    .line 308
    .local v13, "to_pid":Ljava/lang/String;
    const/4 v14, 0x0

    .line 310
    .local v14, "costTime":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/util/regex/Matcher;->find()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 311
    const/4 v15, 0x2

    invoke-virtual {v11, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v15

    move-object v12, v15

    .line 312
    const/4 v15, 0x4

    invoke-virtual {v11, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v15

    move-object v13, v15

    .line 313
    if-eqz v9, :cond_3

    .line 314
    const/4 v15, 0x7

    invoke-virtual {v11, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v15

    move-object v14, v15

    .line 318
    :cond_3
    if-eqz v12, :cond_7

    if-nez v13, :cond_4

    .line 319
    nop

    .line 304
    move-object/from16 v19, v0

    const/4 v0, 0x1

    goto :goto_4

    .line 322
    :cond_4
    invoke-static {v12}, Landroid/zrhung/appeye/AppEyeBinderBlock;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 323
    .local v15, "fromPid":I
    invoke-static {v13}, Landroid/zrhung/appeye/AppEyeBinderBlock;->parseInt(Ljava/lang/String;)I

    move-result v16

    move/from16 v17, v16

    .line 325
    .local v17, "toPid":I
    if-eqz v9, :cond_5

    if-eqz v14, :cond_5

    .line 326
    invoke-static {v14}, Landroid/zrhung/appeye/AppEyeBinderBlock;->parseInt(Ljava/lang/String;)I

    move-result v16

    move/from16 v18, v16

    .line 328
    .local v18, "time_cost":I
    iget v6, v1, Landroid/zrhung/appeye/AppEyeBinderBlock;->mBlockSourcePid:I

    if-eq v6, v15, :cond_5

    move-object/from16 v19, v0

    move/from16 v6, v18

    const/4 v0, 0x1

    if-ge v6, v0, :cond_6

    .line 329
    .end local v0    # "readLine":Ljava/lang/String;
    .end local v18    # "time_cost":I
    .local v6, "time_cost":I
    .local v19, "readLine":Ljava/lang/String;
    goto :goto_4

    .line 333
    .end local v6    # "time_cost":I
    .end local v19    # "readLine":Ljava/lang/String;
    .restart local v0    # "readLine":Ljava/lang/String;
    :cond_5
    move-object/from16 v19, v0

    const/4 v0, 0x1

    .end local v0    # "readLine":Ljava/lang/String;
    .restart local v19    # "readLine":Ljava/lang/String;
    :cond_6
    move/from16 v6, v17

    invoke-direct {v1, v15, v6}, Landroid/zrhung/appeye/AppEyeBinderBlock;->updateExpiredBinderPidList(II)V

    .end local v11    # "matcher":Ljava/util/regex/Matcher;
    .end local v12    # "from_pid":Ljava/lang/String;
    .end local v13    # "to_pid":Ljava/lang/String;
    .end local v14    # "costTime":Ljava/lang/String;
    .end local v15    # "fromPid":I
    .end local v17    # "toPid":I
    goto :goto_4

    .line 304
    .end local v19    # "readLine":Ljava/lang/String;
    .restart local v0    # "readLine":Ljava/lang/String;
    :cond_7
    move-object/from16 v19, v0

    const/4 v0, 0x1

    .end local v0    # "readLine":Ljava/lang/String;
    .restart local v19    # "readLine":Ljava/lang/String;
    :goto_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    .end local v19    # "readLine":Ljava/lang/String;
    .local v6, "readLine":Ljava/lang/String;
    move-object v0, v6

    goto :goto_3

    .line 338
    .end local v6    # "readLine":Ljava/lang/String;
    .end local v10    # "pattern":Ljava/util/regex/Pattern;
    :cond_8
    nop

    .line 340
    :try_start_1
    invoke-virtual {v4}, Ljava/io/Reader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 344
    goto :goto_5

    .line 342
    :catch_0
    move-exception v0

    move-object v6, v0

    .line 343
    .local v0, "e":Ljava/io/IOException;
    const-string v6, "AppEyeBinderBlock"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "exception info e:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    .end local v0    # "e":Ljava/io/IOException;
    :goto_5
    nop

    .line 348
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 352
    :goto_6
    goto :goto_9

    .line 350
    :catch_1
    move-exception v0

    move-object v6, v0

    .line 351
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v6, "AppEyeBinderBlock"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    :goto_7
    const-string v11, "exception info e:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_6

    .line 338
    :catchall_0
    move-exception v0

    move-object v6, v2

    move-object v2, v0

    goto :goto_a

    .line 335
    :catch_2
    move-exception v0

    .line 336
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v6, "AppEyeBinderBlock"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "exception info e:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 338
    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v4, :cond_9

    .line 340
    :try_start_4
    invoke-virtual {v4}, Ljava/io/Reader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 344
    goto :goto_8

    .line 342
    :catch_3
    move-exception v0

    move-object v6, v0

    .line 343
    .local v0, "e":Ljava/io/IOException;
    const-string v6, "AppEyeBinderBlock"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "exception info e:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    .end local v0    # "e":Ljava/io/IOException;
    :cond_9
    :goto_8
    if-eqz v3, :cond_a

    .line 348
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_6

    .line 350
    :catch_4
    move-exception v0

    move-object v6, v0

    .line 351
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v6, "AppEyeBinderBlock"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_7

    .line 355
    .end local v0    # "e":Ljava/io/IOException;
    :cond_a
    :goto_9
    return-void

    .line 338
    .end local v2    # "buff":Ljava/io/BufferedReader;
    .local v6, "buff":Ljava/io/BufferedReader;
    :goto_a
    if-eqz v4, :cond_b

    .line 340
    :try_start_6
    invoke-virtual {v4}, Ljava/io/Reader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 344
    goto :goto_b

    .line 342
    :catch_5
    move-exception v0

    move-object v10, v0

    .line 343
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v10, "AppEyeBinderBlock"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "exception info e:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    .end local v0    # "e":Ljava/io/IOException;
    :cond_b
    :goto_b
    if-eqz v3, :cond_c

    .line 348
    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 352
    goto :goto_c

    .line 350
    :catch_6
    move-exception v0

    move-object v10, v0

    .line 351
    .restart local v0    # "e":Ljava/io/IOException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "exception info e:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "AppEyeBinderBlock"

    invoke-static {v11, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    .end local v0    # "e":Ljava/io/IOException;
    :cond_c
    :goto_c
    throw v2
.end method

.method public static readProcName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "pid"    # Ljava/lang/String;

    .line 410
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/proc/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/comm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 411
    .local v0, "content":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 412
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 413
    .local v1, "segments":[Ljava/lang/String;
    array-length v2, v1

    if-lez v2, :cond_0

    const/4 v2, 0x0

    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 414
    aget-object v2, v1, v2

    return-object v2

    .line 417
    .end local v1    # "segments":[Ljava/lang/String;
    :cond_0
    const-string v1, "unknown"
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 418
    .end local v0    # "content":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 419
    .local v0, "ex":Ljava/io/IOException;
    const-string v1, "unknown"

    return-object v1
.end method

.method private removeReduntantPids(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 714
    .local p1, "pids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 715
    .local v0, "filteredList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz p1, :cond_2

    .line 716
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 717
    .local v2, "pid":Ljava/lang/Integer;
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 718
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 720
    .end local v2    # "pid":Ljava/lang/Integer;
    :cond_0
    goto :goto_0

    .line 721
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 722
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 724
    :cond_2
    return-void
.end method

.method private updateExpiredBinderPidList(II)V
    .locals 3
    .param p1, "fromPid"    # I
    .param p2, "toPid"    # I

    .line 424
    iget-object v0, p0, Landroid/zrhung/appeye/AppEyeBinderBlock;->mExpiredBinderPidLists:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 425
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    if-nez v0, :cond_0

    .line 426
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    move-object v0, v1

    .line 428
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 429
    iget-object v1, p0, Landroid/zrhung/appeye/AppEyeBinderBlock;->mExpiredBinderPidLists:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    return-void
.end method

.method private updateNativeDumpStackPidList(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 210
    .local p1, "nativeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Landroid/zrhung/appeye/AppEyeBinderBlock;->mInterestedNativeStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 211
    .local v0, "nativeProcs":[Ljava/lang/String;
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 212
    aget-object v3, v0, v2

    if-nez v3, :cond_0

    .line 213
    const-string v3, ""

    aput-object v3, v0, v2

    .line 211
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 216
    .end local v2    # "i":I
    :cond_1
    iget-object v2, p0, Landroid/zrhung/appeye/AppEyeBinderBlock;->mInterestedNativeStack:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 217
    invoke-static {v0}, Landroid/os/Process;->getPidsForCommands([Ljava/lang/String;)[I

    move-result-object v2

    .line 218
    .local v2, "pidList":[I
    if-eqz v2, :cond_2

    .line 219
    array-length v3, v2

    :goto_1
    if-ge v1, v3, :cond_2

    aget v4, v2, v1

    .line 220
    .local v4, "pid":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    .end local v4    # "pid":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 223
    :cond_2
    return-void
.end method


# virtual methods
.method public addBinderPid(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .locals 5
    .param p3, "pid"    # I
    .param p4, "tid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;II)V"
        }
    .end annotation

    .line 237
    .local p1, "notNativeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p2, "nativeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 238
    .local v0, "serverPidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {p0, p3}, Landroid/zrhung/appeye/AppEyeBinderBlock;->getIndirectBlockedBinderPidList(I)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 239
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 240
    .local v1, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 241
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Landroid/zrhung/appeye/AppEyeBinderBlock;->isNativeProcess(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 242
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 243
    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Landroid/zrhung/appeye/AppEyeBinderBlock;->isNativeProcess(I)I

    move-result v3

    if-nez v3, :cond_1

    .line 244
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 247
    .end local v2    # "i":I
    :cond_2
    invoke-direct {p0, p1}, Landroid/zrhung/appeye/AppEyeBinderBlock;->removeReduntantPids(Ljava/util/ArrayList;)V

    .line 248
    invoke-direct {p0, p2}, Landroid/zrhung/appeye/AppEyeBinderBlock;->removeReduntantPids(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    .end local v0    # "serverPidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v1    # "length":I
    goto :goto_2

    .line 249
    :catch_0
    move-exception v0

    .line 250
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "AppEyeBinderBlock"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception info ex:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method public check(Landroid/zrhung/ZrHungData;)Z
    .locals 12
    .param p1, "args"    # Landroid/zrhung/ZrHungData;

    .line 150
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 151
    return v0

    .line 153
    :cond_0
    iget-boolean v1, p0, Landroid/zrhung/appeye/AppEyeBinderBlock;->mConfiged:Z

    if-nez v1, :cond_1

    .line 154
    invoke-direct {p0}, Landroid/zrhung/appeye/AppEyeBinderBlock;->getConfigure()V

    .line 157
    :cond_1
    const-string v1, "method"

    invoke-virtual {p1, v1}, Landroid/zrhung/ZrHungData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 158
    .local v1, "method":Ljava/lang/String;
    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x53184ef5

    const/4 v5, 0x1

    if-eq v3, v4, :cond_4

    const v4, -0x3f53e820

    if-eq v3, v4, :cond_3

    const v0, 0x5172243d    # 6.4999379E10f

    if-eq v3, v0, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "readTransactionInSubThread"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v5

    goto :goto_1

    :cond_3
    const-string v3, "addBinderPid"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_1

    :cond_4
    const-string v0, "writeTransactionToTrace"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x2

    goto :goto_1

    :cond_5
    :goto_0
    move v0, v2

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 172
    :pswitch_0
    const-string v0, "path"

    invoke-virtual {p1, v0}, Landroid/zrhung/ZrHungData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "path":Ljava/lang/String;
    if-eqz v0, :cond_6

    .line 174
    invoke-virtual {p0, v0}, Landroid/zrhung/appeye/AppEyeBinderBlock;->writeTransactionToTrace(Ljava/lang/String;)V

    goto :goto_2

    .line 169
    .end local v0    # "path":Ljava/lang/String;
    :pswitch_1
    invoke-virtual {p0}, Landroid/zrhung/appeye/AppEyeBinderBlock;->readTransactionInSubThread()V

    .line 170
    goto :goto_2

    .line 160
    :pswitch_2
    const-string v0, "notnativepids"

    invoke-virtual {p1, v0}, Landroid/zrhung/ZrHungData;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 161
    .local v0, "notNativeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v2, "nativepids"

    invoke-virtual {p1, v2}, Landroid/zrhung/ZrHungData;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 162
    .local v2, "nativeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v3, "pid"

    invoke-virtual {p1, v3}, Landroid/zrhung/ZrHungData;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 163
    .local v3, "pid":I
    const-string v4, "tid"

    invoke-virtual {p1, v4}, Landroid/zrhung/ZrHungData;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 164
    .local v4, "tid":I
    iput v3, p0, Landroid/zrhung/appeye/AppEyeBinderBlock;->mBlockSourcePid:I

    .line 165
    iget-boolean v11, p0, Landroid/zrhung/appeye/AppEyeBinderBlock;->mEnableMinimizeDumpList:Z

    move-object v6, p0

    move-object v7, v0

    move-object v8, v2

    move v9, v3

    move v10, v4

    invoke-direct/range {v6 .. v11}, Landroid/zrhung/appeye/AppEyeBinderBlock;->clearDumpStackPidListIfNeeded(Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V

    .line 166
    invoke-virtual {p0, v0, v2, v3, v4}, Landroid/zrhung/appeye/AppEyeBinderBlock;->addBinderPid(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 167
    nop

    .line 180
    .end local v0    # "notNativeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v2    # "nativeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v3    # "pid":I
    .end local v4    # "tid":I
    :cond_6
    :goto_2
    return v5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public readTransaction()V
    .locals 17

    .line 561
    move-object/from16 v1, p0

    const-string v0, "AppEyeBinderBlock"

    const-string v2, "read binder transaction begin"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    iget-object v0, v1, Landroid/zrhung/appeye/AppEyeBinderBlock;->sb:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 563
    const/4 v2, 0x0

    .line 564
    .local v2, "index":I
    const/4 v0, 0x1

    .line 565
    .local v0, "huaweiTransactionFileExist":Z
    sget-object v3, Landroid/zrhung/appeye/AppEyeBinderBlock;->mPidMap:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->clear()V

    .line 567
    iget-object v3, v1, Landroid/zrhung/appeye/AppEyeBinderBlock;->sb:Ljava/lang/StringBuffer;

    const-string v4, "\n----- binder transactions -----\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 568
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd  HH:mm:ss"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 569
    .local v3, "sDateFormat":Ljava/text/SimpleDateFormat;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 570
    .local v4, "date":Ljava/lang/String;
    iget-object v5, v1, Landroid/zrhung/appeye/AppEyeBinderBlock;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 572
    new-instance v5, Ljava/io/File;

    iget-object v6, v1, Landroid/zrhung/appeye/AppEyeBinderBlock;->HUAWEI_BINDER_TRANS_PATH:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 573
    .local v5, "file_huawei_transaction":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 574
    const-string v6, "AppEyeBinderBlock"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "file not exists : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Landroid/zrhung/appeye/AppEyeBinderBlock;->HUAWEI_BINDER_TRANS_PATH:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    const/4 v0, 0x0

    .line 578
    .end local v0    # "huaweiTransactionFileExist":Z
    .local v6, "huaweiTransactionFileExist":Z
    :cond_0
    move v6, v0

    if-eqz v6, :cond_e

    .line 579
    const/4 v7, 0x0

    .line 580
    .local v7, "in_ht":Ljava/io/InputStream;
    const/4 v8, 0x0

    .line 581
    .local v8, "reader_ht":Ljava/io/Reader;
    const/4 v0, 0x0

    move-object v9, v0

    .line 583
    .local v9, "buff_ht":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v7, v10

    .line 584
    new-instance v10, Ljava/io/InputStreamReader;

    const-string v11, "UTF-8"

    invoke-direct {v10, v7, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object v8, v10

    .line 585
    new-instance v10, Ljava/io/BufferedReader;

    invoke-direct {v10, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v9, v10

    .line 587
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    .line 588
    .local v10, "readLine_ht":Ljava/lang/String;
    const/4 v11, 0x0

    .line 590
    .local v11, "hasPringTableTitle":Z
    const/4 v12, 0x0

    .line 591
    .local v12, "countOfBlockedBinder":I
    const/16 v13, 0xc8

    .line 593
    .local v13, "maxBlockedBinderTransactionToDispaly":I
    iget-object v14, v1, Landroid/zrhung/appeye/AppEyeBinderBlock;->sb:Ljava/lang/StringBuffer;

    const-string v15, "blocked binder transactions:\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 595
    :goto_0
    if-eqz v10, :cond_7

    .line 596
    if-nez v11, :cond_5

    .line 597
    if-ge v12, v13, :cond_1

    sget-object v14, Landroid/zrhung/appeye/AppEyeBinderBlock;->mPidMap:Landroid/util/SparseIntArray;

    goto :goto_1

    :cond_1
    move-object v14, v0

    :goto_1
    invoke-static {v10, v14}, Landroid/zrhung/appeye/AppEyeBinderBlock;->getBlockedBinderInfo(Ljava/lang/String;Landroid/util/SparseIntArray;)Ljava/lang/String;

    move-result-object v14

    .line 598
    .local v14, "ret":Ljava/lang/String;
    if-eqz v14, :cond_3

    .line 599
    if-ge v12, v13, :cond_2

    .line 600
    iget-object v15, v1, Landroid/zrhung/appeye/AppEyeBinderBlock;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 602
    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 604
    :cond_3
    if-le v12, v13, :cond_4

    .line 606
    iget-object v15, v1, Landroid/zrhung/appeye/AppEyeBinderBlock;->sb:Ljava/lang/StringBuffer;

    const-string v0, "Too many transactions(other "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 607
    iget-object v0, v1, Landroid/zrhung/appeye/AppEyeBinderBlock;->sb:Ljava/lang/StringBuffer;

    sub-int v15, v12, v13

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 608
    iget-object v0, v1, Landroid/zrhung/appeye/AppEyeBinderBlock;->sb:Ljava/lang/StringBuffer;

    const-string v15, ")...\n"

    invoke-virtual {v0, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 611
    :cond_4
    iget-object v0, v1, Landroid/zrhung/appeye/AppEyeBinderBlock;->sb:Ljava/lang/StringBuffer;

    const-string v15, "binder thread count, and memory info:\n"

    invoke-virtual {v0, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 612
    iget-object v0, v1, Landroid/zrhung/appeye/AppEyeBinderBlock;->sb:Ljava/lang/StringBuffer;

    const-string v15, "\npid\tcontext\t\tmax_threads\tready_threads\trequested_threads\trequested_threads_started\tfree async space(byte)\n"

    invoke-virtual {v0, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 613
    const/4 v0, 0x1

    .line 595
    .end local v11    # "hasPringTableTitle":Z
    .local v0, "hasPringTableTitle":Z
    move v11, v0

    goto :goto_2

    .line 616
    .end local v0    # "hasPringTableTitle":Z
    .end local v14    # "ret":Ljava/lang/String;
    .restart local v11    # "hasPringTableTitle":Z
    :cond_5
    invoke-static {v10}, Landroid/zrhung/appeye/AppEyeBinderBlock;->getHuaweiBinderProcInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v14, v0

    .line 617
    .restart local v14    # "ret":Ljava/lang/String;
    if-eqz v14, :cond_6

    .line 618
    iget-object v0, v1, Landroid/zrhung/appeye/AppEyeBinderBlock;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 595
    :cond_6
    :goto_2
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    add-int/lit8 v2, v2, 0x1

    const/4 v0, 0x0

    goto :goto_0

    .line 622
    .end local v14    # "ret":Ljava/lang/String;
    :cond_7
    iget-object v0, v1, Landroid/zrhung/appeye/AppEyeBinderBlock;->sb:Ljava/lang/StringBuffer;

    const-string v14, "----- end binder transactions -----\n"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 627
    .end local v10    # "readLine_ht":Ljava/lang/String;
    .end local v11    # "hasPringTableTitle":Z
    .end local v12    # "countOfBlockedBinder":I
    .end local v13    # "maxBlockedBinderTransactionToDispaly":I
    nop

    .line 628
    :try_start_1
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 629
    const/4 v7, 0x0

    goto :goto_3

    .line 639
    :catch_0
    move-exception v0

    goto :goto_4

    .line 631
    :goto_3
    nop

    .line 632
    invoke-virtual {v8}, Ljava/io/Reader;->close()V

    .line 633
    const/4 v8, 0x0

    .line 635
    nop

    .line 636
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 637
    const/4 v0, 0x0

    .end local v9    # "buff_ht":Ljava/io/BufferedReader;
    .local v0, "buff_ht":Ljava/io/BufferedReader;
    goto :goto_6

    .line 639
    .end local v0    # "buff_ht":Ljava/io/BufferedReader;
    .restart local v9    # "buff_ht":Ljava/io/BufferedReader;
    :goto_4
    nop

    .line 640
    .local v0, "e":Ljava/io/IOException;
    const-string v10, "AppEyeBinderBlock"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .end local v7    # "in_ht":Ljava/io/InputStream;
    .end local v8    # "reader_ht":Ljava/io/Reader;
    .end local v9    # "buff_ht":Ljava/io/BufferedReader;
    :goto_5
    const-string v12, "exception info e:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_9

    .line 641
    .local v0, "buff_ht":Ljava/io/BufferedReader;
    .restart local v7    # "in_ht":Ljava/io/InputStream;
    .restart local v8    # "reader_ht":Ljava/io/Reader;
    :cond_8
    :goto_6
    goto :goto_9

    .line 626
    .end local v0    # "buff_ht":Ljava/io/BufferedReader;
    .restart local v9    # "buff_ht":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v0

    move v10, v2

    move-object v2, v0

    goto :goto_a

    .line 623
    :catch_1
    move-exception v0

    .line 624
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    const-string v10, "AppEyeBinderBlock"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "exception info e:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 627
    .end local v0    # "e":Ljava/io/IOException;
    if-eqz v7, :cond_9

    .line 628
    :try_start_3
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 629
    const/4 v0, 0x0

    .line 631
    .end local v7    # "in_ht":Ljava/io/InputStream;
    .local v0, "in_ht":Ljava/io/InputStream;
    move-object v7, v0

    goto :goto_7

    .line 639
    .end local v0    # "in_ht":Ljava/io/InputStream;
    .restart local v7    # "in_ht":Ljava/io/InputStream;
    :catch_2
    move-exception v0

    goto :goto_8

    .line 631
    :cond_9
    :goto_7
    if-eqz v8, :cond_a

    .line 632
    invoke-virtual {v8}, Ljava/io/Reader;->close()V

    .line 633
    const/4 v0, 0x0

    .line 635
    .end local v8    # "reader_ht":Ljava/io/Reader;
    .local v0, "reader_ht":Ljava/io/Reader;
    move-object v8, v0

    .end local v0    # "reader_ht":Ljava/io/Reader;
    .restart local v8    # "reader_ht":Ljava/io/Reader;
    :cond_a
    if-eqz v9, :cond_8

    .line 636
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 637
    const/4 v9, 0x0

    goto :goto_6

    .line 639
    :goto_8
    nop

    .line 640
    .local v0, "e":Ljava/io/IOException;
    const-string v10, "AppEyeBinderBlock"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_5

    .line 643
    .end local v0    # "e":Ljava/io/IOException;
    .end local v7    # "in_ht":Ljava/io/InputStream;
    .end local v8    # "reader_ht":Ljava/io/Reader;
    .end local v9    # "buff_ht":Ljava/io/BufferedReader;
    :goto_9
    goto/16 :goto_1f

    .line 626
    .end local v2    # "index":I
    .restart local v7    # "in_ht":Ljava/io/InputStream;
    .restart local v8    # "reader_ht":Ljava/io/Reader;
    .restart local v9    # "buff_ht":Ljava/io/BufferedReader;
    .local v10, "index":I
    :goto_a
    nop

    .line 627
    if-eqz v7, :cond_b

    .line 628
    :try_start_4
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 629
    const/4 v0, 0x0

    .line 631
    .end local v7    # "in_ht":Ljava/io/InputStream;
    .local v0, "in_ht":Ljava/io/InputStream;
    move-object v7, v0

    goto :goto_b

    .line 639
    .end local v0    # "in_ht":Ljava/io/InputStream;
    .restart local v7    # "in_ht":Ljava/io/InputStream;
    :catch_3
    move-exception v0

    goto :goto_c

    .line 631
    :cond_b
    :goto_b
    if-eqz v8, :cond_c

    .line 632
    invoke-virtual {v8}, Ljava/io/Reader;->close()V

    .line 633
    const/4 v0, 0x0

    .line 635
    .end local v8    # "reader_ht":Ljava/io/Reader;
    .local v0, "reader_ht":Ljava/io/Reader;
    move-object v8, v0

    .end local v0    # "reader_ht":Ljava/io/Reader;
    .restart local v8    # "reader_ht":Ljava/io/Reader;
    :cond_c
    if-eqz v9, :cond_d

    .line 636
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 637
    const/4 v0, 0x0

    .line 641
    .end local v9    # "buff_ht":Ljava/io/BufferedReader;
    .local v0, "buff_ht":Ljava/io/BufferedReader;
    move-object v9, v0

    goto :goto_d

    .line 639
    .end local v0    # "buff_ht":Ljava/io/BufferedReader;
    .restart local v9    # "buff_ht":Ljava/io/BufferedReader;
    :goto_c
    nop

    .line 640
    .local v0, "e":Ljava/io/IOException;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "exception info e:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "AppEyeBinderBlock"

    invoke-static {v12, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/io/IOException;
    nop

    .line 641
    :cond_d
    :goto_d
    throw v2

    .line 644
    .end local v7    # "in_ht":Ljava/io/InputStream;
    .end local v8    # "reader_ht":Ljava/io/Reader;
    .end local v9    # "buff_ht":Ljava/io/BufferedReader;
    .end local v10    # "index":I
    .restart local v2    # "index":I
    :cond_e
    const/4 v7, 0x0

    .line 645
    .local v7, "buff":Ljava/io/BufferedReader;
    const/4 v8, 0x0

    .line 647
    .local v8, "in":Ljava/io/InputStream;
    const/4 v9, 0x0

    .line 648
    .local v9, "reader":Ljava/io/Reader;
    new-instance v0, Ljava/io/File;

    iget-object v10, v1, Landroid/zrhung/appeye/AppEyeBinderBlock;->BINDER_TRANS_PATH:Ljava/lang/String;

    invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v10, v0

    .line 649
    .local v10, "file":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_f

    .line 650
    const-string v0, "AppEyeBinderBlock"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "file not exists : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Landroid/zrhung/appeye/AppEyeBinderBlock;->BINDER_TRANS_PATH:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 653
    :cond_f
    const-wide/16 v11, 0x640

    :try_start_5
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_4

    .line 656
    goto :goto_e

    .line 654
    :catch_4
    move-exception v0

    move-object v11, v0

    .line 655
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v11, "AppEyeBinderBlock"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "exception info e:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_e
    :try_start_6
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v8, v0

    .line 661
    new-instance v0, Ljava/io/InputStreamReader;

    const-string v11, "UTF-8"

    invoke-direct {v0, v8, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object v9, v0

    .line 662
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v7, v0

    .line 664
    iget-object v0, v1, Landroid/zrhung/appeye/AppEyeBinderBlock;->sb:Ljava/lang/StringBuffer;

    const-string v11, "blocked binder transactions:\n"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 667
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 668
    .local v0, "readLine":Ljava/lang/String;
    :goto_f
    if-eqz v0, :cond_11

    .line 669
    invoke-static {v0}, Landroid/zrhung/appeye/AppEyeBinderBlock;->getTransactionLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 670
    .local v11, "transaction":Ljava/lang/String;
    if-eqz v11, :cond_10

    .line 671
    iget-object v12, v1, Landroid/zrhung/appeye/AppEyeBinderBlock;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 668
    .end local v11    # "transaction":Ljava/lang/String;
    :cond_10
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    move-object v0, v11

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 674
    :cond_11
    iget-object v11, v1, Landroid/zrhung/appeye/AppEyeBinderBlock;->sb:Ljava/lang/StringBuffer;

    const-string v12, "----- end binder transactions -----\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_c
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 681
    .end local v0    # "readLine":Ljava/lang/String;
    nop

    .line 682
    :try_start_7
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 683
    const/4 v8, 0x0

    goto :goto_10

    .line 685
    :catch_5
    move-exception v0

    move-object v11, v0

    .line 686
    .local v0, "e":Ljava/io/IOException;
    const-string v11, "AppEyeBinderBlock"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "exception info e:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_11

    .line 687
    :goto_10
    nop

    .line 690
    :goto_11
    nop

    .line 691
    :try_start_8
    invoke-virtual {v9}, Ljava/io/Reader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 692
    const/4 v9, 0x0

    goto :goto_12

    .line 694
    :catch_6
    move-exception v0

    move-object v11, v0

    .line 695
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v11, "AppEyeBinderBlock"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "exception info e:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_13

    .line 696
    :goto_12
    nop

    .line 699
    :goto_13
    nop

    .line 700
    :try_start_9
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 701
    const/4 v0, 0x0

    .end local v7    # "buff":Ljava/io/BufferedReader;
    .local v0, "buff":Ljava/io/BufferedReader;
    goto :goto_15

    .line 703
    .end local v0    # "buff":Ljava/io/BufferedReader;
    .restart local v7    # "buff":Ljava/io/BufferedReader;
    :catch_7
    move-exception v0

    move-object v11, v0

    .line 704
    .local v0, "e":Ljava/io/IOException;
    const-string v11, "AppEyeBinderBlock"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .end local v7    # "buff":Ljava/io/BufferedReader;
    .end local v8    # "in":Ljava/io/InputStream;
    .end local v9    # "reader":Ljava/io/Reader;
    .end local v10    # "file":Ljava/io/File;
    :goto_14
    const-string v13, "exception info e:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    .end local v0    # "e":Ljava/io/IOException;
    goto/16 :goto_1f

    .line 705
    .local v0, "buff":Ljava/io/BufferedReader;
    .restart local v8    # "in":Ljava/io/InputStream;
    .restart local v9    # "reader":Ljava/io/Reader;
    .restart local v10    # "file":Ljava/io/File;
    :cond_12
    :goto_15
    goto/16 :goto_1f

    .line 680
    .end local v0    # "buff":Ljava/io/BufferedReader;
    .restart local v7    # "buff":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v0

    move v11, v2

    move-object v2, v0

    goto/16 :goto_20

    .line 677
    :catch_8
    move-exception v0

    .line 678
    .local v0, "e":Ljava/io/IOException;
    :try_start_a
    const-string v11, "AppEyeBinderBlock"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "exception info e:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 681
    .end local v0    # "e":Ljava/io/IOException;
    if-eqz v8, :cond_13

    .line 682
    :try_start_b
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    .line 683
    const/4 v8, 0x0

    goto :goto_16

    .line 685
    :catch_9
    move-exception v0

    move-object v11, v0

    .line 686
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v11, "AppEyeBinderBlock"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "exception info e:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_17

    .line 687
    :cond_13
    :goto_16
    nop

    .line 690
    :goto_17
    if-eqz v9, :cond_14

    .line 691
    :try_start_c
    invoke-virtual {v9}, Ljava/io/Reader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_a

    .line 692
    const/4 v9, 0x0

    goto :goto_18

    .line 694
    :catch_a
    move-exception v0

    move-object v11, v0

    .line 695
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v11, "AppEyeBinderBlock"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "exception info e:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_19

    .line 696
    :cond_14
    :goto_18
    nop

    .line 699
    :goto_19
    if-eqz v7, :cond_12

    .line 700
    :try_start_d
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_b

    .line 701
    :goto_1a
    const/4 v7, 0x0

    goto :goto_15

    .line 703
    :catch_b
    move-exception v0

    move-object v11, v0

    .line 704
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v11, "AppEyeBinderBlock"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_14

    .line 675
    .end local v0    # "e":Ljava/io/IOException;
    :catch_c
    move-exception v0

    .line 676
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_e
    const-string v11, "AppEyeBinderBlock"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "exception info e:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 681
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    if-eqz v8, :cond_15

    .line 682
    :try_start_f
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_d

    .line 683
    const/4 v8, 0x0

    goto :goto_1b

    .line 685
    :catch_d
    move-exception v0

    move-object v11, v0

    .line 686
    .local v0, "e":Ljava/io/IOException;
    const-string v11, "AppEyeBinderBlock"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "exception info e:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_1c

    .line 687
    :cond_15
    :goto_1b
    nop

    .line 690
    :goto_1c
    if-eqz v9, :cond_16

    .line 691
    :try_start_10
    invoke-virtual {v9}, Ljava/io/Reader;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_e

    .line 692
    const/4 v9, 0x0

    goto :goto_1d

    .line 694
    :catch_e
    move-exception v0

    move-object v11, v0

    .line 695
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v11, "AppEyeBinderBlock"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "exception info e:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_1e

    .line 696
    :cond_16
    :goto_1d
    nop

    .line 699
    :goto_1e
    if-eqz v7, :cond_12

    .line 700
    :try_start_11
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_f

    goto :goto_1a

    .line 703
    :catch_f
    move-exception v0

    move-object v11, v0

    .line 704
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v11, "AppEyeBinderBlock"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_14

    .line 709
    .end local v0    # "e":Ljava/io/IOException;
    .end local v7    # "buff":Ljava/io/BufferedReader;
    .end local v8    # "in":Ljava/io/InputStream;
    .end local v9    # "reader":Ljava/io/Reader;
    .end local v10    # "file":Ljava/io/File;
    :goto_1f
    sget-object v0, Landroid/zrhung/appeye/AppEyeBinderBlock;->mPidMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 710
    const-string v0, "AppEyeBinderBlock"

    const-string v7, "read binder transaction end"

    invoke-static {v0, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    return-void

    .line 680
    .end local v2    # "index":I
    .restart local v7    # "buff":Ljava/io/BufferedReader;
    .restart local v8    # "in":Ljava/io/InputStream;
    .restart local v9    # "reader":Ljava/io/Reader;
    .restart local v10    # "file":Ljava/io/File;
    .local v11, "index":I
    :goto_20
    nop

    .line 681
    if-eqz v8, :cond_17

    .line 682
    :try_start_12
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_10

    .line 683
    const/4 v8, 0x0

    goto :goto_21

    .line 685
    :catch_10
    move-exception v0

    move-object v12, v0

    .line 686
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v12, "AppEyeBinderBlock"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "exception info e:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_22

    .line 687
    :cond_17
    :goto_21
    nop

    .line 690
    :goto_22
    if-eqz v9, :cond_18

    .line 691
    :try_start_13
    invoke-virtual {v9}, Ljava/io/Reader;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_11

    .line 692
    const/4 v9, 0x0

    goto :goto_23

    .line 694
    :catch_11
    move-exception v0

    move-object v12, v0

    .line 695
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v12, "AppEyeBinderBlock"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "exception info e:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_24

    .line 696
    :cond_18
    :goto_23
    nop

    .line 699
    :goto_24
    if-eqz v7, :cond_19

    .line 700
    :try_start_14
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_12

    .line 701
    const/4 v7, 0x0

    goto :goto_25

    .line 703
    :catch_12
    move-exception v0

    move-object v12, v0

    .line 704
    .restart local v0    # "e":Ljava/io/IOException;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "exception info e:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "AppEyeBinderBlock"

    invoke-static {v13, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/io/IOException;
    nop

    .line 705
    :cond_19
    :goto_25
    throw v2
.end method

.method public readTransactionInSubThread()V
    .locals 4

    .line 534
    :try_start_0
    new-instance v0, Landroid/zrhung/appeye/AppEyeBinderBlock$ReadTransactionThread;

    invoke-direct {v0, p0}, Landroid/zrhung/appeye/AppEyeBinderBlock$ReadTransactionThread;-><init>(Landroid/zrhung/appeye/AppEyeBinderBlock;)V

    .line 535
    .local v0, "readTransactionThread":Landroid/zrhung/appeye/AppEyeBinderBlock$ReadTransactionThread;
    iget-object v1, p0, Landroid/zrhung/appeye/AppEyeBinderBlock;->mHanderThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 538
    .end local v0    # "readTransactionThread":Landroid/zrhung/appeye/AppEyeBinderBlock$ReadTransactionThread;
    goto :goto_0

    .line 536
    :catch_0
    move-exception v0

    .line 537
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "AppEyeBinderBlock"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception info:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public writeTransactionToTrace(Ljava/lang/String;)V
    .locals 5
    .param p1, "tracesPath"    # Ljava/lang/String;

    .line 542
    const/4 v0, 0x0

    .line 544
    .local v0, "out":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    move-object v0, v1

    .line 545
    iget-object v1, p0, Landroid/zrhung/appeye/AppEyeBinderBlock;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 550
    nop

    .line 551
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 552
    :goto_0
    const/4 v0, 0x0

    goto :goto_2

    .line 554
    :catch_0
    move-exception v1

    .line 555
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "AppEyeBinderBlock"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    const-string v4, "exception info e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_3

    .line 556
    :cond_0
    :goto_2
    goto :goto_3

    .line 549
    :catchall_0
    move-exception v1

    goto :goto_4

    .line 546
    :catch_1
    move-exception v1

    .line 547
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_2
    const-string v2, "AppEyeBinderBlock"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 550
    .end local v1    # "ex":Ljava/lang/Exception;
    if-eqz v0, :cond_0

    .line 551
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 554
    :catch_2
    move-exception v1

    .line 555
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "AppEyeBinderBlock"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    .line 558
    .end local v1    # "e":Ljava/io/IOException;
    :goto_3
    return-void

    .line 549
    :goto_4
    nop

    .line 550
    if-eqz v0, :cond_1

    .line 551
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 552
    const/4 v0, 0x0

    goto :goto_5

    .line 554
    :catch_3
    move-exception v2

    .line 555
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception info e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AppEyeBinderBlock"

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Ljava/io/IOException;
    nop

    .line 556
    :cond_1
    :goto_5
    throw v1
.end method
