.class public final enum Landroid/app/mtm/iaware/appmng/AppMngConstant$AppStartReason;
.super Ljava/lang/Enum;
.source "AppMngConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/mtm/iaware/appmng/AppMngConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AppStartReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/app/mtm/iaware/appmng/AppMngConstant$AppStartReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/app/mtm/iaware/appmng/AppMngConstant$AppStartReason;

.field public static final enum DEFAULT:Landroid/app/mtm/iaware/appmng/AppMngConstant$AppStartReason;

.field public static final enum LIST:Landroid/app/mtm/iaware/appmng/AppMngConstant$AppStartReason;

.field public static final enum SYSTEM_APP:Landroid/app/mtm/iaware/appmng/AppMngConstant$AppStartReason;


# instance fields
.field private mDesc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 245
    new-instance v0, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppStartReason;

    const-string v1, "DEFAULT"

    const-string v2, "F"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppStartReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppStartReason;->DEFAULT:Landroid/app/mtm/iaware/appmng/AppMngConstant$AppStartReason;

    .line 246
    new-instance v0, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppStartReason;

    const-string v1, "SYSTEM_APP"

    const-string v2, "E"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppStartReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppStartReason;->SYSTEM_APP:Landroid/app/mtm/iaware/appmng/AppMngConstant$AppStartReason;

    .line 247
    new-instance v0, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppStartReason;

    const-string v1, "LIST"

    const-string v2, "L"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppStartReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppStartReason;->LIST:Landroid/app/mtm/iaware/appmng/AppMngConstant$AppStartReason;

    .line 244
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/app/mtm/iaware/appmng/AppMngConstant$AppStartReason;

    sget-object v1, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppStartReason;->DEFAULT:Landroid/app/mtm/iaware/appmng/AppMngConstant$AppStartReason;

    aput-object v1, v0, v3

    sget-object v1, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppStartReason;->SYSTEM_APP:Landroid/app/mtm/iaware/appmng/AppMngConstant$AppStartReason;

    aput-object v1, v0, v4

    sget-object v1, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppStartReason;->LIST:Landroid/app/mtm/iaware/appmng/AppMngConstant$AppStartReason;

    aput-object v1, v0, v5

    sput-object v0, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppStartReason;->$VALUES:[Landroid/app/mtm/iaware/appmng/AppMngConstant$AppStartReason;

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

    .line 249
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 250
    iput-object p3, p0, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppStartReason;->mDesc:Ljava/lang/String;

    .line 251
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/app/mtm/iaware/appmng/AppMngConstant$AppStartReason;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 244
    const-class v0, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppStartReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppStartReason;

    return-object v0
.end method

.method public static values()[Landroid/app/mtm/iaware/appmng/AppMngConstant$AppStartReason;
    .locals 1

    .line 244
    sget-object v0, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppStartReason;->$VALUES:[Landroid/app/mtm/iaware/appmng/AppMngConstant$AppStartReason;

    invoke-virtual {v0}, [Landroid/app/mtm/iaware/appmng/AppMngConstant$AppStartReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/app/mtm/iaware/appmng/AppMngConstant$AppStartReason;

    return-object v0
.end method


# virtual methods
.method public getDesc()Ljava/lang/String;
    .locals 1

    .line 254
    iget-object v0, p0, Landroid/app/mtm/iaware/appmng/AppMngConstant$AppStartReason;->mDesc:Ljava/lang/String;

    return-object v0
.end method
