.class public final enum Landroid/app/mtm/iaware/appmng/AppMngConstant$AppFreezeSource;
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
    name = "AppFreezeSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/app/mtm/iaware/appmng/AppMngConstant$AppFreezeSource;",
        ">;",
        "Landroid/app/mtm/iaware/appmng/AppMngConstant$EnumWithDesc;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/app/mtm/iaware/appmng/AppMngConstant$AppFreezeSource;

.field public static final enum CAMERA_FREEZE:Landroid/app/mtm/iaware/appmng/AppMngConstant$AppFreezeSource;

.field public static final enum FAST_FREEZE:Landroid/app/mtm/iaware/appmng/AppMngConstant$AppFreezeSource;


# instance fields
.field private mDesc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 142
    new-instance v0, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppFreezeSource;

    const-string v1, "FAST_FREEZE"

    const-string v2, "fast_freeze"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppFreezeSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppFreezeSource;->FAST_FREEZE:Landroid/app/mtm/iaware/appmng/AppMngConstant$AppFreezeSource;

    .line 143
    new-instance v0, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppFreezeSource;

    const-string v1, "CAMERA_FREEZE"

    const-string v2, "camera_freeze"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppFreezeSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppFreezeSource;->CAMERA_FREEZE:Landroid/app/mtm/iaware/appmng/AppMngConstant$AppFreezeSource;

    .line 141
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/app/mtm/iaware/appmng/AppMngConstant$AppFreezeSource;

    sget-object v1, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppFreezeSource;->FAST_FREEZE:Landroid/app/mtm/iaware/appmng/AppMngConstant$AppFreezeSource;

    aput-object v1, v0, v3

    sget-object v1, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppFreezeSource;->CAMERA_FREEZE:Landroid/app/mtm/iaware/appmng/AppMngConstant$AppFreezeSource;

    aput-object v1, v0, v4

    sput-object v0, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppFreezeSource;->$VALUES:[Landroid/app/mtm/iaware/appmng/AppMngConstant$AppFreezeSource;

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

    .line 145
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 146
    iput-object p3, p0, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppFreezeSource;->mDesc:Ljava/lang/String;

    .line 147
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Landroid/app/mtm/iaware/appmng/AppMngConstant$EnumWithDesc;
    .locals 2
    .param p0, "desc"    # Ljava/lang/String;

    .line 152
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 153
    return-object v0

    .line 156
    :cond_0
    :try_start_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppFreezeSource;->valueOf(Ljava/lang/String;)Landroid/app/mtm/iaware/appmng/AppMngConstant$AppFreezeSource;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 157
    :catch_0
    move-exception v1

    .line 158
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/app/mtm/iaware/appmng/AppMngConstant$AppFreezeSource;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 141
    const-class v0, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppFreezeSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppFreezeSource;

    return-object v0
.end method

.method public static values()[Landroid/app/mtm/iaware/appmng/AppMngConstant$AppFreezeSource;
    .locals 1

    .line 141
    sget-object v0, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppFreezeSource;->$VALUES:[Landroid/app/mtm/iaware/appmng/AppMngConstant$AppFreezeSource;

    invoke-virtual {v0}, [Landroid/app/mtm/iaware/appmng/AppMngConstant$AppFreezeSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/app/mtm/iaware/appmng/AppMngConstant$AppFreezeSource;

    return-object v0
.end method


# virtual methods
.method public getDesc()Ljava/lang/String;
    .locals 1

    .line 149
    iget-object v0, p0, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppFreezeSource;->mDesc:Ljava/lang/String;

    return-object v0
.end method
