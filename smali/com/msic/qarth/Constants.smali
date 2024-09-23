.class public Lcom/msic/qarth/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static COMMON_PATCH_PKG_NAME:Ljava/lang/String; = null

.field public static DEBUG:Z = false

.field public static FWK_HOT_PATCH_PATH:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "Constants"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 17
    const-string v0, "qarth.debug"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    nop

    :cond_0
    sput-boolean v1, Lcom/msic/qarth/Constants;->DEBUG:Z

    .line 21
    const-string v0, "COMMON_HOOK"

    sput-object v0, Lcom/msic/qarth/Constants;->COMMON_PATCH_PKG_NAME:Ljava/lang/String;

    .line 26
    const-string v0, "/patch_hw/fwkhotpatch/"

    sput-object v0, Lcom/msic/qarth/Constants;->FWK_HOT_PATCH_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
