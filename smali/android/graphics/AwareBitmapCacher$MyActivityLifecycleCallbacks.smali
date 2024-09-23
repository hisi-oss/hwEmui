.class Landroid/graphics/AwareBitmapCacher$MyActivityLifecycleCallbacks;
.super Ljava/lang/Object;
.source "AwareBitmapCacher.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/AwareBitmapCacher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyActivityLifecycleCallbacks"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/graphics/AwareBitmapCacher;


# direct methods
.method constructor <init>(Landroid/graphics/AwareBitmapCacher;)V
    .locals 0
    .param p1, "this$0"    # Landroid/graphics/AwareBitmapCacher;

    .line 364
    iput-object p1, p0, Landroid/graphics/AwareBitmapCacher$MyActivityLifecycleCallbacks;->this$0:Landroid/graphics/AwareBitmapCacher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 371
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 415
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .line 390
    iget-object v0, p0, Landroid/graphics/AwareBitmapCacher$MyActivityLifecycleCallbacks;->this$0:Landroid/graphics/AwareBitmapCacher;

    invoke-static {v0}, Landroid/graphics/AwareBitmapCacher;->access$300(Landroid/graphics/AwareBitmapCacher;)Landroid/graphics/AwareBitmapCacher$MyHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Landroid/graphics/AwareBitmapCacher$MyActivityLifecycleCallbacks;->this$0:Landroid/graphics/AwareBitmapCacher;

    invoke-static {v0}, Landroid/graphics/AwareBitmapCacher;->access$300(Landroid/graphics/AwareBitmapCacher;)Landroid/graphics/AwareBitmapCacher$MyHandler;

    move-result-object v0

    const/16 v1, 0x3e9

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/AwareBitmapCacher$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 395
    :cond_0
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 382
    iget-object v0, p0, Landroid/graphics/AwareBitmapCacher$MyActivityLifecycleCallbacks;->this$0:Landroid/graphics/AwareBitmapCacher;

    invoke-static {v0}, Landroid/graphics/AwareBitmapCacher;->access$300(Landroid/graphics/AwareBitmapCacher;)Landroid/graphics/AwareBitmapCacher$MyHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Landroid/graphics/AwareBitmapCacher$MyActivityLifecycleCallbacks;->this$0:Landroid/graphics/AwareBitmapCacher;

    invoke-static {v0}, Landroid/graphics/AwareBitmapCacher;->access$300(Landroid/graphics/AwareBitmapCacher;)Landroid/graphics/AwareBitmapCacher$MyHandler;

    move-result-object v0

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/graphics/AwareBitmapCacher$MyHandler;->removeMessages(I)V

    .line 385
    :cond_0
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .line 409
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 377
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 402
    return-void
.end method
