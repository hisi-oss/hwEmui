.class public Lhuawei/android/security/facerecognition/base/HwSecurityTaskThread;
.super Ljava/lang/Thread;
.source "HwSecurityTaskThread.java"


# static fields
.field public static final PRIORITY_HIGH:I = 0x0

.field public static final PRIORITY_LOW:I = 0x2

.field public static final PRIORITY_NORMAL:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field private static gInstance:Lhuawei/android/security/facerecognition/base/HwSecurityTaskThread;

.field private static mInstanceLock:Ljava/lang/Object;


# instance fields
.field private mHighPriorityTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;",
            ">;"
        }
    .end annotation
.end field

.field private mLowPriorityTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;",
            ">;"
        }
    .end annotation
.end field

.field private mNormalPriorityTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;",
            ">;"
        }
    .end annotation
.end field

.field private mNotified:Z

.field private mSignal:Ljava/lang/Object;

.field private mStop:Z

.field private mTaskLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    const-class v0, Lhuawei/android/security/facerecognition/base/HwSecurityTaskThread;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lhuawei/android/security/facerecognition/base/HwSecurityTaskThread;->TAG:Ljava/lang/String;

    .line 171
    const/4 v0, 0x0

    sput-object v0, Lhuawei/android/security/facerecognition/base/HwSecurityTaskThread;->gInstance:Lhuawei/android/security/facerecognition/base/HwSecurityTaskThread;

    .line 172
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lhuawei/android/security/facerecognition/base/HwSecurityTaskThread;->mInstanceLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lhuawei/android/security/facerecognition/base/HwSecurityTaskThread;->mHighPriorityTasks:Ljava/util/ArrayList;

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lhuawei/android/security/facerecognition/base/HwSecurityTaskThread;->mNormalPriorityTasks:Ljava/util/ArrayList;

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lhuawei/android/security/facerecognition/base/HwSecurityTaskThread;->mLowPriorityTasks:Ljava/util/ArrayList;

    .line 14
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lhuawei/android/security/facerecognition/base/HwSecurityTaskThread;->mSignal:Ljava/lang/Object;

    .line 15
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lhuawei/android/security/facerecognition/base/HwSecurityTaskThread;->mTaskLock:Ljava/lang/Object;

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lhuawei/android/security/facerecognition/base/HwSecurityTaskThread;->mStop:Z

    .line 24
    iput-boolean v0, p0, Lhuawei/android/security/facerecognition/base/HwSecurityTaskThread;->mNotified:Z

    .line 25
    return-void
.end method

.method public static createInstance()V
    .locals 2

    .line 150
    sget-object v0, Lhuawei/android/security/facerecognition/base/HwSecurityTaskThread;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 151
    :try_start_0
    sget-object v1, Lhuawei/android/security/facerecognition/base/HwSecurityTaskThread;->gInstance:Lhuawei/android/security/facerecognition/base/HwSecurityTaskThread;

    if-nez v1, :cond_0

    .line 152
    new-instance v1, Lhuawei/android/security/facerecognition/base/HwSecurityTaskThread;

    invoke-direct {v1}, Lhuawei/android/security/facerecognition/base/HwSecurityTaskThread;-><init>()V

    sput-object v1, Lhuawei/android/security/facerecognition/base/HwSecurityTaskThread;->gInstance:Lhuawei/android/security/facerecognition/base/HwSecurityTaskThread;

    .line 154
    :cond_0
    monitor-exit v0

    .line 155
    return-void

    .line 154
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static destroyInstance()V
    .locals 2

    .line 164
    sget-object v0, Lhuawei/android/security/facerecognition/base/HwSecurityTaskThread;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 165
    :try_start_0
    sget-object v1, Lhuawei/android/security/facerecognition/base/HwSecurityTaskThread;->gInstance:Lhuawei/android/security/facerecognition/base/HwSecurityTaskThread;

    if-eqz v1, :cond_0

    .line 166
    const/4 v1, 0x0

    sput-object v1, Lhuawei/android/security/facerecognition/base/HwSecurityTaskThread;->gInstance:Lhuawei/android/security/facerecognition/base/HwSecurityTaskThread;

    .line 168
    :cond_0
    monitor-exit v0

    .line 169
    return-void

    .line 168
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getInstance()Lhuawei/android/security/facerecognition/base/HwSecurityTaskThread;
    .locals 2

    .line 158
    sget-object v0, Lhuawei/android/security/facerecognition/base/HwSecurityTaskThread;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 159
    :try_start_0
    sget-object v1, Lhuawei/android/security/facerecognition/base/HwSecurityTaskThread;->gInstance:Lhuawei/android/security/facerecognition/base/HwSecurityTaskThread;

    monitor-exit v0

    return-object v1

    .line 160
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static staticPushTask(Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;I)V
    .locals 1
    .param p0, "task"    # Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;
    .param p1, "priority"    # I

    .line 143
    invoke-static {}, Lhuawei/android/security/facerecognition/base/HwSecurityTaskThread;->getInstance()Lhuawei/android/security/facerecognition/base/HwSecurityTaskThread;

    move-result-object v0

    .line 144
    .local v0, "gThread":Lhuawei/android/security/facerecognition/base/HwSecurityTaskThread;
    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {v0, p0, p1}, Lhuawei/android/security/facerecognition/base/HwSecurityTaskThread;->pushTask(Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;I)Z

    .line 147
    :cond_0
    return-void
