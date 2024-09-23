.class public final enum Landroid/app/mtm/iaware/appmng/AppMngConstant$AppCleanSource;
.super Ljava/lang/Enum;
.source "AppMngConstant.java"

# interfaces
.implements Landroid/app/mtm/iaware/appmng/AppMngConstant$EnumWithDesc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/mtm/iaware/appmng/AppMngConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AppCleanSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/app/mtm/iaware/appmng/AppMngConstant$AppCleanSource;",
        ">;",
        "Landroid/app/mtm/iaware/appmng/AppMngConstant$EnumWithDesc;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/app/mtm/iaware/appmng/AppMngConstant$AppCleanSource;

.field public static final enum COMPACT:Landroid/app/mtm/iaware/appmng/AppMngConstant$AppCleanSource;

.field public static final enum CRASH:Landroid/app/mtm/iaware/appmng/AppMngConstant$AppCleanSource;

.field public static final enum MEMORY:Landroid/app/mtm/iaware/appmng/AppMngConstant$AppCleanSource;

.field public static final enum MEMORY_REPAIR:Landroid/app/mtm/iaware/appmng/AppMngConstant$AppCleanSource;

.field public static final enum MEMORY_REPAIR_VSS:Landroid/app/mtm/iaware/appmng/AppMngConstant$AppCleanSource;

.field public static final enum POWER_GENIE:Landroid/app/mtm/iaware/appmng/AppMngConstant$AppCleanSource;

.field public static final enum SMART_CLEAN:Landroid/app/mtm/iaware/appmng/AppMngConstant$AppCleanSource;

.field public static final enum SYSTEM_MANAGER:Landroid/app/mtm/iaware/appmng/AppMngConstant$AppCleanSource;

.field public static final enum THERMAL:Landroid/app/mtm/iaware/appmng/AppMngConstant$AppCleanSource;


