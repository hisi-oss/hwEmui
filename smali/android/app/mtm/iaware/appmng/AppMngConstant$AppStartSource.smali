.class public final enum Landroid/app/mtm/iaware/appmng/AppMngConstant$AppStartSource;
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
    name = "AppStartSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/app/mtm/iaware/appmng/AppMngConstant$AppStartSource;",
        ">;",
        "Landroid/app/mtm/iaware/appmng/AppMngConstant$EnumWithDesc;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/app/mtm/iaware/appmng/AppMngConstant$AppStartSource;

.field public static final enum ACCOUNT_SYNC:Landroid/app/mtm/iaware/appmng/AppMngConstant$AppStartSource;

.field public static final enum ALARM:Landroid/app/mtm/iaware/appmng/AppMngConstant$AppStartSource;

.field public static final enum BIND_SERVICE:Landroid/app/mtm/iaware/appmng/AppMngConstant$AppStartSource;

.field public static final enum JOB_SCHEDULE:Landroid/app/mtm/iaware/appmng/AppMngConstant$AppStartSource;

.field public static final enum PROVIDER:Landroid/app/mtm/iaware/appmng/AppMngConstant$AppStartSource;

.field public static final enum SCHEDULE_RESTART:Landroid/app/mtm/iaware/appmng/AppMngConstant$AppStartSource;

.field public static final enum START_SERVICE:Landroid/app/mtm/iaware/appmng/AppMngConstant$AppStartSource;

.field public static final enum SYSTEM_BROADCAST:Landroid/app/mtm/iaware/appmng/AppMngConstant$AppStartSource;

.field public static final enum THIRD_ACTIVITY:Landroid/app/mtm/iaware/appmng/AppMngConstant$AppStartSource;

.field public static final enum THIRD_BROADCAST:Landroid/app/mtm/iaware/appmng/AppMngConstant$AppStartSource;