.end method


# virtual methods
.method public checkQuit()Z
    .locals 2

    .line 69
    iget-object v0, p0, Lhuawei/android/security/facerecognition/base/HwSecurityTaskThread;->mSignal:Ljava/lang/Object;

    monitor-enter v0

    .line 70
    :try_start_0
    iget-boolean v1, p0, Lhuawei/android/security/facerecognition/base/HwSecurityTaskThread;->mStop:Z

    monitor-exit v0

    return v1

    .line 71
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected getNextTask()Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;
    .locals 3

    .line 122
    iget-object v0, p0, Lhuawei/android/security/facerecognition/base/HwSecurityTaskThread;->mTaskLock:Ljava/lang/Object;

    monitor-enter v0

    .line 123
    :try_start_0
    iget-object v1, p0, Lhuawei/android/security/facerecognition/base/HwSecurityTaskThread;->mHighPriorityTasks:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 124
    iget-object v1, p0, Lhuawei/android/security/facerecognition/base/HwSecurityTaskThread;->mHighPriorityTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 125
    iget-object v1, p0, Lhuawei/android/security/facerecognition/base/HwSecurityTaskThread;->mHighPriorityTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;

    monitor-exit v0

    return-object v1

    .line 128
    :cond_0
    iget-object v1, p0, Lhuawei/android/security/facerecognition/base/HwSecurityTaskThread;->mNormalPriorityTasks:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 129
    iget-object v1, p0, Lhuawei/android/security/facerecognition/base/HwSecurityTaskThread;->mNormalPriorityTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 130
    iget-object v1, p0, Lhuawei/android/security/facerecognition/base/HwSecurityTaskThread;->mNormalPriorityTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;

    monitor-exit v0

    return-object v1

    .line 133
    :cond_1
    iget-object v1, p0, Lhuawei/android/security/facerecognition/base/HwSecurityTaskThread;->mLowPriorityTasks:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 134
    iget-object v1, p0, Lhuawei/android/security/facerecognition/base/HwSecurityTaskThread;->mLowPriorityTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 135
    iget-object v1, p0, Lhuawei/android/security/facerecognition/base/HwSecurityTaskThread;->mLowPriorityTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;

    monitor-exit v0

    return-object v1

    .line 138
    :cond_2
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 139
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notifyThread()V
    .locals 2

    .line 49
    iget-object v0, p0, Lhuawei/android/security/facerecognition/base/HwSecurityTaskThread;->mSignal:Ljava/lang/Object;

    monitor-enter v0

    .line 50
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lhuawei/android/security/facerecognition/base/HwSecurityTaskThread;->mNotified:Z

    .line 51
    iget-object v1, p0, Lhuawei/android/security/facerecognition/base/HwSecurityTaskThread;->mSignal:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 52
    monitor-exit v0

    .line 53
    return-void

    .line 52
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public pushTask(Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;I)Z
    .locals 5
    .param p1, "task"    # Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;
    .param p2, "priority"    # I

    .line 94
    iget-object v0, p0, Lhuawei/android/security/facerecognition/base/HwSecurityTaskThread;->mTaskLock:Ljava/lang/Object;

    monitor-enter v0

    .line 95
    :try_start_0
    sget-object v1, Lhuawei/android/security/facerecognition/base/HwSecurityTaskThread;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pushTask: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhuawei/android/security/facerecognition/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const/4 v1, 0x0

    .line 98
    .local v1, "pushSucceed":Z
    if-eqz p2, :cond_1

    const/4 v2, 0x2

    if-eq p2, v2, :cond_0

    .line 107
    iget-object v2, p0, Lhuawei/android/security/facerecognition/base/HwSecurityTaskThread;->mNormalPriorityTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    move v1, v2

    goto :goto_0

    .line 103
    :cond_0
    iget-object v2, p0, Lhuawei/android/security/facerecognition/base/HwSecurityTaskThread;->mLowPriorityTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    move v1, v2

    .line 104
    goto :goto_0

    .line 100
    :cond_1
    iget-object v2, p0, Lhuawei/android/security/facerecognition/base/HwSecurityTaskThread;->mHighPriorityTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    move v1, v2

    .line 101
    nop

    .line 111
    :goto_0
    if-eqz v1, :cond_2

    .line 112
    invoke-virtual {p1}, Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;->onStart()V

    .line 113
    invoke-virtual {p0}, Lhuawei/android/security/facerecognition/base/HwSecurityTaskThread;->notifyThread()V

    goto :goto_1

    .line 115
    :cond_2
    sget-object v2, Lhuawei/android/security/facerecognition/base/HwSecurityTaskThread;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pushTask: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " failed, priority: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhuawei/android/security/facerecognition/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :goto_1
    monitor-exit v0

    return v1

    .line 118
    .end local v1    # "pushSucceed":Z
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public run()V
    .locals 4

    .line 77
    :goto_0
    invoke-virtual {p0}, Lhuawei/android/security/facerecognition/base/HwSecurityTaskThread;->checkQuit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    return-void

    .line 81
    :cond_0
    invoke-virtual {p0}, Lhuawei/android/security/facerecognition/base/HwSecurityTaskThread;->getNextTask()Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;

    move-result-object v0

    .line 82
    .local v0, "task":Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;
    if-eqz v0, :cond_1

    .line 83
    sget-object v1, Lhuawei/android/security/facerecognition/base/HwSecurityTaskThread;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "run: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;->getTaskStatus()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhuawei/android/security/facerecognition/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-virtual {v0}, Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;->getTaskStatus()I

    move-result v1

    if-nez v1, :cond_2

    .line 85
    invoke-virtual {v0}, Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;->execute()V

    goto :goto_1

    .line 88
    :cond_1
    invoke-virtual {p0}, Lhuawei/android/security/facerecognition/base/HwSecurityTaskThread;->waitThread()V

    .line 90
    .end local v0    # "task":Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;
    :cond_2
    :goto_1
    goto :goto_0
