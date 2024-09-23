.class public Landroid/os/FreezeScreenScene;
.super Ljava/lang/Object;
.source "FreezeScreenScene.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/FreezeScreenScene$MonitorHelper;,
        Landroid/os/FreezeScreenScene$FreezeScreenRadar;,
        Landroid/os/FreezeScreenScene$IMonitorRadar;,
        Landroid/os/FreezeScreenScene$FreezeScreenSceneHandler;
    }
.end annotation


# static fields
.field public static final ACTIVITY_PARAM:Ljava/lang/String; = "activity"

.field public static final ANR_ACTIVITY_NAME:Ljava/lang/String; = "anrActivityName"

.field public static final BLOCK_IME_PACKAGE_NAME:Ljava/lang/String; = "blockPackageName"

.field private static final CHECK_FREEZE_SCREEN_DELAY_TIME:I = 0x4e20

.field public static final CHECK_FREEZE_SCREEN_FOCUS_WINDOW_ERROR_MSG:I = 0x2

.field public static final CHECK_FREEZE_SCREEN_MSG:I = 0x1

.field public static final CHECK_TYPE_PARAM:Ljava/lang/String; = "checkType"

.field public static final CONTEXT_PARAM:Ljava/lang/String; = "context"

.field public static final DISPLAY_EVENT_LOST_SCENE:I = 0x3615d34c

.field public static final DISPLAY_EVENT_LOST_SCENE_STRING:Ljava/lang/String; = "DisplayEventLostScene"

.field public static final FOCUS_ACTIVITY_HASH_CODE_PARAM:Ljava/lang/String; = "focusedActivityHashCode"

.field public static final FOCUS_ACTIVITY_PARAM:Ljava/lang/String; = "focusedActivityName"

.field public static final FOCUS_PACKAGE_PARAM:Ljava/lang/String; = "focusedPackageName"

.field public static final FOCUS_WINDOW_ERROR_SCENE:I = 0x3615d34e

.field public static final FOCUS_WINDOW_ERROR_SCENE_STRING:Ljava/lang/String; = "FocusWindowErrorScene"

.field public static final FOCUS_WINDOW_HASH_CODE_PARAM:Ljava/lang/String; = "focusedWindowHashCode"

.field public static final FOCUS_WINDOW_NULL_SCENE:I = 0x3615d34d

.field public static final FOCUS_WINDOW_NULL_SCENE_STRING:Ljava/lang/String; = "FocusWindowNullScene"

.field public static final FOCUS_WINDOW_PARAM:Ljava/lang/String; = "focusedWindowName"

.field public static final HIGH_LEVEL_WINDOW_NAME_PARAM:Ljava/lang/String; = "highLevelWindowName"

.field public static final HIGH_WINDOW_LAYER_SCENE:I = 0x3615d34b

.field public static final HIGH_WINDOW_LAYER_SCENE_STRING:Ljava/lang/String; = "HighWindowLayerScene"

.field public static final HUNG_CONFIG_ENABLE:Ljava/lang/String; = "1"

.field public static final IMOINITOR_RADAR_TYPE:I = 0x0

.field public static final IS_DEBUG_VERSION:Z

.field public static final LAYOUT_PARAM:Ljava/lang/String; = "layoutParams"

.field public static final LOG_EXCEPTION_RADAR_TYPE:I = 0x1

.field public static final LOOPER_PARAM:Ljava/lang/String; = "looper"

.field public static final PID_PARAM:Ljava/lang/String; = "pid"

.field public static final PROCESS_NAME:Ljava/lang/String; = "processName"

.field private static final TAG:Ljava/lang/String; = "FreezeScreenScene"

.field public static final TOKEN_PARAM:Ljava/lang/String; = "token"

.field public static final TRANSPARENT_ACTIVITY_SCENE:I = 0x3615d349

.field public static final TRANSPARENT_ACTIVITY_SCENE_STRING:Ljava/lang/String; = "TransparentActivityScene"

.field public static final WINDOW_MANAGER_PARAM:Ljava/lang/String; = "windowManager"

.field public static final WINDOW_PARAM:Ljava/lang/String; = "window"

.field public static final WINDOW_STATE_PARAM:Ljava/lang/String; = "windowState"

.field private static mCheckFreezeScreenDelayTime:I


# instance fields
.field public mFreezeScreenRadar:Landroid/os/FreezeScreenScene$FreezeScreenRadar;

.field public mHandler:Landroid/os/Handler;

.field private mHungConfigFocusWindow:Landroid/util/ZRHung$HungConfig;

.field private mHungConfigTransWindow:Landroid/util/ZRHung$HungConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 81
    const-string v0, "ro.logsystem.usertype"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sput-boolean v1, Landroid/os/FreezeScreenScene;->IS_DEBUG_VERSION:Z

    .line 83
    const/16 v0, 0x4e20

    sput v0, Landroid/os/FreezeScreenScene;->mCheckFreezeScreenDelayTime:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/FreezeScreenScene;->mHungConfigFocusWindow:Landroid/util/ZRHung$HungConfig;

    .line 85
    iput-object v0, p0, Landroid/os/FreezeScreenScene;->mHungConfigTransWindow:Landroid/util/ZRHung$HungConfig;

    .line 87
    iput-object v0, p0, Landroid/os/FreezeScreenScene;->mHandler:Landroid/os/Handler;

    .line 88
    iput-object v0, p0, Landroid/os/FreezeScreenScene;->mFreezeScreenRadar:Landroid/os/FreezeScreenScene$FreezeScreenRadar;

    return-void
