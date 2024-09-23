.class public final enum Lcom/android/internal/telephony/HwIccCardConstants$HwState;
.super Ljava/lang/Enum;
.source "HwIccCardConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/HwIccCardConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HwState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/telephony/HwIccCardConstants$HwState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/HwIccCardConstants$HwState;

.field public static final enum ABSENT:Lcom/android/internal/telephony/HwIccCardConstants$HwState;

.field public static final enum CARD_IO_ERROR:Lcom/android/internal/telephony/HwIccCardConstants$HwState;

.field public static final enum DEACTIVED:Lcom/android/internal/telephony/HwIccCardConstants$HwState;

.field public static final enum NETWORK_LOCKED:Lcom/android/internal/telephony/HwIccCardConstants$HwState;

.field public static final enum NOT_READY:Lcom/android/internal/telephony/HwIccCardConstants$HwState;

.field public static final enum PERM_DISABLED:Lcom/android/internal/telephony/HwIccCardConstants$HwState;

.field public static final enum PIN_REQUIRED:Lcom/android/internal/telephony/HwIccCardConstants$HwState;

.field public static final enum PUK_REQUIRED:Lcom/android/internal/telephony/HwIccCardConstants$HwState;

.field public static final enum READY:Lcom/android/internal/telephony/HwIccCardConstants$HwState;

.field public static final enum RUIM_CORPORATE_LOCKED:Lcom/android/internal/telephony/HwIccCardConstants$HwState;

.field public static final enum RUIM_HRPD_LOCKED:Lcom/android/internal/telephony/HwIccCardConstants$HwState;

.field public static final enum RUIM_NETWORK1_LOCKED:Lcom/android/internal/telephony/HwIccCardConstants$HwState;

.field public static final enum RUIM_NETWORK2_LOCKED:Lcom/android/internal/telephony/HwIccCardConstants$HwState;

.field public static final enum RUIM_RUIM_LOCKED:Lcom/android/internal/telephony/HwIccCardConstants$HwState;

.field public static final enum RUIM_SERVICE_PROVIDER_LOCKED:Lcom/android/internal/telephony/HwIccCardConstants$HwState;

.field public static final enum SIM_CORPORATE_LOCKED:Lcom/android/internal/telephony/HwIccCardConstants$HwState;

.field public static final enum SIM_CORPORATE_LOCKED_PUK:Lcom/android/internal/telephony/HwIccCardConstants$HwState;

.field public static final enum SIM_NETWORK_LOCKED_PUK:Lcom/android/internal/telephony/HwIccCardConstants$HwState;

.field public static final enum SIM_NETWORK_SUBSET_LOCKED:Lcom/android/internal/telephony/HwIccCardConstants$HwState;

.field public static final enum SIM_NETWORK_SUBSET_LOCKED_PUK:Lcom/android/internal/telephony/HwIccCardConstants$HwState;

.field public static final enum SIM_SERVICE_PROVIDER_LOCKED:Lcom/android/internal/telephony/HwIccCardConstants$HwState;

.field public static final enum SIM_SERVICE_PROVIDER_LOCKED_PUK:Lcom/android/internal/telephony/HwIccCardConstants$HwState;

.field public static final enum SIM_SIM_LOCKED:Lcom/android/internal/telephony/HwIccCardConstants$HwState;

