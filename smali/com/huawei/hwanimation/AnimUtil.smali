.class public Lcom/huawei/hwanimation/AnimUtil;
.super Ljava/lang/Object;
.source "AnimUtil.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final IS_EMUI_LITE:Z

.field private static final IS_NOVA_PERF:Z

.field private static final TAG:Ljava/lang/String; = "AnimUtil"

.field public static final TRANSIT_ACTIVITY_CLOSE:I = 0x2

.field public static final TRANSIT_ACTIVITY_OPEN:I = 0x1

.field public static final TRANSIT_TASK_CLOSE:I = 0x4

.field public static final TRANSIT_TASK_OPEN:I = 0x3

.field private static sHwAnimResPackageName:Ljava/lang/String;


# instance fields
.field private mClientContext:Landroid/content/Context;

.field private mClientToken:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    const-string v0, "ro.build.hw_emui_lite.enable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/huawei/hwanimation/AnimUtil;->IS_EMUI_LITE:Z

    .line 31
    const-string v0, "ro.config.hw_nova_performance"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/huawei/hwanimation/AnimUtil;->IS_NOVA_PERF:Z

    .line 35
    const-string v0, "androidhwext"

    sput-object v0, Lcom/huawei/hwanimation/AnimUtil;->sHwAnimResPackageName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/hwanimation/AnimUtil;->mClientContext:Landroid/content/Context;

    .line 51
    iput-object v0, p0, Lcom/huawei/hwanimation/AnimUtil;->mClientToken:Landroid/os/IBinder;

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/hwanimation/AnimUtil;->mClientContext:Landroid/content/Context;

    .line 51
    iput-object v0, p0, Lcom/huawei/hwanimation/AnimUtil;->mClientToken:Landroid/os/IBinder;

    .line 58
    iput-object p1, p0, Lcom/huawei/hwanimation/AnimUtil;->mClientContext:Landroid/content/Context;

    .line 59
    invoke-direct {p0}, Lcom/huawei/hwanimation/AnimUtil;->initToken()V

    .line 60
    return-void
.end method

.method private initToken()V
    .locals 4

    .line 177
    :try_start_0
    const-class v0, Landroid/app/Activity;

    const-string v1, "getActivityToken"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 178
    .local v0, "method":Ljava/lang/reflect/Method;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 179
    iget-object v1, p0, Lcom/huawei/hwanimation/AnimUtil;->mClientContext:Landroid/content/Context;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    iput-object v1, p0, Lcom/huawei/hwanimation/AnimUtil;->mClientToken:Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "method":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 186
    :catch_0
    move-exception v0

    goto :goto_1

    .line 184
    :catch_1
    move-exception v0

    goto :goto_0

    .line 182
    :catch_2
    move-exception v0

    goto :goto_0

    .line 180
    :catch_3
    move-exception v0

    .line 188
    :goto_0
    nop

    .line 189
    :goto_1
    return-void
.end method

