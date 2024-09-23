.class Lhuawei/android/security/HwBehaviorCollectManagerImpl$1;
.super Ljava/util/TimerTask;
.source "HwBehaviorCollectManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhuawei/android/security/HwBehaviorCollectManagerImpl;->timerDiscoverService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lhuawei/android/security/HwBehaviorCollectManagerImpl;

.field private timerCount:I


# direct methods
.method constructor <init>(Lhuawei/android/security/HwBehaviorCollectManagerImpl;)V
    .locals 1
    .param p1, "this$0"    # Lhuawei/android/security/HwBehaviorCollectManagerImpl;

    .line 194
    iput-object p1, p0, Lhuawei/android/security/HwBehaviorCollectManagerImpl$1;->this$0:Lhuawei/android/security/HwBehaviorCollectManagerImpl;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 195
    const/4 v0, 0x0

    iput v0, p0, Lhuawei/android/security/HwBehaviorCollectManagerImpl$1;->timerCount:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 198
    iget v0, p0, Lhuawei/android/security/HwBehaviorCollectManagerImpl$1;->timerCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lhuawei/android/security/HwBehaviorCollectManagerImpl$1;->timerCount:I

    .line 199
    iget v0, p0, Lhuawei/android/security/HwBehaviorCollectManagerImpl$1;->timerCount:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 200
    const/4 v0, 0x0

    iput v0, p0, Lhuawei/android/security/HwBehaviorCollectManagerImpl$1;->timerCount:I

    .line 201
    iget-object v0, p0, Lhuawei/android/security/HwBehaviorCollectManagerImpl$1;->this$0:Lhuawei/android/security/HwBehaviorCollectManagerImpl;

    invoke-static {v0}, Lhuawei/android/security/HwBehaviorCollectManagerImpl;->access$000(Lhuawei/android/security/HwBehaviorCollectManagerImpl;)V

    .line 203
    :cond_0
    return-void
.end method
