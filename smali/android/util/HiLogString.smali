.class public final Landroid/util/HiLogString;
.super Ljava/lang/Object;
.source "HiLogString.java"


# static fields
.field public static final privateString:Ljava/lang/String; = "<private>"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs format(ZLjava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "isFmtStrPrivate"    # Z
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 24
    invoke-static {}, Landroid/util/HiLog;->isDebuggable()Z

    move-result v0

    .line 26
    .local v0, "showPrivacy":Z
    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 27
    const-string v1, "<private>"

    return-object v1

    .line 30
    :cond_0
    new-instance v1, Landroid/util/HiLogFormatter;

    invoke-direct {v1}, Landroid/util/HiLogFormatter;-><init>()V

    invoke-virtual {v1, v0, p1, p2}, Landroid/util/HiLogFormatter;->format(ZLjava/lang/String;[Ljava/lang/Object;)Landroid/util/HiLogFormatter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/HiLogFormatter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
