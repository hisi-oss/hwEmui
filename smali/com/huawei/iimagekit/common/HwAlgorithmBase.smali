.class public Lcom/huawei/iimagekit/common/HwAlgorithmBase;
.super Ljava/lang/Object;
.source "HwAlgorithmBase.java"


# static fields
.field public static final ALGO_CPUBOXBLUR:I = 0xa

.field public static final ALGO_CPUFASTBLUR:I = 0xb

.field public static final ALGO_GPUBOXBLUR:I = 0x2

.field public static final ALGO_GPUGAUSSBLUR:I = 0x1

.field public static final ALGO_NONEBLUR:I = 0x0

.field public static final ALGO_SHADOW_BOXBLUR:I = 0x6

.field public static final ALGO_SHADOW_GPUBOXBLUR:I = 0x9

.field public static final ALGO_SHADOW_GPUGAUSSBLUR:I = 0x8

.field public static final ALGO_SHADOW_NONESHADOW:I = 0x5

.field public static final BLUR_SUCCESS:I = 0x0

.field protected static final DEBUG_ENABLE:Z = false

.field public static final ERRBLUR_BLUR_DISABLE:I = 0x5

.field public static final ERRBLUR_INPUT:I = 0x1

.field public static final ERRBLUR_INPUT_CONTEXT:I = 0x8

.field public static final ERRBLUR_INPUT_SIZE:I = 0x7

.field public static final ERRBLUR_OUTPUT:I = 0x2

.field public static final ERRBLUR_RADIUS:I = 0x4

.field public static final ERRBLUR_SHADOW_DISABLE:I = 0x6

.field public static final ERRBLUR_SIZE:I = 0x3

.field public static final IMAGEKIT_BLUR_PROP:Z

.field public static final IMAGEKIT_SHADOW_PROP:Z

.field protected static final LOG_DEBUG:I = 0x2

.field protected static final LOG_ERROR:I = 0x4

.field protected static final LOG_INFO:I = 0x1

.field protected static final LOG_WARNING:I = 0x3

.field public static final MAX_RADIUS:I = 0x19

.field public static final MIN_RADIUS:I = 0x2

.field public static final MIN_SIZE:I = 0x3

.field protected static final TAG:Ljava/lang/String; = "iimagekit"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 60
    const-string v0, "ro.config.hw_emui_iimagekit_blur"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/huawei/iimagekit/common/HwAlgorithmBase;->IMAGEKIT_BLUR_PROP:Z

    .line 61
    const-string v0, "ro.config.hw_emui_iimagekit_shadow"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/huawei/iimagekit/common/HwAlgorithmBase;->IMAGEKIT_SHADOW_PROP:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public localLog(ILjava/lang/String;)V
    .locals 1
    .param p1, "logLevel"    # I
    .param p2, "logInfo"    # Ljava/lang/String;

    .line 72
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 85
    :pswitch_0
    const-string v0, "iimagekit"

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    goto :goto_0

    .line 82
    :pswitch_1
    const-string v0, "iimagekit"

    invoke-static {v0, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    goto :goto_0

    .line 80
    :pswitch_2
    goto :goto_0

    .line 76
    :pswitch_3
    nop

    .line 91
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
