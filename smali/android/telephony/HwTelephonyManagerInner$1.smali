.class synthetic Landroid/telephony/HwTelephonyManagerInner$1;
.super Ljava/lang/Object;
.source "HwTelephonyManagerInner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/HwTelephonyManagerInner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$android$telephony$HwTelephonyManagerInner$DataSettingModeType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 953
    invoke-static {}, Landroid/telephony/HwTelephonyManagerInner$DataSettingModeType;->values()[Landroid/telephony/HwTelephonyManagerInner$DataSettingModeType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Landroid/telephony/HwTelephonyManagerInner$1;->$SwitchMap$android$telephony$HwTelephonyManagerInner$DataSettingModeType:[I

    :try_start_0
    sget-object v0, Landroid/telephony/HwTelephonyManagerInner$1;->$SwitchMap$android$telephony$HwTelephonyManagerInner$DataSettingModeType:[I

    sget-object v1, Landroid/telephony/HwTelephonyManagerInner$DataSettingModeType;->MODE_LTETDD_ONLY:Landroid/telephony/HwTelephonyManagerInner$DataSettingModeType;

    invoke-virtual {v1}, Landroid/telephony/HwTelephonyManagerInner$DataSettingModeType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    :try_start_1
    sget-object v0, Landroid/telephony/HwTelephonyManagerInner$1;->$SwitchMap$android$telephony$HwTelephonyManagerInner$DataSettingModeType:[I

    sget-object v1, Landroid/telephony/HwTelephonyManagerInner$DataSettingModeType;->MODE_LTE_AND_AUTO:Landroid/telephony/HwTelephonyManagerInner$DataSettingModeType;

    invoke-virtual {v1}, Landroid/telephony/HwTelephonyManagerInner$DataSettingModeType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    return-void
.end method
