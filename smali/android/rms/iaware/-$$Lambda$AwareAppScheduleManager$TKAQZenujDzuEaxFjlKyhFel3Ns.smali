.class public final synthetic Landroid/rms/iaware/-$$Lambda$AwareAppScheduleManager$TKAQZenujDzuEaxFjlKyhFel3Ns;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# instance fields
.field private final synthetic f$0:Landroid/rms/iaware/AwareAppScheduleManager;


# direct methods
.method public synthetic constructor <init>(Landroid/rms/iaware/AwareAppScheduleManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/rms/iaware/-$$Lambda$AwareAppScheduleManager$TKAQZenujDzuEaxFjlKyhFel3Ns;->f$0:Landroid/rms/iaware/AwareAppScheduleManager;

    return-void
.end method


# virtual methods
.method public final queueIdle()Z
    .locals 1

    iget-object v0, p0, Landroid/rms/iaware/-$$Lambda$AwareAppScheduleManager$TKAQZenujDzuEaxFjlKyhFel3Ns;->f$0:Landroid/rms/iaware/AwareAppScheduleManager;

    invoke-static {v0}, Landroid/rms/iaware/AwareAppScheduleManager;->lambda$postNewWebViewToUi$1(Landroid/rms/iaware/AwareAppScheduleManager;)Z

    move-result v0

    return v0
.end method
