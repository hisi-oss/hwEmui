.class Landroid/vrsystem/VRSystemServiceManager$Instance;
.super Ljava/lang/Object;
.source "VRSystemServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/vrsystem/VRSystemServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Instance"
.end annotation


# static fields
.field private static sInstance:Landroid/vrsystem/VRSystemServiceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 77
    new-instance v0, Landroid/vrsystem/VRSystemServiceManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/vrsystem/VRSystemServiceManager;-><init>(Landroid/vrsystem/VRSystemServiceManager$1;)V

    sput-object v0, Landroid/vrsystem/VRSystemServiceManager$Instance;->sInstance:Landroid/vrsystem/VRSystemServiceManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Landroid/vrsystem/VRSystemServiceManager;
    .locals 1

    .line 76
    sget-object v0, Landroid/vrsystem/VRSystemServiceManager$Instance;->sInstance:Landroid/vrsystem/VRSystemServiceManager;

    return-object v0
.end method
