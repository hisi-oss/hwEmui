.class final enum Lhuawei/android/utils/HwCoreServicesLog$DEBUG_FLOW;
.super Ljava/lang/Enum;
.source "HwCoreServicesLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhuawei/android/utils/HwCoreServicesLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "DEBUG_FLOW"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lhuawei/android/utils/HwCoreServicesLog$DEBUG_FLOW;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lhuawei/android/utils/HwCoreServicesLog$DEBUG_FLOW;

.field public static final enum DISABLE_LOG:Lhuawei/android/utils/HwCoreServicesLog$DEBUG_FLOW;

.field public static final enum ENABLE_LOG:Lhuawei/android/utils/HwCoreServicesLog$DEBUG_FLOW;

.field public static final enum HW_DEBUG_STATES:Lhuawei/android/utils/HwCoreServicesLog$DEBUG_FLOW;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 41
    new-instance v0, Lhuawei/android/utils/HwCoreServicesLog$DEBUG_FLOW;

    const-string v1, "HW_DEBUG_STATES"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lhuawei/android/utils/HwCoreServicesLog$DEBUG_FLOW;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhuawei/android/utils/HwCoreServicesLog$DEBUG_FLOW;->HW_DEBUG_STATES:Lhuawei/android/utils/HwCoreServicesLog$DEBUG_FLOW;

    .line 42
    new-instance v0, Lhuawei/android/utils/HwCoreServicesLog$DEBUG_FLOW;

    const-string v1, "ENABLE_LOG"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lhuawei/android/utils/HwCoreServicesLog$DEBUG_FLOW;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhuawei/android/utils/HwCoreServicesLog$DEBUG_FLOW;->ENABLE_LOG:Lhuawei/android/utils/HwCoreServicesLog$DEBUG_FLOW;

    .line 43
    new-instance v0, Lhuawei/android/utils/HwCoreServicesLog$DEBUG_FLOW;

    const-string v1, "DISABLE_LOG"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lhuawei/android/utils/HwCoreServicesLog$DEBUG_FLOW;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhuawei/android/utils/HwCoreServicesLog$DEBUG_FLOW;->DISABLE_LOG:Lhuawei/android/utils/HwCoreServicesLog$DEBUG_FLOW;

    .line 40
    const/4 v0, 0x3

    new-array v0, v0, [Lhuawei/android/utils/HwCoreServicesLog$DEBUG_FLOW;

    sget-object v1, Lhuawei/android/utils/HwCoreServicesLog$DEBUG_FLOW;->HW_DEBUG_STATES:Lhuawei/android/utils/HwCoreServicesLog$DEBUG_FLOW;

    aput-object v1, v0, v2

    sget-object v1, Lhuawei/android/utils/HwCoreServicesLog$DEBUG_FLOW;->ENABLE_LOG:Lhuawei/android/utils/HwCoreServicesLog$DEBUG_FLOW;

    aput-object v1, v0, v3

    sget-object v1, Lhuawei/android/utils/HwCoreServicesLog$DEBUG_FLOW;->DISABLE_LOG:Lhuawei/android/utils/HwCoreServicesLog$DEBUG_FLOW;

    aput-object v1, v0, v4

    sput-object v0, Lhuawei/android/utils/HwCoreServicesLog$DEBUG_FLOW;->$VALUES:[Lhuawei/android/utils/HwCoreServicesLog$DEBUG_FLOW;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lhuawei/android/utils/HwCoreServicesLog$DEBUG_FLOW;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 40
    const-class v0, Lhuawei/android/utils/HwCoreServicesLog$DEBUG_FLOW;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lhuawei/android/utils/HwCoreServicesLog$DEBUG_FLOW;

    return-object v0
.end method

.method public static values()[Lhuawei/android/utils/HwCoreServicesLog$DEBUG_FLOW;
    .locals 1

    .line 40
    sget-object v0, Lhuawei/android/utils/HwCoreServicesLog$DEBUG_FLOW;->$VALUES:[Lhuawei/android/utils/HwCoreServicesLog$DEBUG_FLOW;

    invoke-virtual {v0}, [Lhuawei/android/utils/HwCoreServicesLog$DEBUG_FLOW;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lhuawei/android/utils/HwCoreServicesLog$DEBUG_FLOW;

    return-object v0
.end method
