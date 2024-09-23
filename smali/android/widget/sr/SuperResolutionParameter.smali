.class public Landroid/widget/sr/SuperResolutionParameter;
.super Ljava/lang/Object;
.source "SuperResolutionParameter.java"


# instance fields
.field public supResRecord:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/widget/sr/SuperResolutionParameter;->supResRecord:J

    return-void
.end method


# virtual methods
.method public getResRecord()J
    .locals 2

    .line 12
    iget-wide v0, p0, Landroid/widget/sr/SuperResolutionParameter;->supResRecord:J

    return-wide v0
.end method
