.class Lcom/android/ims/HwImsManagerInner$1;
.super Ljava/lang/Object;
.source "HwImsManagerInner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ims/HwImsManagerInner;->setWfcModeInternal(Landroid/content/Context;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$imsManager:Lcom/android/ims/ImsManager;

.field final synthetic val$value:I


# direct methods
.method constructor <init>(Lcom/android/ims/ImsManager;I)V
    .locals 0

    .line 423
    iput-object p1, p0, Lcom/android/ims/HwImsManagerInner$1;->val$imsManager:Lcom/android/ims/ImsManager;

    iput p2, p0, Lcom/android/ims/HwImsManagerInner$1;->val$value:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 426
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/HwImsManagerInner$1;->val$imsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->getConfigInterface()Lcom/android/ims/ImsConfig;

    move-result-object v0

    const/16 v1, 0x1b

    iget v2, p0, Lcom/android/ims/HwImsManagerInner$1;->val$value:I

    invoke-virtual {v0, v1, v2}, Lcom/android/ims/ImsConfig;->setProvisionedValue(II)I
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 431
    goto :goto_0

    .line 429
    :catch_0
    move-exception v0

    .line 430
    .local v0, "e":Lcom/android/ims/ImsException;
    const-string v1, "setWfcModeInternal(): "

    invoke-static {v1, v0}, Lcom/android/ims/HwImsManagerInner;->access$000(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 432
    .end local v0    # "e":Lcom/android/ims/ImsException;
    :goto_0
    return-void
.end method
