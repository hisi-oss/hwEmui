.class public final enum Landroid/app/mtm/iaware/appmng/AppMngConstant$CleanReason;
.super Ljava/lang/Enum;
.source "AppMngConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/mtm/iaware/appmng/AppMngConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CleanReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/app/mtm/iaware/appmng/AppMngConstant$CleanReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/app/mtm/iaware/appmng/AppMngConstant$CleanReason;

.field public static final enum CONFIG_INVALID:Landroid/app/mtm/iaware/appmng/AppMngConstant$CleanReason;

.field public static final enum CTS:Landroid/app/mtm/iaware/appmng/AppMngConstant$CleanReason;

.field public static final enum INVISIBLE:Landroid/app/mtm/iaware/appmng/AppMngConstant$CleanReason;

.field public static final enum LIST:Landroid/app/mtm/iaware/appmng/AppMngConstant$CleanReason;

.field public static final enum MEMORY_ENOUGH:Landroid/app/mtm/iaware/appmng/AppMngConstant$CleanReason;

.field public static final enum MISSING_PROCESS_INFO:Landroid/app/mtm/iaware/appmng/AppMngConstant$CleanReason;

.field public static final enum OUT_OF_SCOPE:Landroid/app/mtm/iaware/appmng/AppMngConstant$CleanReason;

.field public static final enum POLICY_DEGRADE:Landroid/app/mtm/iaware/appmng/AppMngConstant$CleanReason;

.field public static final enum PROCESSLIST:Landroid/app/mtm/iaware/appmng/AppMngConstant$CleanReason;

.field public static final enum TRISTATE:Landroid/app/mtm/iaware/appmng/AppMngConstant$CleanReason;


# instance fields
.field private mAbbr:Ljava/lang/String;

