.class public final Landroid/util/HiRLog;
.super Ljava/lang/Object;
.source "HiRLog.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public static varargs d(ILjava/lang/String;ZLjava/lang/String;[Ljava/lang/Object;)I
    .locals 3
    .param p0, "domain"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "isFmtStrPrivate"    # Z
    .param p3, "format"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/Object;

    .line 34
    if-ltz p0, :cond_0

    const v0, 0x3b9ac9ff

    if-gt p0, v0, :cond_0

    .line 35
    const/4 v0, 0x1

    const/4 v1, 0x3

    .line 36
    invoke-static {p2, p3, p4}, Landroid/util/HiLogString;->format(ZLjava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 35
    invoke-static {v0, v1, p1, p0, v2}, Landroid/util/HiLog;->print_hilog_native(IILjava/lang/String;ILjava/lang/String;)I

    move-result v0

    return v0

    .line 38
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

    .line 88
    if-ltz p0, :cond_0

    const v0, 0x3b9ac9ff

    if-gt p0, v0, :cond_0

    .line 89
    const/4 v0, 0x1

    const/4 v1, 0x6

    .line 90
    invoke-static {p2, p3, p4}, Landroid/util/HiLogString;->format(ZLjava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 89
    invoke-static {v0, v1, p1, p0, v2}, Landroid/util/HiLog;->print_hilog_native(IILjava/lang/String;ILjava/lang/String;)I

    move-result v0

    return v0

    .line 92
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

    .line 52
    if-ltz p0, :cond_0

    const v0, 0x3b9ac9ff

    if-gt p0, v0, :cond_0

    .line 53
    const/4 v0, 0x1

    const/4 v1, 0x4

    .line 54
    invoke-static {p2, p3, p4}, Landroid/util/HiLogString;->format(ZLjava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 53
    invoke-static {v0, v1, p1, p0, v2}, Landroid/util/HiLog;->print_hilog_native(IILjava/lang/String;ILjava/lang/String;)I

    move-result v0

    return v0

    .line 56
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public static varargs w(ILjava/lang/String;ZLjava/lang/String;[Ljava/lang/Object;)I
    .locals 3
    .param p0, "domain"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "isFmtStrPrivate"    # Z
    .param p3, "format"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/Object;

    .line 70
    if-ltz p0, :cond_0

    const v0, 0x3b9ac9ff

    if-gt p0, v0, :cond_0

    .line 71
    const/4 v0, 0x1

    const/4 v1, 0x5

    .line 72
    invoke-static {p2, p3, p4}, Landroid/util/HiLogString;->format(ZLjava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 71
    invoke-static {v0, v1, p1, p0, v2}, Landroid/util/HiLog;->print_hilog_native(IILjava/lang/String;ILjava/lang/String;)I

    move-result v0

    return v0

    .line 74
    :cond_0
    const/4 v0, -0x1

    return v0
.end method