.end method


# virtual methods
.method public checkFreezeScreen(Landroid/util/ArrayMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 91
    .local p1, "params":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Object;>;"
    return-void
.end method

.method public checkParamsValid(Landroid/util/ArrayMap;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 152
    .local p1, "params":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized getFreezeScreenRadar()Landroid/os/FreezeScreenScene$FreezeScreenRadar;
    .locals 1

    monitor-enter p0

    .line 179
    :try_start_0
    iget-object v0, p0, Landroid/os/FreezeScreenScene;->mFreezeScreenRadar:Landroid/os/FreezeScreenScene$FreezeScreenRadar;

    if-nez v0, :cond_0

    .line 180
    new-instance v0, Landroid/os/FreezeScreenScene$IMonitorRadar;

    invoke-direct {v0}, Landroid/os/FreezeScreenScene$IMonitorRadar;-><init>()V

    iput-object v0, p0, Landroid/os/FreezeScreenScene;->mFreezeScreenRadar:Landroid/os/FreezeScreenScene$FreezeScreenRadar;

    .line 182
    :cond_0
    iget-object v0, p0, Landroid/os/FreezeScreenScene;->mFreezeScreenRadar:Landroid/os/FreezeScreenScene$FreezeScreenRadar;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 178
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Landroid/os/FreezeScreenScene;
    throw v0
.end method

.method public declared-synchronized scheduleCheckFreezeScreen(Landroid/util/ArrayMap;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .local p1, "params":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Object;>;"
    monitor-enter p0

    .line 94
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/os/FreezeScreenScene;->checkParamsValid(Landroid/util/ArrayMap;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 95
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/os/FreezeScreenScene;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x4e20

    if-nez v0, :cond_1

    .line 96
    const-string v0, "FreezeScreenScene"

    const-string v2, "scheduleCheckFreezeScreen new FreezeScreenSceneHandler"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    new-instance v0, Landroid/os/FreezeScreenScene$FreezeScreenSceneHandler;

    const-string v2, "looper"

    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Looper;

    invoke-direct {v0, p0, v2}, Landroid/os/FreezeScreenScene$FreezeScreenSceneHandler;-><init>(Landroid/os/FreezeScreenScene;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/os/FreezeScreenScene;->mHandler:Landroid/os/Handler;

    .line 98
    sput v1, Landroid/os/FreezeScreenScene;->mCheckFreezeScreenDelayTime:I

    .line 101
    :cond_1
    const-string v0, "checkType"

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 102
    .local v0, "type":Ljava/lang/String;
    const/4 v2, 0x0

    .line 105
    .local v2, "msg":Landroid/os/Message;
    const-string v3, "FocusWindowErrorScene"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v3, :cond_6

    .line 106
    iget-object v3, p0, Landroid/os/FreezeScreenScene;->mHungConfigFocusWindow:Landroid/util/ZRHung$HungConfig;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/os/FreezeScreenScene;->mHungConfigFocusWindow:Landroid/util/ZRHung$HungConfig;

    iget v3, v3, Landroid/util/ZRHung$HungConfig;->status:I

    if-lez v3, :cond_3

    .line 107
    :cond_2
    const/16 v3, 0xf

    invoke-static {v3}, Landroid/util/ZRHung;->getHungConfig(S)Landroid/util/ZRHung$HungConfig;

    move-result-object v3

    iput-object v3, p0, Landroid/os/FreezeScreenScene;->mHungConfigFocusWindow:Landroid/util/ZRHung$HungConfig;

    .line 109
    :cond_3
    iget-object v3, p0, Landroid/os/FreezeScreenScene;->mHungConfigFocusWindow:Landroid/util/ZRHung$HungConfig;

    if-eqz v3, :cond_c

    .line 110
    iget-object v3, p0, Landroid/os/FreezeScreenScene;->mHungConfigFocusWindow:Landroid/util/ZRHung$HungConfig;

    iget v3, v3, Landroid/util/ZRHung$HungConfig;->status:I

    .line 111
    .local v3, "status":I
    iget-object v7, p0, Landroid/os/FreezeScreenScene;->mHungConfigFocusWindow:Landroid/util/ZRHung$HungConfig;

    iget-object v7, v7, Landroid/util/ZRHung$HungConfig;->value:Ljava/lang/String;

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    .local v7, "value":[Ljava/lang/String;
    if-eqz v7, :cond_5

    :try_start_2
    array-length v8, v7

    if-ge v8, v5, :cond_4

    goto :goto_0

    :cond_4
    aget-object v6, v7, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    goto :goto_1

    .line 114
    :catch_0
    move-exception v6

    goto :goto_2

    .line 113
    :cond_5
    :goto_0
    move v6, v1

    :goto_1
    sput v6, Landroid/os/FreezeScreenScene;->mCheckFreezeScreenDelayTime:I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 116
    goto :goto_3

    .line 114
    :goto_2
    nop

    .line 115
    .local v6, "e":Ljava/lang/NumberFormatException;
    :try_start_3
    sput v1, Landroid/os/FreezeScreenScene;->mCheckFreezeScreenDelayTime:I

    .line 117
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    :goto_3
    if-nez v3, :cond_c

    if-eqz v7, :cond_c

    const-string v1, "1"

    aget-object v4, v7, v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 118
    iget-object v1, p0, Landroid/os/FreezeScreenScene;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 119
    iget-object v1, p0, Landroid/os/FreezeScreenScene;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    move-object v2, v1

    goto/16 :goto_8

    .line 122
    .end local v3    # "status":I
    .end local v7    # "value":[Ljava/lang/String;
    :cond_6
    const-string v3, "TransparentActivityScene"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 123
    iget-object v3, p0, Landroid/os/FreezeScreenScene;->mHungConfigTransWindow:Landroid/util/ZRHung$HungConfig;

    if-eqz v3, :cond_7

    iget-object v3, p0, Landroid/os/FreezeScreenScene;->mHungConfigTransWindow:Landroid/util/ZRHung$HungConfig;

    iget v3, v3, Landroid/util/ZRHung$HungConfig;->status:I

    if-lez v3, :cond_8

    .line 124
    :cond_7
    const/16 v3, 0xe

    invoke-static {v3}, Landroid/util/ZRHung;->getHungConfig(S)Landroid/util/ZRHung$HungConfig;

    move-result-object v3

    iput-object v3, p0, Landroid/os/FreezeScreenScene;->mHungConfigTransWindow:Landroid/util/ZRHung$HungConfig;

    .line 126
    :cond_8
    iget-object v3, p0, Landroid/os/FreezeScreenScene;->mHungConfigTransWindow:Landroid/util/ZRHung$HungConfig;

    if-eqz v3, :cond_c

    .line 127
    iget-object v3, p0, Landroid/os/FreezeScreenScene;->mHungConfigTransWindow:Landroid/util/ZRHung$HungConfig;

    iget v3, v3, Landroid/util/ZRHung$HungConfig;->status:I

    .line 128
    .restart local v3    # "status":I
    iget-object v7, p0, Landroid/os/FreezeScreenScene;->mHungConfigTransWindow:Landroid/util/ZRHung$HungConfig;

    iget-object v7, v7, Landroid/util/ZRHung$HungConfig;->value:Ljava/lang/String;

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 130
    .restart local v7    # "value":[Ljava/lang/String;
    if-eqz v7, :cond_a

    :try_start_4
    array-length v8, v7

    if-ge v8, v5, :cond_9

    goto :goto_4

    :cond_9
    aget-object v5, v7, v6

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    goto :goto_5

    .line 131
    :catch_1
    move-exception v5

    goto :goto_6

    .line 130
    :cond_a
    :goto_4
    move v5, v1

    :goto_5
    sput v5, Landroid/os/FreezeScreenScene;->mCheckFreezeScreenDelayTime:I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 133
    goto :goto_7

    .line 131
    :goto_6
    nop

    .line 132
    .local v5, "e":Ljava/lang/NumberFormatException;
    :try_start_5
    sput v1, Landroid/os/FreezeScreenScene;->mCheckFreezeScreenDelayTime:I

    .line 134
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    :goto_7
    if-nez v3, :cond_c

    if-eqz v7, :cond_c

    const-string v1, "1"

    aget-object v4, v7, v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 135
    iget-object v1, p0, Landroid/os/FreezeScreenScene;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 136
    iget-object v1, p0, Landroid/os/FreezeScreenScene;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    move-object v2, v1

    goto :goto_8

    .line 140
    .end local v3    # "status":I
    .end local v7    # "value":[Ljava/lang/String;
    :cond_b
    iget-object v1, p0, Landroid/os/FreezeScreenScene;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 141
    iget-object v1, p0, Landroid/os/FreezeScreenScene;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    move-object v2, v1

    .line 143
    :cond_c
    :goto_8
    if-eqz v2, :cond_d

    .line 144
    iput-object p1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 145
    iget-object v1, p0, Landroid/os/FreezeScreenScene;->mHandler:Landroid/os/Handler;

    sget v3, Landroid/os/FreezeScreenScene;->mCheckFreezeScreenDelayTime:I

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 148
    :cond_d
    const-string v1, "FreezeScreenScene"

    const-string v3, "scheduleCheckFreezeScreen sendMessageDelayed"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 149
    monitor-exit p0

    return-void

    .line 93
    .end local v0    # "type":Ljava/lang/String;
    .end local v2    # "msg":Landroid/os/Message;
    .end local p1    # "params":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Landroid/os/FreezeScreenScene;
    throw p1
.end method
