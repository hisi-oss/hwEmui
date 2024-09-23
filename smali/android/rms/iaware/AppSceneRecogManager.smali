.class public Landroid/rms/iaware/AppSceneRecogManager;
.super Ljava/lang/Object;
.source "AppSceneRecogManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/rms/iaware/AppSceneRecogManager$RecogUtils;,
        Landroid/rms/iaware/AppSceneRecogManager$BaseClass;,
        Landroid/rms/iaware/AppSceneRecogManager$FragmentInfo;,
        Landroid/rms/iaware/AppSceneRecogManager$LayoutInfo;,
        Landroid/rms/iaware/AppSceneRecogManager$AppSceneInfo;,
        Landroid/rms/iaware/AppSceneRecogManager$AppSceneRecogSDKCallback;,
        Landroid/rms/iaware/AppSceneRecogManager$ThirdAppHandler;
    }
.end annotation


# static fields
.field private static final ACTIVITY_CLASS_STR:Ljava/lang/String; = "android.app.Activity"

.field private static final ACTIVITY_DEPTH_NUM:I = 0xa

.field private static final ACTIVITY_STATE_RESUMED:Ljava/lang/Integer;

.field private static final ACTIVITY_STATE_STOPPED:Ljava/lang/Integer;

.field private static final CHILDFRAGMENTMANAGER_FIELD_STR:Ljava/lang/String; = "mChildFragmentManager"

.field private static final CHOREOGRAPHER_POST_DELAY:J = 0xa0L

.field private static final CONFIG_SWITCH:Z

.field private static final CONTAINER_FIELD_STR:Ljava/lang/String; = "mContainer"

.field private static final DO_INIT_CLASS:I = 0x1

.field private static final FRAGMENTACTIVITY_CLASS_STR:Ljava/lang/String; = "android.support.v4.app.FragmentActivity"

.field private static final FRAGMENT_ACTIVITY_FRAMEWORK:I = 0x3

.field private static final FRAGMENT_ACTIVITY_NOT:I = 0x1

.field private static final FRAGMENT_ACTIVITY_V4:I = 0x2

.field private static final FRAGMENT_CLASS_STR:Ljava/lang/String; = "android.support.v4.app.Fragment"

.field private static final FRAGMENT_DEPTH_NUM:I = 0x4

.field private static final GETFRAGMENTS_METHOD_STR:Ljava/lang/String; = "getFragments"

.field private static final GETSUPPORTFRAGMENTMANAGER_METHOD_STR:Ljava/lang/String; = "getSupportFragmentManager"

.field private static final INIT_TAG:Ljava/lang/String; = "initflag"

.field private static final INSTANCE:Landroid/rms/iaware/AppSceneRecogManager;

.field private static final ISVISIBLE_METHOD_STR:Ljava/lang/String; = "isVisible"

.field private static final JSON_CLASSNAME_STR:Ljava/lang/String; = "className"

.field private static final JSON_FRAGMENT_STR:Ljava/lang/String; = "fragments"

.field private static final JSON_TAG_STR:Ljava/lang/String; = "tag"

.field private static final LIST_TAG_STR:Ljava/lang/String; = "list"

.field private static final LOG_SWITCH:Z

.field private static final MENUVISIBLE_FIELD_STR:Ljava/lang/String; = "mMenuVisible"

.field private static final MSG_CM_CLASS_INIT:I = 0x1

.field private static final MSG_PAUSE_ACTIVITY:I = 0x2

.field private static final MSG_RESUME_ACTIVITY:I = 0x3

.field private static final MSG_SCENARIO_RECOGNITION:I = 0x5

.field private static final MSG_WINDOW_FOCUS:I = 0x4

.field private static final RESUME_POST_DELAY:J = 0x1f4L

.field private static final SCENE_UNKNOWN:Ljava/lang/String; = "unknown"

.field private static final SCENE_VEDIO:Ljava/lang/String; = "20202"

.field private static final STATE_DISABLE:I = 0x2

.field private static final STATE_ENABLE:I = 0x1

.field private static final STATE_UNINITIALIZED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AppSceneRecogManager"

.field private static final TAG_FIELD_STR:Ljava/lang/String; = "mTag"

.field private static final VIEW_FIELD_STR:Ljava/lang/String; = "mView"


# instance fields
.field private volatile mActivity:Landroid/app/Activity;

.field private final mActivityFragmentTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mActivityStateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/app/Activity;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mAppSceneInfos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/rms/iaware/AppSceneRecogManager$AppSceneInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mChildFragmentManagerField:Ljava/lang/reflect/Field;

.field private mChildFragmentManagerField2:Ljava/lang/reflect/Field;

.field private mClassLoader:Ljava/lang/ClassLoader;

.field private mContainerField:Ljava/lang/reflect/Field;

.field private mContainerField2:Ljava/lang/reflect/Field;

.field private mEnable:Ljava/util/concurrent/atomic/AtomicInteger;

.field private volatile mFragmentActivityClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private mFragmentClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private mGetFragmentsMethod:Ljava/lang/reflect/Method;

.field private mGetSupportFragmentManagerMethod:Ljava/lang/reflect/Method;

.field private volatile mHandler:Landroid/rms/iaware/AppSceneRecogManager$ThirdAppHandler;

.field private mIsVisibleMethod:Ljava/lang/reflect/Method;

.field private mLastSceneId:Ljava/lang/String;

.field private mMenuVisibleField:Ljava/lang/reflect/Field;

.field private mMenuVisibleField2:Ljava/lang/reflect/Field;

.field private mPkgName:Ljava/lang/String;

.field private mSysStatus:Ljava/lang/String;

.field private mTagField:Ljava/lang/reflect/Field;

.field private mViewField:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 69
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Landroid/rms/iaware/AppSceneRecogManager;->ACTIVITY_STATE_RESUMED:Ljava/lang/Integer;

    .line 70
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Landroid/rms/iaware/AppSceneRecogManager;->ACTIVITY_STATE_STOPPED:Ljava/lang/Integer;

    .line 96
    const-string v0, "persist.sys.iaware.appscenerecog.switch"

    .line 97
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/rms/iaware/AppSceneRecogManager;->CONFIG_SWITCH:Z

    .line 99
    const-string v0, "persist.sys.iaware.appscenerecog.log.switch"

    .line 100
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/rms/iaware/AppSceneRecogManager;->LOG_SWITCH:Z

    .line 102
    new-instance v0, Landroid/rms/iaware/AppSceneRecogManager;

    invoke-direct {v0}, Landroid/rms/iaware/AppSceneRecogManager;-><init>()V

    sput-object v0, Landroid/rms/iaware/AppSceneRecogManager;->INSTANCE:Landroid/rms/iaware/AppSceneRecogManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/rms/iaware/AppSceneRecogManager;->mHandler:Landroid/rms/iaware/AppSceneRecogManager$ThirdAppHandler;

    .line 106
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Landroid/rms/iaware/AppSceneRecogManager;->mEnable:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 108
    iput-object v0, p0, Landroid/rms/iaware/AppSceneRecogManager;->mActivity:Landroid/app/Activity;

    .line 111
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Landroid/rms/iaware/AppSceneRecogManager;->mActivityFragmentTypeMap:Ljava/util/Map;

    .line 113
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v1, p0, Landroid/rms/iaware/AppSceneRecogManager;->mActivityStateMap:Ljava/util/Map;

    .line 115
    iput-object v0, p0, Landroid/rms/iaware/AppSceneRecogManager;->mFragmentActivityClass:Ljava/lang/Class;

    .line 116
    iput-object v0, p0, Landroid/rms/iaware/AppSceneRecogManager;->mGetSupportFragmentManagerMethod:Ljava/lang/reflect/Method;

    .line 117
    iput-object v0, p0, Landroid/rms/iaware/AppSceneRecogManager;->mGetFragmentsMethod:Ljava/lang/reflect/Method;

    .line 119
    iput-object v0, p0, Landroid/rms/iaware/AppSceneRecogManager;->mFragmentClass:Ljava/lang/Class;

    .line 120
    iput-object v0, p0, Landroid/rms/iaware/AppSceneRecogManager;->mMenuVisibleField:Ljava/lang/reflect/Field;

    .line 121
    iput-object v0, p0, Landroid/rms/iaware/AppSceneRecogManager;->mTagField:Ljava/lang/reflect/Field;

    .line 122
    iput-object v0, p0, Landroid/rms/iaware/AppSceneRecogManager;->mViewField:Ljava/lang/reflect/Field;

    .line 123
    iput-object v0, p0, Landroid/rms/iaware/AppSceneRecogManager;->mContainerField:Ljava/lang/reflect/Field;

    .line 124
    iput-object v0, p0, Landroid/rms/iaware/AppSceneRecogManager;->mChildFragmentManagerField:Ljava/lang/reflect/Field;

    .line 125
    iput-object v0, p0, Landroid/rms/iaware/AppSceneRecogManager;->mIsVisibleMethod:Ljava/lang/reflect/Method;

    .line 127
    iput-object v0, p0, Landroid/rms/iaware/AppSceneRecogManager;->mMenuVisibleField2:Ljava/lang/reflect/Field;

    .line 128
    iput-object v0, p0, Landroid/rms/iaware/AppSceneRecogManager;->mContainerField2:Ljava/lang/reflect/Field;

    .line 129
    iput-object v0, p0, Landroid/rms/iaware/AppSceneRecogManager;->mChildFragmentManagerField2:Ljava/lang/reflect/Field;

    .line 131
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Landroid/rms/iaware/AppSceneRecogManager;->mAppSceneInfos:Ljava/util/Map;

    .line 133
    const-string v1, "unknown"

    iput-object v1, p0, Landroid/rms/iaware/AppSceneRecogManager;->mLastSceneId:Ljava/lang/String;

    .line 135
    iput-object v0, p0, Landroid/rms/iaware/AppSceneRecogManager;->mClassLoader:Ljava/lang/ClassLoader;

    .line 136
    const-string v0, ""

    iput-object v0, p0, Landroid/rms/iaware/AppSceneRecogManager;->mPkgName:Ljava/lang/String;

    .line 137
    const-string v0, "0"

    iput-object v0, p0, Landroid/rms/iaware/AppSceneRecogManager;->mSysStatus:Ljava/lang/String;

    .line 144
    return-void
