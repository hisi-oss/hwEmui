.class Lhuawei/android/app/HwActivityThreadImpl$1;
.super Ljava/lang/Object;
.source "HwActivityThreadImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhuawei/android/app/HwActivityThreadImpl;->setNavigationBarColor(Landroid/app/Activity;Landroid/os/Handler;Landroid/content/res/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lhuawei/android/app/HwActivityThreadImpl;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lhuawei/android/app/HwActivityThreadImpl;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lhuawei/android/app/HwActivityThreadImpl;

    .line 330
    iput-object p1, p0, Lhuawei/android/app/HwActivityThreadImpl$1;->this$0:Lhuawei/android/app/HwActivityThreadImpl;

    iput-object p2, p0, Lhuawei/android/app/HwActivityThreadImpl$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 334
    :try_start_0
    iget-object v0, p0, Lhuawei/android/app/HwActivityThreadImpl$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 335
    iget-object v0, p0, Lhuawei/android/app/HwActivityThreadImpl$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 336
    iget-object v0, p0, Lhuawei/android/app/HwActivityThreadImpl$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x8000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 337
    iget-object v0, p0, Lhuawei/android/app/HwActivityThreadImpl$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lhuawei/android/app/HwActivityThreadImpl$1;->val$activity:Landroid/app/Activity;

    iget v1, v1, Landroid/app/Activity;->mNavigationBarColor:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 338
    const-string v0, "HwActivityThreadImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set NavigationBar Color: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lhuawei/android/app/HwActivityThreadImpl$1;->val$activity:Landroid/app/Activity;

    iget v2, v2, Landroid/app/Activity;->mNavigationBarColor:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    goto :goto_0

    .line 339
    :catch_0
    move-exception v0

    .line 340
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "HwActivityThreadImpl"

    const-string v2, "set NavigationBar Color error!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
