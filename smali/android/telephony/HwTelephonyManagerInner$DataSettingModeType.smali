.class public final enum Landroid/telephony/HwTelephonyManagerInner$DataSettingModeType;
.super Ljava/lang/Enum;
.source "HwTelephonyManagerInner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/HwTelephonyManagerInner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DataSettingModeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/telephony/HwTelephonyManagerInner$DataSettingModeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/telephony/HwTelephonyManagerInner$DataSettingModeType;

.field public static final enum MODE_ERROR:Landroid/telephony/HwTelephonyManagerInner$DataSettingModeType;

.field public static final enum MODE_LTETDD_ONLY:Landroid/telephony/HwTelephonyManagerInner$DataSettingModeType;

.field public static final enum MODE_LTE_AND_AUTO:Landroid/telephony/HwTelephonyManagerInner$DataSettingModeType;

.field public static final enum MODE_LTE_OFF:Landroid/telephony/HwTelephonyManagerInner$DataSettingModeType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 920
    new-instance v0, Landroid/telephony/HwTelephonyManagerInner$DataSettingModeType;

    const-string v1, "MODE_LTE_OFF"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/telephony/HwTelephonyManagerInner$DataSettingModeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/telephony/HwTelephonyManagerInner$DataSettingModeType;->MODE_LTE_OFF:Landroid/telephony/HwTelephonyManagerInner$DataSettingModeType;

    .line 921
    new-instance v0, Landroid/telephony/HwTelephonyManagerInner$DataSettingModeType;

    const-string v1, "MODE_LTETDD_ONLY"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Landroid/telephony/HwTelephonyManagerInner$DataSettingModeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/telephony/HwTelephonyManagerInner$DataSettingModeType;->MODE_LTETDD_ONLY:Landroid/telephony/HwTelephonyManagerInner$DataSettingModeType;

    .line 922
    new-instance v0, Landroid/telephony/HwTelephonyManagerInner$DataSettingModeType;

    const-string v1, "MODE_LTE_AND_AUTO"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Landroid/telephony/HwTelephonyManagerInner$DataSettingModeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/telephony/HwTelephonyManagerInner$DataSettingModeType;->MODE_LTE_AND_AUTO:Landroid/telephony/HwTelephonyManagerInner$DataSettingModeType;

    .line 923
    new-instance v0, Landroid/telephony/HwTelephonyManagerInner$DataSettingModeType;

    const-string v1, "MODE_ERROR"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Landroid/telephony/HwTelephonyManagerInner$DataSettingModeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/telephony/HwTelephonyManagerInner$DataSettingModeType;->MODE_ERROR:Landroid/telephony/HwTelephonyManagerInner$DataSettingModeType;

    .line 919
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/telephony/HwTelephonyManagerInner$DataSettingModeType;

    sget-object v1, Landroid/telephony/HwTelephonyManagerInner$DataSettingModeType;->MODE_LTE_OFF:Landroid/telephony/HwTelephonyManagerInner$DataSettingModeType;

    aput-object v1, v0, v2

    sget-object v1, Landroid/telephony/HwTelephonyManagerInner$DataSettingModeType;->MODE_LTETDD_ONLY:Landroid/telephony/HwTelephonyManagerInner$DataSettingModeType;

    aput-object v1, v0, v3

    sget-object v1, Landroid/telephony/HwTelephonyManagerInner$DataSettingModeType;->MODE_LTE_AND_AUTO:Landroid/telephony/HwTelephonyManagerInner$DataSettingModeType;

    aput-object v1, v0, v4

    sget-object v1, Landroid/telephony/HwTelephonyManagerInner$DataSettingModeType;->MODE_ERROR:Landroid/telephony/HwTelephonyManagerInner$DataSettingModeType;

    aput-object v1, v0, v5

    sput-object v0, Landroid/telephony/HwTelephonyManagerInner$DataSettingModeType;->$VALUES:[Landroid/telephony/HwTelephonyManagerInner$DataSettingModeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 919
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/telephony/HwTelephonyManagerInner$DataSettingModeType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 919
    const-class v0, Landroid/telephony/HwTelephonyManagerInner$DataSettingModeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/telephony/HwTelephonyManagerInner$DataSettingModeType;

    return-object v0
.end method

.method public static values()[Landroid/telephony/HwTelephonyManagerInner$DataSettingModeType;
    .locals 1

    .line 919
    sget-object v0, Landroid/telephony/HwTelephonyManagerInner$DataSettingModeType;->$VALUES:[Landroid/telephony/HwTelephonyManagerInner$DataSettingModeType;

    invoke-virtual {v0}, [Landroid/telephony/HwTelephonyManagerInner$DataSettingModeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/telephony/HwTelephonyManagerInner$DataSettingModeType;

    return-object v0
.end method
