.class public final enum Landroid/app/mtm/iaware/appmng/AppMngConstant$BroadcastSource;
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
    name = "BroadcastSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/app/mtm/iaware/appmng/AppMngConstant$BroadcastSource;",
        ">;",
        "Landroid/app/mtm/iaware/appmng/AppMngConstant$EnumWithDesc;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/app/mtm/iaware/appmng/AppMngConstant$BroadcastSource;

.field public static final enum BROADCAST_FILTER:Landroid/app/mtm/iaware/appmng/AppMngConstant$BroadcastSource;


# instance fields
.field private mDesc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 262
    new-instance v0, Landroid/app/mtm/iaware/appmng/AppMngConstant$BroadcastSource;

    const-string v1, "BROADCAST_FILTER"

    const-string v2, "broadcast_filter"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Landroid/app/mtm/iaware/appmng/AppMngConstant$BroadcastSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/app/mtm/iaware/appmng/AppMngConstant$BroadcastSource;->BROADCAST_FILTER:Landroid/app/mtm/iaware/appmng/AppMngConstant$BroadcastSource;

    .line 261
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/app/mtm/iaware/appmng/AppMngConstant$BroadcastSource;

    sget-object v1, Landroid/app/mtm/iaware/appmng/AppMngConstant$BroadcastSource;->BROADCAST_FILTER:Landroid/app/mtm/iaware/appmng/AppMngConstant$BroadcastSource;

    aput-object v1, v0, v3

    sput-object v0, Landroid/app/mtm/iaware/appmng/AppMngConstant$BroadcastSource;->$VALUES:[Landroid/app/mtm/iaware/appmng/AppMngConstant$BroadcastSource;

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

    .line 264
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 265
    iput-object p3, p0, Landroid/app/mtm/iaware/appmng/AppMngConstant$BroadcastSource;->mDesc:Ljava/lang/String;

    .line 266
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Landroid/app/mtm/iaware/appmng/AppMngConstant$EnumWithDesc;
    .locals 2
    .param p0, "desc"    # Ljava/lang/String;

    .line 271
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 272
    return-object v0

    .line 275
    :cond_0
    :try_start_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/app/mtm/iaware/appmng/AppMngConstant$BroadcastSource;->valueOf(Ljava/lang/String;)Landroid/app/mtm/iaware/appmng/AppMngConstant$BroadcastSource;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 276
    :catch_0
    move-exception v1

    .line 277
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/app/mtm/iaware/appmng/AppMngConstant$BroadcastSource;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 261
    const-class v0, Landroid/app/mtm/iaware/appmng/AppMngConstant$BroadcastSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/app/mtm/iaware/appmng/AppMngConstant$BroadcastSource;

    return-object v0
.end method

.method public static values()[Landroid/app/mtm/iaware/appmng/AppMngConstant$BroadcastSource;
    .locals 1

    .line 261
    sget-object v0, Landroid/app/mtm/iaware/appmng/AppMngConstant$BroadcastSource;->$VALUES:[Landroid/app/mtm/iaware/appmng/AppMngConstant$BroadcastSource;

    invoke-virtual {v0}, [Landroid/app/mtm/iaware/appmng/AppMngConstant$BroadcastSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/app/mtm/iaware/appmng/AppMngConstant$BroadcastSource;

    return-object v0
.end method


# virtual methods
.method public getDesc()Ljava/lang/String;
    .locals 1

    .line 268
    iget-object v0, p0, Landroid/app/mtm/iaware/appmng/AppMngConstant$BroadcastSource;->mDesc:Ljava/lang/String;

    return-object v0
.end method
