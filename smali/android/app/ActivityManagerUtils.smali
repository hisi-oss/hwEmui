.class public Landroid/app/ActivityManagerUtils;
.super Ljava/lang/Object;
.source "ActivityManagerUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getBindServiceTransCode()I
    .locals 1

    .line 31
    const/16 v0, 0x20

    return v0
.end method

.method static getStartServiceTransCode()I
    .locals 1

    .line 23
    const/16 v0, 0x1e

    return v0
.end method

.method static getStopServiceTransCode()I
    .locals 1

    .line 27
    const/16 v0, 0x1f

    return v0
.end method

.method static getUnbindServiceTransCode()I
    .locals 1

    .line 35
    const/16 v0, 0x21

    return v0
.end method
