.class public final Landroid/util/HiLog;
.super Ljava/lang/Object;
.source "HiLog.java"


# static fields
.field public static final DEBUG:I = 0x3

.field public static final DOMAIN_MAX:I = 0x3b9ac9ff

.field public static final DOMAIN_MIN:I = 0x0

.field public static final ERROR:I = 0x6

.field public static final HW_LOG_ID_CRASH:I = 0x4

.field public static final HW_LOG_ID_EVENTS:I = 0x2

.field public static final HW_LOG_ID_MAIN:I = 0x0

.field public static final HW_LOG_ID_MAX:I = 0x4

.field public static final HW_LOG_ID_RADIO:I = 0x1

.field public static final HW_LOG_ID_SYSTEM:I = 0x3

.field public static final INFO:I = 0x4

.field public static final VERBOSE:I = 0x2

.field public static final WARN:I = 0x5


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    const-string v0, "hilog_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    return-void
.end method

.method public static varargs d(ILjava/lang/String;ZLjava/lang/String;[Ljava/lang/Object;)I
    .locals 3
    .param p0, "domain"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "isFmtStrPrivate"    # Z
    .param p3, "format"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/Object;

    .line 78
    if-ltz p0, :cond_0

    const v0, 0x3b9ac9ff

    if-gt p0, v0, :cond_0

    .line 79
    const/4 v0, 0x0

    const/4 v1, 0x3

    .line 80
    invoke-static {p2, p3, p4}, Landroid/util/HiLogString;->format(ZLjava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 79
    invoke-static {v0, v1, p1, p0, v2}, Landroid/util/HiLog;->print_hilog_native(IILjava/lang/String;ILjava/lang/String;)I

    move-result v0

    return v0

    .line 82
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public static varargs e(ILjava/lang/String;ZLjava/lang/String;[Ljava/lang/Object;)I
    .locals 3
    .param p0, "domain"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "isFmtStrPrivate"    # Z
    .param p3, "format"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/Object;

    .line 132
    if-ltz p0, :cond_0

    const v0, 0x3b9ac9ff

    if-gt p0, v0, :cond_0

    .line 133
    const/4 v0, 0x0

    const/4 v1, 0x6

    .line 134
    invoke-static {p2, p3, p4}, Landroid/util/HiLogString;->format(ZLjava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 133
    invoke-static {v0, v1, p1, p0, v2}, Landroid/util/HiLog;->print_hilog_native(IILjava/lang/String;ILjava/lang/String;)I

    move-result v0

    return v0

    .line 136
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public static varargs i(ILjava/lang/String;ZLjava/lang/String;[Ljava/lang/Object;)I
    .locals 3
    .param p0, "domain"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "isFmtStrPrivate"    # Z
    .param p3, "format"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/Object;

    .line 96
    if-ltz p0, :cond_0

    const v0, 0x3b9ac9ff

    if-gt p0, v0, :cond_0

    .line 97
    const/4 v0, 0x0

    const/4 v1, 0x4

    .line 98
    invoke-static {p2, p3, p4}, Landroid/util/HiLogString;->format(ZLjava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 97
    invoke-static {v0, v1, p1, p0, v2}, Landroid/util/HiLog;->print_hilog_native(IILjava/lang/String;ILjava/lang/String;)I

    move-result v0

    return v0

    .line 100
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public static native isDebuggable()Z
.end method

.method public static native isLoggable(ILjava/lang/String;I)Z
.end method

.method public static native print_hilog_native(IILjava/lang/String;ILjava/lang/String;)I
.end method

.method public static native print_hwlogging_native(IILjava/lang/String;Ljava/lang/String;)I
.end method

.method public static varargs w(ILjava/lang/String;ZLjava/lang/String;[Ljava/lang/Object;)I
    .locals 3
    .param p0, "domain"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "isFmtStrPrivate"    # Z
    .param p3, "format"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/Object;

    .line 114
    if-ltz p0, :cond_0

    const v0, 0x3b9ac9ff

    if-gt p0, v0, :cond_0

    .line 115
    const/4 v0, 0x0

    const/4 v1, 0x5

    .line 116
    invoke-static {p2, p3, p4}, Landroid/util/HiLogString;->format(ZLjava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 115
    invoke-static {v0, v1, p1, p0, v2}, Landroid/util/HiLog;->print_hilog_native(IILjava/lang/String;ILjava/lang/String;)I

    move-result v0

    return v0

    .line 118
    :cond_0
    const/4 v0, -0x1

    return v0
.end method
