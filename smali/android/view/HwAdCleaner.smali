.class public Landroid/view/HwAdCleaner;
.super Ljava/lang/Object;
.source "HwAdCleaner.java"

# interfaces
.implements Landroid/view/IHwAdCleaner;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final CODE_GET_AD_KEY_LIST:I = 0x3f8

.field private static final DESCRIPTOR_HW_AD_CLEANER:Ljava/lang/String; = "android.view.HwAdCleaner"

.field private static final TAG:Ljava/lang/String; = "HwAdCleaner"

.field private static final VIEW_IS_ADVIEW:I = 0x0

.field private static final VIEW_IS_NOT_ADVIEW_OR_DISABLE:I = 0x1

.field private static final VIEW_IS_NOT_CHECKED:I = -0x1

.field private static mInstance:Landroid/view/HwAdCleaner;


# instance fields
.field private mAdIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAdViewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mApkName:Ljava/lang/String;

.field private mEnableAdChecked:Z

.field private mEnableDebug:Z

.field private mInit:Z

.field private mRulesHasRead:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    const/4 v0, 0x0

    sput-object v0, Landroid/view/HwAdCleaner;->mInstance:Landroid/view/HwAdCleaner;

    return-void
.end method

.method private constructor <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/HwAdCleaner;->mAdViewList:Ljava/util/List;

    .line 48
    iput-object v0, p0, Landroid/view/HwAdCleaner;->mAdIdList:Ljava/util/List;

    .line 49
    const-string v0, "none"

    iput-object v0, p0, Landroid/view/HwAdCleaner;->mApkName:Ljava/lang/String;

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/HwAdCleaner;->mEnableAdChecked:Z

    .line 51
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/HwAdCleaner;->mEnableDebug:Z

    .line 52
    iput-boolean v1, p0, Landroid/view/HwAdCleaner;->mRulesHasRead:Z

    .line 53
    iput-boolean v0, p0, Landroid/view/HwAdCleaner;->mInit:Z

    .line 68
    return-void
.end method

.method public static declared-synchronized getDefault()Landroid/view/HwAdCleaner;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Landroid/view/HwAdCleaner;

    monitor-enter v0

    .line 76
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0
.end method

.method private isViewMatched(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "viewClsName"    # Ljava/lang/String;
    .param p2, "viewIdName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 223
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public checkAdCleaner(Landroid/view/View;Ljava/lang/String;I)I
    .locals 1
    .param p1, "inView"    # Landroid/view/View;
    .param p2, "appName"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 195
    const/4 v0, -0x1

    return v0
.end method

.method public doReadRulesByBinder()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method public readRulesInThread()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 91
    return-void
.end method
