.class public Landroid/util/IMonitor;
.super Ljava/lang/Object;
.source "IMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/IMonitor$EventStream;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "IMonitor"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeEventStream(Landroid/util/IMonitor$EventStream;)V
    .locals 3
    .param p0, "eStream"    # Landroid/util/IMonitor$EventStream;

    .line 68
    if-nez p0, :cond_0

    .line 69
    return-void

    .line 72
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/util/IMonitor$EventStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    goto :goto_0

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "IMonitor"

    const-string v2, "closeEventStream IOException"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method public static openEventStream(I)Landroid/util/IMonitor$EventStream;
    .locals 5
    .param p0, "eventID"    # I

    .line 58
    const-wide/16 v0, 0x0

    .line 60
    .local v0, "handle":J
    :try_start_0
    invoke-static {p0}, Landroid/util/IMonitorNative;->createEvent(I)J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v0, v2

    .line 63
    goto :goto_0

    .line 61
    :catch_0
    move-exception v2

    .line 62
    .local v2, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v3, "IMonitor"

    const-string v4, "openEventStream failed for no implementation of native"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .end local v2    # "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    new-instance v2, Landroid/util/IMonitorEventStreamImpl;

    invoke-direct {v2, v0, v1}, Landroid/util/IMonitorEventStreamImpl;-><init>(J)V

    return-object v2
.end method

.method public static sendEvent(Landroid/util/IMonitor$EventStream;)Z
    .locals 1
    .param p0, "eStream"    # Landroid/util/IMonitor$EventStream;

    .line 79
    if-nez p0, :cond_0

    .line 80
    const/4 v0, 0x0

    return v0

    .line 82
    :cond_0
    invoke-virtual {p0}, Landroid/util/IMonitor$EventStream;->commit()Z

    move-result v0

    return v0
.end method
