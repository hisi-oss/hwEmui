.class public Lcom/huawei/android/bastet/BastetEmailImap;
.super Lcom/huawei/android/bastet/BastetEmail;
.source "BastetEmailImap.java"


# instance fields
.field private mIdCmd:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/huawei/android/bastet/EmailLoginInfo;Lcom/huawei/android/bastet/EmailSyncConfig;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 1
    .param p1, "login"    # Lcom/huawei/android/bastet/EmailLoginInfo;
    .param p2, "config"    # Lcom/huawei/android/bastet/EmailSyncConfig;
    .param p3, "idCmd"    # Ljava/lang/String;
    .param p4, "handler"    # Landroid/os/Handler;

    .line 40
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0, p4}, Lcom/huawei/android/bastet/BastetEmail;-><init>(Lcom/huawei/android/bastet/EmailLoginInfo;Lcom/huawei/android/bastet/EmailSyncConfig;ILandroid/os/Handler;)V

    .line 41
    iput-object p3, p0, Lcom/huawei/android/bastet/BastetEmailImap;->mIdCmd:Ljava/lang/String;

    .line 42
    return-void
.end method


# virtual methods
.method public startProxy()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 52
    iget v0, p0, Lcom/huawei/android/bastet/BastetEmailImap;->mProxyId:I

    if-lez v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/huawei/android/bastet/BastetEmailImap;->mIBastetManager:Lcom/huawei/android/bastet/IBastetManager;

    iget v1, p0, Lcom/huawei/android/bastet/BastetEmailImap;->mProxyId:I

    iget-object v2, p0, Lcom/huawei/android/bastet/BastetEmailImap;->mIdCmd:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/huawei/android/bastet/IBastetManager;->setImapIdCmd(ILjava/lang/String;)I

    .line 57
    invoke-super {p0}, Lcom/huawei/android/bastet/BastetEmail;->startProxy()V

    .line 58
    return-void

    .line 53
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0
.end method
