.class public Lcom/huawei/uifirst/fastview/systemui/StatusDecouplingPolicyManager;
.super Ljava/lang/Object;
.source "StatusDecouplingPolicyManager.java"


# static fields
.field private static final MODEL_SYSTEMUI_ALL_PROP:Z

.field public static final MODEL_SYSTEMUI_BLUETOOTH:I = 0x2

.field private static final MODEL_SYSTEMUI_BLUETOOTH_PROP:Z = true

.field public static final MODEL_SYSTEMUI_HOTSPOT:I = 0x3

.field private static final MODEL_SYSTEMUI_HOTSPOT_PROP:Z = true

.field public static final MODEL_SYSTEMUI_INSTANTSHARE:I = 0x4

.field private static final MODEL_SYSTEMUI_INSTANTSHARE_PROP:Z = true

.field public static final MODEL_SYSTEMUI_NFC:I = 0x5

.field private static final MODEL_SYSTEMUI_NFC_PROP:Z = true

.field public static final MODEL_SYSTEMUI_WLAN:I = 0x1

.field private static final MODEL_SYSTEMUI_WLAN_PROP:Z = true


# instance fields
.field private mStatusDecoupling:Lcom/huawei/uifirst/fastview/systemui/IStatusDecoupling;

.field private mStatusDecouplingMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/huawei/uifirst/fastview/systemui/IStatusDecoupling;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    const-string v0, "systemui_fastview_fast_response_enable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/huawei/uifirst/fastview/systemui/StatusDecouplingPolicyManager;->MODEL_SYSTEMUI_ALL_PROP:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/huawei/uifirst/fastview/systemui/StatusDecouplingPolicyManager;->mStatusDecouplingMap:Ljava/util/Map;

    .line 36
    return-void
.end method


# virtual methods
.method public addStatusDecoupling(ILcom/huawei/uifirst/fastview/systemui/StatusDecouplingPolicy$CallBack;I)Lcom/huawei/uifirst/fastview/systemui/IStatusDecoupling;
    .locals 3
    .param p1, "modelID"    # I
    .param p2, "sdpCallback"    # Lcom/huawei/uifirst/fastview/systemui/StatusDecouplingPolicy$CallBack;
    .param p3, "delayTime"    # I

    .line 39
    invoke-virtual {p0, p1}, Lcom/huawei/uifirst/fastview/systemui/StatusDecouplingPolicyManager;->isStatusDecouplingPolicyAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    new-instance v0, Lcom/huawei/uifirst/fastview/systemui/StatusDecouplingPolicy;

    invoke-virtual {p0, p1}, Lcom/huawei/uifirst/fastview/systemui/StatusDecouplingPolicyManager;->getModelName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p2, p3, v1}, Lcom/huawei/uifirst/fastview/systemui/StatusDecouplingPolicy;-><init>(Lcom/huawei/uifirst/fastview/systemui/StatusDecouplingPolicy$CallBack;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/huawei/uifirst/fastview/systemui/StatusDecouplingPolicyManager;->mStatusDecoupling:Lcom/huawei/uifirst/fastview/systemui/IStatusDecoupling;

    goto :goto_0

    .line 42
    :cond_0
    new-instance v0, Lcom/huawei/uifirst/fastview/systemui/StatusDecouplingDummy;

    invoke-direct {v0}, Lcom/huawei/uifirst/fastview/systemui/StatusDecouplingDummy;-><init>()V

    iput-object v0, p0, Lcom/huawei/uifirst/fastview/systemui/StatusDecouplingPolicyManager;->mStatusDecoupling:Lcom/huawei/uifirst/fastview/systemui/IStatusDecoupling;

    .line 44
    :goto_0
    iget-object v0, p0, Lcom/huawei/uifirst/fastview/systemui/StatusDecouplingPolicyManager;->mStatusDecouplingMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/uifirst/fastview/systemui/StatusDecouplingPolicyManager;->mStatusDecoupling:Lcom/huawei/uifirst/fastview/systemui/IStatusDecoupling;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object v0, p0, Lcom/huawei/uifirst/fastview/systemui/StatusDecouplingPolicyManager;->mStatusDecoupling:Lcom/huawei/uifirst/fastview/systemui/IStatusDecoupling;

    return-object v0
.end method

.method public getModelName(I)Ljava/lang/String;
    .locals 1
    .param p1, "modelID"    # I

    .line 75
    const-string v0, ""

    .line 76
    .local v0, "modelName":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 93
    const-string v0, "None"

    goto :goto_0

    .line 90
    :pswitch_0
    const-string v0, "SystemUI_Nfc"

    .line 91
    goto :goto_0

    .line 87
    :pswitch_1
    const-string v0, "SystemUI_Instantshare"

    .line 88
    goto :goto_0

    .line 84
    :pswitch_2
    const-string v0, "SystemUI_Hotspot"

    .line 85
    goto :goto_0

    .line 81
    :pswitch_3
    const-string v0, "SystemUI_Bluetooth"

    .line 82
    goto :goto_0

    .line 78
    :pswitch_4
    const-string v0, "SystemUI_Wifi"

    .line 79
    nop

    .line 96
    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getStatusDecouplingPolicy(I)Lcom/huawei/uifirst/fastview/systemui/IStatusDecoupling;
    .locals 2
    .param p1, "modelID"    # I

    .line 100
    iget-object v0, p0, Lcom/huawei/uifirst/fastview/systemui/StatusDecouplingPolicyManager;->mStatusDecouplingMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Lcom/huawei/uifirst/fastview/systemui/StatusDecouplingDummy;

    invoke-direct {v0}, Lcom/huawei/uifirst/fastview/systemui/StatusDecouplingDummy;-><init>()V

    return-object v0

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/huawei/uifirst/fastview/systemui/StatusDecouplingPolicyManager;->mStatusDecouplingMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/uifirst/fastview/systemui/IStatusDecoupling;

    return-object v0
.end method

.method public isStatusDecouplingPolicyAvailable(I)Z
    .locals 2
    .param p1, "modelID"    # I

    .line 50
    const/4 v0, 0x0

    .line 51
    .local v0, "isAvailable":Z
    packed-switch p1, :pswitch_data_0

    .line 68
    const/4 v0, 0x0

    goto :goto_0

    .line 65
    :pswitch_0
    sget-boolean v1, Lcom/huawei/uifirst/fastview/systemui/StatusDecouplingPolicyManager;->MODEL_SYSTEMUI_ALL_PROP:Z

    move v0, v1

    .line 66
    goto :goto_0

    .line 62
    :pswitch_1
    sget-boolean v1, Lcom/huawei/uifirst/fastview/systemui/StatusDecouplingPolicyManager;->MODEL_SYSTEMUI_ALL_PROP:Z

    move v0, v1

    .line 63
    goto :goto_0

    .line 59
    :pswitch_2
    sget-boolean v1, Lcom/huawei/uifirst/fastview/systemui/StatusDecouplingPolicyManager;->MODEL_SYSTEMUI_ALL_PROP:Z

    move v0, v1

    .line 60
    goto :goto_0

    .line 56
    :pswitch_3
    sget-boolean v1, Lcom/huawei/uifirst/fastview/systemui/StatusDecouplingPolicyManager;->MODEL_SYSTEMUI_ALL_PROP:Z

    move v0, v1

    .line 57
    goto :goto_0

    .line 53
    :pswitch_4
    sget-boolean v1, Lcom/huawei/uifirst/fastview/systemui/StatusDecouplingPolicyManager;->MODEL_SYSTEMUI_ALL_PROP:Z

    move v0, v1

    .line 54
    nop

    .line 71
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
