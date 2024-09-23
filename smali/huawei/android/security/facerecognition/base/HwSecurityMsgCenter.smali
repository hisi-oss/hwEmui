.class public Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter;
.super Ljava/lang/Object;
.source "HwSecurityMsgCenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter$EventRegInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static gInstance:Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter;

.field private static mInstanceLock:Ljava/lang/Object;


# instance fields
.field private mEvMaps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashMap<",
            "Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;",
            "Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter$EventRegInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    const-class v0, Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter;->TAG:Ljava/lang/String;

    .line 174
    const/4 v0, 0x0

    sput-object v0, Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter;->gInstance:Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter;

    .line 175
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter;->mInstanceLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter;->mEvMaps:Ljava/util/HashMap;

    .line 25
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter;->mLock:Ljava/lang/Object;

    .line 28
    return-void
.end method

.method public static createInstance()V
    .locals 2

    .line 153
    sget-object v0, Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 154
    :try_start_0
    sget-object v1, Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter;->gInstance:Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter;

    if-nez v1, :cond_0

    .line 155
    new-instance v1, Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter;

    invoke-direct {v1}, Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter;-><init>()V

    sput-object v1, Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter;->gInstance:Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter;

    .line 157
    :cond_0
    monitor-exit v0

    .line 158
    return-void

    .line 157
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static destroyInstance()V
    .locals 2

    .line 167
    sget-object v0, Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 168
    :try_start_0
    sget-object v1, Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter;->gInstance:Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter;

    if-eqz v1, :cond_0

    .line 169
    const/4 v1, 0x0

    sput-object v1, Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter;->gInstance:Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter;

    .line 171
    :cond_0
    monitor-exit v0

    .line 172
    return-void

    .line 171
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getInstance()Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter;
    .locals 2

    .line 161
    sget-object v0, Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 162
    :try_start_0
    sget-object v1, Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter;->gInstance:Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter;

    monitor-exit v0

    return-object v1

    .line 163
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static staticRegisterEvent(ILhuawei/android/security/facerecognition/base/HwSecurityTaskBase;Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$EventListener;)Z
    .locals 2
    .param p0, "evId"    # I
    .param p1, "task"    # Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;
    .param p2, "evListener"    # Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$EventListener;

    .line 133
    invoke-static {}, Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter;->getInstance()Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter;

    move-result-object v0

    .line 134
    .local v0, "gMsgCenter":Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter;
    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {v0, p0, p1, p2}, Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter;->registerEvent(ILhuawei/android/security/facerecognition/base/HwSecurityTaskBase;Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$EventListener;)Z

    move-result v1

    return v1

    .line 138
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public static staticUnregisterEvent(ILhuawei/android/security/facerecognition/base/HwSecurityTaskBase;)Z
    .locals 2
    .param p0, "evId"    # I
    .param p1, "task"    # Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;

    .line 143
    invoke-static {}, Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter;->getInstance()Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter;

    move-result-object v0

    .line 144
    .local v0, "gMsgCenter":Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter;
    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {v0, p0, p1}, Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter;->unregisterEvent(ILhuawei/android/security/facerecognition/base/HwSecurityTaskBase;)V

    .line 146
    const/4 v1, 0x1

    return v1

    .line 149
    :cond_0
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method protected getEventMap(IZ)Ljava/util/HashMap;
    .locals 3
    .param p1, "evId"    # I
    .param p2, "createWhileEmpty"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/HashMap<",
            "Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;",
            "Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter$EventRegInfo;",
            ">;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter;->mEvMaps:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 33
    sget-object v0, Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter;->TAG:Ljava/lang/String;

    const-string v2, "mEvMaps is empty!!!"

    invoke-static {v0, v2}, Lhuawei/android/security/facerecognition/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    return-object v1

    .line 37
    :cond_0
    iget-object v0, p0, Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter;->mEvMaps:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    iget-object v0, p0, Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter;->mEvMaps:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    return-object v0

    .line 40
    :cond_1
    if-eqz p2, :cond_2

    .line 41
    iget-object v0, p0, Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter;->mEvMaps:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iget-object v0, p0, Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter;->mEvMaps:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    return-object v0

    .line 45
    :cond_2
    return-object v1
.end method

