.class Landroid/util/HwLogExceptionInner$UpdateBlackListTask;
.super Ljava/lang/Object;
.source "HwLogExceptionInner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/HwLogExceptionInner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UpdateBlackListTask"
.end annotation


# instance fields
.field private mLogException:Landroid/util/HwLogExceptionInner;


# direct methods
.method constructor <init>(Landroid/util/HwLogExceptionInner;)V
    .locals 0
    .param p1, "logException"    # Landroid/util/HwLogExceptionInner;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Landroid/util/HwLogExceptionInner$UpdateBlackListTask;->mLogException:Landroid/util/HwLogExceptionInner;

    .line 30
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 32
    iget-object v0, p0, Landroid/util/HwLogExceptionInner$UpdateBlackListTask;->mLogException:Landroid/util/HwLogExceptionInner;

    invoke-virtual {v0}, Landroid/util/HwLogExceptionInner;->updateAllSwitch()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    const-string v0, "HwLogExceptionInner"

    const-string v1, "updateLogSwitch"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    iget-object v0, p0, Landroid/util/HwLogExceptionInner$UpdateBlackListTask;->mLogException:Landroid/util/HwLogExceptionInner;

    invoke-virtual {v0}, Landroid/util/HwLogExceptionInner;->updateLogSwitch()V

    .line 36
    :cond_0
    return-void
.end method
