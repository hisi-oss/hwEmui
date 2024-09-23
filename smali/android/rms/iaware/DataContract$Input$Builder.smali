.class public final Landroid/rms/iaware/DataContract$Input$Builder;
.super Landroid/rms/iaware/DataContract$BaseBuilder;
.source "DataContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/rms/iaware/DataContract$Input;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 447
    invoke-direct {p0}, Landroid/rms/iaware/DataContract$BaseBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Landroid/rms/iaware/CollectData;
    .locals 1

    .line 449
    sget-object v0, Landroid/rms/iaware/AwareConstant$ResourceType;->RES_INPUT:Landroid/rms/iaware/AwareConstant$ResourceType;

    invoke-static {v0}, Landroid/rms/iaware/AwareConstant$ResourceType;->getReousrceId(Landroid/rms/iaware/AwareConstant$ResourceType;)I

    move-result v0

    invoke-super {p0, v0}, Landroid/rms/iaware/DataContract$BaseBuilder;->build(I)Landroid/rms/iaware/CollectData;

    move-result-object v0

    return-object v0
.end method