.method public processEvent(Lhuawei/android/security/facerecognition/FaceRecognizeEvent;)V
    .locals 8
    .param p1, "ev"    # Lhuawei/android/security/facerecognition/FaceRecognizeEvent;

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 107
    .local v0, "copyMaps":Ljava/util/HashMap;, "Ljava/util/HashMap<Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter$EventRegInfo;>;"
    const/4 v1, 0x0

    .line 108
    .local v1, "maps":Ljava/util/HashMap;, "Ljava/util/HashMap<Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter$EventRegInfo;>;"
    iget-object v2, p0, Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 109
    :try_start_0
    invoke-virtual {p1}, Lhuawei/android/security/facerecognition/FaceRecognizeEvent;->getType()I

    move-result v3

    .line 110
    .local v3, "evId":I
    sget-object v4, Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "processEvent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhuawei/android/security/facerecognition/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter;->getEventMap(IZ)Ljava/util/HashMap;

    move-result-object v4

    move-object v1, v4

    .line 112
    if-nez v1, :cond_0

    .line 113
    monitor-exit v2

    return-void

    .line 116
    :cond_0
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 117
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter$EventRegInfo;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter$EventRegInfo;

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter$EventRegInfo;>;"
    goto :goto_0

    .line 119
    .end local v3    # "evId":I
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter$EventRegInfo;

    .line 122
    .local v3, "info":Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter$EventRegInfo;
    if-eqz v3, :cond_2

    invoke-static {v3}, Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter$EventRegInfo;->access$000(Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter$EventRegInfo;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 123
    invoke-static {v3}, Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter$EventRegInfo;->access$200(Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter$EventRegInfo;)Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$EventListener;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 124
    invoke-static {v3}, Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter$EventRegInfo;->access$200(Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter$EventRegInfo;)Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$EventListener;

    move-result-object v4

    invoke-interface {v4, p1}, Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$EventListener;->onEvent(Lhuawei/android/security/facerecognition/FaceRecognizeEvent;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 125
    goto :goto_2

    .line 128
    .end local v3    # "info":Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter$EventRegInfo;
    :cond_2
    goto :goto_1

    .line 129
    :cond_3
    :goto_2
    return-void

    .line 119
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public registerEvent(ILhuawei/android/security/facerecognition/base/HwSecurityTaskBase;Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$EventListener;)Z
    .locals 6
    .param p1, "evId"    # I
    .param p2, "task"    # Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;
    .param p3, "evListener"    # Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$EventListener;

    .line 52
    iget-object v0, p0, Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 53
    const/4 v1, 0x0

    if-eqz p2, :cond_4

    if-nez p3, :cond_0

    goto :goto_0

    .line 57
    :cond_0
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v2}, Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter;->getEventMap(IZ)Ljava/util/HashMap;

    move-result-object v3

    .line 59
    .local v3, "maps":Ljava/util/HashMap;, "Ljava/util/HashMap<Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter$EventRegInfo;>;"
    if-nez v3, :cond_1

    .line 60
    monitor-exit v0

    return v1

    .line 63
    :cond_1
    invoke-virtual {v3, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 64
    monitor-exit v0

    return v1

    .line 68
    :cond_2
    invoke-virtual {p2}, Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;->getParent()Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;

    move-result-object v4

    .line 69
    .local v4, "parent":Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;
    if-eqz v4, :cond_3

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 71
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter$EventRegInfo;

    .line 72
    .local v5, "parentInfo":Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter$EventRegInfo;
    if-eqz v5, :cond_3

    .line 73
    invoke-static {v5, v1}, Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter$EventRegInfo;->access$002(Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter$EventRegInfo;Z)Z

    .line 78
    .end local v5    # "parentInfo":Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter$EventRegInfo;
    :cond_3
    new-instance v1, Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter$EventRegInfo;

    const/4 v5, 0x0

    invoke-direct {v1, p3, v2, v5}, Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter$EventRegInfo;-><init>(Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$EventListener;ZLhuawei/android/security/facerecognition/base/HwSecurityMsgCenter$1;)V

    .line 79
    .local v1, "info":Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter$EventRegInfo;
    invoke-virtual {v3, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    monitor-exit v0

    return v2

    .line 54
    .end local v1    # "info":Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter$EventRegInfo;
    .end local v3    # "maps":Ljava/util/HashMap;, "Ljava/util/HashMap<Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter$EventRegInfo;>;"
    .end local v4    # "parent":Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;
    :cond_4
    :goto_0
    monitor-exit v0

    return v1

    .line 81
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unregisterEvent(ILhuawei/android/security/facerecognition/base/HwSecurityTaskBase;)V
    .locals 5
    .param p1, "evId"    # I
    .param p2, "task"    # Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;

    .line 85
    iget-object v0, p0, Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 86
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v1}, Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter;->getEventMap(IZ)Ljava/util/HashMap;

    move-result-object v1

    .line 88
    .local v1, "maps":Ljava/util/HashMap;, "Ljava/util/HashMap<Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter$EventRegInfo;>;"
    if-nez v1, :cond_0

    .line 89
    monitor-exit v0

    return-void

    .line 92
    :cond_0
    invoke-virtual {p2}, Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;->getParent()Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;

    move-result-object v2

    .line 93
    .local v2, "parent":Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;
    if-eqz v2, :cond_1

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 95
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter$EventRegInfo;

    .line 96
    .local v3, "parentInfo":Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter$EventRegInfo;
    if-eqz v3, :cond_1

    .line 97
    const/4 v4, 0x1

    invoke-static {v3, v4}, Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter$EventRegInfo;->access$002(Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter$EventRegInfo;Z)Z

    .line 101
    .end local v3    # "parentInfo":Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter$EventRegInfo;
    :cond_1
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .end local v1    # "maps":Ljava/util/HashMap;, "Ljava/util/HashMap<Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter$EventRegInfo;>;"
    .end local v2    # "parent":Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;
    monitor-exit v0

    .line 103
    return-void

    .line 102
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
