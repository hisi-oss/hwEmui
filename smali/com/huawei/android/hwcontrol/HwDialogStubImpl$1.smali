.class Lcom/huawei/android/hwcontrol/HwDialogStubImpl$1;
.super Ljava/lang/Object;
.source "HwDialogStubImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/android/hwcontrol/HwDialogStubImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/android/hwcontrol/HwDialogStubImpl;


# direct methods
.method constructor <init>(Lcom/huawei/android/hwcontrol/HwDialogStubImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huawei/android/hwcontrol/HwDialogStubImpl;

    .line 81
    iput-object p1, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl$1;->this$0:Lcom/huawei/android/hwcontrol/HwDialogStubImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/huawei/android/hwcontrol/HwDialogStubImpl$1;->this$0:Lcom/huawei/android/hwcontrol/HwDialogStubImpl;

    invoke-static {v0}, Lcom/huawei/android/hwcontrol/HwDialogStubImpl;->access$000(Lcom/huawei/android/hwcontrol/HwDialogStubImpl;)V

    .line 84
    return-void
.end method
