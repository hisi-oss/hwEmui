.class public final enum Lcom/android/internal/telephony/HwSignalStrength$SignalType;
.super Ljava/lang/Enum;
.source "HwSignalStrength.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/HwSignalStrength;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SignalType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/telephony/HwSignalStrength$SignalType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/HwSignalStrength$SignalType;

.field public static final enum CDMA:Lcom/android/internal/telephony/HwSignalStrength$SignalType;

.field public static final enum CDMALTE:Lcom/android/internal/telephony/HwSignalStrength$SignalType;

.field public static final enum EVDO:Lcom/android/internal/telephony/HwSignalStrength$SignalType;

.field public static final enum GSM:Lcom/android/internal/telephony/HwSignalStrength$SignalType;

.field public static final enum LTE:Lcom/android/internal/telephony/HwSignalStrength$SignalType;

.field public static final enum NR:Lcom/android/internal/telephony/HwSignalStrength$SignalType;

.field public static final enum UMTS:Lcom/android/internal/telephony/HwSignalStrength$SignalType;

.field public static final enum UNKNOWN:Lcom/android/internal/telephony/HwSignalStrength$SignalType;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 94
    new-instance v0, Lcom/android/internal/telephony/HwSignalStrength$SignalType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/HwSignalStrength$SignalType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/HwSignalStrength$SignalType;->UNKNOWN:Lcom/android/internal/telephony/HwSignalStrength$SignalType;

    new-instance v0, Lcom/android/internal/telephony/HwSignalStrength$SignalType;

    const-string v1, "GSM"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/HwSignalStrength$SignalType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/HwSignalStrength$SignalType;->GSM:Lcom/android/internal/telephony/HwSignalStrength$SignalType;

    new-instance v0, Lcom/android/internal/telephony/HwSignalStrength$SignalType;

    const-string v1, "UMTS"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/HwSignalStrength$SignalType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/HwSignalStrength$SignalType;->UMTS:Lcom/android/internal/telephony/HwSignalStrength$SignalType;

    new-instance v0, Lcom/android/internal/telephony/HwSignalStrength$SignalType;

    const-string v1, "CDMA"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/HwSignalStrength$SignalType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/HwSignalStrength$SignalType;->CDMA:Lcom/android/internal/telephony/HwSignalStrength$SignalType;

    new-instance v0, Lcom/android/internal/telephony/HwSignalStrength$SignalType;

    const-string v1, "EVDO"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/android/internal/telephony/HwSignalStrength$SignalType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/HwSignalStrength$SignalType;->EVDO:Lcom/android/internal/telephony/HwSignalStrength$SignalType;

    new-instance v0, Lcom/android/internal/telephony/HwSignalStrength$SignalType;

    const-string v1, "LTE"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/android/internal/telephony/HwSignalStrength$SignalType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/HwSignalStrength$SignalType;->LTE:Lcom/android/internal/telephony/HwSignalStrength$SignalType;

    new-instance v0, Lcom/android/internal/telephony/HwSignalStrength$SignalType;

    const-string v1, "CDMALTE"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/android/internal/telephony/HwSignalStrength$SignalType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/HwSignalStrength$SignalType;->CDMALTE:Lcom/android/internal/telephony/HwSignalStrength$SignalType;

    new-instance v0, Lcom/android/internal/telephony/HwSignalStrength$SignalType;

    const-string v1, "NR"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/android/internal/telephony/HwSignalStrength$SignalType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/HwSignalStrength$SignalType;->NR:Lcom/android/internal/telephony/HwSignalStrength$SignalType;

    .line 93
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/android/internal/telephony/HwSignalStrength$SignalType;

    sget-object v1, Lcom/android/internal/telephony/HwSignalStrength$SignalType;->UNKNOWN:Lcom/android/internal/telephony/HwSignalStrength$SignalType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/HwSignalStrength$SignalType;->GSM:Lcom/android/internal/telephony/HwSignalStrength$SignalType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/HwSignalStrength$SignalType;->UMTS:Lcom/android/internal/telephony/HwSignalStrength$SignalType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/HwSignalStrength$SignalType;->CDMA:Lcom/android/internal/telephony/HwSignalStrength$SignalType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/HwSignalStrength$SignalType;->EVDO:Lcom/android/internal/telephony/HwSignalStrength$SignalType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/telephony/HwSignalStrength$SignalType;->LTE:Lcom/android/internal/telephony/HwSignalStrength$SignalType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/internal/telephony/HwSignalStrength$SignalType;->CDMALTE:Lcom/android/internal/telephony/HwSignalStrength$SignalType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/android/internal/telephony/HwSignalStrength$SignalType;->NR:Lcom/android/internal/telephony/HwSignalStrength$SignalType;

    aput-object v1, v0, v9

    sput-object v0, Lcom/android/internal/telephony/HwSignalStrength$SignalType;->$VALUES:[Lcom/android/internal/telephony/HwSignalStrength$SignalType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 93
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/HwSignalStrength$SignalType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 93
    const-class v0, Lcom/android/internal/telephony/HwSignalStrength$SignalType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/HwSignalStrength$SignalType;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/HwSignalStrength$SignalType;
    .locals 1

    .line 93
    sget-object v0, Lcom/android/internal/telephony/HwSignalStrength$SignalType;->$VALUES:[Lcom/android/internal/telephony/HwSignalStrength$SignalType;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/HwSignalStrength$SignalType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/HwSignalStrength$SignalType;

    return-object v0
.end method
