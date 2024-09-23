.class Lhuawei/android/hwscrollerboost/HwScrollerBoostMgrImpl$1;
.super Ljava/lang/Object;
.source "HwScrollerBoostMgrImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhuawei/android/hwscrollerboost/HwScrollerBoostMgrImpl;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lhuawei/android/hwscrollerboost/HwScrollerBoostMgrImpl;


# direct methods
.method constructor <init>(Lhuawei/android/hwscrollerboost/HwScrollerBoostMgrImpl;)V
    .locals 0
    .param p1, "this$0"    # Lhuawei/android/hwscrollerboost/HwScrollerBoostMgrImpl;

    .line 51
    iput-object p1, p0, Lhuawei/android/hwscrollerboost/HwScrollerBoostMgrImpl$1;->this$0:Lhuawei/android/hwscrollerboost/HwScrollerBoostMgrImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 54
    iget-object v0, p0, Lhuawei/android/hwscrollerboost/HwScrollerBoostMgrImpl$1;->this$0:Lhuawei/android/hwscrollerboost/HwScrollerBoostMgrImpl;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lhuawei/android/hwscrollerboost/HwScrollerBoostMgrImpl;->listFling(I)V

    .line 55
    return-void
.end method
