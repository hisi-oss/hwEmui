.class final Landroid/util/IMonitorNative;
.super Ljava/lang/Object;
.source "IMonitorNative.java"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 7
    :try_start_0
    const-string v0, "IMonitor"

    const-string v1, "Load library imonitor_jni"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    const-string v0, "imonitor_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    goto :goto_0

    .line 9
    :catch_0
    move-exception v0

    .line 10
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "IMonitor"

    const-string v2, "Library imonitor_jni not found"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native addAndDelDynamicPath(JLjava/lang/String;)Z
.end method

.method public static native addDynamicPath(JLjava/lang/String;)Z
.end method

.method public static native createEvent(I)J
.end method

.method public static native destoryEvent(J)V
.end method

.method public static native fillArrayParam(JLjava/lang/String;J)Z
.end method

.method public static native fillArrayParam(JSJ)Z
.end method

.method public static native fillArrayParamClass(JLjava/lang/String;J)Z
.end method

.method public static native fillArrayParamClass(JSJ)Z
.end method

.method public static native fillArrayParamFloat(JLjava/lang/String;F)Z
.end method

.method public static native fillArrayParamFloat(JSF)Z
.end method

.method public static native fillArrayParamString(JLjava/lang/String;Ljava/lang/String;)Z
.end method

.method public static native fillArrayParamString(JSLjava/lang/String;)Z
.end method

.method public static native getHungConfig(S[B)I
.end method

.method public static native sendEvent(J)Z
.end method

.method public static native sendHungEvent(SLjava/lang/String;Ljava/lang/String;)Z
.end method

.method public static native setParam(JLjava/lang/String;J)Z
.end method

.method public static native setParam(JSJ)Z
.end method

.method public static native setParamClass(JLjava/lang/String;J)Z
.end method

.method public static native setParamClass(JSJ)Z
.end method

.method public static native setParamFloat(JLjava/lang/String;F)Z
.end method

.method public static native setParamFloat(JSF)Z
.end method

.method public static native setParamString(JLjava/lang/String;Ljava/lang/String;)Z
.end method

.method public static native setParamString(JSLjava/lang/String;)Z
.end method

.method public static native setTime(JJ)Z
.end method

.method public static native unsetParam(JLjava/lang/String;)Z
.end method

.method public static native unsetParam(JS)Z
.end method
