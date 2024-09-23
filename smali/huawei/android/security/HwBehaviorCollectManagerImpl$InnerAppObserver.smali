.class Lhuawei/android/security/HwBehaviorCollectManagerImpl$InnerAppObserver;
.super Lhuawei/android/security/IInspectAppObserver$Stub;
.source "HwBehaviorCollectManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhuawei/android/security/HwBehaviorCollectManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InnerAppObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lhuawei/android/security/HwBehaviorCollectManagerImpl;


# direct methods
.method constructor <init>(Lhuawei/android/security/HwBehaviorCollectManagerImpl;)V
    .locals 3

    .line 256
    iput-object p1, p0, Lhuawei/android/security/HwBehaviorCollectManagerImpl$InnerAppObserver;->this$0:Lhuawei/android/security/HwBehaviorCollectManagerImpl;

    invoke-direct {p0}, Lhuawei/android/security/IInspectAppObserver$Stub;-><init>()V

    .line 257
    const-string v0, "I"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InnerAppObserver new"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lhuawei/android/security/HwBehaviorCollectManagerImpl;->access$400(Lhuawei/android/security/HwBehaviorCollectManagerImpl;Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    return-void
.end method


# virtual methods
.method public getVersion()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 286
    iget-object v0, p0, Lhuawei/android/security/HwBehaviorCollectManagerImpl$InnerAppObserver;->this$0:Lhuawei/android/security/HwBehaviorCollectManagerImpl;

    invoke-static {v0}, Lhuawei/android/security/HwBehaviorCollectManagerImpl;->access$500(Lhuawei/android/security/HwBehaviorCollectManagerImpl;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateInspectUid(Ljava/util/Map;)V
    .locals 6
    .param p1, "uids"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 262
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 265
    .local v0, "loseUidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :try_start_0
    iget-object v1, p0, Lhuawei/android/security/HwBehaviorCollectManagerImpl$InnerAppObserver;->this$0:Lhuawei/android/security/HwBehaviorCollectManagerImpl;

    invoke-static {v1}, Lhuawei/android/security/HwBehaviorCollectManagerImpl;->access$300(Lhuawei/android/security/HwBehaviorCollectManagerImpl;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 267
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 268
    .local v2, "value":Ljava/lang/Object;
    move-object v3, v2

    check-cast v3, Ljava/lang/Integer;

    .line 269
    .local v3, "uid":Ljava/lang/Integer;
    iget-object v4, p0, Lhuawei/android/security/HwBehaviorCollectManagerImpl$InnerAppObserver;->this$0:Lhuawei/android/security/HwBehaviorCollectManagerImpl;

    invoke-static {v4}, Lhuawei/android/security/HwBehaviorCollectManagerImpl;->access$300(Lhuawei/android/security/HwBehaviorCollectManagerImpl;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 270
    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 272
    :cond_0
    iget-object v4, p0, Lhuawei/android/security/HwBehaviorCollectManagerImpl$InnerAppObserver;->this$0:Lhuawei/android/security/HwBehaviorCollectManagerImpl;

    invoke-static {v4}, Lhuawei/android/security/HwBehaviorCollectManagerImpl;->access$300(Lhuawei/android/security/HwBehaviorCollectManagerImpl;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    .end local v2    # "value":Ljava/lang/Object;
    .end local v3    # "uid":Ljava/lang/Integer;
    :goto_1
    goto :goto_0

    .line 276
    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 277
    .local v2, "value":Ljava/lang/Integer;
    iget-object v3, p0, Lhuawei/android/security/HwBehaviorCollectManagerImpl$InnerAppObserver;->this$0:Lhuawei/android/security/HwBehaviorCollectManagerImpl;

    invoke-static {v3}, Lhuawei/android/security/HwBehaviorCollectManagerImpl;->access$300(Lhuawei/android/security/HwBehaviorCollectManagerImpl;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    .end local v2    # "value":Ljava/lang/Integer;
    goto :goto_2

    .line 281
    :cond_2
    goto :goto_3

    .line 279
    :catch_0
    move-exception v1

    .line 280
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lhuawei/android/security/HwBehaviorCollectManagerImpl$InnerAppObserver;->this$0:Lhuawei/android/security/HwBehaviorCollectManagerImpl;

    const-string v3, "E"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed updateInspectUid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lhuawei/android/security/HwBehaviorCollectManagerImpl;->access$400(Lhuawei/android/security/HwBehaviorCollectManagerImpl;Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_3
    return-void
.end method
