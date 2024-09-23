.class public Lcom/huawei/uifirst/fastview/settings/StatusDecouplingPolicyManager;
.super Ljava/lang/Object;
.source "StatusDecouplingPolicyManager.java"


# static fields
.field private static final MODEL_SETTINGS_ALL_PROP:Z

.field public static final MODEL_SETTINGS_BLUETOOTH:I = 0xc

.field private static final MODEL_SETTINGS_BLUETOOTH_PROP:Z = true

.field public static final MODEL_SETTINGS_HOTSPOT:I = 0xd

.field private static final MODEL_SETTINGS_HOTSPOT_PROP:Z = true

.field public static final MODEL_SETTINGS_INSTANTSHARE:I = 0xe

.field private static final MODEL_SETTINGS_INSTANTSHARE_PROP:Z = true

.field public static final MODEL_SETTINGS_NFC:I = 0xf

.field private static final MODEL_SETTINGS_NFC_PROP:Z = true

.field public static final MODEL_SETTINGS_WLAN:I = 0xb

.field private static final MODEL_SETTINGS_WLAN_PROP:Z = true


# instance fields
.field private mStatusDecoupling:Lcom/huawei/uifirst/fastview/settings/IStatusDecoupling;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    const-string v0, "settings_fastview_fast_response_enable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/huawei/uifirst/fastview/settings/StatusDecouplingPolicyManager;->MODEL_SETTINGS_ALL_PROP:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method


# virtual methods
.method public addStatusDecoupling(ILcom/huawei/uifirst/fastview/settings/StatusDecouplingPolicy$CallBack;I)Lcom/huawei/uifirst/fastview/settings/IStatusDecoupling;
    .locals 2
    .param p1, "modelID"    # I
    .param p2, "sdpCallback"    # Lcom/huawei/uifirst/fastview/settings/StatusDecouplingPolicy$CallBack;
    .param p3, "delayTime"    # I

    .line 35
    invoke-virtual {p0, p1}, Lcom/huawei/uifirst/fastview/settings/StatusDecouplingPolicyManager;->isStatusDecouplingPolicyAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    new-instance v0, Lcom/huawei/uifirst/fastview/settings/StatusDecouplingPolicy;

    invoke-virtual {p0, p1}, Lcom/huawei/uifirst/fastview/settings/StatusDecouplingPolicyManager;->getModelName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p2, p3, v1}, Lcom/huawei/uifirst/fastview/settings/StatusDecouplingPolicy;-><init>(Lcom/huawei/uifirst/fastview/settings/StatusDecouplingPolicy$CallBack;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/huawei/uifirst/fastview/settings/StatusDecouplingPolicyManager;->mStatusDecoupling:Lcom/huawei/uifirst/fastview/settings/IStatusDecoupling;

    goto :goto_0

    .line 38
    :cond_0
    new-instance v0, Lcom/huawei/uifirst/fastview/settings/StatusDecouplingDummy;

    invoke-direct {v0}, Lcom/huawei/uifirst/fastview/settings/StatusDecouplingDummy;-><init>()V

    iput-object v0, p0, Lcom/huawei/uifirst/fastview/settings/StatusDecouplingPolicyManager;->mStatusDecoupling:Lcom/huawei/uifirst/fastview/settings/IStatusDecoupling;

    .line 40
    :goto_0
    iget-object v0, p0, Lcom/huawei/uifirst/fastview/settings/StatusDecouplingPolicyManager;->mStatusDecoupling:Lcom/huawei/uifirst/fastview/settings/IStatusDecoupling;

    return-object v0
.end method

.method public getModelName(I)Ljava/lang/String;
    .locals 1
    .param p1, "modelID"    # I

    .line 70
    const-string v0, ""

    .line 71
    .local v0, "modelName":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 88
    const-string v0, "None"

    goto :goto_0

    .line 85
    :pswitch_0
    const-string v0, "Settings_Nfc"

    .line 86
    goto :goto_0

    .line 82
    :pswitch_1
    const-string v0, "Settings_Instantshare"

    .line 83
    goto :goto_0

    .line 79
    :pswitch_2
    const-string v0, "Settings_Hotspot"

    .line 80
    goto :goto_0

    .line 76
    :pswitch_3
    const-string v0, "Settings_Bluetooth"

    .line 77
    goto :goto_0

    .line 73
    :pswitch_4
    const-string v0, "Settings_Wifi"

    .line 74
    nop

    .line 91
    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isStatusDecouplingPolicyAvailable(I)Z
    .locals 2
    .param p1, "modelID"    # I

    .line 45
    const/4 v0, 0x0

    .line 46
    .local v0, "isAvailable":Z
    packed-switch p1, :pswitch_data_0

    .line 63
    const/4 v0, 0x0

    goto :goto_0

    .line 60
    :pswitch_0
    sget-boolean v1, Lcom/huawei/uifirst/fastview/settings/StatusDecouplingPolicyManager;->MODEL_SETTINGS_ALL_PROP:Z

    move v0, v1

    .line 61
    goto :goto_0

    .line 57
    :pswitch_1
    sget-boolean v1, Lcom/huawei/uifirst/fastview/settings/StatusDecouplingPolicyManager;->MODEL_SETTINGS_ALL_PROP:Z

    move v0, v1

    .line 58
    goto :goto_0

    .line 54
    :pswitch_2
    sget-boolean v1, Lcom/huawei/uifirst/fastview/settings/StatusDecouplingPolicyManager;->MODEL_SETTINGS_ALL_PROP:Z

    move v0, v1

    .line 55
    goto :goto_0

    .line 51
    :pswitch_3
    sget-boolean v1, Lcom/huawei/uifirst/fastview/settings/StatusDecouplingPolicyManager;->MODEL_SETTINGS_ALL_PROP:Z

    move v0, v1

    .line 52
    goto :goto_0

    .line 48
    :pswitch_4
    sget-boolean v1, Lcom/huawei/uifirst/fastview/settings/StatusDecouplingPolicyManager;->MODEL_SETTINGS_ALL_PROP:Z

    move v0, v1

    .line 49
    nop

    .line 66
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
