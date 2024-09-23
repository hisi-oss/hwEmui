.class public final Landroid/rms/iaware/LogIAware;
.super Lcom/huawei/pgmng/log/LogPower;
.source "LogIAware.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/huawei/pgmng/log/LogPower;-><init>()V

    .line 23
    return-void
.end method

.method public static report(I)I
    .locals 1
    .param p0, "tag"    # I

    .line 26
    const-string v0, ""

    invoke-static {p0, v0}, Landroid/rms/iaware/LogIAware;->pushIAware(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static report(ILjava/lang/String;)I
    .locals 1
    .param p0, "tag"    # I
    .param p1, "msg"    # Ljava/lang/String;

    .line 30
    invoke-static {p0, p1}, Landroid/rms/iaware/LogIAware;->pushIAware(ILjava/lang/String;)I

    move-result v0

    return v0
.end method
