.class public Landroid/os/FreezeScreenScene$IMonitorRadar;
.super Landroid/os/FreezeScreenScene$FreezeScreenRadar;
.source "FreezeScreenScene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/FreezeScreenScene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IMonitorRadar"
.end annotation


# static fields
.field private static final AUTO_UPLOAD_MIN_INTERVAL_TIME:J = 0x2932e00L

.field private static sLastAutoUploadTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 187
    const-wide/16 v0, 0x0

    sput-wide v0, Landroid/os/FreezeScreenScene$IMonitorRadar;->sLastAutoUploadTime:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 185
    invoke-direct {p0}, Landroid/os/FreezeScreenScene$FreezeScreenRadar;-><init>()V

    return-void
.end method


# virtual methods
.method public upload(Landroid/util/ArrayMap;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 190
    .local p1, "params":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "FreezeScreenScene"

    const-string v1, "IMonitorRadar"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 193
    .local v0, "currentTime":J
    sget-wide v2, Landroid/os/FreezeScreenScene$IMonitorRadar;->sLastAutoUploadTime:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0x2932e00

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    .line 194
    const-string v2, "FreezeScreenScene"

    const-string v3, "Upload too frequently, just discard it."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    return-void

    .line 197
    :cond_0
    sput-wide v0, Landroid/os/FreezeScreenScene$IMonitorRadar;->sLastAutoUploadTime:J

    .line 199
    if-eqz p1, :cond_2

    const-string v2, "checkType"

    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/Integer;

    if-nez v2, :cond_1

    goto/16 :goto_1

    .line 201
    :cond_1
    const-string v2, "checkType"

    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 202
    .local v2, "checkType":I
    invoke-static {v2}, Landroid/util/IMonitor;->openEventStream(I)Landroid/util/IMonitor$EventStream;

    move-result-object v3

    .line 204
    .local v3, "eStream":Landroid/util/IMonitor$EventStream;
    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 225
    :pswitch_1
    invoke-static {}, Landroid/os/FreezeScreenScene$MonitorHelper;->access$100()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/util/IMonitor$EventStream;->setParam(SLjava/lang/String;)Landroid/util/IMonitor$EventStream;

    move-result-object v6

    .line 226
    invoke-static {}, Landroid/os/FreezeScreenScene$MonitorHelper;->access$000()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Landroid/util/IMonitor$EventStream;->setParam(SLjava/lang/String;)Landroid/util/IMonitor$EventStream;

    move-result-object v5

    const-string v6, "focusedActivityName"

    .line 227
    invoke-virtual {p1, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v4, v6}, Landroid/util/IMonitor$EventStream;->setParam(SLjava/lang/String;)Landroid/util/IMonitor$EventStream;

    .line 229
    goto :goto_0

    .line 218
    :pswitch_2
    invoke-static {}, Landroid/os/FreezeScreenScene$MonitorHelper;->access$100()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/util/IMonitor$EventStream;->setParam(SLjava/lang/String;)Landroid/util/IMonitor$EventStream;

    move-result-object v6

    .line 219
    invoke-static {}, Landroid/os/FreezeScreenScene$MonitorHelper;->access$000()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Landroid/util/IMonitor$EventStream;->setParam(SLjava/lang/String;)Landroid/util/IMonitor$EventStream;

    move-result-object v5

    const-string v6, "pid"

    .line 220
    invoke-virtual {p1, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v4, v6}, Landroid/util/IMonitor$EventStream;->setParam(SI)Landroid/util/IMonitor$EventStream;

    move-result-object v4

    const/4 v5, 0x3

    const-string v6, "processName"

    .line 221
    invoke-virtual {p1, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/util/IMonitor$EventStream;->setParam(SLjava/lang/String;)Landroid/util/IMonitor$EventStream;

    .line 223
    goto :goto_0

    .line 212
    :pswitch_3
    invoke-static {}, Landroid/os/FreezeScreenScene$MonitorHelper;->access$100()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/util/IMonitor$EventStream;->setParam(SLjava/lang/String;)Landroid/util/IMonitor$EventStream;

    move-result-object v6

    .line 213
    invoke-static {}, Landroid/os/FreezeScreenScene$MonitorHelper;->access$000()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Landroid/util/IMonitor$EventStream;->setParam(SLjava/lang/String;)Landroid/util/IMonitor$EventStream;

    move-result-object v5

    const-string v6, "highLevelWindowName"

    .line 214
    invoke-virtual {p1, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v4, v6}, Landroid/util/IMonitor$EventStream;->setParam(SLjava/lang/String;)Landroid/util/IMonitor$EventStream;

    .line 216
    goto :goto_0

    .line 206
    :pswitch_4
    invoke-static {}, Landroid/os/FreezeScreenScene$MonitorHelper;->access$100()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/util/IMonitor$EventStream;->setParam(SLjava/lang/String;)Landroid/util/IMonitor$EventStream;

    move-result-object v6

    .line 207
    invoke-static {}, Landroid/os/FreezeScreenScene$MonitorHelper;->access$000()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Landroid/util/IMonitor$EventStream;->setParam(SLjava/lang/String;)Landroid/util/IMonitor$EventStream;

    move-result-object v5

    const-string v6, "window"

    .line 208
    invoke-virtual {p1, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v4, v6}, Landroid/util/IMonitor$EventStream;->setParam(SLjava/lang/String;)Landroid/util/IMonitor$EventStream;

    .line 210
    nop

    .line 234
    :goto_0
    invoke-static {v3}, Landroid/util/IMonitor;->sendEvent(Landroid/util/IMonitor$EventStream;)Z

    .line 236
    invoke-static {v3}, Landroid/util/IMonitor;->closeEventStream(Landroid/util/IMonitor$EventStream;)V

    .line 237
    return-void

    .line 199
    .end local v2    # "checkType":I
    .end local v3    # "eStream":Landroid/util/IMonitor$EventStream;
    :cond_2
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3615d349
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