.end method

.method public startThread()V
    .locals 2

    .line 28
    iget-object v0, p0, Lhuawei/android/security/facerecognition/base/HwSecurityTaskThread;->mSignal:Ljava/lang/Object;

    monitor-enter v0

    .line 29
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lhuawei/android/security/facerecognition/base/HwSecurityTaskThread;->mStop:Z

    .line 30
    iput-boolean v1, p0, Lhuawei/android/security/facerecognition/base/HwSecurityTaskThread;->mNotified:Z

    .line 31
    invoke-virtual {p0}, Lhuawei/android/security/facerecognition/base/HwSecurityTaskThread;->start()V

    .line 32
    monitor-exit v0

    .line 33
    return-void

    .line 32
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public stopThread()V
    .locals 2

    .line 36
    iget-object v0, p0, Lhuawei/android/security/facerecognition/base/HwSecurityTaskThread;->mSignal:Ljava/lang/Object;

    monitor-enter v0

    .line 37
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lhuawei/android/security/facerecognition/base/HwSecurityTaskThread;->mStop:Z

    .line 38
    iput-boolean v1, p0, Lhuawei/android/security/facerecognition/base/HwSecurityTaskThread;->mNotified:Z

    .line 39
    iget-object v1, p0, Lhuawei/android/security/facerecognition/base/HwSecurityTaskThread;->mSignal:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 40
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    const-wide/16 v0, 0x0

    :try_start_1
    invoke-virtual {p0, v0, v1}, Lhuawei/android/security/facerecognition/base/HwSecurityTaskThread;->join(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 45
    goto :goto_0

    .line 44
    :catch_0
    move-exception v0

    .line 46
    :goto_0
    return-void

    .line 40
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public waitThread()V
    .locals 3

    .line 57
    :try_start_0
    iget-object v0, p0, Lhuawei/android/security/facerecognition/base/HwSecurityTaskThread;->mSignal:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :goto_0
    :try_start_1
    iget-boolean v1, p0, Lhuawei/android/security/facerecognition/base/HwSecurityTaskThread;->mNotified:Z

    if-nez v1, :cond_0

    .line 59
    iget-object v1, p0, Lhuawei/android/security/facerecognition/base/HwSecurityTaskThread;->mSignal:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 61
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lhuawei/android/security/facerecognition/base/HwSecurityTaskThread;->mNotified:Z

    .line 62
    monitor-exit v0

    .line 65
    goto :goto_1

    .line 62
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/InterruptedException;
    sget-object v1, Lhuawei/android/security/facerecognition/base/HwSecurityTaskThread;->TAG:Ljava/lang/String;

    const-string v2, "security taskthread wait failed."

    invoke-static {v1, v2}, Lhuawei/android/security/facerecognition/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_1
    return-void
.end method
