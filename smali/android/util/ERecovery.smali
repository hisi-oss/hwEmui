.class public Landroid/util/ERecovery;
.super Ljava/lang/Object;
.source "ERecovery.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ERecovery"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static eRecoveryReport(Landroid/util/ERecoveryEvent;)J
    .locals 3
    .param p0, "eventdata"    # Landroid/util/ERecoveryEvent;

    .line 11
    :try_start_0
    invoke-static {p0}, Landroid/util/ERecoveryNative;->eRecoveryReport(Landroid/util/ERecoveryEvent;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 12
    :catch_0
    move-exception v0

    .line 13
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "ERecovery"

    const-string v2, "erecovery_report failed for no implementation of native"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    const-wide/16 v1, -0x1

    return-wide v1
.end method
