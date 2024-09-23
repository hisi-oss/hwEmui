.class public final enum Landroid/app/mtm/iaware/appmng/AppMngConstant$AppIoLimitSource;
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
    name = "AppIoLimitSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/app/mtm/iaware/appmng/AppMngConstant$AppIoLimitSource;",
        ">;",
        "Landroid/app/mtm/iaware/appmng/AppMngConstant$EnumWithDesc;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/app/mtm/iaware/appmng/AppMngConstant$AppIoLimitSource;

.field public static final enum CAMERA_IOLIMIT:Landroid/app/mtm/iaware/appmng/AppMngConstant$AppIoLimitSource;

.field public static final enum IOLIMIT:Landroid/app/mtm/iaware/appmng/AppMngConstant$AppIoLimitSource;


# instance fields
.field private mDesc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 166
    new-instance v0, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppIoLimitSource;

    const-string v1, "IOLIMIT"

    const-string v2, "iolimit"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppIoLimitSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppIoLimitSource;->IOLIMIT:Landroid/app/mtm/iaware/appmng/AppMngConstant$AppIoLimitSource;

    .line 167
    new-instance v0, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppIoLimitSource;

    const-string v1, "CAMERA_IOLIMIT"

    const-string v2, "camera_iolimit"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppIoLimitSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppIoLimitSource;->CAMERA_IOLIMIT:Landroid/app/mtm/iaware/appmng/AppMngConstant$AppIoLimitSource;

    .line 165
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/app/mtm/iaware/appmng/AppMngConstant$AppIoLimitSource;

    sget-object v1, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppIoLimitSource;->IOLIMIT:Landroid/app/mtm/iaware/appmng/AppMngConstant$AppIoLimitSource;

    aput-object v1, v0, v3

    sget-object v1, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppIoLimitSource;->CAMERA_IOLIMIT:Landroid/app/mtm/iaware/appmng/AppMngConstant$AppIoLimitSource;

    aput-object v1, v0, v4

    sput-object v0, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppIoLimitSource;->$VALUES:[Landroid/app/mtm/iaware/appmng/AppMngConstant$AppIoLimitSource;

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

    .line 169
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 170
    iput-object p3, p0, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppIoLimitSource;->mDesc:Ljava/lang/String;

    .line 171
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Landroid/app/mtm/iaware/appmng/AppMngConstant$EnumWithDesc;
    .locals 2
    .param p0, "desc"    # Ljava/lang/String;

    .line 176
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 177
    return-object v0

    .line 180
    :cond_0
    :try_start_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppIoLimitSource;->valueOf(Ljava/lang/String;)Landroid/app/mtm/iaware/appmng/AppMngConstant$AppIoLimitSource;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 181
    :catch_0
    move-exception v1

    .line 182
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/app/mtm/iaware/appmng/AppMngConstant$AppIoLimitSource;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 165
    const-class v0, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppIoLimitSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppIoLimitSource;

    return-object v0
.end method

.method public static values()[Landroid/app/mtm/iaware/appmng/AppMngConstant$AppIoLimitSource;
    .locals 1

    .line 165
    sget-object v0, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppIoLimitSource;->$VALUES:[Landroid/app/mtm/iaware/appmng/AppMngConstant$AppIoLimitSource;

    invoke-virtual {v0}, [Landroid/app/mtm/iaware/appmng/AppMngConstant$AppIoLimitSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/app/mtm/iaware/appmng/AppMngConstant$AppIoLimitSource;

    return-object v0
.end method


# virtual methods
.method public getDesc()Ljava/lang/String;
    .locals 1

    .line 173
    iget-object v0, p0, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppIoLimitSource;->mDesc:Ljava/lang/String;

    return-object v0
.end method