# instance fields
.field private mDesc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 214
    new-instance v0, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppStartSource;

    const-string v1, "START_SERVICE"

    const-string v2, "S"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppStartSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppStartSource;->START_SERVICE:Landroid/app/mtm/iaware/appmng/AppMngConstant$AppStartSource;

    .line 215
    new-instance v0, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppStartSource;

    const-string v1, "BIND_SERVICE"

    const-string v2, "D"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppStartSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppStartSource;->BIND_SERVICE:Landroid/app/mtm/iaware/appmng/AppMngConstant$AppStartSource;

    .line 216
    new-instance v0, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppStartSource;

    const-string v1, "PROVIDER"

    const-string v2, "P"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppStartSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppStartSource;->PROVIDER:Landroid/app/mtm/iaware/appmng/AppMngConstant$AppStartSource;

    .line 217
    new-instance v0, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppStartSource;

    const-string v1, "THIRD_BROADCAST"

    const-string v2, "B"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppStartSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppStartSource;->THIRD_BROADCAST:Landroid/app/mtm/iaware/appmng/AppMngConstant$AppStartSource;

    .line 218
    new-instance v0, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppStartSource;

    const-string v1, "SYSTEM_BROADCAST"

    const-string v2, "b"

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v2}, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppStartSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppStartSource;->SYSTEM_BROADCAST:Landroid/app/mtm/iaware/appmng/AppMngConstant$AppStartSource;

    .line 219
    new-instance v0, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppStartSource;

    const-string v1, "THIRD_ACTIVITY"

    const-string v2, "A"

    const/4 v8, 0x5

    invoke-direct {v0, v1, v8, v2}, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppStartSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppStartSource;->THIRD_ACTIVITY:Landroid/app/mtm/iaware/appmng/AppMngConstant$AppStartSource;

    .line 220
    new-instance v0, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppStartSource;

    const-string v1, "JOB_SCHEDULE"

    const-string v2, "J"

    const/4 v9, 0x6

    invoke-direct {v0, v1, v9, v2}, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppStartSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppStartSource;->JOB_SCHEDULE:Landroid/app/mtm/iaware/appmng/AppMngConstant$AppStartSource;

    .line 221
    new-instance v0, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppStartSource;

    const-string v1, "ACCOUNT_SYNC"

    const-string v2, "Y"

    const/4 v10, 0x7

    invoke-direct {v0, v1, v10, v2}, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppStartSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppStartSource;->ACCOUNT_SYNC:Landroid/app/mtm/iaware/appmng/AppMngConstant$AppStartSource;

    .line 222
    new-instance v0, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppStartSource;

    const-string v1, "SCHEDULE_RESTART"

    const-string v2, "R"

    const/16 v11, 0x8

    invoke-direct {v0, v1, v11, v2}, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppStartSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppStartSource;->SCHEDULE_RESTART:Landroid/app/mtm/iaware/appmng/AppMngConstant$AppStartSource;

    .line 223
    new-instance v0, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppStartSource;

    const-string v1, "ALARM"

    const-string v2, "M"

    const/16 v12, 0x9

    invoke-direct {v0, v1, v12, v2}, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppStartSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppStartSource;->ALARM:Landroid/app/mtm/iaware/appmng/AppMngConstant$AppStartSource;

    .line 213
    const/16 v0, 0xa

    new-array v0, v0, [Landroid/app/mtm/iaware/appmng/AppMngConstant$AppStartSource;

    sget-object v1, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppStartSource;->START_SERVICE:Landroid/app/mtm/iaware/appmng/AppMngConstant$AppStartSource;

    aput-object v1, v0, v3

    sget-object v1, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppStartSource;->BIND_SERVICE:Landroid/app/mtm/iaware/appmng/AppMngConstant$AppStartSource;

    aput-object v1, v0, v4

    sget-object v1, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppStartSource;->PROVIDER:Landroid/app/mtm/iaware/appmng/AppMngConstant$AppStartSource;

    aput-object v1, v0, v5

    sget-object v1, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppStartSource;->THIRD_BROADCAST:Landroid/app/mtm/iaware/appmng/AppMngConstant$AppStartSource;

    aput-object v1, v0, v6

    sget-object v1, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppStartSource;->SYSTEM_BROADCAST:Landroid/app/mtm/iaware/appmng/AppMngConstant$AppStartSource;

    aput-object v1, v0, v7

    sget-object v1, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppStartSource;->THIRD_ACTIVITY:Landroid/app/mtm/iaware/appmng/AppMngConstant$AppStartSource;

    aput-object v1, v0, v8

    sget-object v1, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppStartSource;->JOB_SCHEDULE:Landroid/app/mtm/iaware/appmng/AppMngConstant$AppStartSource;

    aput-object v1, v0, v9

    sget-object v1, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppStartSource;->ACCOUNT_SYNC:Landroid/app/mtm/iaware/appmng/AppMngConstant$AppStartSource;

    aput-object v1, v0, v10

    sget-object v1, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppStartSource;->SCHEDULE_RESTART:Landroid/app/mtm/iaware/appmng/AppMngConstant$AppStartSource;

    aput-object v1, v0, v11

    sget-object v1, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppStartSource;->ALARM:Landroid/app/mtm/iaware/appmng/AppMngConstant$AppStartSource;

    aput-object v1, v0, v12

    sput-object v0, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppStartSource;->$VALUES:[Landroid/app/mtm/iaware/appmng/AppMngConstant$AppStartSource;

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

    .line 225
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 226
    iput-object p3, p0, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppStartSource;->mDesc:Ljava/lang/String;

    .line 227
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Landroid/app/mtm/iaware/appmng/AppMngConstant$EnumWithDesc;
    .locals 2
    .param p0, "desc"    # Ljava/lang/String;

    .line 232
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    const-string v1, "all"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "allbroad"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 236
    :cond_0
    :try_start_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppStartSource;->valueOf(Ljava/lang/String;)Landroid/app/mtm/iaware/appmng/AppMngConstant$AppStartSource;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 237
    :catch_0
    move-exception v1

    .line 238
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    return-object v0

    .line 233
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :cond_1
    :goto_0
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/app/mtm/iaware/appmng/AppMngConstant$AppStartSource;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 213
    const-class v0, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppStartSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppStartSource;

    return-object v0
.end method

.method public static values()[Landroid/app/mtm/iaware/appmng/AppMngConstant$AppStartSource;
    .locals 1

    .line 213
    sget-object v0, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppStartSource;->$VALUES:[Landroid/app/mtm/iaware/appmng/AppMngConstant$AppStartSource;

    invoke-virtual {v0}, [Landroid/app/mtm/iaware/appmng/AppMngConstant$AppStartSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/app/mtm/iaware/appmng/AppMngConstant$AppStartSource;

    return-object v0
.end method


# virtual methods
.method public getDesc()Ljava/lang/String;
    .locals 1

    .line 229
    iget-object v0, p0, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppStartSource;->mDesc:Ljava/lang/String;

    return-object v0
.end method
