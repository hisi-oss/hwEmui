.class public Lhuawei/android/common/HwFrameworkMonitorImpl;
.super Ljava/lang/Object;
.source "HwFrameworkMonitorImpl.java"

# interfaces
.implements Landroid/common/HwFrameworkMonitor;


# static fields
.field private static final MAX_REASON_LEN:I = 0x200

.field private static final TAG:Ljava/lang/String; = "HwFrameworkMonitor"

.field private static mInstance:Lhuawei/android/common/HwFrameworkMonitorImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const/4 v0, 0x0

    sput-object v0, Lhuawei/android/common/HwFrameworkMonitorImpl;->mInstance:Lhuawei/android/common/HwFrameworkMonitorImpl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method public static declared-synchronized getInstance()Lhuawei/android/common/HwFrameworkMonitorImpl;
    .locals 2

    const-class v0, Lhuawei/android/common/HwFrameworkMonitorImpl;

    monitor-enter v0

    .line 47
    :try_start_0
    sget-object v1, Lhuawei/android/common/HwFrameworkMonitorImpl;->mInstance:Lhuawei/android/common/HwFrameworkMonitorImpl;

    if-nez v1, :cond_0

    .line 48
    new-instance v1, Lhuawei/android/common/HwFrameworkMonitorImpl;

    invoke-direct {v1}, Lhuawei/android/common/HwFrameworkMonitorImpl;-><init>()V

    sput-object v1, Lhuawei/android/common/HwFrameworkMonitorImpl;->mInstance:Lhuawei/android/common/HwFrameworkMonitorImpl;

    .line 50
    :cond_0
    sget-object v1, Lhuawei/android/common/HwFrameworkMonitorImpl;->mInstance:Lhuawei/android/common/HwFrameworkMonitorImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 46
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public monitor(ILandroid/os/Bundle;)Z
    .locals 12
    .param p1, "sceneId"    # I
    .param p2, "params"    # Landroid/os/Bundle;

    .line 55
    const/4 v0, 0x0

    .line 56
    .local v0, "result":Z
    const/4 v1, 0x0

    .line 57
    .local v1, "errorType":I
    invoke-static {p1}, Landroid/util/IMonitor;->openEventStream(I)Landroid/util/IMonitor$EventStream;

    move-result-object v2

    .line 58
    .local v2, "eventStream":Landroid/util/IMonitor$EventStream;
    if-eqz v2, :cond_5

    .line 59
    if-eqz p2, :cond_4

    .line 61
    const/16 v3, 0x3e9

    const/4 v4, 0x6

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x3

    const/16 v9, 0x200

    const/4 v10, 0x1

    const/4 v11, 0x0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    .line 138
    :sswitch_0
    const-string v3, "ProcName"

    const-string v4, "proc_name"

    const-string v5, "unknown"

    invoke-virtual {p2, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/util/IMonitor$EventStream;->setParam(Ljava/lang/String;Ljava/lang/String;)Landroid/util/IMonitor$EventStream;

    .line 139
    const-string v3, "StatDur"

    const-string v4, "stat_duration"

    invoke-virtual {p2, v4, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/util/IMonitor$EventStream;->setParam(Ljava/lang/String;I)Landroid/util/IMonitor$EventStream;

    .line 140
    const-string v3, "CyclRefMaxCnt"

    const-string v4, "circref_rcycl_cnt"

    invoke-virtual {p2, v4, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/util/IMonitor$EventStream;->setParam(Ljava/lang/String;I)Landroid/util/IMonitor$EventStream;

    .line 141
    const-string v3, "CyclRefMaxDur"

    const-string v4, "circref_rcycl_max_duration"

    invoke-virtual {p2, v4, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/util/IMonitor$EventStream;->setParam(Ljava/lang/String;I)Landroid/util/IMonitor$EventStream;

    .line 142
    const-string v3, "MemLeakAvrg"

    const-string v4, "mem_leak_avrg"

    invoke-virtual {p2, v4, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/util/IMonitor$EventStream;->setParam(Ljava/lang/String;I)Landroid/util/IMonitor$EventStream;

    .line 143
    const-string v3, "MemLeakPeak"

    const-string v4, "mem_leak_peak"

    invoke-virtual {p2, v4, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/util/IMonitor$EventStream;->setParam(Ljava/lang/String;I)Landroid/util/IMonitor$EventStream;

    .line 144
    const-string v3, "MemAllocSpac"

    const-string v4, "mem_alloc_space_util"

    invoke-virtual {p2, v4, v7}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/util/IMonitor$EventStream;->setParam(Ljava/lang/String;F)Landroid/util/IMonitor$EventStream;

    .line 145
    const-string v3, "MemAllocAbnmCnt"

    const-string v4, "mem_alloc_abnormal"

    invoke-virtual {p2, v4, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/util/IMonitor$EventStream;->setParam(Ljava/lang/String;I)Landroid/util/IMonitor$EventStream;

    .line 146
    const-string v3, "RcAbnmCnt"

    const-string v4, "rc_abnormal"

    invoke-virtual {p2, v4, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/util/IMonitor$EventStream;->setParam(Ljava/lang/String;I)Landroid/util/IMonitor$EventStream;

    .line 148
    const-string v3, "RefGlobalWaterline"

    const-string v4, "global_water_line"

    invoke-virtual {p2, v4, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/util/IMonitor$EventStream;->setParam(Ljava/lang/String;I)Landroid/util/IMonitor$EventStream;

    .line 149
    const-string v3, "RefWeakWaterline"

    const-string v4, "weak_water_line"

    invoke-virtual {p2, v4, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/util/IMonitor$EventStream;->setParam(Ljava/lang/String;I)Landroid/util/IMonitor$EventStream;

    .line 150
    const-string v3, "RefThreadslocalWaterline"

    const-string v4, "threads_local_water_line"

    const-string v5, "unknown"

    invoke-virtual {p2, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/util/IMonitor$EventStream;->setParam(Ljava/lang/String;Ljava/lang/String;)Landroid/util/IMonitor$EventStream;

    .line 151
    const-string v3, "RefNativeTableSize"

    const-string v4, "native_table_size"

    invoke-virtual {p2, v4, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/util/IMonitor$EventStream;->setParam(Ljava/lang/String;I)Landroid/util/IMonitor$EventStream;

    .line 153
    const-string v3, "MemConsumMplFiles"

    const-string v4, "consum_mpl_files"

    invoke-virtual {p2, v4, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/util/IMonitor$EventStream;->setParam(Ljava/lang/String;I)Landroid/util/IMonitor$EventStream;

    .line 154
    const-string v3, "MemConsumClassLocator"

    const-string v4, "consum_class_locator"

    invoke-virtual {p2, v4, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/util/IMonitor$EventStream;->setParam(Ljava/lang/String;I)Landroid/util/IMonitor$EventStream;

    .line 155
    const-string v3, "MemReflectManageHeap"

    const-string v4, "reflect_manage_heap"

    invoke-virtual {p2, v4, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/util/IMonitor$EventStream;->setParam(Ljava/lang/String;I)Landroid/util/IMonitor$EventStream;

    .line 156
    const-string v3, "MemGcManageHeap"

    const-string v4, "gc_manage_heap"

    invoke-virtual {p2, v4, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/util/IMonitor$EventStream;->setParam(Ljava/lang/String;I)Landroid/util/IMonitor$EventStream;

    .line 157
    const-string v3, "MemCyclePattern"

    const-string v4, "cycle_pattern"

    const-string v5, "unknown"

    invoke-virtual {p2, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/util/IMonitor$EventStream;->setParam(Ljava/lang/String;Ljava/lang/String;)Landroid/util/IMonitor$EventStream;

    .line 159
    goto/16 :goto_0

    .line 132
    :sswitch_1
    const-string v3, "component"

    const-string v4, "unknown"

    invoke-virtual {p2, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v11, v3}, Landroid/util/IMonitor$EventStream;->setParam(SLjava/lang/String;)Landroid/util/IMonitor$EventStream;

    .line 133
    const-string v3, "reason"

    const-string v4, "unknown"

    invoke-virtual {p2, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v10, v3}, Landroid/util/IMonitor$EventStream;->setParam(SLjava/lang/String;)Landroid/util/IMonitor$EventStream;

    .line 134
    goto/16 :goto_0

    .line 88
    :sswitch_2
    const-string v3, "cpuState"

    const-string v4, "unknown"

    invoke-virtual {p2, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v11, v3}, Landroid/util/IMonitor$EventStream;->setParam(SLjava/lang/String;)Landroid/util/IMonitor$EventStream;

    .line 89
    const-string v3, "cpuTime"

    const-string v4, "unknown"

    invoke-virtual {p2, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v10, v3}, Landroid/util/IMonitor$EventStream;->setParam(SLjava/lang/String;)Landroid/util/IMonitor$EventStream;

    .line 90
    const/4 v3, 0x2

    const-string v4, "extra"

    const-string v5, "unknown"

    invoke-virtual {p2, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/util/IMonitor$EventStream;->setParam(SLjava/lang/String;)Landroid/util/IMonitor$EventStream;

    .line 91
    goto/16 :goto_0

    .line 77
    :sswitch_3
    const-string v3, "package"

    const-string v9, "unknown"

    invoke-virtual {p2, v3, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v11, v3}, Landroid/util/IMonitor$EventStream;->setParam(SLjava/lang/String;)Landroid/util/IMonitor$EventStream;

    .line 78
    const-string v3, "versionName"

    const-string v9, "unknown"

    invoke-virtual {p2, v3, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v10, v3}, Landroid/util/IMonitor$EventStream;->setParam(SLjava/lang/String;)Landroid/util/IMonitor$EventStream;

    .line 79
    const-string v3, "action"

    const-string v9, "unknown"

    invoke-virtual {p2, v3, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v8, v3}, Landroid/util/IMonitor$EventStream;->setParam(SLjava/lang/String;)Landroid/util/IMonitor$EventStream;

    .line 80
    const-string v3, "receiveTime"

    invoke-virtual {p2, v3, v7}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v3

    invoke-virtual {v2, v6, v3}, Landroid/util/IMonitor$EventStream;->setParam(SF)Landroid/util/IMonitor$EventStream;

    .line 81
    const-string v3, "receiver"

    const-string v6, "unknown"

    invoke-virtual {p2, v3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Landroid/util/IMonitor$EventStream;->setParam(SLjava/lang/String;)Landroid/util/IMonitor$EventStream;

    .line 82
    const-string v3, "intent"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    .line 83
    .local v3, "objIntent":Ljava/lang/Object;
    if-eqz v3, :cond_4

    .line 84
    move-object v5, v3

    check-cast v5, Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/util/IMonitor$EventStream;->setParam(SLjava/lang/String;)Landroid/util/IMonitor$EventStream;

    goto/16 :goto_0

    .line 68
    .end local v3    # "objIntent":Ljava/lang/Object;
    :sswitch_4
    const-string v3, "package"

    const-string v7, "unknown"

    invoke-virtual {p2, v3, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v11, v3}, Landroid/util/IMonitor$EventStream;->setParam(SLjava/lang/String;)Landroid/util/IMonitor$EventStream;

    .line 69
    const-string v3, "versionName"

    const-string v7, "unknown"

    invoke-virtual {p2, v3, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v10, v3}, Landroid/util/IMonitor$EventStream;->setParam(SLjava/lang/String;)Landroid/util/IMonitor$EventStream;

    .line 70
    const-string v3, "action"

    const-string v7, "unknown"

    invoke-virtual {p2, v3, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v8, v3}, Landroid/util/IMonitor$EventStream;->setParam(SLjava/lang/String;)Landroid/util/IMonitor$EventStream;

    .line 71
    const-string v3, "actionCount"

    invoke-virtual {p2, v3, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v6, v3}, Landroid/util/IMonitor$EventStream;->setParam(SI)Landroid/util/IMonitor$EventStream;

    .line 72
    const-string v3, "mmsFlag"

    invoke-virtual {p2, v3, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Landroid/util/IMonitor$EventStream;->setParam(SLjava/lang/Boolean;)Landroid/util/IMonitor$EventStream;

    .line 73
    const-string v3, "receiver"

    const-string v5, "unknown"

    invoke-virtual {p2, v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/util/IMonitor$EventStream;->setParam(SLjava/lang/String;)Landroid/util/IMonitor$EventStream;

    .line 74
    const/4 v3, 0x7

    const-string v4, "package"

    const-string v5, "unknown"

    invoke-virtual {p2, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/util/IMonitor$EventStream;->setParam(SLjava/lang/String;)Landroid/util/IMonitor$EventStream;

    .line 75
    goto/16 :goto_0

    .line 63
    :sswitch_5
    const-string v3, "package"

    const-string v4, "unknown"

    invoke-virtual {p2, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v11, v3}, Landroid/util/IMonitor$EventStream;->setParam(SLjava/lang/String;)Landroid/util/IMonitor$EventStream;

    .line 64
    const-string v3, "versionName"

    const-string v4, "unknown"

    invoke-virtual {p2, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v10, v3}, Landroid/util/IMonitor$EventStream;->setParam(SLjava/lang/String;)Landroid/util/IMonitor$EventStream;

    .line 65
    const-string v3, "extra"

    const-string v4, "unknown"

    invoke-virtual {p2, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v8, v3}, Landroid/util/IMonitor$EventStream;->setParam(SLjava/lang/String;)Landroid/util/IMonitor$EventStream;

    .line 66
    goto/16 :goto_0

    .line 112
    :sswitch_6
    const-string v4, "errorType"

    invoke-virtual {p2, v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 113
    invoke-virtual {v2, v11, v1}, Landroid/util/IMonitor$EventStream;->setParam(SI)Landroid/util/IMonitor$EventStream;

    .line 115
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "message"

    const-string v5, ""

    invoke-virtual {p2, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 116
    .local v3, "message":Ljava/lang/StringBuilder;
    const-string v4, "reason"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Ljava/lang/Exception;

    .line 117
    .local v4, "exp":Ljava/lang/Exception;
    if-eqz v4, :cond_0

    .line 118
    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-le v5, v9, :cond_1

    .line 122
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {v3, v9, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 124
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 125
    .local v5, "strMsg":Ljava/lang/String;
    invoke-virtual {v2, v10, v5}, Landroid/util/IMonitor$EventStream;->setParam(SLjava/lang/String;)Landroid/util/IMonitor$EventStream;

    .line 127
    const-string v6, "HwFrameworkMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "monitorCheckPassword: errorType="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", reason="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    goto :goto_0

    .line 93
    .end local v3    # "message":Ljava/lang/StringBuilder;
    .end local v4    # "exp":Ljava/lang/Exception;
    .end local v5    # "strMsg":Ljava/lang/String;
    :sswitch_7
    const-string v4, "errorType"

    invoke-virtual {p2, v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 94
    invoke-virtual {v2, v11, v1}, Landroid/util/IMonitor$EventStream;->setParam(SI)Landroid/util/IMonitor$EventStream;

    .line 95
    const-string v3, "reason"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Ljava/lang/Exception;

    .line 96
    .local v3, "e":Ljava/lang/Exception;
    if-nez v3, :cond_2

    .line 97
    new-instance v4, Ljava/lang/Exception;

    invoke-direct {v4}, Ljava/lang/Exception;-><init>()V

    move-object v3, v4

    .line 100
    :cond_2
    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 101
    .local v4, "reason":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v9, :cond_3

    .line 102
    invoke-virtual {v4, v11, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 105
    :cond_3
    invoke-virtual {v2, v10, v4}, Landroid/util/IMonitor$EventStream;->setParam(SLjava/lang/String;)Landroid/util/IMonitor$EventStream;

    .line 107
    const-string v5, "HwFrameworkMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "monitorCheckPassword: errorType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", reason="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    nop

    .line 166
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "reason":Ljava/lang/String;
    :cond_4
    :goto_0
    invoke-static {v2}, Landroid/util/IMonitor;->sendEvent(Landroid/util/IMonitor$EventStream;)Z

    move-result v0

    .line 167
    const-string v3, "HwFrameworkMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Monitor for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", result="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-static {v2}, Landroid/util/IMonitor;->closeEventStream(Landroid/util/IMonitor$EventStream;)V

    .line 171
    :cond_5
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x36103d91 -> :sswitch_7
        0x36103d92 -> :sswitch_6
        0x3615d340 -> :sswitch_5
        0x3615d342 -> :sswitch_4
        0x3615d343 -> :sswitch_3
        0x3615d350 -> :sswitch_2
        0x3615d352 -> :sswitch_1
        0x38263cb1 -> :sswitch_0
    .end sparse-switch
.end method