.field private mCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 75
    new-instance v0, Landroid/app/mtm/iaware/appmng/AppMngConstant$CleanReason;

    const-string v1, "LIST"

    const-string v2, "decide by list"

    const-string v3, "list"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Landroid/app/mtm/iaware/appmng/AppMngConstant$CleanReason;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/app/mtm/iaware/appmng/AppMngConstant$CleanReason;->LIST:Landroid/app/mtm/iaware/appmng/AppMngConstant$CleanReason;

    .line 76
    new-instance v0, Landroid/app/mtm/iaware/appmng/AppMngConstant$CleanReason;

    const-string v1, "TRISTATE"

    const-string v2, "decide by tristate"

    const-string v3, "tri"

    const/4 v5, 0x1

    invoke-direct {v0, v1, v5, v2, v3}, Landroid/app/mtm/iaware/appmng/AppMngConstant$CleanReason;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/app/mtm/iaware/appmng/AppMngConstant$CleanReason;->TRISTATE:Landroid/app/mtm/iaware/appmng/AppMngConstant$CleanReason;

    .line 77
    new-instance v0, Landroid/app/mtm/iaware/appmng/AppMngConstant$CleanReason;

    const-string v1, "OUT_OF_SCOPE"

    const-string v2, "out of scope"

    const-string v3, "out"

    const/4 v6, 0x2

    invoke-direct {v0, v1, v6, v2, v3}, Landroid/app/mtm/iaware/appmng/AppMngConstant$CleanReason;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/app/mtm/iaware/appmng/AppMngConstant$CleanReason;->OUT_OF_SCOPE:Landroid/app/mtm/iaware/appmng/AppMngConstant$CleanReason;

    .line 78
    new-instance v0, Landroid/app/mtm/iaware/appmng/AppMngConstant$CleanReason;

    const-string v1, "MISSING_PROCESS_INFO"

    const-string v2, "missing process info"

    const-string v3, "miss"

    const/4 v7, 0x3

    invoke-direct {v0, v1, v7, v2, v3}, Landroid/app/mtm/iaware/appmng/AppMngConstant$CleanReason;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/app/mtm/iaware/appmng/AppMngConstant$CleanReason;->MISSING_PROCESS_INFO:Landroid/app/mtm/iaware/appmng/AppMngConstant$CleanReason;

    .line 79
    new-instance v0, Landroid/app/mtm/iaware/appmng/AppMngConstant$CleanReason;

    const-string v1, "CONFIG_INVALID"

    const-string v2, "without valid config"

    const-string v3, "conf"

    const/4 v8, 0x4

    invoke-direct {v0, v1, v8, v2, v3}, Landroid/app/mtm/iaware/appmng/AppMngConstant$CleanReason;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/app/mtm/iaware/appmng/AppMngConstant$CleanReason;->CONFIG_INVALID:Landroid/app/mtm/iaware/appmng/AppMngConstant$CleanReason;

    .line 80
    new-instance v0, Landroid/app/mtm/iaware/appmng/AppMngConstant$CleanReason;

    const-string v1, "INVISIBLE"

    const-string v2, "never switched to foreground"

    const-string v3, "invi"

    const/4 v9, 0x5

    invoke-direct {v0, v1, v9, v2, v3}, Landroid/app/mtm/iaware/appmng/AppMngConstant$CleanReason;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/app/mtm/iaware/appmng/AppMngConstant$CleanReason;->INVISIBLE:Landroid/app/mtm/iaware/appmng/AppMngConstant$CleanReason;

    .line 81
    new-instance v0, Landroid/app/mtm/iaware/appmng/AppMngConstant$CleanReason;

    const-string v1, "CTS"

    const-string v2, "protected by cts pattern"

    const-string v3, "cts"

    const/4 v10, 0x6

    invoke-direct {v0, v1, v10, v2, v3}, Landroid/app/mtm/iaware/appmng/AppMngConstant$CleanReason;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/app/mtm/iaware/appmng/AppMngConstant$CleanReason;->CTS:Landroid/app/mtm/iaware/appmng/AppMngConstant$CleanReason;

    .line 82
    new-instance v0, Landroid/app/mtm/iaware/appmng/AppMngConstant$CleanReason;

    const-string v1, "MEMORY_ENOUGH"

    const-string v2, "memory enough"

    const-string v3, "mem"

    const/4 v11, 0x7

    invoke-direct {v0, v1, v11, v2, v3}, Landroid/app/mtm/iaware/appmng/AppMngConstant$CleanReason;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/app/mtm/iaware/appmng/AppMngConstant$CleanReason;->MEMORY_ENOUGH:Landroid/app/mtm/iaware/appmng/AppMngConstant$CleanReason;

    .line 83
    new-instance v0, Landroid/app/mtm/iaware/appmng/AppMngConstant$CleanReason;

    const-string v1, "PROCESSLIST"

    const-string v2, "decide by processlist"

    const-string v3, "processlist"

    const/16 v12, 0x8

    invoke-direct {v0, v1, v12, v2, v3}, Landroid/app/mtm/iaware/appmng/AppMngConstant$CleanReason;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/app/mtm/iaware/appmng/AppMngConstant$CleanReason;->PROCESSLIST:Landroid/app/mtm/iaware/appmng/AppMngConstant$CleanReason;

    .line 84
    new-instance v0, Landroid/app/mtm/iaware/appmng/AppMngConstant$CleanReason;

    const-string v1, "POLICY_DEGRADE"

    const-string v2, "policy degrade by processlist"

    const-string v3, "degrade"

    const/16 v13, 0x9

    invoke-direct {v0, v1, v13, v2, v3}, Landroid/app/mtm/iaware/appmng/AppMngConstant$CleanReason;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/app/mtm/iaware/appmng/AppMngConstant$CleanReason;->POLICY_DEGRADE:Landroid/app/mtm/iaware/appmng/AppMngConstant$CleanReason;

    .line 74
    const/16 v0, 0xa

    new-array v0, v0, [Landroid/app/mtm/iaware/appmng/AppMngConstant$CleanReason;

    sget-object v1, Landroid/app/mtm/iaware/appmng/AppMngConstant$CleanReason;->LIST:Landroid/app/mtm/iaware/appmng/AppMngConstant$CleanReason;

    aput-object v1, v0, v4

    sget-object v1, Landroid/app/mtm/iaware/appmng/AppMngConstant$CleanReason;->TRISTATE:Landroid/app/mtm/iaware/appmng/AppMngConstant$CleanReason;

    aput-object v1, v0, v5

    sget-object v1, Landroid/app/mtm/iaware/appmng/AppMngConstant$CleanReason;->OUT_OF_SCOPE:Landroid/app/mtm/iaware/appmng/AppMngConstant$CleanReason;

    aput-object v1, v0, v6

    sget-object v1, Landroid/app/mtm/iaware/appmng/AppMngConstant$CleanReason;->MISSING_PROCESS_INFO:Landroid/app/mtm/iaware/appmng/AppMngConstant$CleanReason;

    aput-object v1, v0, v7

    sget-object v1, Landroid/app/mtm/iaware/appmng/AppMngConstant$CleanReason;->CONFIG_INVALID:Landroid/app/mtm/iaware/appmng/AppMngConstant$CleanReason;

    aput-object v1, v0, v8

    sget-object v1, Landroid/app/mtm/iaware/appmng/AppMngConstant$CleanReason;->INVISIBLE:Landroid/app/mtm/iaware/appmng/AppMngConstant$CleanReason;

    aput-object v1, v0, v9

    sget-object v1, Landroid/app/mtm/iaware/appmng/AppMngConstant$CleanReason;->CTS:Landroid/app/mtm/iaware/appmng/AppMngConstant$CleanReason;

    aput-object v1, v0, v10

    sget-object v1, Landroid/app/mtm/iaware/appmng/AppMngConstant$CleanReason;->MEMORY_ENOUGH:Landroid/app/mtm/iaware/appmng/AppMngConstant$CleanReason;

    aput-object v1, v0, v11

    sget-object v1, Landroid/app/mtm/iaware/appmng/AppMngConstant$CleanReason;->PROCESSLIST:Landroid/app/mtm/iaware/appmng/AppMngConstant$CleanReason;

    aput-object v1, v0, v12

    sget-object v1, Landroid/app/mtm/iaware/appmng/AppMngConstant$CleanReason;->POLICY_DEGRADE:Landroid/app/mtm/iaware/appmng/AppMngConstant$CleanReason;

    aput-object v1, v0, v13

    sput-object v0, Landroid/app/mtm/iaware/appmng/AppMngConstant$CleanReason;->$VALUES:[Landroid/app/mtm/iaware/appmng/AppMngConstant$CleanReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p3, "code"    # Ljava/lang/String;
    .param p4, "abbr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 88
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 89
    iput-object p3, p0, Landroid/app/mtm/iaware/appmng/AppMngConstant$CleanReason;->mCode:Ljava/lang/String;

    .line 90
    iput-object p4, p0, Landroid/app/mtm/iaware/appmng/AppMngConstant$CleanReason;->mAbbr:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/app/mtm/iaware/appmng/AppMngConstant$CleanReason;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 74
    const-class v0, Landroid/app/mtm/iaware/appmng/AppMngConstant$CleanReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/app/mtm/iaware/appmng/AppMngConstant$CleanReason;

    return-object v0
.end method

.method public static values()[Landroid/app/mtm/iaware/appmng/AppMngConstant$CleanReason;
    .locals 1

    .line 74
    sget-object v0, Landroid/app/mtm/iaware/appmng/AppMngConstant$CleanReason;->$VALUES:[Landroid/app/mtm/iaware/appmng/AppMngConstant$CleanReason;

    invoke-virtual {v0}, [Landroid/app/mtm/iaware/appmng/AppMngConstant$CleanReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/app/mtm/iaware/appmng/AppMngConstant$CleanReason;

    return-object v0
.end method


# virtual methods
.method public getAbbr()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Landroid/app/mtm/iaware/appmng/AppMngConstant$CleanReason;->mAbbr:Ljava/lang/String;

    return-object v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Landroid/app/mtm/iaware/appmng/AppMngConstant$CleanReason;->mCode:Ljava/lang/String;

    return-object v0
.end method
