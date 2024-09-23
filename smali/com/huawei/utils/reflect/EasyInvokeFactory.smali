.class public Lcom/huawei/utils/reflect/EasyInvokeFactory;
.super Ljava/lang/Object;
.source "EasyInvokeFactory.java"


# static fields
.field private static invokeUtilsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/huawei/utils/reflect/EasyInvokeUtils;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/huawei/utils/reflect/EasyInvokeFactory;->invokeUtilsMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInvokeUtils(Ljava/lang/Class;)Lcom/huawei/utils/reflect/EasyInvokeUtils;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/huawei/utils/reflect/EasyInvokeUtils;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-class v0, Lcom/huawei/utils/reflect/EasyInvokeFactory;

    monitor-enter v0

    .line 15
    :try_start_0
    sget-object v1, Lcom/huawei/utils/reflect/EasyInvokeFactory;->invokeUtilsMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/utils/reflect/EasyInvokeUtils;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .local v1, "invokeUtil":Lcom/huawei/utils/reflect/EasyInvokeUtils;
    if-nez v1, :cond_0

    .line 18
    const/4 v2, 0x0

    :try_start_1
    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {p0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 19
    .local v3, "constructor":Ljava/lang/reflect/Constructor;
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/utils/reflect/EasyInvokeUtils;

    move-object v1, v2

    .line 20
    sget-object v2, Lcom/huawei/utils/reflect/EasyInvokeFactory;->invokeUtilsMap:Ljava/util/Map;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v3    # "constructor":Ljava/lang/reflect/Constructor;
    goto :goto_0

    .line 31
    :catch_0
    move-exception v2

    .line 32
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    goto :goto_1

    .line 29
    :catch_1
    move-exception v2

    .line 30
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_0

    .line 27
    :catch_2
    move-exception v2

    .line 28
    .local v2, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v2}, Ljava/lang/InstantiationException;->printStackTrace()V

    .end local v2    # "e":Ljava/lang/InstantiationException;
    goto :goto_0

    .line 25
    :catch_3
    move-exception v2

    .line 26
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_0

    .line 23
    :catch_4
    move-exception v2

    .line 24
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    goto :goto_0

    .line 21
    :catch_5
    move-exception v2

    .line 22
    .local v2, "e":Ljava/lang/SecurityException;
    invoke-virtual {v2}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 33
    .end local v2    # "e":Ljava/lang/SecurityException;
    :goto_0
    nop

    .line 34
    :goto_1
    if-nez v1, :cond_0

    .line 35
    const-string v2, "EasyInvokeFactory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "create instance error clazz["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 38
    :cond_0
    monitor-exit v0

    return-object v1

    .line 14
    .end local v1    # "invokeUtil":Lcom/huawei/utils/reflect/EasyInvokeUtils;
    .end local p0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