# instance fields
.field private mDesc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 107
    new-instance v0, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppCleanSource;

    const-string v1, "SYSTEM_MANAGER"

    const-string v2, "system_manager"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppCleanSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppCleanSource;->SYSTEM_MANAGER:Landroid/app/mtm/iaware/appmng/AppMngConstant$AppCleanSource;

    .line 108
    new-instance v0, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppCleanSource;

    const-string v1, "MEMORY"

    const-string v2, "memory"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppCleanSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppCleanSource;->MEMORY:Landroid/app/mtm/iaware/appmng/AppMngConstant$AppCleanSource;

    .line 109
    new-instance v0, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppCleanSource;

    const-string v1, "POWER_GENIE"

    const-string v2, "power_genie"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppCleanSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppCleanSource;->POWER_GENIE:Landroid/app/mtm/iaware/appmng/AppMngConstant$AppCleanSource;

    .line 110
    new-instance v0, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppCleanSource;

    const-string v1, "CRASH"

    const-string v2, "crash"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppCleanSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppCleanSource;->CRASH:Landroid/app/mtm/iaware/appmng/AppMngConstant$AppCleanSource;

    .line 111
    new-instance v0, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppCleanSource;

    const-string v1, "COMPACT"

    const-string v2, "compact"

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v2}, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppCleanSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppCleanSource;->COMPACT:Landroid/app/mtm/iaware/appmng/AppMngConstant$AppCleanSource;

    .line 112
    new-instance v0, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppCleanSource;

    const-string v1, "SMART_CLEAN"

    const-string v2, "smart_clean"

    const/4 v8, 0x5

    invoke-direct {v0, v1, v8, v2}, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppCleanSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppCleanSource;->SMART_CLEAN:Landroid/app/mtm/iaware/appmng/AppMngConstant$AppCleanSource;

    .line 114
    new-instance v0, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppCleanSource;

    const-string v1, "MEMORY_REPAIR"

    const-string v2, "memory_repair"

    const/4 v9, 0x6

    invoke-direct {v0, v1, v9, v2}, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppCleanSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppCleanSource;->MEMORY_REPAIR:Landroid/app/mtm/iaware/appmng/AppMngConstant$AppCleanSource;

    .line 116
    new-instance v0, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppCleanSource;

    const-string v1, "MEMORY_REPAIR_VSS"

    const-string v2, "memory_repair_vss"

    const/4 v10, 0x7

    invoke-direct {v0, v1, v10, v2}, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppCleanSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppCleanSource;->MEMORY_REPAIR_VSS:Landroid/app/mtm/iaware/appmng/AppMngConstant$AppCleanSource;

    .line 119
    new-instance v0, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppCleanSource;

    const-string v1, "THERMAL"

    const-string v2, "thermal"

    const/16 v11, 0x8

    invoke-direct {v0, v1, v11, v2}, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppCleanSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppCleanSource;->THERMAL:Landroid/app/mtm/iaware/appmng/AppMngConstant$AppCleanSource;

    .line 106
    const/16 v0, 0x9

    new-array v0, v0, [Landroid/app/mtm/iaware/appmng/AppMngConstant$AppCleanSource;

    sget-object v1, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppCleanSource;->SYSTEM_MANAGER:Landroid/app/mtm/iaware/appmng/AppMngConstant$AppCleanSource;

    aput-object v1, v0, v3

    sget-object v1, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppCleanSource;->MEMORY:Landroid/app/mtm/iaware/appmng/AppMngConstant$AppCleanSource;

    aput-object v1, v0, v4

    sget-object v1, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppCleanSource;->POWER_GENIE:Landroid/app/mtm/iaware/appmng/AppMngConstant$AppCleanSource;

    aput-object v1, v0, v5

    sget-object v1, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppCleanSource;->CRASH:Landroid/app/mtm/iaware/appmng/AppMngConstant$AppCleanSource;

    aput-object v1, v0, v6

    sget-object v1, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppCleanSource;->COMPACT:Landroid/app/mtm/iaware/appmng/AppMngConstant$AppCleanSource;

    aput-object v1, v0, v7

    sget-object v1, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppCleanSource;->SMART_CLEAN:Landroid/app/mtm/iaware/appmng/AppMngConstant$AppCleanSource;

    aput-object v1, v0, v8

    sget-object v1, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppCleanSource;->MEMORY_REPAIR:Landroid/app/mtm/iaware/appmng/AppMngConstant$AppCleanSource;

    aput-object v1, v0, v9

    sget-object v1, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppCleanSource;->MEMORY_REPAIR_VSS:Landroid/app/mtm/iaware/appmng/AppMngConstant$AppCleanSource;

    aput-object v1, v0, v10

    sget-object v1, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppCleanSource;->THERMAL:Landroid/app/mtm/iaware/appmng/AppMngConstant$AppCleanSource;

    aput-object v1, v0, v11

    sput-object v0, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppCleanSource;->$VALUES:[Landroid/app/mtm/iaware/appmng/AppMngConstant$AppCleanSource;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "desc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 121
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 122
    iput-object p3, p0, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppCleanSource;->mDesc:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Landroid/app/mtm/iaware/appmng/AppMngConstant$EnumWithDesc;
    .locals 2
    .param p0, "desc"    # Ljava/lang/String;

    .line 128
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 129
    return-object v0

    .line 132
    :cond_0
    :try_start_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppCleanSource;->valueOf(Ljava/lang/String;)Landroid/app/mtm/iaware/appmng/AppMngConstant$AppCleanSource;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 133
    :catch_0
    move-exception v1

    .line 134
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/app/mtm/iaware/appmng/AppMngConstant$AppCleanSource;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 106
    const-class v0, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppCleanSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppCleanSource;

    return-object v0
.end method

.method public static values()[Landroid/app/mtm/iaware/appmng/AppMngConstant$AppCleanSource;
    .locals 1

    .line 106
    sget-object v0, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppCleanSource;->$VALUES:[Landroid/app/mtm/iaware/appmng/AppMngConstant$AppCleanSource;

    invoke-virtual {v0}, [Landroid/app/mtm/iaware/appmng/AppMngConstant$AppCleanSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/app/mtm/iaware/appmng/AppMngConstant$AppCleanSource;

    return-object v0
.end method


# virtual methods
.method public getDesc()Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppCleanSource;->mDesc:Ljava/lang/String;

    return-object v0
.end method
