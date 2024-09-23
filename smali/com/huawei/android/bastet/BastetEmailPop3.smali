.class public Lcom/huawei/android/bastet/BastetEmailPop3;
.super Lcom/huawei/android/bastet/BastetEmail;
.source "BastetEmailPop3.java"


# direct methods
.method public constructor <init>(Lcom/huawei/android/bastet/EmailLoginInfo;Lcom/huawei/android/bastet/EmailSyncConfig;Landroid/os/Handler;)V
    .locals 1
    .param p1, "login"    # Lcom/huawei/android/bastet/EmailLoginInfo;
    .param p2, "config"    # Lcom/huawei/android/bastet/EmailSyncConfig;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 36
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/huawei/android/bastet/BastetEmail;-><init>(Lcom/huawei/android/bastet/EmailLoginInfo;Lcom/huawei/android/bastet/EmailSyncConfig;ILandroid/os/Handler;)V

    .line 37
    return-void
.end method