.field public static final enum UNKNOWN:Lcom/android/internal/telephony/HwIccCardConstants$HwState;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 49
    new-instance v0, Lcom/android/internal/telephony/HwIccCardConstants$HwState;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/HwIccCardConstants$HwState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/HwIccCardConstants$HwState;->UNKNOWN:Lcom/android/internal/telephony/HwIccCardConstants$HwState;

    .line 50
    new-instance v0, Lcom/android/internal/telephony/HwIccCardConstants$HwState;

    const-string v1, "ABSENT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/HwIccCardConstants$HwState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/HwIccCardConstants$HwState;->ABSENT:Lcom/android/internal/telephony/HwIccCardConstants$HwState;

    .line 51
    new-instance v0, Lcom/android/internal/telephony/HwIccCardConstants$HwState;

    const-string v1, "PIN_REQUIRED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/HwIccCardConstants$HwState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/HwIccCardConstants$HwState;->PIN_REQUIRED:Lcom/android/internal/telephony/HwIccCardConstants$HwState;

    .line 52
    new-instance v0, Lcom/android/internal/telephony/HwIccCardConstants$HwState;

    const-string v1, "PUK_REQUIRED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/HwIccCardConstants$HwState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/HwIccCardConstants$HwState;->PUK_REQUIRED:Lcom/android/internal/telephony/HwIccCardConstants$HwState;

    .line 53
    new-instance v0, Lcom/android/internal/telephony/HwIccCardConstants$HwState;

    const-string v1, "NETWORK_LOCKED"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/android/internal/telephony/HwIccCardConstants$HwState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/HwIccCardConstants$HwState;->NETWORK_LOCKED:Lcom/android/internal/telephony/HwIccCardConstants$HwState;

    .line 54
    new-instance v0, Lcom/android/internal/telephony/HwIccCardConstants$HwState;

    const-string v1, "SIM_NETWORK_SUBSET_LOCKED"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/android/internal/telephony/HwIccCardConstants$HwState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/HwIccCardConstants$HwState;->SIM_NETWORK_SUBSET_LOCKED:Lcom/android/internal/telephony/HwIccCardConstants$HwState;

    .line 55
    new-instance v0, Lcom/android/internal/telephony/HwIccCardConstants$HwState;

    const-string v1, "SIM_CORPORATE_LOCKED"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/android/internal/telephony/HwIccCardConstants$HwState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/HwIccCardConstants$HwState;->SIM_CORPORATE_LOCKED:Lcom/android/internal/telephony/HwIccCardConstants$HwState;

    .line 56
    new-instance v0, Lcom/android/internal/telephony/HwIccCardConstants$HwState;

    const-string v1, "SIM_SERVICE_PROVIDER_LOCKED"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/android/internal/telephony/HwIccCardConstants$HwState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/HwIccCardConstants$HwState;->SIM_SERVICE_PROVIDER_LOCKED:Lcom/android/internal/telephony/HwIccCardConstants$HwState;

    .line 57
    new-instance v0, Lcom/android/internal/telephony/HwIccCardConstants$HwState;

    const-string v1, "SIM_SIM_LOCKED"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/android/internal/telephony/HwIccCardConstants$HwState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/HwIccCardConstants$HwState;->SIM_SIM_LOCKED:Lcom/android/internal/telephony/HwIccCardConstants$HwState;

    .line 58
    new-instance v0, Lcom/android/internal/telephony/HwIccCardConstants$HwState;

    const-string v1, "RUIM_NETWORK1_LOCKED"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/android/internal/telephony/HwIccCardConstants$HwState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/HwIccCardConstants$HwState;->RUIM_NETWORK1_LOCKED:Lcom/android/internal/telephony/HwIccCardConstants$HwState;

    .line 59
    new-instance v0, Lcom/android/internal/telephony/HwIccCardConstants$HwState;

    const-string v1, "RUIM_NETWORK2_LOCKED"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lcom/android/internal/telephony/HwIccCardConstants$HwState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/HwIccCardConstants$HwState;->RUIM_NETWORK2_LOCKED:Lcom/android/internal/telephony/HwIccCardConstants$HwState;

    .line 60
    new-instance v0, Lcom/android/internal/telephony/HwIccCardConstants$HwState;

    const-string v1, "RUIM_HRPD_LOCKED"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lcom/android/internal/telephony/HwIccCardConstants$HwState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/HwIccCardConstants$HwState;->RUIM_HRPD_LOCKED:Lcom/android/internal/telephony/HwIccCardConstants$HwState;

    .line 61
    new-instance v0, Lcom/android/internal/telephony/HwIccCardConstants$HwState;

    const-string v1, "RUIM_CORPORATE_LOCKED"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Lcom/android/internal/telephony/HwIccCardConstants$HwState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/HwIccCardConstants$HwState;->RUIM_CORPORATE_LOCKED:Lcom/android/internal/telephony/HwIccCardConstants$HwState;

    .line 62
    new-instance v0, Lcom/android/internal/telephony/HwIccCardConstants$HwState;

    const-string v1, "RUIM_SERVICE_PROVIDER_LOCKED"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15}, Lcom/android/internal/telephony/HwIccCardConstants$HwState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/HwIccCardConstants$HwState;->RUIM_SERVICE_PROVIDER_LOCKED:Lcom/android/internal/telephony/HwIccCardConstants$HwState;

    .line 63
    new-instance v0, Lcom/android/internal/telephony/HwIccCardConstants$HwState;

    const-string v1, "RUIM_RUIM_LOCKED"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15}, Lcom/android/internal/telephony/HwIccCardConstants$HwState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/HwIccCardConstants$HwState;->RUIM_RUIM_LOCKED:Lcom/android/internal/telephony/HwIccCardConstants$HwState;

    .line 64
    new-instance v0, Lcom/android/internal/telephony/HwIccCardConstants$HwState;

    const-string v1, "SIM_NETWORK_LOCKED_PUK"

    const/16 v15, 0xf

    invoke-direct {v0, v1, v15}, Lcom/android/internal/telephony/HwIccCardConstants$HwState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/HwIccCardConstants$HwState;->SIM_NETWORK_LOCKED_PUK:Lcom/android/internal/telephony/HwIccCardConstants$HwState;

    .line 65
    new-instance v0, Lcom/android/internal/telephony/HwIccCardConstants$HwState;

    const-string v1, "SIM_NETWORK_SUBSET_LOCKED_PUK"

    const/16 v15, 0x10

    invoke-direct {v0, v1, v15}, Lcom/android/internal/telephony/HwIccCardConstants$HwState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/HwIccCardConstants$HwState;->SIM_NETWORK_SUBSET_LOCKED_PUK:Lcom/android/internal/telephony/HwIccCardConstants$HwState;

    .line 66
    new-instance v0, Lcom/android/internal/telephony/HwIccCardConstants$HwState;

    const-string v1, "SIM_CORPORATE_LOCKED_PUK"

    const/16 v15, 0x11

    invoke-direct {v0, v1, v15}, Lcom/android/internal/telephony/HwIccCardConstants$HwState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/HwIccCardConstants$HwState;->SIM_CORPORATE_LOCKED_PUK:Lcom/android/internal/telephony/HwIccCardConstants$HwState;

    .line 67
    new-instance v0, Lcom/android/internal/telephony/HwIccCardConstants$HwState;

    const-string v1, "SIM_SERVICE_PROVIDER_LOCKED_PUK"

    const/16 v15, 0x12

    invoke-direct {v0, v1, v15}, Lcom/android/internal/telephony/HwIccCardConstants$HwState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/HwIccCardConstants$HwState;->SIM_SERVICE_PROVIDER_LOCKED_PUK:Lcom/android/internal/telephony/HwIccCardConstants$HwState;

    .line 68
    new-instance v0, Lcom/android/internal/telephony/HwIccCardConstants$HwState;

    const-string v1, "READY"

    const/16 v15, 0x13

    invoke-direct {v0, v1, v15}, Lcom/android/internal/telephony/HwIccCardConstants$HwState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/HwIccCardConstants$HwState;->READY:Lcom/android/internal/telephony/HwIccCardConstants$HwState;

    .line 69
    new-instance v0, Lcom/android/internal/telephony/HwIccCardConstants$HwState;

    const-string v1, "NOT_READY"

    const/16 v15, 0x14

    invoke-direct {v0, v1, v15}, Lcom/android/internal/telephony/HwIccCardConstants$HwState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/HwIccCardConstants$HwState;->NOT_READY:Lcom/android/internal/telephony/HwIccCardConstants$HwState;

    .line 70
    new-instance v0, Lcom/android/internal/telephony/HwIccCardConstants$HwState;

    const-string v1, "CARD_IO_ERROR"

    const/16 v15, 0x15

    invoke-direct {v0, v1, v15}, Lcom/android/internal/telephony/HwIccCardConstants$HwState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/HwIccCardConstants$HwState;->CARD_IO_ERROR:Lcom/android/internal/telephony/HwIccCardConstants$HwState;

    .line 71
    new-instance v0, Lcom/android/internal/telephony/HwIccCardConstants$HwState;

    const-string v1, "DEACTIVED"

    const/16 v15, 0x16

    invoke-direct {v0, v1, v15}, Lcom/android/internal/telephony/HwIccCardConstants$HwState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/HwIccCardConstants$HwState;->DEACTIVED:Lcom/android/internal/telephony/HwIccCardConstants$HwState;

    .line 72
    new-instance v0, Lcom/android/internal/telephony/HwIccCardConstants$HwState;

    const-string v1, "PERM_DISABLED"

    const/16 v15, 0x17

    invoke-direct {v0, v1, v15}, Lcom/android/internal/telephony/HwIccCardConstants$HwState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/HwIccCardConstants$HwState;->PERM_DISABLED:Lcom/android/internal/telephony/HwIccCardConstants$HwState;

    .line 48
    const/16 v0, 0x18

    new-array v0, v0, [Lcom/android/internal/telephony/HwIccCardConstants$HwState;

    sget-object v1, Lcom/android/internal/telephony/HwIccCardConstants$HwState;->UNKNOWN:Lcom/android/internal/telephony/HwIccCardConstants$HwState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/HwIccCardConstants$HwState;->ABSENT:Lcom/android/internal/telephony/HwIccCardConstants$HwState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/HwIccCardConstants$HwState;->PIN_REQUIRED:Lcom/android/internal/telephony/HwIccCardConstants$HwState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/HwIccCardConstants$HwState;->PUK_REQUIRED:Lcom/android/internal/telephony/HwIccCardConstants$HwState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/HwIccCardConstants$HwState;->NETWORK_LOCKED:Lcom/android/internal/telephony/HwIccCardConstants$HwState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/telephony/HwIccCardConstants$HwState;->SIM_NETWORK_SUBSET_LOCKED:Lcom/android/internal/telephony/HwIccCardConstants$HwState;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/internal/telephony/HwIccCardConstants$HwState;->SIM_CORPORATE_LOCKED:Lcom/android/internal/telephony/HwIccCardConstants$HwState;

    aput-object v1, v0, v8

    sget-object v1, Lcom/android/internal/telephony/HwIccCardConstants$HwState;->SIM_SERVICE_PROVIDER_LOCKED:Lcom/android/internal/telephony/HwIccCardConstants$HwState;

    aput-object v1, v0, v9

    sget-object v1, Lcom/android/internal/telephony/HwIccCardConstants$HwState;->SIM_SIM_LOCKED:Lcom/android/internal/telephony/HwIccCardConstants$HwState;

    aput-object v1, v0, v10

    sget-object v1, Lcom/android/internal/telephony/HwIccCardConstants$HwState;->RUIM_NETWORK1_LOCKED:Lcom/android/internal/telephony/HwIccCardConstants$HwState;

    aput-object v1, v0, v11

    sget-object v1, Lcom/android/internal/telephony/HwIccCardConstants$HwState;->RUIM_NETWORK2_LOCKED:Lcom/android/internal/telephony/HwIccCardConstants$HwState;

    aput-object v1, v0, v12

    sget-object v1, Lcom/android/internal/telephony/HwIccCardConstants$HwState;->RUIM_HRPD_LOCKED:Lcom/android/internal/telephony/HwIccCardConstants$HwState;

    aput-object v1, v0, v13

    sget-object v1, Lcom/android/internal/telephony/HwIccCardConstants$HwState;->RUIM_CORPORATE_LOCKED:Lcom/android/internal/telephony/HwIccCardConstants$HwState;

    aput-object v1, v0, v14

    sget-object v1, Lcom/android/internal/telephony/HwIccCardConstants$HwState;->RUIM_SERVICE_PROVIDER_LOCKED:Lcom/android/internal/telephony/HwIccCardConstants$HwState;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/HwIccCardConstants$HwState;->RUIM_RUIM_LOCKED:Lcom/android/internal/telephony/HwIccCardConstants$HwState;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/HwIccCardConstants$HwState;->SIM_NETWORK_LOCKED_PUK:Lcom/android/internal/telephony/HwIccCardConstants$HwState;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/HwIccCardConstants$HwState;->SIM_NETWORK_SUBSET_LOCKED_PUK:Lcom/android/internal/telephony/HwIccCardConstants$HwState;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/HwIccCardConstants$HwState;->SIM_CORPORATE_LOCKED_PUK:Lcom/android/internal/telephony/HwIccCardConstants$HwState;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/HwIccCardConstants$HwState;->SIM_SERVICE_PROVIDER_LOCKED_PUK:Lcom/android/internal/telephony/HwIccCardConstants$HwState;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/HwIccCardConstants$HwState;->READY:Lcom/android/internal/telephony/HwIccCardConstants$HwState;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/HwIccCardConstants$HwState;->NOT_READY:Lcom/android/internal/telephony/HwIccCardConstants$HwState;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/HwIccCardConstants$HwState;->CARD_IO_ERROR:Lcom/android/internal/telephony/HwIccCardConstants$HwState;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/HwIccCardConstants$HwState;->DEACTIVED:Lcom/android/internal/telephony/HwIccCardConstants$HwState;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/HwIccCardConstants$HwState;->PERM_DISABLED:Lcom/android/internal/telephony/HwIccCardConstants$HwState;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/internal/telephony/HwIccCardConstants$HwState;->$VALUES:[Lcom/android/internal/telephony/HwIccCardConstants$HwState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/HwIccCardConstants$HwState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 48
    const-class v0, Lcom/android/internal/telephony/HwIccCardConstants$HwState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/HwIccCardConstants$HwState;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/HwIccCardConstants$HwState;
    .locals 1

    .line 48
    sget-object v0, Lcom/android/internal/telephony/HwIccCardConstants$HwState;->$VALUES:[Lcom/android/internal/telephony/HwIccCardConstants$HwState;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/HwIccCardConstants$HwState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/HwIccCardConstants$HwState;

    return-object v0
.end method


# virtual methods
.method public getIntentString()Ljava/lang/String;
    .locals 2

    .line 75
    sget-object v0, Lcom/android/internal/telephony/HwIccCardConstants$1;->$SwitchMap$com$android$internal$telephony$HwIccCardConstants$HwState:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/HwIccCardConstants$HwState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 100
    const-string v0, "UNKNOWN"

    return-object v0

    .line 99
    :pswitch_0
    const-string v0, "DEACTIVED"

    return-object v0

    .line 98
    :pswitch_1
    const-string v0, "CARD_IO_ERROR"

    return-object v0

    .line 97
    :pswitch_2
    const-string v0, "LOCKED"

    return-object v0

    .line 96
    :pswitch_3
    const-string v0, "NOT_READY"

    return-object v0

    .line 95
    :pswitch_4
    const-string v0, "READY"

    return-object v0

    .line 94
    :pswitch_5
    const-string v0, "LOCKED"

    return-object v0

    .line 78
    :pswitch_6
    const-string v0, "LOCKED"

    return-object v0

    .line 77
    :pswitch_7
    const-string v0, "LOCKED"

    return-object v0

    .line 76
    :pswitch_8
    const-string v0, "ABSENT"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getReason()Ljava/lang/String;
    .locals 2

    .line 109
    sget-object v0, Lcom/android/internal/telephony/HwIccCardConstants$1;->$SwitchMap$com$android$internal$telephony$HwIccCardConstants$HwState:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/HwIccCardConstants$HwState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 129
    :pswitch_0
    const/4 v0, 0x0

    return-object v0

    .line 128
    :pswitch_1
    const-string v0, "CARD_IO_ERROR"

    return-object v0

    .line 127
    :pswitch_2
    const-string v0, "PERM_DISABLED"

    return-object v0

    .line 126
    :pswitch_3
    const-string v0, "SIM LOCK SERVICE PROVIDERBLOCK"

    return-object v0

    .line 125
    :pswitch_4
    const-string v0, "SIM LOCK CORPORATE BLOCK"

    return-object v0

    .line 124
    :pswitch_5
    const-string v0, "SIM LOCK NETWORK SUBSET BLOCK"

    return-object v0

    .line 123
    :pswitch_6
    const-string v0, "SIM LOCK BLOCK"

    return-object v0

    .line 122
    :pswitch_7
    const-string v0, "RUIM RUIM"

    return-object v0

    .line 121
    :pswitch_8
    const-string v0, "RUIM SERVICE PROVIDER"

    return-object v0

    .line 120
    :pswitch_9
    const-string v0, "RUIM CORPORATE"

    return-object v0

    .line 119
    :pswitch_a
    const-string v0, "RUIM HRPD"

    return-object v0

    .line 118
    :pswitch_b
    const-string v0, "RUIM NETWORK2"

    return-object v0

    .line 117
    :pswitch_c
    const-string v0, "RUIM NETWORK1"

    return-object v0

    .line 116
    :pswitch_d
    const-string v0, "SIM SIM"

    return-object v0

    .line 115
    :pswitch_e
    const-string v0, "SIM SERVICE PROVIDER"

    return-object v0

    .line 114
    :pswitch_f
    const-string v0, "SIM CORPORATE"

    return-object v0

    .line 113
    :pswitch_10
    const-string v0, "SIM NETWORK SUBSET"

    return-object v0

    .line 112
    :pswitch_11
    const-string v0, "NETWORK"

    return-object v0

    .line 111
    :pswitch_12
    const-string v0, "PUK"

    return-object v0

    .line 110
    :pswitch_13
    const-string v0, "PIN"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
