.class public final enum Landroid/app/mtm/iaware/appmng/AppMngConstant$AppMngFeature;
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
    name = "AppMngFeature"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/app/mtm/iaware/appmng/AppMngConstant$AppMngFeature;",
        ">;",
        "Landroid/app/mtm/iaware/appmng/AppMngConstant$EnumWithDesc;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/app/mtm/iaware/appmng/AppMngConstant$AppMngFeature;

.field public static final enum APP_ALARM:Landroid/app/mtm/iaware/appmng/AppMngConstant$AppMngFeature;

.field public static final enum APP_CLEAN:Landroid/app/mtm/iaware/appmng/AppMngConstant$AppMngFeature;

.field public static final enum APP_CPULIMIT:Landroid/app/mtm/iaware/appmng/AppMngConstant$AppMngFeature;

.field public static final enum APP_FREEZE:Landroid/app/mtm/iaware/appmng/AppMngConstant$AppMngFeature;

.field public static final enum APP_IOLIMIT:Landroid/app/mtm/iaware/appmng/AppMngConstant$AppMngFeature;

.field public static final enum APP_START:Landroid/app/mtm/iaware/appmng/AppMngConstant$AppMngFeature;

.field public static final enum BROADCAST:Landroid/app/mtm/iaware/appmng/AppMngConstant$AppMngFeature;

.field public static final enum COMMON:Landroid/app/mtm/iaware/appmng/AppMngConstant$AppMngFeature;


# instance fields
.field private mDesc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 31
    new-instance v0, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppMngFeature;

    const-string v1, "APP_START"

    const-string v2, "app_start"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppMngFeature;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppMngFeature;->APP_START:Landroid/app/mtm/iaware/appmng/AppMngConstant$AppMngFeature;

    .line 32
    new-instance v0, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppMngFeature;

    const-string v1, "APP_CLEAN"

    const-string v2, "app_clean"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppMngFeature;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppMngFeature;->APP_CLEAN:Landroid/app/mtm/iaware/appmng/AppMngConstant$AppMngFeature;

    .line 33
    new-instance v0, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppMngFeature;

    const-string v1, "APP_IOLIMIT"

    const-string v2, "app_iolimit"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppMngFeature;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppMngFeature;->APP_IOLIMIT:Landroid/app/mtm/iaware/appmng/AppMngConstant$AppMngFeature;

    .line 34
    new-instance v0, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppMngFeature;

    const-string v1, "APP_FREEZE"

    const-string v2, "app_freeze"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppMngFeature;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppMngFeature;->APP_FREEZE:Landroid/app/mtm/iaware/appmng/AppMngConstant$AppMngFeature;

    .line 35
    new-instance v0, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppMngFeature;

    const-string v1, "APP_ALARM"

    const-string v2, "app_alarm"

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v2}, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppMngFeature;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppMngFeature;->APP_ALARM:Landroid/app/mtm/iaware/appmng/AppMngConstant$AppMngFeature;

    .line 36
    new-instance v0, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppMngFeature;

    const-string v1, "BROADCAST"

    const-string v2, "broadcast"

    const/4 v8, 0x5

    invoke-direct {v0, v1, v8, v2}, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppMngFeature;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppMngFeature;->BROADCAST:Landroid/app/mtm/iaware/appmng/AppMngConstant$AppMngFeature;

    .line 37
    new-instance v0, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppMngFeature;

    const-string v1, "APP_CPULIMIT"

    const-string v2, "app_cpulimit"

    const/4 v9, 0x6

    invoke-direct {v0, v1, v9, v2}, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppMngFeature;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppMngFeature;->APP_CPULIMIT:Landroid/app/mtm/iaware/appmng/AppMngConstant$AppMngFeature;

    .line 38
    new-instance v0, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppMngFeature;

    const-string v1, "COMMON"

    const-string v2, "common"

    const/4 v10, 0x7

    invoke-direct {v0, v1, v10, v2}, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppMngFeature;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppMngFeature;->COMMON:Landroid/app/mtm/iaware/appmng/AppMngConstant$AppMngFeature;

    .line 30
    const/16 v0, 0x8

    new-array v0, v0, [Landroid/app/mtm/iaware/appmng/AppMngConstant$AppMngFeature;

    sget-object v1, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppMngFeature;->APP_START:Landroid/app/mtm/iaware/appmng/AppMngConstant$AppMngFeature;

    aput-object v1, v0, v3

    sget-object v1, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppMngFeature;->APP_CLEAN:Landroid/app/mtm/iaware/appmng/AppMngConstant$AppMngFeature;

    aput-object v1, v0, v4

    sget-object v1, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppMngFeature;->APP_IOLIMIT:Landroid/app/mtm/iaware/appmng/AppMngConstant$AppMngFeature;

    aput-object v1, v0, v5

    sget-object v1, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppMngFeature;->APP_FREEZE:Landroid/app/mtm/iaware/appmng/AppMngConstant$AppMngFeature;

    aput-object v1, v0, v6

    sget-object v1, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppMngFeature;->APP_ALARM:Landroid/app/mtm/iaware/appmng/AppMngConstant$AppMngFeature;

    aput-object v1, v0, v7

    sget-object v1, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppMngFeature;->BROADCAST:Landroid/app/mtm/iaware/appmng/AppMngConstant$AppMngFeature;

    aput-object v1, v0, v8

    sget-object v1, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppMngFeature;->APP_CPULIMIT:Landroid/app/mtm/iaware/appmng/AppMngConstant$AppMngFeature;

    aput-object v1, v0, v9

    sget-object v1, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppMngFeature;->COMMON:Landroid/app/mtm/iaware/appmng/AppMngConstant$AppMngFeature;

    aput-object v1, v0, v10

    sput-object v0, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppMngFeature;->$VALUES:[Landroid/app/mtm/iaware/appmng/AppMngConstant$AppMngFeature;

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

    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 41
    iput-object p3, p0, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppMngFeature;->mDesc:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Landroid/app/mtm/iaware/appmng/AppMngConstant$EnumWithDesc;
    .locals 2
    .param p0, "desc"    # Ljava/lang/String;

    .line 48
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 49
    return-object v0

    .line 52
    :cond_0
    :try_start_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppMngFeature;->valueOf(Ljava/lang/String;)Landroid/app/mtm/iaware/appmng/AppMngConstant$AppMngFeature;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 53
    :catch_0
    move-exception v1

    .line 54
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/app/mtm/iaware/appmng/AppMngConstant$AppMngFeature;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 30
    const-class v0, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppMngFeature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppMngFeature;

    return-object v0
.end method

.method public static values()[Landroid/app/mtm/iaware/appmng/AppMngConstant$AppMngFeature;
    .locals 1

    .line 30
    sget-object v0, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppMngFeature;->$VALUES:[Landroid/app/mtm/iaware/appmng/AppMngConstant$AppMngFeature;

    invoke-virtual {v0}, [Landroid/app/mtm/iaware/appmng/AppMngConstant$AppMngFeature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/app/mtm/iaware/appmng/AppMngConstant$AppMngFeature;

    return-object v0
.end method


# virtual methods
.method public getDesc()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppMngFeature;->mDesc:Ljava/lang/String;

    return-object v0
.end method
