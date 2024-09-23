.class Lhuawei/android/hwclipboarddelayread/HwClipboardReadDelayRegisterImpl$1;
.super Lcom/huawei/android/content/IOnPrimaryClipGetedListener$Stub;
.source "HwClipboardReadDelayRegisterImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhuawei/android/hwclipboarddelayread/HwClipboardReadDelayRegisterImpl;->addPrimaryClipGetedListener(Landroid/content/ClipboardManager$OnPrimaryClipGetedListener;Landroid/content/Context;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lhuawei/android/hwclipboarddelayread/HwClipboardReadDelayRegisterImpl;


# direct methods
.method constructor <init>(Lhuawei/android/hwclipboarddelayread/HwClipboardReadDelayRegisterImpl;)V
    .locals 0
    .param p1, "this$0"    # Lhuawei/android/hwclipboarddelayread/HwClipboardReadDelayRegisterImpl;

    .line 44
    iput-object p1, p0, Lhuawei/android/hwclipboarddelayread/HwClipboardReadDelayRegisterImpl$1;->this$0:Lhuawei/android/hwclipboarddelayread/HwClipboardReadDelayRegisterImpl;

    invoke-direct {p0}, Lcom/huawei/android/content/IOnPrimaryClipGetedListener$Stub;-><init>()V

    return-void
.end method

.method public static synthetic lambda$dispatchPrimaryClipGet$0(Lhuawei/android/hwclipboarddelayread/HwClipboardReadDelayRegisterImpl$1;)V
    .locals 1

    .line 50
    iget-object v0, p0, Lhuawei/android/hwclipboarddelayread/HwClipboardReadDelayRegisterImpl$1;->this$0:Lhuawei/android/hwclipboarddelayread/HwClipboardReadDelayRegisterImpl;

    invoke-virtual {v0}, Lhuawei/android/hwclipboarddelayread/HwClipboardReadDelayRegisterImpl;->reportPrimaryClipGeted()V

    .line 51
    return-void
.end method


# virtual methods
.method public dispatchPrimaryClipGet()V
    .locals 3

    .line 47
    iget-object v0, p0, Lhuawei/android/hwclipboarddelayread/HwClipboardReadDelayRegisterImpl$1;->this$0:Lhuawei/android/hwclipboarddelayread/HwClipboardReadDelayRegisterImpl;

    invoke-static {v0}, Lhuawei/android/hwclipboarddelayread/HwClipboardReadDelayRegisterImpl;->access$000(Lhuawei/android/hwclipboarddelayread/HwClipboardReadDelayRegisterImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 48
    :try_start_0
    iget-object v1, p0, Lhuawei/android/hwclipboarddelayread/HwClipboardReadDelayRegisterImpl$1;->this$0:Lhuawei/android/hwclipboarddelayread/HwClipboardReadDelayRegisterImpl;

    invoke-static {v1}, Lhuawei/android/hwclipboarddelayread/HwClipboardReadDelayRegisterImpl;->access$100(Lhuawei/android/hwclipboarddelayread/HwClipboardReadDelayRegisterImpl;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 49
    iget-object v1, p0, Lhuawei/android/hwclipboarddelayread/HwClipboardReadDelayRegisterImpl$1;->this$0:Lhuawei/android/hwclipboarddelayread/HwClipboardReadDelayRegisterImpl;

    invoke-static {v1}, Lhuawei/android/hwclipboarddelayread/HwClipboardReadDelayRegisterImpl;->access$100(Lhuawei/android/hwclipboarddelayread/HwClipboardReadDelayRegisterImpl;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lhuawei/android/hwclipboarddelayread/-$$Lambda$HwClipboardReadDelayRegisterImpl$1$Kr121qiZzK8juS3Psbak_fX1g6w;

    invoke-direct {v2, p0}, Lhuawei/android/hwclipboarddelayread/-$$Lambda$HwClipboardReadDelayRegisterImpl$1$Kr121qiZzK8juS3Psbak_fX1g6w;-><init>(Lhuawei/android/hwclipboarddelayread/HwClipboardReadDelayRegisterImpl$1;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 53
    :cond_0
    monitor-exit v0

    .line 54
    return-void

    .line 53
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