.method private overrideTransitionInternal(ILandroid/content/Context;)V
    .locals 7
    .param p1, "transit"    # I
    .param p2, "context"    # Landroid/content/Context;

    .line 127
    const/4 v0, 0x0

    .local v0, "enterAnim":I
    const/4 v1, 0x0

    .line 129
    .local v1, "exitAnim":I
    const/4 v2, 0x0

    .line 131
    .local v2, "resId":I
    sget-boolean v3, Lcom/huawei/hwanimation/AnimUtil;->IS_EMUI_LITE:Z

    if-nez v3, :cond_0

    sget-boolean v3, Lcom/huawei/hwanimation/AnimUtil;->IS_NOVA_PERF:Z

    if-eqz v3, :cond_1

    .line 133
    :cond_0
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "HwAnimation_lite"

    const-string v5, "style"

    sget-object v6, Lcom/huawei/hwanimation/AnimUtil;->sHwAnimResPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 134
    :cond_1
    if-nez v2, :cond_2

    .line 135
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "HwAnimation"

    const-string v5, "style"

    sget-object v6, Lcom/huawei/hwanimation/AnimUtil;->sHwAnimResPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 137
    :cond_2
    if-nez v2, :cond_3

    .line 139
    return-void

    .line 142
    :cond_3
    sget-object v3, Lcom/android/internal/R$styleable;->WindowAnimation:[I

    invoke-virtual {p2, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 143
    .local v3, "windowAnimationArray":Landroid/content/res/TypedArray;
    const/4 v4, 0x1

    const/4 v5, 0x4

    const/4 v6, 0x0

    if-ne p1, v4, :cond_4

    .line 144
    invoke-virtual {v3, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 145
    const/4 v4, 0x5

    invoke-virtual {v3, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    goto :goto_0

    .line 146
    :cond_4
    const/4 v4, 0x2

    if-ne p1, v4, :cond_5

    .line 147
    const/4 v4, 0x6

    invoke-virtual {v3, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 148
    const/4 v4, 0x7

    invoke-virtual {v3, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    goto :goto_0

    .line 149
    :cond_5
    const/4 v4, 0x3

    if-ne p1, v4, :cond_6

    .line 150
    const/16 v4, 0x8

    invoke-virtual {v3, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 151
    const/16 v4, 0x9

    invoke-virtual {v3, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    goto :goto_0

    .line 152
    :cond_6
    if-ne p1, v5, :cond_7

    .line 153
    const/16 v4, 0xa

    invoke-virtual {v3, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 154
    const/16 v4, 0xb

    invoke-virtual {v3, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 160
    :cond_7
    :goto_0
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 163
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    iget-object v5, p0, Lcom/huawei/hwanimation/AnimUtil;->mClientToken:Landroid/os/IBinder;

    sget-object v6, Lcom/huawei/hwanimation/AnimUtil;->sHwAnimResPackageName:Ljava/lang/String;

    invoke-interface {v4, v5, v6, v0, v1}, Landroid/app/IActivityManager;->overridePendingTransition(Landroid/os/IBinder;Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    goto :goto_1

    .line 165
    :catch_0
    move-exception v4

    .line 168
    :goto_1
    return-void
.end method


# virtual methods
.method public getCubicBezierInterpolator(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/huawei/hwanimation/CubicBezierInterpolator;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .line 70
    const-string v0, "cubicBezierInterpolator"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    new-instance v0, Lcom/huawei/hwanimation/CubicBezierInterpolator;

    invoke-direct {v0, p2, p3}, Lcom/huawei/hwanimation/CubicBezierInterpolator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0

    .line 72
    :cond_0
    const-string v0, "cubicBezierReverseInterpolator"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    new-instance v0, Lcom/huawei/hwanimation/CubicBezierReverseInterpolator;

    invoke-direct {v0, p2, p3}, Lcom/huawei/hwanimation/CubicBezierReverseInterpolator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0

    .line 75
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCubicBezierInterpolator(Ljava/lang/String;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)Lcom/huawei/hwanimation/CubicBezierInterpolator;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;
    .param p4, "attrs"    # Landroid/util/AttributeSet;

    .line 79
    const-string v0, "cubicBezierInterpolator"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    new-instance v0, Lcom/huawei/hwanimation/CubicBezierInterpolator;

    invoke-direct {v0, p2, p3, p4}, Lcom/huawei/hwanimation/CubicBezierInterpolator;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)V

    return-object v0

    .line 81
    :cond_0
    const-string v0, "cubicBezierReverseInterpolator"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    new-instance v0, Lcom/huawei/hwanimation/CubicBezierReverseInterpolator;

    invoke-direct {v0, p2, p3, p4}, Lcom/huawei/hwanimation/CubicBezierReverseInterpolator;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)V

    return-object v0

    .line 84
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public overrideTransition(I)V
    .locals 4
    .param p1, "transit"    # I

    .line 93
    iget-object v0, p0, Lcom/huawei/hwanimation/AnimUtil;->mClientToken:Landroid/os/IBinder;

    if-nez v0, :cond_0

    .line 97
    return-void

    .line 100
    :cond_0
    const/4 v0, 0x0

    .line 108
    .local v0, "hwAnimationContext":Landroid/content/Context;
    :try_start_0
    iget-object v1, p0, Lcom/huawei/hwanimation/AnimUtil;->mClientContext:Landroid/content/Context;

    sget-object v2, Lcom/huawei/hwanimation/AnimUtil;->sHwAnimResPackageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 112
    nop

    .line 114
    if-eqz v0, :cond_1

    .line 116
    invoke-direct {p0, p1, v0}, Lcom/huawei/hwanimation/AnimUtil;->overrideTransitionInternal(ILandroid/content/Context;)V

    .line 123
    :cond_1
    return-void

    .line 109
    :catch_0
    move-exception v1

    .line 111
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return-void
.end method
