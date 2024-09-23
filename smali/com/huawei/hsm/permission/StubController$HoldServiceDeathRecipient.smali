.class final Lcom/huawei/hsm/permission/StubController$HoldServiceDeathRecipient;
.super Ljava/lang/Object;
.source "StubController.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hsm/permission/StubController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HoldServiceDeathRecipient"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/huawei/hsm/permission/StubController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/huawei/hsm/permission/StubController$1;

    .line 169
    invoke-direct {p0}, Lcom/huawei/hsm/permission/StubController$HoldServiceDeathRecipient;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 171
    const-string v0, "StubController"

    const-string v1, "binderDied HoldService Die!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-static {}, Lcom/huawei/hsm/permission/StubController;->access$100()V

    .line 173
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/huawei/hsm/permission/StubController;->access$202(Lcom/huawei/permission/IHoldService;)Lcom/huawei/permission/IHoldService;

    .line 174
    return-void
.end method
