.class Lhuawei/android/security/HwBehaviorCollectManagerImpl$2;
.super Ljava/lang/Object;
.source "HwBehaviorCollectManagerImpl.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhuawei/android/security/HwBehaviorCollectManagerImpl;->bindAnalyzerService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lhuawei/android/security/HwBehaviorCollectManagerImpl;


# direct methods
.method constructor <init>(Lhuawei/android/security/HwBehaviorCollectManagerImpl;)V
    .locals 0
    .param p1, "this$0"    # Lhuawei/android/security/HwBehaviorCollectManagerImpl;

    .line 220
    iput-object p1, p0, Lhuawei/android/security/HwBehaviorCollectManagerImpl$2;->this$0:Lhuawei/android/security/HwBehaviorCollectManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 223
    invoke-static {}, Lhuawei/android/security/HwBehaviorCollectManagerImpl;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "binderDied"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v0, p0, Lhuawei/android/security/HwBehaviorCollectManagerImpl$2;->this$0:Lhuawei/android/security/HwBehaviorCollectManagerImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lhuawei/android/security/HwBehaviorCollectManagerImpl;->access$202(Lhuawei/android/security/HwBehaviorCollectManagerImpl;Lhuawei/android/security/IAppBehaviorDataAnalyzer;)Lhuawei/android/security/IAppBehaviorDataAnalyzer;

    .line 225
    iget-object v0, p0, Lhuawei/android/security/HwBehaviorCollectManagerImpl$2;->this$0:Lhuawei/android/security/HwBehaviorCollectManagerImpl;

    invoke-static {v0}, Lhuawei/android/security/HwBehaviorCollectManagerImpl;->access$300(Lhuawei/android/security/HwBehaviorCollectManagerImpl;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 226
    return-void
.end method