.end method

.method static synthetic access$000(Landroid/rms/iaware/AppSceneRecogManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Landroid/rms/iaware/AppSceneRecogManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Object;

    .line 51
    invoke-direct {p0, p1, p2}, Landroid/rms/iaware/AppSceneRecogManager;->printDebugLog(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100(Landroid/rms/iaware/AppSceneRecogManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/rms/iaware/AppSceneRecogManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 51
    invoke-direct {p0, p1}, Landroid/rms/iaware/AppSceneRecogManager;->printDebugLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Landroid/rms/iaware/AppSceneRecogManager;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Landroid/rms/iaware/AppSceneRecogManager;

    .line 51
    iget-object v0, p0, Landroid/rms/iaware/AppSceneRecogManager;->mAppSceneInfos:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/rms/iaware/AppSceneRecogManager;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Landroid/rms/iaware/AppSceneRecogManager;

    .line 51
    iget-object v0, p0, Landroid/rms/iaware/AppSceneRecogManager;->mActivityFragmentTypeMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/rms/iaware/AppSceneRecogManager;)Landroid/rms/iaware/AppSceneRecogManager$ThirdAppHandler;
    .locals 1
    .param p0, "x0"    # Landroid/rms/iaware/AppSceneRecogManager;

    .line 51
    iget-object v0, p0, Landroid/rms/iaware/AppSceneRecogManager;->mHandler:Landroid/rms/iaware/AppSceneRecogManager$ThirdAppHandler;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/rms/iaware/AppSceneRecogManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/rms/iaware/AppSceneRecogManager;

    .line 51
    iget-object v0, p0, Landroid/rms/iaware/AppSceneRecogManager;->mSysStatus:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Landroid/rms/iaware/AppSceneRecogManager;Ljava/lang/String;Landroid/app/Activity;I)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Landroid/rms/iaware/AppSceneRecogManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/app/Activity;
    .param p3, "x3"    # I

    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/rms/iaware/AppSceneRecogManager;->getActivityLayoutInfo(Ljava/lang/String;Landroid/app/Activity;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Landroid/rms/iaware/AppSceneRecogManager;Ljava/lang/String;Landroid/app/Activity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Landroid/rms/iaware/AppSceneRecogManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/app/Activity;

    .line 51
    invoke-direct {p0, p1, p2}, Landroid/rms/iaware/AppSceneRecogManager;->getActivityLayoutInfo(Ljava/lang/String;Landroid/app/Activity;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Landroid/rms/iaware/AppSceneRecogManager;Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/rms/iaware/AppSceneRecogManager;
    .param p1, "x1"    # Ljava/util/List;

    .line 51
    invoke-direct {p0, p1}, Landroid/rms/iaware/AppSceneRecogManager;->getLayoutList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Landroid/rms/iaware/AppSceneRecogManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/rms/iaware/AppSceneRecogManager;

    .line 51
    iget-object v0, p0, Landroid/rms/iaware/AppSceneRecogManager;->mLastSceneId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1702(Landroid/rms/iaware/AppSceneRecogManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Landroid/rms/iaware/AppSceneRecogManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 51
    iput-object p1, p0, Landroid/rms/iaware/AppSceneRecogManager;->mLastSceneId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1800(Landroid/rms/iaware/AppSceneRecogManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/rms/iaware/AppSceneRecogManager;

    .line 51
    iget-object v0, p0, Landroid/rms/iaware/AppSceneRecogManager;->mPkgName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Landroid/rms/iaware/AppSceneRecogManager;)V
    .locals 0
    .param p0, "x0"    # Landroid/rms/iaware/AppSceneRecogManager;

    .line 51
    invoke-direct {p0}, Landroid/rms/iaware/AppSceneRecogManager;->initHandler()V

    return-void
.end method

.method static synthetic access$200(Landroid/rms/iaware/AppSceneRecogManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/rms/iaware/AppSceneRecogManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 51
    invoke-direct {p0, p1}, Landroid/rms/iaware/AppSceneRecogManager;->printExceptionInfo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Landroid/rms/iaware/AppSceneRecogManager;)V
    .locals 0
    .param p0, "x0"    # Landroid/rms/iaware/AppSceneRecogManager;

    .line 51
    invoke-direct {p0}, Landroid/rms/iaware/AppSceneRecogManager;->initClasses()V

    return-void
.end method

.method static synthetic access$400(Landroid/rms/iaware/AppSceneRecogManager;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Landroid/rms/iaware/AppSceneRecogManager;

    .line 51
    iget-object v0, p0, Landroid/rms/iaware/AppSceneRecogManager;->mEnable:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$500(Landroid/rms/iaware/AppSceneRecogManager;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Landroid/rms/iaware/AppSceneRecogManager;

    .line 51
    iget-object v0, p0, Landroid/rms/iaware/AppSceneRecogManager;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$600()Z
    .locals 1

    .line 51
    sget-boolean v0, Landroid/rms/iaware/AppSceneRecogManager;->LOG_SWITCH:Z

    return v0
.end method

.method static synthetic access$700(Landroid/rms/iaware/AppSceneRecogManager;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Landroid/rms/iaware/AppSceneRecogManager;

    .line 51
    iget-object v0, p0, Landroid/rms/iaware/AppSceneRecogManager;->mActivityStateMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$800()Ljava/lang/Integer;
    .locals 1

    .line 51
    sget-object v0, Landroid/rms/iaware/AppSceneRecogManager;->ACTIVITY_STATE_RESUMED:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$900(Landroid/rms/iaware/AppSceneRecogManager;Landroid/app/Activity;)I
    .locals 1
    .param p0, "x0"    # Landroid/rms/iaware/AppSceneRecogManager;
    .param p1, "x1"    # Landroid/app/Activity;

    .line 51
    invoke-direct {p0, p1}, Landroid/rms/iaware/AppSceneRecogManager;->initAndGetFragmentType(Landroid/app/Activity;)I

    move-result v0

    return v0
.end method

.method private checkFragmentVisible(Landroid/app/Fragment;)Z
    .locals 5
    .param p1, "fragment"    # Landroid/app/Fragment;

    .line 587
    invoke-virtual {p1}, Landroid/app/Fragment;->getUserVisibleHint()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 588
    return v1

    .line 590
    :cond_0
    invoke-virtual {p1}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 591
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->isVisibleToUser()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_2

    .line 595
    :cond_1
    :try_start_0
    iget-object v2, p0, Landroid/rms/iaware/AppSceneRecogManager;->mMenuVisibleField2:Ljava/lang/reflect/Field;

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 596
    .local v2, "menuVisible":Z
    if-nez v2, :cond_2

    .line 597
    return v1

    .line 599
    :cond_2
    iget-object v3, p0, Landroid/rms/iaware/AppSceneRecogManager;->mContainerField2:Ljava/lang/reflect/Field;

    if-eqz v3, :cond_3

    .line 600
    iget-object v3, p0, Landroid/rms/iaware/AppSceneRecogManager;->mContainerField2:Ljava/lang/reflect/Field;

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 601
    .local v3, "container":Landroid/view/ViewGroup;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->isVisibleToUser()Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v4, :cond_3

    .line 602
    return v1

    .line 605
    .end local v3    # "container":Landroid/view/ViewGroup;
    :cond_3
    const/4 v1, 0x1

    return v1

    .line 610
    .end local v2    # "menuVisible":Z
    :catch_0
    move-exception v2

    .line 611
    .local v2, "e":Ljava/lang/RuntimeException;
    const-string v3, "checkFragmentVisible occur RuntimeException"

    invoke-direct {p0, v3}, Landroid/rms/iaware/AppSceneRecogManager;->printExceptionInfo(Ljava/lang/String;)V

    .end local v2    # "e":Ljava/lang/RuntimeException;
    goto :goto_1

    .line 608
    :catch_1
    move-exception v2

    .line 609
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "checkFragmentVisible occur IllegalArgumentException."

    invoke-direct {p0, v3}, Landroid/rms/iaware/AppSceneRecogManager;->printExceptionInfo(Ljava/lang/String;)V

    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_0

    .line 606
    :catch_2
    move-exception v2

    .line 607
    .local v2, "e":Ljava/lang/IllegalAccessException;
    const-string v3, "checkFragmentVisible occur IllegalAccessException."

    invoke-direct {p0, v3}, Landroid/rms/iaware/AppSceneRecogManager;->printExceptionInfo(Ljava/lang/String;)V

    .line 612
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :goto_0
    nop

    .line 613
    :goto_1
    return v1

    .line 592
    :cond_4
    :goto_2
    return v1
.end method

.method private checkVisible(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "fragmentObject"    # Ljava/lang/Object;

    .line 617
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 618
    const-string v1, "fragmentObject is null"

    invoke-direct {p0, v1}, Landroid/rms/iaware/AppSceneRecogManager;->printDebugLog(Ljava/lang/String;)V

    .line 619
    return v0

    .line 621
    :cond_0
    iget-object v1, p0, Landroid/rms/iaware/AppSceneRecogManager;->mViewField:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_8

    iget-object v1, p0, Landroid/rms/iaware/AppSceneRecogManager;->mMenuVisibleField:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_8

    iget-object v1, p0, Landroid/rms/iaware/AppSceneRecogManager;->mContainerField:Ljava/lang/reflect/Field;

    if-nez v1, :cond_1

    goto/16 :goto_4

    .line 627
    :cond_1
    :try_start_0
    iget-object v1, p0, Landroid/rms/iaware/AppSceneRecogManager;->mMenuVisibleField:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 628
    .local v1, "menuVisible":Z
    if-nez v1, :cond_2

    .line 629
    const-string v2, "Fragment menu is not visible. Fragment: "

    invoke-direct {p0, v2, p1}, Landroid/rms/iaware/AppSceneRecogManager;->printDebugLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 630
    return v0

    .line 633
    :cond_2
    iget-object v2, p0, Landroid/rms/iaware/AppSceneRecogManager;->mContainerField:Ljava/lang/reflect/Field;

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 634
    .local v2, "container":Landroid/view/ViewGroup;
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/view/ViewGroup;->isVisibleToUser()Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    .line 639
    :cond_3
    iget-object v3, p0, Landroid/rms/iaware/AppSceneRecogManager;->mViewField:Ljava/lang/reflect/Field;

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 640
    .local v3, "viewItem":Landroid/view/View;
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v3}, Landroid/view/View;->isVisibleToUser()Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_0

    .line 645
    :cond_4
    iget-object v4, p0, Landroid/rms/iaware/AppSceneRecogManager;->mIsVisibleMethod:Ljava/lang/reflect/Method;

    new-array v5, v0, [Ljava/lang/Object;

    invoke-virtual {v4, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 646
    .local v4, "isVisible":Z
    if-eqz v4, :cond_7

    .line 647
    const-string v5, "Fragment is visible. Fragment: "

    invoke-direct {p0, v5, p1}, Landroid/rms/iaware/AppSceneRecogManager;->printDebugLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 648
    const/4 v0, 0x1

    return v0

    .line 641
    .end local v4    # "isVisible":Z
    :cond_5
    :goto_0
    const-string v4, "Fragment view is not visible. Fragment: "

    invoke-direct {p0, v4, p1}, Landroid/rms/iaware/AppSceneRecogManager;->printDebugLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 642
    return v0

    .line 635
    .end local v3    # "viewItem":Landroid/view/View;
    :cond_6
    :goto_1
    const-string v3, "Fragment container is not visible. Fragment: "

    invoke-direct {p0, v3, p1}, Landroid/rms/iaware/AppSceneRecogManager;->printDebugLog(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 636
    return v0

    .line 656
    .end local v1    # "menuVisible":Z
    .end local v2    # "container":Landroid/view/ViewGroup;
    :catch_0
    move-exception v1

    .line 658
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v2, "checkVisible occur RuntimeException"

    invoke-direct {p0, v2}, Landroid/rms/iaware/AppSceneRecogManager;->printExceptionInfo(Ljava/lang/String;)V

    .end local v1    # "e":Ljava/lang/RuntimeException;
    goto :goto_3

    .line 654
    :catch_1
    move-exception v1

    .line 655
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v2, "checkVisible occur InvocationTargetException"

    invoke-direct {p0, v2}, Landroid/rms/iaware/AppSceneRecogManager;->printExceptionInfo(Ljava/lang/String;)V

    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    goto :goto_2

    .line 652
    :catch_2
    move-exception v1

    .line 653
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "checkVisible occur IllegalArgumentException"

    invoke-direct {p0, v2}, Landroid/rms/iaware/AppSceneRecogManager;->printExceptionInfo(Ljava/lang/String;)V

    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_2

    .line 650
    :catch_3
    move-exception v1

    .line 651
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string v2, "checkVisible occur IllegalAccessException"

    invoke-direct {p0, v2}, Landroid/rms/iaware/AppSceneRecogManager;->printExceptionInfo(Ljava/lang/String;)V

    .line 659
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :cond_7
    :goto_2
    nop

    .line 660
    :goto_3
    return v0

    .line 622
    :cond_8
    :goto_4
    const-string v1, "Fragment has null field. Fragment: "

    invoke-direct {p0, v1, p1}, Landroid/rms/iaware/AppSceneRecogManager;->printDebugLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 623
    return v0
.end method

.method private getActivity(Landroid/content/Context;)Landroid/app/Activity;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .line 216
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 217
    return-object v0

    .line 219
    :cond_0
    const/4 v1, 0x0

    .line 220
    .local v1, "activity":Landroid/app/Activity;
    const/4 v2, 0x0

    .line 221
    .local v2, "level":I
    move v3, v2

    move-object v2, p1

    .line 222
    .local v2, "tmpContext":Landroid/content/Context;
    .local v3, "level":I
    :goto_0
    add-int/lit8 v4, v3, 0x1

    .local v4, "level":I
    const/16 v5, 0xa

    if-ge v3, v5, :cond_3

    .line 223
    .end local v3    # "level":I
    instance-of v3, v2, Landroid/app/Activity;

    if-eqz v3, :cond_1

    .line 224
    move-object v1, v2

    check-cast v1, Landroid/app/Activity;

    .line 225
    goto :goto_2

    .line 227
    :cond_1
    instance-of v3, v2, Landroid/content/ContextWrapper;

    if-eqz v3, :cond_2

    .line 228
    move-object v3, p1

    check-cast v3, Landroid/content/ContextWrapper;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    goto :goto_1

    :cond_2
    move-object v3, v0

    :goto_1
    move-object v2, v3

    .line 221
    move v3, v4

    goto :goto_0

    .line 231
    :cond_3
    :goto_2
    return-object v1
.end method

.method private getActivityLayoutInfo(Ljava/lang/String;Landroid/app/Activity;)Ljava/util/List;
    .locals 1
    .param p1, "activityName"    # Ljava/lang/String;
    .param p2, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/app/Activity;",
            ")",
            "Ljava/util/List<",
            "Landroid/rms/iaware/AppSceneRecogManager$LayoutInfo;",
            ">;"
        }
    .end annotation

    .line 424
    const/4 v0, 0x4

    invoke-direct {p0, p1, p2, v0}, Landroid/rms/iaware/AppSceneRecogManager;->getActivityLayoutInfo(Ljava/lang/String;Landroid/app/Activity;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getActivityLayoutInfo(Ljava/lang/String;Landroid/app/Activity;I)Ljava/util/List;
    .locals 12
    .param p1, "activityName"    # Ljava/lang/String;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "depth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/app/Activity;",
            "I)",
            "Ljava/util/List<",
            "Landroid/rms/iaware/AppSceneRecogManager$LayoutInfo;",
            ">;"
        }
    .end annotation

    .line 429
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/rms/iaware/AppSceneRecogManager;->mFragmentActivityClass:Ljava/lang/Class;

    if-eqz v1, :cond_8

    iget-object v1, p0, Landroid/rms/iaware/AppSceneRecogManager;->mFragmentActivityClass:Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 430
    iget-object v1, p0, Landroid/rms/iaware/AppSceneRecogManager;->mGetSupportFragmentManagerMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_7

    iget-object v1, p0, Landroid/rms/iaware/AppSceneRecogManager;->mGetFragmentsMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3

    if-nez v1, :cond_0

    goto/16 :goto_4

    .line 435
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/rms/iaware/AppSceneRecogManager;->mGetSupportFragmentManagerMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 436
    .local v1, "fragmentManager":Ljava/lang/Object;
    if-nez v1, :cond_1

    .line 437
    const-string v2, "FragmentManager is null."

    invoke-direct {p0, v2}, Landroid/rms/iaware/AppSceneRecogManager;->printDebugLog(Ljava/lang/String;)V

    .line 438
    return-object v0

    .line 440
    :cond_1
    iget-object v3, p0, Landroid/rms/iaware/AppSceneRecogManager;->mGetFragmentsMethod:Ljava/lang/reflect/Method;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 441
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    if-eqz v2, :cond_6

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    .line 445
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 446
    .local v3, "layoutInfos":Ljava/util/List;, "Ljava/util/List<Landroid/rms/iaware/AppSceneRecogManager$LayoutInfo;>;"
    const/4 v4, 0x0

    .line 447
    .local v4, "fragmentInfo":Landroid/rms/iaware/AppSceneRecogManager$FragmentInfo;
    const/4 v5, 0x0

    .line 448
    .local v5, "layoutInfo":Landroid/rms/iaware/AppSceneRecogManager$LayoutInfo;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 449
    .local v7, "fragment":Ljava/lang/Object;
    invoke-direct {p0, v7}, Landroid/rms/iaware/AppSceneRecogManager;->checkVisible(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 450
    goto :goto_0

    .line 452
    :cond_3
    invoke-direct {p0, v7}, Landroid/rms/iaware/AppSceneRecogManager;->getShortClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 453
    .local v8, "className":Ljava/lang/String;
    invoke-direct {p0, v7}, Landroid/rms/iaware/AppSceneRecogManager;->getTagName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 454
    .local v9, "tag":Ljava/lang/String;
    new-instance v10, Landroid/rms/iaware/AppSceneRecogManager$FragmentInfo;

    invoke-direct {v10, v8, v9}, Landroid/rms/iaware/AppSceneRecogManager$FragmentInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v10

    .line 455
    invoke-direct {p0, v7, p3}, Landroid/rms/iaware/AppSceneRecogManager;->getChildLayoutsWithReflect(Ljava/lang/Object;I)Ljava/util/List;

    move-result-object v10

    .line 456
    .local v10, "layoutInfos2":Ljava/util/List;, "Ljava/util/List<Landroid/rms/iaware/AppSceneRecogManager$LayoutInfo;>;"
    new-instance v11, Landroid/rms/iaware/AppSceneRecogManager$LayoutInfo;

    invoke-direct {v11, v4, v10}, Landroid/rms/iaware/AppSceneRecogManager$LayoutInfo;-><init>(Landroid/rms/iaware/AppSceneRecogManager$FragmentInfo;Ljava/util/List;)V

    move-object v5, v11

    .line 457
    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 458
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 460
    .end local v7    # "fragment":Ljava/lang/Object;
    .end local v8    # "className":Ljava/lang/String;
    .end local v9    # "tag":Ljava/lang/String;
    .end local v10    # "layoutInfos2":Ljava/util/List;, "Ljava/util/List<Landroid/rms/iaware/AppSceneRecogManager$LayoutInfo;>;"
    :cond_4
    goto :goto_0

    .line 461
    :cond_5
    return-object v3

    .line 442
    .end local v3    # "layoutInfos":Ljava/util/List;, "Ljava/util/List<Landroid/rms/iaware/AppSceneRecogManager$LayoutInfo;>;"
    .end local v4    # "fragmentInfo":Landroid/rms/iaware/AppSceneRecogManager$FragmentInfo;
    .end local v5    # "layoutInfo":Landroid/rms/iaware/AppSceneRecogManager$LayoutInfo;
    :cond_6
    :goto_1
    const-string v3, "Fragments is null."

    invoke-direct {p0, v3}, Landroid/rms/iaware/AppSceneRecogManager;->printDebugLog(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3

    .line 443
    return-object v0

    .line 466
    .end local v1    # "fragmentManager":Ljava/lang/Object;
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :catch_0
    move-exception v1

    .line 467
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    :try_start_2
    const-string v2, "getActivityLayoutInfo occur InvocationTargetException"

    invoke-direct {p0, v2}, Landroid/rms/iaware/AppSceneRecogManager;->printExceptionInfo(Ljava/lang/String;)V

    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    goto :goto_3

    .line 464
    :catch_1
    move-exception v1

    .line 465
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "getActivityLayoutInfo occur IllegalArgumentException"

    invoke-direct {p0, v2}, Landroid/rms/iaware/AppSceneRecogManager;->printExceptionInfo(Ljava/lang/String;)V

    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_2

    .line 462
    :catch_2
    move-exception v1

    .line 463
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string v2, "getActivityLayoutInfo occur IllegalAccessException"

    invoke-direct {p0, v2}, Landroid/rms/iaware/AppSceneRecogManager;->printExceptionInfo(Ljava/lang/String;)V

    .line 468
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :goto_2
    nop

    .line 469
    :goto_3
    return-object v0

    .line 431
    :cond_7
    :goto_4
    const-string v1, "No getFragments method."

    invoke-direct {p0, v1}, Landroid/rms/iaware/AppSceneRecogManager;->printDebugLog(Ljava/lang/String;)V

    .line 432
    return-object v0

    .line 471
    :cond_8
    invoke-virtual {p2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 472
    .local v1, "manager":Landroid/app/FragmentManager;
    if-nez v1, :cond_9

    .line 473
    const-string v2, "android.app.fragment FragmentManager is null."

    invoke-direct {p0, v2}, Landroid/rms/iaware/AppSceneRecogManager;->printDebugLog(Ljava/lang/String;)V

    .line 474
    return-object v0

    .line 476
    :cond_9
    invoke-virtual {v1}, Landroid/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v2

    .line 477
    .local v2, "fragments":Ljava/util/List;, "Ljava/util/List<Landroid/app/Fragment;>;"
    invoke-direct {p0, v2, p3}, Landroid/rms/iaware/AppSceneRecogManager;->getChildLayouts(Ljava/util/List;I)Ljava/util/List;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3

    return-object v3

    .line 479
    .end local v1    # "manager":Landroid/app/FragmentManager;
    .end local v2    # "fragments":Ljava/util/List;, "Ljava/util/List<Landroid/app/Fragment;>;"
    :catch_3
    move-exception v1

    .line 480
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v2, "getActivityLayoutInfo occur RuntimeException"

    invoke-direct {p0, v2}, Landroid/rms/iaware/AppSceneRecogManager;->printExceptionInfo(Ljava/lang/String;)V

    .line 482
    .end local v1    # "e":Ljava/lang/RuntimeException;
    return-object v0
.end method

.method private getChildLayouts(Landroid/app/Fragment;I)Ljava/util/List;
    .locals 4
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "depth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Fragment;",
            "I)",
            "Ljava/util/List<",
            "Landroid/rms/iaware/AppSceneRecogManager$LayoutInfo;",
            ">;"
        }
    .end annotation

    .line 514
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/rms/iaware/AppSceneRecogManager;->mChildFragmentManagerField2:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/FragmentManager;

    .line 515
    .local v1, "childManager":Landroid/app/FragmentManager;
    if-nez v1, :cond_0

    .line 516
    const-string v2, "getChildLayouts childManager is null"

    invoke-direct {p0, v2}, Landroid/rms/iaware/AppSceneRecogManager;->printDebugLog(Ljava/lang/String;)V

    .line 517
    return-object v0

    .line 519
    :cond_0
    invoke-virtual {v1}, Landroid/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v2

    .line 520
    .local v2, "fragments":Ljava/util/List;, "Ljava/util/List<Landroid/app/Fragment;>;"
    add-int/lit8 v3, p2, -0x1

    invoke-direct {p0, v2, v3}, Landroid/rms/iaware/AppSceneRecogManager;->getChildLayouts(Ljava/util/List;I)Ljava/util/List;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 521
    .end local v1    # "childManager":Landroid/app/FragmentManager;
    .end local v2    # "fragments":Ljava/util/List;, "Ljava/util/List<Landroid/app/Fragment;>;"
    :catch_0
    move-exception v1

    .line 522
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string v2, "getChildLayouts occur IllegalAccessException."

    invoke-direct {p0, v2}, Landroid/rms/iaware/AppSceneRecogManager;->printExceptionInfo(Ljava/lang/String;)V

    .line 524
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    return-object v0
.end method

.method private getChildLayouts(Ljava/util/List;I)Ljava/util/List;
    .locals 7
    .param p2, "depth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/Fragment;",
            ">;I)",
            "Ljava/util/List<",
            "Landroid/rms/iaware/AppSceneRecogManager$LayoutInfo;",
            ">;"
        }
    .end annotation

    .line 486
    .local p1, "fragmentList":Ljava/util/List;, "Ljava/util/List<Landroid/app/Fragment;>;"
    const/4 v0, 0x0

    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 489
    :cond_0
    const/4 v1, 0x1

    if-ge p2, v1, :cond_1

    .line 490
    const-string v1, "getChildLayouts traversal more than max num."

    invoke-direct {p0, v1}, Landroid/rms/iaware/AppSceneRecogManager;->printDebugLog(Ljava/lang/String;)V

    .line 491
    return-object v0

    .line 493
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 494
    .local v0, "layoutInfos":Ljava/util/List;, "Ljava/util/List<Landroid/rms/iaware/AppSceneRecogManager$LayoutInfo;>;"
    const/4 v1, 0x0

    .line 495
    .local v1, "layoutInfo":Landroid/rms/iaware/AppSceneRecogManager$LayoutInfo;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Fragment;

    .line 496
    .local v3, "fragment":Landroid/app/Fragment;
    if-nez v3, :cond_2

    .line 497
    goto :goto_0

    .line 499
    :cond_2
    invoke-direct {p0, v3}, Landroid/rms/iaware/AppSceneRecogManager;->checkFragmentVisible(Landroid/app/Fragment;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 500
    goto :goto_0

    .line 502
    :cond_3
    invoke-direct {p0, v3}, Landroid/rms/iaware/AppSceneRecogManager;->getFragmentInfo(Landroid/app/Fragment;)Landroid/rms/iaware/AppSceneRecogManager$FragmentInfo;

    move-result-object v4

    .line 503
    .local v4, "fragmentInfo":Landroid/rms/iaware/AppSceneRecogManager$FragmentInfo;
    invoke-direct {p0, v3, p2}, Landroid/rms/iaware/AppSceneRecogManager;->getChildLayouts(Landroid/app/Fragment;I)Ljava/util/List;

    move-result-object v5

    .line 504
    .local v5, "childLayoutInfos":Ljava/util/List;, "Ljava/util/List<Landroid/rms/iaware/AppSceneRecogManager$LayoutInfo;>;"
    new-instance v6, Landroid/rms/iaware/AppSceneRecogManager$LayoutInfo;

    invoke-direct {v6, v4, v5}, Landroid/rms/iaware/AppSceneRecogManager$LayoutInfo;-><init>(Landroid/rms/iaware/AppSceneRecogManager$FragmentInfo;Ljava/util/List;)V

    move-object v1, v6

    .line 505
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 506
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 508
    .end local v3    # "fragment":Landroid/app/Fragment;
    .end local v4    # "fragmentInfo":Landroid/rms/iaware/AppSceneRecogManager$FragmentInfo;
    .end local v5    # "childLayoutInfos":Ljava/util/List;, "Ljava/util/List<Landroid/rms/iaware/AppSceneRecogManager$LayoutInfo;>;"
    :cond_4
    goto :goto_0

    .line 509
    :cond_5
    return-object v0

    .line 487
    .end local v0    # "layoutInfos":Ljava/util/List;, "Ljava/util/List<Landroid/rms/iaware/AppSceneRecogManager$LayoutInfo;>;"
    .end local v1    # "layoutInfo":Landroid/rms/iaware/AppSceneRecogManager$LayoutInfo;
    :cond_6
    :goto_1
    return-object v0
.end method

.method private getChildLayoutsWithReflect(Ljava/lang/Object;I)Ljava/util/List;
    .locals 12
    .param p1, "fragmentObj"    # Ljava/lang/Object;
    .param p2, "depth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)",
            "Ljava/util/List<",
            "Landroid/rms/iaware/AppSceneRecogManager$LayoutInfo;",
            ">;"
        }
    .end annotation

    .line 542
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/rms/iaware/AppSceneRecogManager;->mChildFragmentManagerField:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_6

    iget-object v1, p0, Landroid/rms/iaware/AppSceneRecogManager;->mGetFragmentsMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_6

    .line 543
    iget-object v1, p0, Landroid/rms/iaware/AppSceneRecogManager;->mChildFragmentManagerField:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 544
    .local v1, "managerObject":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 545
    const-string v2, "getChildLayoutsWithReflect managerObject is null"

    invoke-direct {p0, v2}, Landroid/rms/iaware/AppSceneRecogManager;->printDebugLog(Ljava/lang/String;)V

    .line 546
    return-object v0

    .line 548
    :cond_0
    const/4 v2, 0x1

    if-ge p2, v2, :cond_1

    .line 549
    const-string v2, "getChildLayoutsWithReflect traversal more than max num."

    invoke-direct {p0, v2}, Landroid/rms/iaware/AppSceneRecogManager;->printDebugLog(Ljava/lang/String;)V

    .line 550
    return-object v0

    .line 552
    :cond_1
    iget-object v2, p0, Landroid/rms/iaware/AppSceneRecogManager;->mGetFragmentsMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 553
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    if-eqz v2, :cond_5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    .line 557
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 558
    .local v3, "layoutInfos":Ljava/util/List;, "Ljava/util/List<Landroid/rms/iaware/AppSceneRecogManager$LayoutInfo;>;"
    const/4 v4, 0x0

    .line 559
    .local v4, "fragmentInfo":Landroid/rms/iaware/AppSceneRecogManager$FragmentInfo;
    const/4 v5, 0x0

    .line 560
    .local v5, "layoutInfo":Landroid/rms/iaware/AppSceneRecogManager$LayoutInfo;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 561
    .local v7, "fragment":Ljava/lang/Object;
    invoke-direct {p0, v7}, Landroid/rms/iaware/AppSceneRecogManager;->checkVisible(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 562
    goto :goto_0

    .line 564
    :cond_3
    invoke-direct {p0, v7}, Landroid/rms/iaware/AppSceneRecogManager;->getShortClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 565
    .local v8, "fragmentName":Ljava/lang/String;
    invoke-direct {p0, v7}, Landroid/rms/iaware/AppSceneRecogManager;->getTagName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 566
    .local v9, "tag":Ljava/lang/String;
    add-int/lit8 v10, p2, -0x1

    invoke-direct {p0, v7, v10}, Landroid/rms/iaware/AppSceneRecogManager;->getChildLayoutsWithReflect(Ljava/lang/Object;I)Ljava/util/List;

    move-result-object v10

    .line 567
    .local v10, "tmpLayoutInfos":Ljava/util/List;, "Ljava/util/List<Landroid/rms/iaware/AppSceneRecogManager$LayoutInfo;>;"
    new-instance v11, Landroid/rms/iaware/AppSceneRecogManager$FragmentInfo;

    invoke-direct {v11, v8, v9}, Landroid/rms/iaware/AppSceneRecogManager$FragmentInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v11

    .line 568
    new-instance v11, Landroid/rms/iaware/AppSceneRecogManager$LayoutInfo;

    invoke-direct {v11, v4, v10}, Landroid/rms/iaware/AppSceneRecogManager$LayoutInfo;-><init>(Landroid/rms/iaware/AppSceneRecogManager$FragmentInfo;Ljava/util/List;)V

    move-object v5, v11

    .line 569
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 570
    .end local v7    # "fragment":Ljava/lang/Object;
    .end local v8    # "fragmentName":Ljava/lang/String;
    .end local v9    # "tag":Ljava/lang/String;
    .end local v10    # "tmpLayoutInfos":Ljava/util/List;, "Ljava/util/List<Landroid/rms/iaware/AppSceneRecogManager$LayoutInfo;>;"
    goto :goto_0

    .line 571
    :cond_4
    return-object v3

    .line 554
    .end local v3    # "layoutInfos":Ljava/util/List;, "Ljava/util/List<Landroid/rms/iaware/AppSceneRecogManager$LayoutInfo;>;"
    .end local v4    # "fragmentInfo":Landroid/rms/iaware/AppSceneRecogManager$FragmentInfo;
    .end local v5    # "layoutInfo":Landroid/rms/iaware/AppSceneRecogManager$LayoutInfo;
    :cond_5
    :goto_1
    const-string v3, "getChildLayoutsWithReflect list empty"

    invoke-direct {p0, v3}, Landroid/rms/iaware/AppSceneRecogManager;->printDebugLog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 555
    return-object v0

    .line 582
    .end local v1    # "managerObject":Ljava/lang/Object;
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_6
    nop

    .line 583
    return-object v0

    .line 579
    :catch_0
    move-exception v1

    .line 580
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v2, "getChildLayoutsWithReflect occur InvocationTargetException."

    invoke-direct {p0, v2}, Landroid/rms/iaware/AppSceneRecogManager;->printExceptionInfo(Ljava/lang/String;)V

    .line 581
    return-object v0

    .line 576
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v1

    .line 577
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "getChildLayoutsWithReflect occur IllegalArgumentException."

    invoke-direct {p0, v2}, Landroid/rms/iaware/AppSceneRecogManager;->printExceptionInfo(Ljava/lang/String;)V

    .line 578
    return-object v0

    .line 573
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v1

    .line 574
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string v2, "getChildLayoutsWithReflect occur IllegalAccessException."

    invoke-direct {p0, v2}, Landroid/rms/iaware/AppSceneRecogManager;->printExceptionInfo(Ljava/lang/String;)V

    .line 575
    return-object v0
.end method

.method private getFragmentClass(Ljava/lang/reflect/Method;)Ljava/lang/Class;
    .locals 4
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 349
    const-class v0, Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 351
    .local v0, "genericReturnType":Ljava/lang/reflect/Type;
    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_0

    .line 352
    move-object v1, v0

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 353
    .local v1, "actualTypeArguments":[Ljava/lang/reflect/Type;
    if-eqz v1, :cond_0

    array-length v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 354
    const/4 v2, 0x0

    aget-object v2, v1, v2

    check-cast v2, Ljava/lang/Class;

    return-object v2

    .line 359
    .end local v0    # "genericReturnType":Ljava/lang/reflect/Type;
    .end local v1    # "actualTypeArguments":[Ljava/lang/reflect/Type;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getFragmentInfo(Landroid/app/Fragment;)Landroid/rms/iaware/AppSceneRecogManager$FragmentInfo;
    .locals 4
    .param p1, "fragment"    # Landroid/app/Fragment;

    .line 528
    invoke-virtual {p1}, Landroid/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v0

    .line 529
    .local v0, "tagString":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 530
    const-string v0, "null"

    .line 532
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 533
    .local v1, "nameString":Ljava/lang/String;
    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 534
    .local v2, "indx":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 535
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 537
    :cond_1
    new-instance v3, Landroid/rms/iaware/AppSceneRecogManager$FragmentInfo;

    invoke-direct {v3, v1, v0}, Landroid/rms/iaware/AppSceneRecogManager$FragmentInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method private getFragmentsMethodBySignature(Ljava/lang/Class;)[Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 337
    .local p1, "fragmentManagerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    .line 338
    .local v0, "methods":[Ljava/lang/reflect/Method;
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 339
    .local v4, "method":Ljava/lang/reflect/Method;
    invoke-direct {p0, v4}, Landroid/rms/iaware/AppSceneRecogManager;->getFragmentClass(Ljava/lang/reflect/Method;)Ljava/lang/Class;

    move-result-object v5

    .line 340
    .local v5, "fragmentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v5, :cond_0

    .line 341
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v4, v1, v2

    const/4 v2, 0x1

    aput-object v5, v1, v2

    return-object v1

    .line 338
    .end local v4    # "method":Ljava/lang/reflect/Method;
    .end local v5    # "fragmentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 345
    :cond_1
    new-array v1, v2, [Ljava/lang/Object;

    return-object v1
.end method

.method public static getInstance()Landroid/rms/iaware/AppSceneRecogManager;
    .locals 1

    .line 140
    sget-object v0, Landroid/rms/iaware/AppSceneRecogManager;->INSTANCE:Landroid/rms/iaware/AppSceneRecogManager;

    return-object v0
.end method

.method private getLayoutList(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/rms/iaware/AppSceneRecogManager$LayoutInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 943
    .local p1, "layoutInfos":Ljava/util/List;, "Ljava/util/List<Landroid/rms/iaware/AppSceneRecogManager$LayoutInfo;>;"
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 944
    .local v0, "sBuffer":Ljava/lang/StringBuffer;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 945
    if-eqz p1, :cond_2

    .line 946
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 947
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 948
    const-string v3, "{"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 949
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/rms/iaware/AppSceneRecogManager$LayoutInfo;

    .line 950
    .local v3, "item":Landroid/rms/iaware/AppSceneRecogManager$LayoutInfo;
    if-nez v3, :cond_0

    .line 951
    goto :goto_1

    .line 953
    :cond_0
    invoke-virtual {v3}, Landroid/rms/iaware/AppSceneRecogManager$LayoutInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 954
    const-string v4, "}"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 955
    add-int/lit8 v4, v1, -0x1

    if-ge v2, v4, :cond_1

    .line 956
    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 947
    .end local v3    # "item":Landroid/rms/iaware/AppSceneRecogManager$LayoutInfo;
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 960
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_2
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 961
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getShortClassName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p1, "cls"    # Ljava/lang/Object;

    .line 664
    if-eqz p1, :cond_1

    .line 665
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 666
    .local v0, "str":Ljava/lang/String;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 667
    .local v1, "indexOfBrace":I
    if-lez v1, :cond_0

    .line 668
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 670
    :cond_0
    const-string v2, "null"

    return-object v2

    .line 672
    .end local v0    # "str":Ljava/lang/String;
    .end local v1    # "indexOfBrace":I
    :cond_1
    const-string v0, "null"

    return-object v0
.end method

.method private getTagName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;

    .line 676
    const-string v0, "null"

    .line 678
    .local v0, "tag":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Landroid/rms/iaware/AppSceneRecogManager;->mTagField:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_0

    .line 679
    iget-object v1, p0, Landroid/rms/iaware/AppSceneRecogManager;->mTagField:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v0, v1

    .line 680
    if-nez v0, :cond_0

    .line 681
    const-string v1, "null"
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    .line 686
    :catch_0
    move-exception v1

    .line 687
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "getTagName occur IllegalArgumentException"

    invoke-direct {p0, v2}, Landroid/rms/iaware/AppSceneRecogManager;->printExceptionInfo(Ljava/lang/String;)V

    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_1

    .line 684
    :catch_1
    move-exception v1

    .line 685
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string v2, "getTagName occur IllegalAccessException"

    invoke-direct {p0, v2}, Landroid/rms/iaware/AppSceneRecogManager;->printExceptionInfo(Ljava/lang/String;)V

    .line 688
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :cond_0
    :goto_0
    nop

    .line 689
    :goto_1
    return-object v0
.end method

.method private initAndGetFragmentType(Landroid/app/Activity;)I
    .locals 9
    .param p1, "activity"    # Landroid/app/Activity;

    .line 363
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 364
    .local v0, "clazz":Ljava/lang/Class;
    iget-object v1, p0, Landroid/rms/iaware/AppSceneRecogManager;->mActivityFragmentTypeMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 365
    .local v1, "knownFragmentType":Ljava/lang/Integer;
    if-eqz v1, :cond_0

    .line 366
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2

    .line 369
    :cond_0
    const/4 v2, 0x1

    .line 370
    .local v2, "fragmentType":I
    iget-object v3, p0, Landroid/rms/iaware/AppSceneRecogManager;->mFragmentActivityClass:Ljava/lang/Class;

    const/4 v4, 0x2

    if-nez v3, :cond_3

    .line 374
    :goto_0
    const-class v3, Ljava/lang/Object;

    if-eq v0, v3, :cond_2

    .line 375
    const/4 v3, 0x0

    .line 377
    .local v3, "method":Ljava/lang/reflect/Method;
    :try_start_0
    const-string v5, "getSupportFragmentManager"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v5

    .line 382
    :goto_1
    goto :goto_2

    .line 380
    :catch_0
    move-exception v5

    .line 381
    .local v5, "e":Ljava/lang/SecurityException;
    const-string v6, "initAndGetFragmentType occur SecurityException"

    invoke-direct {p0, v6}, Landroid/rms/iaware/AppSceneRecogManager;->printExceptionInfo(Ljava/lang/String;)V

    .end local v5    # "e":Ljava/lang/SecurityException;
    goto :goto_2

    .line 378
    :catch_1
    move-exception v5

    .line 379
    .local v5, "e":Ljava/lang/NoSuchMethodException;
    const-string v6, "initAndGetFragmentType occur NoSuchMethodException"

    invoke-direct {p0, v6}, Landroid/rms/iaware/AppSceneRecogManager;->printExceptionInfo(Ljava/lang/String;)V

    .end local v5    # "e":Ljava/lang/NoSuchMethodException;
    goto :goto_1

    .line 384
    :goto_2
    if-eqz v3, :cond_1

    .line 385
    const/4 v2, 0x2

    .line 386
    goto :goto_3

    .line 388
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 389
    .end local v3    # "method":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 391
    :cond_2
    :goto_3
    if-ne v2, v4, :cond_4

    .line 392
    invoke-direct {p0, v0}, Landroid/rms/iaware/AppSceneRecogManager;->initializeV4FragmentClasses(Ljava/lang/Class;)V

    goto :goto_4

    .line 395
    :cond_3
    iget-object v3, p0, Landroid/rms/iaware/AppSceneRecogManager;->mFragmentActivityClass:Ljava/lang/Class;

    invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 396
    const/4 v2, 0x2

    .line 400
    :cond_4
    :goto_4
    if-eq v2, v4, :cond_7

    .line 401
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    .line 402
    .local v3, "manager":Landroid/app/FragmentManager;
    if-eqz v3, :cond_7

    .line 403
    invoke-virtual {v3}, Landroid/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v4

    .line 404
    .local v4, "fragments":Ljava/util/List;, "Ljava/util/List<Landroid/app/Fragment;>;"
    if-eqz v4, :cond_7

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_7

    .line 405
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/Fragment;

    .line 406
    .local v6, "fragment":Landroid/app/Fragment;
    if-nez v6, :cond_5

    .line 407
    goto :goto_5

    .line 409
    :cond_5
    invoke-virtual {v6}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v7

    .line 410
    .local v7, "view":Landroid/view/View;
    if-eqz v7, :cond_6

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_6

    .line 411
    const/4 v2, 0x3

    .line 412
    goto :goto_6

    .line 414
    .end local v6    # "fragment":Landroid/app/Fragment;
    .end local v7    # "view":Landroid/view/View;
    :cond_6
    goto :goto_5

    .line 419
    .end local v3    # "manager":Landroid/app/FragmentManager;
    .end local v4    # "fragments":Ljava/util/List;, "Ljava/util/List<Landroid/app/Fragment;>;"
    :cond_7
    :goto_6
    iget-object v3, p0, Landroid/rms/iaware/AppSceneRecogManager;->mActivityFragmentTypeMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    return v2
.end method

.method private initClasses()V
    .locals 2

    .line 247
    iget-object v0, p0, Landroid/rms/iaware/AppSceneRecogManager;->mFragmentActivityClass:Ljava/lang/Class;

    if-nez v0, :cond_2

    .line 248
    iget-object v0, p0, Landroid/rms/iaware/AppSceneRecogManager;->mClassLoader:Ljava/lang/ClassLoader;

    if-nez v0, :cond_0

    .line 249
    return-void

    .line 252
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/rms/iaware/AppSceneRecogManager;->mClassLoader:Ljava/lang/ClassLoader;

    const-string v1, "android.support.v4.app.FragmentActivity"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Landroid/rms/iaware/AppSceneRecogManager;->mFragmentActivityClass:Ljava/lang/Class;

    .line 253
    iget-object v0, p0, Landroid/rms/iaware/AppSceneRecogManager;->mFragmentActivityClass:Ljava/lang/Class;

    if-nez v0, :cond_1

    .line 254
    return-void

    .line 257
    :cond_1
    iget-object v0, p0, Landroid/rms/iaware/AppSceneRecogManager;->mFragmentActivityClass:Ljava/lang/Class;

    invoke-direct {p0, v0}, Landroid/rms/iaware/AppSceneRecogManager;->initializeV4FragmentClasses(Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    goto :goto_0

    .line 258
    :catch_0
    move-exception v0

    .line 259
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const-string v1, "FragmentActivity is not found."

    invoke-direct {p0, v1}, Landroid/rms/iaware/AppSceneRecogManager;->printExceptionInfo(Ljava/lang/String;)V

    .line 263
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :cond_2
    :goto_0
    :try_start_1
    const-class v0, Landroid/app/Fragment;

    const-string v1, "mMenuVisible"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Landroid/rms/iaware/AppSceneRecogManager;->mMenuVisibleField2:Ljava/lang/reflect/Field;

    .line 264
    const-class v0, Landroid/app/Fragment;

    const-string v1, "mContainer"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Landroid/rms/iaware/AppSceneRecogManager;->mContainerField2:Ljava/lang/reflect/Field;

    .line 265
    const-class v0, Landroid/app/Fragment;

    const-string v1, "mChildFragmentManager"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Landroid/rms/iaware/AppSceneRecogManager;->mChildFragmentManagerField2:Ljava/lang/reflect/Field;

    .line 266
    iget-object v0, p0, Landroid/rms/iaware/AppSceneRecogManager;->mMenuVisibleField2:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 267
    iget-object v0, p0, Landroid/rms/iaware/AppSceneRecogManager;->mContainerField2:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 268
    iget-object v0, p0, Landroid/rms/iaware/AppSceneRecogManager;->mChildFragmentManagerField2:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 271
    :catch_1
    move-exception v0

    .line 272
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v1, "init Fragment field not found."

    invoke-direct {p0, v1}, Landroid/rms/iaware/AppSceneRecogManager;->printExceptionInfo(Ljava/lang/String;)V

    .end local v0    # "e":Ljava/lang/SecurityException;
    goto :goto_2

    .line 269
    :catch_2
    move-exception v0

    .line 270
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    const-string v1, "init Fragment field not found."

    invoke-direct {p0, v1}, Landroid/rms/iaware/AppSceneRecogManager;->printExceptionInfo(Ljava/lang/String;)V

    .line 273
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :goto_1
    nop

    .line 274
    :goto_2
    return-void
.end method

.method private initFragmentClassMethod(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 329
    .local p1, "fragmentManagerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1}, Landroid/rms/iaware/AppSceneRecogManager;->getFragmentsMethodBySignature(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    .line 330
    .local v0, "objs":[Ljava/lang/Object;
    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 331
    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/reflect/Method;

    iput-object v1, p0, Landroid/rms/iaware/AppSceneRecogManager;->mGetFragmentsMethod:Ljava/lang/reflect/Method;

    .line 332
    aget-object v1, v0, v2

    check-cast v1, Ljava/lang/Class;

    iput-object v1, p0, Landroid/rms/iaware/AppSceneRecogManager;->mFragmentClass:Ljava/lang/Class;

    .line 334
    :cond_0
    return-void
.end method

.method private initHandler()V
    .locals 4

    .line 235
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ThirdAppSceneRecog"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 236
    .local v0, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 237
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 238
    .local v1, "looper":Landroid/os/Looper;
    if-nez v1, :cond_0

    .line 239
    return-void

    .line 241
    :cond_0
    iget-object v2, p0, Landroid/rms/iaware/AppSceneRecogManager;->mHandler:Landroid/rms/iaware/AppSceneRecogManager$ThirdAppHandler;

    if-nez v2, :cond_1

    .line 242
    new-instance v2, Landroid/rms/iaware/AppSceneRecogManager$ThirdAppHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Landroid/rms/iaware/AppSceneRecogManager$ThirdAppHandler;-><init>(Landroid/rms/iaware/AppSceneRecogManager;Landroid/os/Looper;)V

    iput-object v2, p0, Landroid/rms/iaware/AppSceneRecogManager;->mHandler:Landroid/rms/iaware/AppSceneRecogManager$ThirdAppHandler;

    .line 244
    :cond_1
    return-void
.end method

.method private initializeV4FragmentClasses(Ljava/lang/Class;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 278
    .local p1, "fragmentActivityClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x2

    :try_start_0
    const-string v1, "getSupportFragmentManager"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {p1, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Landroid/rms/iaware/AppSceneRecogManager;->mGetSupportFragmentManagerMethod:Ljava/lang/reflect/Method;

    .line 279
    iget-object v1, p0, Landroid/rms/iaware/AppSceneRecogManager;->mGetSupportFragmentManagerMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3

    .line 281
    .local v1, "fragmentManagerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_1
    const-string v3, "getFragments"

    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Landroid/rms/iaware/AppSceneRecogManager;->mGetFragmentsMethod:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_5

    .line 283
    :try_start_2
    iget-object v3, p0, Landroid/rms/iaware/AppSceneRecogManager;->mClassLoader:Ljava/lang/ClassLoader;

    const-string v4, "android.support.v4.app.Fragment"

    invoke-virtual {v3, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    iput-object v3, p0, Landroid/rms/iaware/AppSceneRecogManager;->mFragmentClass:Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_5

    .line 286
    goto :goto_0

    .line 284
    :catch_0
    move-exception v3

    .line 285
    .local v3, "e":Ljava/lang/ClassNotFoundException;
    :try_start_3
    iget-object v4, p0, Landroid/rms/iaware/AppSceneRecogManager;->mGetFragmentsMethod:Ljava/lang/reflect/Method;

    invoke-direct {p0, v4}, Landroid/rms/iaware/AppSceneRecogManager;->getFragmentClass(Ljava/lang/reflect/Method;)Ljava/lang/Class;

    move-result-object v4

    iput-object v4, p0, Landroid/rms/iaware/AppSceneRecogManager;->mFragmentClass:Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_3} :catch_5

    .end local v3    # "e":Ljava/lang/ClassNotFoundException;
    goto :goto_0

    .line 289
    :catch_1
    move-exception v3

    .line 290
    .local v3, "e":Ljava/lang/SecurityException;
    :try_start_4
    invoke-direct {p0, v1}, Landroid/rms/iaware/AppSceneRecogManager;->initFragmentClassMethod(Ljava/lang/Class;)V

    .end local v3    # "e":Ljava/lang/SecurityException;
    goto :goto_1

    .line 287
    :catch_2
    move-exception v3

    .line 288
    .local v3, "e":Ljava/lang/NoSuchMethodException;
    invoke-direct {p0, v1}, Landroid/rms/iaware/AppSceneRecogManager;->initFragmentClassMethod(Ljava/lang/Class;)V

    .line 291
    .end local v3    # "e":Ljava/lang/NoSuchMethodException;
    :goto_0
    nop

    .line 293
    :goto_1
    iget-object v3, p0, Landroid/rms/iaware/AppSceneRecogManager;->mFragmentClass:Ljava/lang/Class;

    if-eqz v3, :cond_0

    .line 294
    iget-object v3, p0, Landroid/rms/iaware/AppSceneRecogManager;->mFragmentClass:Ljava/lang/Class;

    const-string v4, "mView"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    iput-object v3, p0, Landroid/rms/iaware/AppSceneRecogManager;->mViewField:Ljava/lang/reflect/Field;

    .line 295
    iget-object v3, p0, Landroid/rms/iaware/AppSceneRecogManager;->mViewField:Ljava/lang/reflect/Field;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 297
    iget-object v3, p0, Landroid/rms/iaware/AppSceneRecogManager;->mFragmentClass:Ljava/lang/Class;

    const-string v5, "mContainer"

    invoke-virtual {v3, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    iput-object v3, p0, Landroid/rms/iaware/AppSceneRecogManager;->mContainerField:Ljava/lang/reflect/Field;

    .line 298
    iget-object v3, p0, Landroid/rms/iaware/AppSceneRecogManager;->mContainerField:Ljava/lang/reflect/Field;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 300
    iget-object v3, p0, Landroid/rms/iaware/AppSceneRecogManager;->mFragmentClass:Ljava/lang/Class;

    const-string v5, "mMenuVisible"

    invoke-virtual {v3, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    iput-object v3, p0, Landroid/rms/iaware/AppSceneRecogManager;->mMenuVisibleField:Ljava/lang/reflect/Field;

    .line 301
    iget-object v3, p0, Landroid/rms/iaware/AppSceneRecogManager;->mMenuVisibleField:Ljava/lang/reflect/Field;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 303
    iget-object v3, p0, Landroid/rms/iaware/AppSceneRecogManager;->mFragmentClass:Ljava/lang/Class;

    const-string v5, "mTag"

    invoke-virtual {v3, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    iput-object v3, p0, Landroid/rms/iaware/AppSceneRecogManager;->mTagField:Ljava/lang/reflect/Field;

    .line 304
    iget-object v3, p0, Landroid/rms/iaware/AppSceneRecogManager;->mTagField:Ljava/lang/reflect/Field;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 306
    iget-object v3, p0, Landroid/rms/iaware/AppSceneRecogManager;->mFragmentClass:Ljava/lang/Class;

    const-string v5, "isVisible"

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v3, v5, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Landroid/rms/iaware/AppSceneRecogManager;->mIsVisibleMethod:Ljava/lang/reflect/Method;

    .line 308
    iget-object v2, p0, Landroid/rms/iaware/AppSceneRecogManager;->mFragmentClass:Ljava/lang/Class;

    const-string v3, "mChildFragmentManager"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    iput-object v2, p0, Landroid/rms/iaware/AppSceneRecogManager;->mChildFragmentManagerField:Ljava/lang/reflect/Field;

    .line 309
    iget-object v2, p0, Landroid/rms/iaware/AppSceneRecogManager;->mChildFragmentManagerField:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 310
    iput-object p1, p0, Landroid/rms/iaware/AppSceneRecogManager;->mFragmentActivityClass:Ljava/lang/Class;

    goto :goto_2

    .line 312
    :cond_0
    const-string v2, "Failed to initialize fragment class info. "

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Landroid/rms/iaware/AppSceneRecogManager;->printDebugLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 314
    iget-object v2, p0, Landroid/rms/iaware/AppSceneRecogManager;->mEnable:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_3

    .end local v1    # "fragmentManagerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_2

    .line 322
    :catch_3
    move-exception v1

    .line 323
    .local v1, "e":Ljava/lang/SecurityException;
    const-string v2, "Failed to initialize fragment class info."

    invoke-direct {p0, v2}, Landroid/rms/iaware/AppSceneRecogManager;->printExceptionInfo(Ljava/lang/String;)V

    .line 324
    iget-object v2, p0, Landroid/rms/iaware/AppSceneRecogManager;->mEnable:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .end local v1    # "e":Ljava/lang/SecurityException;
    goto :goto_3

    .line 319
    :catch_4
    move-exception v1

    .line 320
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    const-string v2, "Failed to initialize fragment class info."

    invoke-direct {p0, v2}, Landroid/rms/iaware/AppSceneRecogManager;->printExceptionInfo(Ljava/lang/String;)V

    .line 321
    iget-object v2, p0, Landroid/rms/iaware/AppSceneRecogManager;->mEnable:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    goto :goto_2

    .line 316
    :catch_5
    move-exception v1

    .line 317
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    const-string v2, "Failed to initialize fragment class info."

    invoke-direct {p0, v2}, Landroid/rms/iaware/AppSceneRecogManager;->printExceptionInfo(Ljava/lang/String;)V

    .line 318
    iget-object v2, p0, Landroid/rms/iaware/AppSceneRecogManager;->mEnable:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 325
    .end local v1    # "e":Ljava/lang/NoSuchFieldException;
    :goto_2
    nop

    .line 326
    :goto_3
    return-void
.end method

.method private printDebugLog(Ljava/lang/String;)V
    .locals 1
    .param p1, "content"    # Ljava/lang/String;

    .line 699
    sget-boolean v0, Landroid/rms/iaware/AppSceneRecogManager;->LOG_SWITCH:Z

    if-eqz v0, :cond_0

    .line 700
    const-string v0, "AppSceneRecogManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    :cond_0
    return-void
.end method

.method private printDebugLog(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "param"    # Ljava/lang/Object;

    .line 705
    sget-boolean v0, Landroid/rms/iaware/AppSceneRecogManager;->LOG_SWITCH:Z

    if-eqz v0, :cond_0

    .line 706
    const-string v0, "AppSceneRecogManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    :cond_0
    return-void
.end method

.method private printExceptionInfo(Ljava/lang/String;)V
    .locals 1
    .param p1, "content"    # Ljava/lang/String;

    .line 693
    sget-boolean v0, Landroid/rms/iaware/AppSceneRecogManager;->LOG_SWITCH:Z

    if-eqz v0, :cond_0

    .line 694
    const-string v0, "AppSceneRecogManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    :cond_0
    return-void
.end method


# virtual methods
.method public init(Landroid/app/Application;Ljava/lang/String;)V
    .locals 7
    .param p1, "app"    # Landroid/app/Application;
    .param p2, "processName"    # Ljava/lang/String;

    .line 147
    const/4 v0, 0x2

    if-eqz p1, :cond_4

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/16 v2, 0x2710

    if-ge v1, v2, :cond_0

    goto :goto_1

    .line 151
    :cond_0
    sget-boolean v1, Landroid/rms/iaware/AppSceneRecogManager;->CONFIG_SWITCH:Z

    if-nez v1, :cond_1

    .line 152
    const-string v1, "AppScene ConfigSwitch is false."

    invoke-direct {p0, v1}, Landroid/rms/iaware/AppSceneRecogManager;->printDebugLog(Ljava/lang/String;)V

    .line 153
    iget-object v1, p0, Landroid/rms/iaware/AppSceneRecogManager;->mEnable:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 154
    return-void

    .line 157
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 158
    .local v1, "cxt":Landroid/content/Context;
    if-nez v1, :cond_2

    .line 159
    iget-object v2, p0, Landroid/rms/iaware/AppSceneRecogManager;->mEnable:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 160
    return-void

    .line 162
    :cond_2
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 163
    .local v2, "pkgName":Ljava/lang/String;
    sget-boolean v3, Landroid/rms/iaware/AppSceneRecogManager;->LOG_SWITCH:Z

    if-eqz v3, :cond_3

    .line 164
    const-string v3, "AppSceneRecogManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AppSceneRecog init. Package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", Process: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", Pid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 164
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_3
    iput-object v2, p0, Landroid/rms/iaware/AppSceneRecogManager;->mPkgName:Ljava/lang/String;

    .line 168
    const/16 v3, 0xbdb

    new-instance v4, Landroid/rms/iaware/AppSceneRecogManager$AppSceneRecogSDKCallback;

    invoke-direct {v4, p0}, Landroid/rms/iaware/AppSceneRecogManager$AppSceneRecogSDKCallback;-><init>(Landroid/rms/iaware/AppSceneRecogManager;)V

    const-wide/16 v5, 0x0

    invoke-static {v3, v2, v4, v5, v6}, Landroid/rms/iaware/IAwareSdk;->asyncReportDataWithCallback(ILjava/lang/String;Landroid/os/IBinder;J)V

    .line 170
    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    iput-object v3, p0, Landroid/rms/iaware/AppSceneRecogManager;->mClassLoader:Ljava/lang/ClassLoader;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    .end local v1    # "cxt":Landroid/content/Context;
    .end local v2    # "pkgName":Ljava/lang/String;
    goto :goto_0

    .line 171
    :catch_0
    move-exception v1

    .line 173
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v2, "init occur RuntimeException."

    invoke-direct {p0, v2}, Landroid/rms/iaware/AppSceneRecogManager;->printExceptionInfo(Ljava/lang/String;)V

    .line 174
    iget-object v2, p0, Landroid/rms/iaware/AppSceneRecogManager;->mEnable:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 176
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :goto_0
    return-void

    .line 148
    :cond_4
    :goto_1
    iget-object v1, p0, Landroid/rms/iaware/AppSceneRecogManager;->mEnable:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 149
    return-void
.end method

.method public pauseActivity(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .line 190
    iget-object v0, p0, Landroid/rms/iaware/AppSceneRecogManager;->mEnable:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroid/rms/iaware/AppSceneRecogManager;->mHandler:Landroid/rms/iaware/AppSceneRecogManager$ThirdAppHandler;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 193
    :cond_0
    const-string v0, "Pause activity: "

    invoke-direct {p0, v0, p1}, Landroid/rms/iaware/AppSceneRecogManager;->printDebugLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 194
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/rms/iaware/AppSceneRecogManager;->mActivity:Landroid/app/Activity;

    .line 195
    iget-object v0, p0, Landroid/rms/iaware/AppSceneRecogManager;->mActivityStateMap:Ljava/util/Map;

    sget-object v1, Landroid/rms/iaware/AppSceneRecogManager;->ACTIVITY_STATE_STOPPED:Ljava/lang/Integer;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    iget-object v0, p0, Landroid/rms/iaware/AppSceneRecogManager;->mHandler:Landroid/rms/iaware/AppSceneRecogManager$ThirdAppHandler;

    iget-object v1, p0, Landroid/rms/iaware/AppSceneRecogManager;->mHandler:Landroid/rms/iaware/AppSceneRecogManager$ThirdAppHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Landroid/rms/iaware/AppSceneRecogManager$ThirdAppHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/rms/iaware/AppSceneRecogManager$ThirdAppHandler;->sendMessage(Landroid/os/Message;)Z

    .line 198
    return-void

    .line 191
    :cond_1
    :goto_0
    return-void
.end method

.method public resumeActivity(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .line 179
    iget-object v0, p0, Landroid/rms/iaware/AppSceneRecogManager;->mEnable:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroid/rms/iaware/AppSceneRecogManager;->mHandler:Landroid/rms/iaware/AppSceneRecogManager$ThirdAppHandler;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 182
    :cond_0
    const-string v0, "Resume activity: "

    invoke-direct {p0, v0, p1}, Landroid/rms/iaware/AppSceneRecogManager;->printDebugLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 183
    iput-object p1, p0, Landroid/rms/iaware/AppSceneRecogManager;->mActivity:Landroid/app/Activity;

    .line 184
    iget-object v0, p0, Landroid/rms/iaware/AppSceneRecogManager;->mActivityStateMap:Ljava/util/Map;

    sget-object v1, Landroid/rms/iaware/AppSceneRecogManager;->ACTIVITY_STATE_RESUMED:Ljava/lang/Integer;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    iget-object v0, p0, Landroid/rms/iaware/AppSceneRecogManager;->mHandler:Landroid/rms/iaware/AppSceneRecogManager$ThirdAppHandler;

    iget-object v1, p0, Landroid/rms/iaware/AppSceneRecogManager;->mHandler:Landroid/rms/iaware/AppSceneRecogManager$ThirdAppHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p1}, Landroid/rms/iaware/AppSceneRecogManager$ThirdAppHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/rms/iaware/AppSceneRecogManager$ThirdAppHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 187
    return-void

    .line 180
    :cond_1
    :goto_0
    return-void
.end method

.method public windowFocusChanged(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 201
    iget-object v0, p0, Landroid/rms/iaware/AppSceneRecogManager;->mEnable:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Landroid/rms/iaware/AppSceneRecogManager;->mHandler:Landroid/rms/iaware/AppSceneRecogManager$ThirdAppHandler;

    if-nez v0, :cond_0

    goto :goto_0

    .line 204
    :cond_0
    invoke-direct {p0, p1}, Landroid/rms/iaware/AppSceneRecogManager;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    .line 205
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 206
    return-void

    .line 208
    :cond_1
    const-string v1, "Window focus changed: "

    invoke-direct {p0, v1, v0}, Landroid/rms/iaware/AppSceneRecogManager;->printDebugLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 209
    iget-object v1, p0, Landroid/rms/iaware/AppSceneRecogManager;->mActivity:Landroid/app/Activity;

    if-ne v0, v1, :cond_2

    sget-object v1, Landroid/rms/iaware/AppSceneRecogManager;->ACTIVITY_STATE_RESUMED:Ljava/lang/Integer;

    iget-object v2, p0, Landroid/rms/iaware/AppSceneRecogManager;->mActivityStateMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 210
    iget-object v1, p0, Landroid/rms/iaware/AppSceneRecogManager;->mHandler:Landroid/rms/iaware/AppSceneRecogManager$ThirdAppHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/rms/iaware/AppSceneRecogManager$ThirdAppHandler;->removeMessages(I)V

    .line 211
    iget-object v1, p0, Landroid/rms/iaware/AppSceneRecogManager;->mHandler:Landroid/rms/iaware/AppSceneRecogManager$ThirdAppHandler;

    iget-object v2, p0, Landroid/rms/iaware/AppSceneRecogManager;->mHandler:Landroid/rms/iaware/AppSceneRecogManager$ThirdAppHandler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, v0}, Landroid/rms/iaware/AppSceneRecogManager$ThirdAppHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/rms/iaware/AppSceneRecogManager$ThirdAppHandler;->sendMessage(Landroid/os/Message;)Z

    .line 213
    :cond_2
    return-void

    .line 202
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_3
    :goto_0
    return-void
.end method
