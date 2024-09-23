.class public final enum Landroid/util/HiLogFormatter$BigDecimalLayoutForm;
.super Ljava/lang/Enum;
.source "HiLogFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/HiLogFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BigDecimalLayoutForm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/util/HiLogFormatter$BigDecimalLayoutForm;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/util/HiLogFormatter$BigDecimalLayoutForm;

.field public static final enum DECIMAL_FLOAT:Landroid/util/HiLogFormatter$BigDecimalLayoutForm;

.field public static final enum SCIENTIFIC:Landroid/util/HiLogFormatter$BigDecimalLayoutForm;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 2733
    new-instance v0, Landroid/util/HiLogFormatter$BigDecimalLayoutForm;

    const-string v1, "SCIENTIFIC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/util/HiLogFormatter$BigDecimalLayoutForm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/util/HiLogFormatter$BigDecimalLayoutForm;->SCIENTIFIC:Landroid/util/HiLogFormatter$BigDecimalLayoutForm;

    .line 2738
    new-instance v0, Landroid/util/HiLogFormatter$BigDecimalLayoutForm;

    const-string v1, "DECIMAL_FLOAT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Landroid/util/HiLogFormatter$BigDecimalLayoutForm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/util/HiLogFormatter$BigDecimalLayoutForm;->DECIMAL_FLOAT:Landroid/util/HiLogFormatter$BigDecimalLayoutForm;

    .line 2729
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/util/HiLogFormatter$BigDecimalLayoutForm;

    sget-object v1, Landroid/util/HiLogFormatter$BigDecimalLayoutForm;->SCIENTIFIC:Landroid/util/HiLogFormatter$BigDecimalLayoutForm;

    aput-object v1, v0, v2

    sget-object v1, Landroid/util/HiLogFormatter$BigDecimalLayoutForm;->DECIMAL_FLOAT:Landroid/util/HiLogFormatter$BigDecimalLayoutForm;

    aput-object v1, v0, v3

    sput-object v0, Landroid/util/HiLogFormatter$BigDecimalLayoutForm;->$VALUES:[Landroid/util/HiLogFormatter$BigDecimalLayoutForm;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2729
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/util/HiLogFormatter$BigDecimalLayoutForm;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 2729
    const-class v0, Landroid/util/HiLogFormatter$BigDecimalLayoutForm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/util/HiLogFormatter$BigDecimalLayoutForm;

    return-object v0
.end method

.method public static values()[Landroid/util/HiLogFormatter$BigDecimalLayoutForm;
    .locals 1

    .line 2729
    sget-object v0, Landroid/util/HiLogFormatter$BigDecimalLayoutForm;->$VALUES:[Landroid/util/HiLogFormatter$BigDecimalLayoutForm;

    invoke-virtual {v0}, [Landroid/util/HiLogFormatter$BigDecimalLayoutForm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/util/HiLogFormatter$BigDecimalLayoutForm;

    return-object v0
.end method
