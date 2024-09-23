.class public Lhuawei/HwFeatureConfig;
.super Ljava/lang/Object;
.source "HwFeatureConfig.java"


# static fields
.field public static final dual_card_mms_switch:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 4
    const-string v0, "dual_card_mms_switch"

    .line 5
    invoke-static {v0}, Lhuawei/HwFeatureReader;->getFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lhuawei/HwFeatureConfig;->dual_card_mms_switch:Z

    .line 4
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
