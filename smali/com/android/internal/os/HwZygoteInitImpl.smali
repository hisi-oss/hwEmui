.class public Lcom/android/internal/os/HwZygoteInitImpl;
.super Ljava/lang/Object;
.source "HwZygoteInitImpl.java"

# interfaces
.implements Lcom/android/internal/os/HwZygoteInit;


# static fields
.field private static final TAG:Ljava/lang/String; = "HwZygoteInitImpl"

.field private static sInstance:Lcom/android/internal/os/HwZygoteInitImpl;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getDefault()Lcom/android/internal/os/HwZygoteInit;
    .locals 2

    const-class v0, Lcom/android/internal/os/HwZygoteInitImpl;

    monitor-enter v0

    .line 31
    :try_start_0
    sget-object v1, Lcom/android/internal/os/HwZygoteInitImpl;->sInstance:Lcom/android/internal/os/HwZygoteInitImpl;

    if-nez v1, :cond_0

    .line 32
    new-instance v1, Lcom/android/internal/os/HwZygoteInitImpl;

    invoke-direct {v1}, Lcom/android/internal/os/HwZygoteInitImpl;-><init>()V

    sput-object v1, Lcom/android/internal/os/HwZygoteInitImpl;->sInstance:Lcom/android/internal/os/HwZygoteInitImpl;

    .line 34
    :cond_0
    sget-object v1, Lcom/android/internal/os/HwZygoteInitImpl;->sInstance:Lcom/android/internal/os/HwZygoteInitImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 30
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public getDexOptNeededForMapleSystemServer(Landroid/os/IInstalld;[Ljava/lang/String;Ljava/lang/String;)[I
    .locals 19
    .param p1, "installd"    # Landroid/os/IInstalld;
    .param p2, "classPathElements"    # [Ljava/lang/String;
    .param p3, "instructionSet"    # Ljava/lang/String;

    move-object/from16 v9, p2

    .line 39
    if-eqz p1, :cond_4

    if-nez v9, :cond_0

    goto/16 :goto_3

    .line 42
    :cond_0
    const/4 v10, 0x0

    .line 43
    .local v10, "retDexOpt":[I
    array-length v11, v9

    .line 44
    .local v11, "size":I
    const-string v0, "dalvik.vm.systemservercompilerfilter"

    const-string v1, "speed"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 46
    .local v12, "systemServerFilter":Ljava/lang/String;
    new-array v13, v11, [Ljava/lang/String;

    .line 47
    .local v13, "instructionSets":[Ljava/lang/String;
    new-array v14, v11, [Ljava/lang/String;

    .line 48
    .local v14, "compilerFilters":[Ljava/lang/String;
    new-array v8, v11, [Ljava/lang/String;

    .line 49
    .local v8, "clContexts":[Ljava/lang/String;
    new-array v7, v11, [Z

    .line 50
    .local v7, "newProfiles":[Z
    new-array v6, v11, [Z

    .line 51
    .local v6, "downGrades":[Z
    new-array v5, v11, [I

    .line 52
    .local v5, "uids":[I
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    if-ge v1, v11, :cond_1

    .line 53
    aput-object p3, v13, v1

    .line 54
    aput-object v12, v14, v1

    .line 55
    const-string v2, ""

    aput-object v2, v8, v1

    .line 56
    aput-boolean v0, v7, v1

    .line 57
    aput-boolean v0, v6, v1

    .line 58
    const/16 v2, 0x3e8

    aput v2, v5, v1

    .line 52
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 61
    .end local v1    # "i":I
    :cond_1
    move-object/from16 v1, p1

    move-object v2, v9

    move-object v3, v13

    move-object v4, v14

    move-object v15, v5

    move-object v5, v8

    .end local v5    # "uids":[I
    .local v15, "uids":[I
    move-object/from16 v16, v6

    move-object v6, v7

    .end local v6    # "downGrades":[Z
    .local v16, "downGrades":[Z
    move-object/from16 v17, v7

    move-object/from16 v7, v16

    .end local v7    # "newProfiles":[Z
    .local v17, "newProfiles":[Z
    move-object/from16 v18, v8

    move-object v8, v15

    .end local v8    # "clContexts":[Ljava/lang/String;
    .local v18, "clContexts":[Ljava/lang/String;
    :try_start_0
    invoke-interface/range {v1 .. v8}, Landroid/os/IInstalld;->getDexOptNeeded([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Z[Z[I)[I

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .end local v10    # "retDexOpt":[I
    .local v0, "retDexOpt":[I
    goto :goto_1

    .line 63
    .end local v0    # "retDexOpt":[I
    .restart local v10    # "retDexOpt":[I
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 64
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 65
    .end local v10    # "retDexOpt":[I
    .local v1, "retDexOpt":[I
    const-string v2, "HwZygoteInitImpl"

    const-string v3, "getMapleSSDexOptNeeded catch exception!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 67
    .end local v0    # "e":Ljava/lang/Exception;
    move-object v0, v1

    .end local v1    # "retDexOpt":[I
    .local v0, "retDexOpt":[I
    :goto_1
    if-nez v0, :cond_2

    .line 68
    const-string v1, "HwZygoteInitImpl"

    const-string v2, "Failed to getMapleSSDexOptNeeded: retDexOpt is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 69
    :cond_2
    array-length v1, v0

    if-eq v1, v11, :cond_3

    .line 70
    const/4 v0, 0x0

    .line 71
    const-string v1, "HwZygoteInitImpl"

    const-string v2, "Failed to getMapleSSDexOptNeeded!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_3
    :goto_2
    return-object v0

    .line 40
    .end local v0    # "retDexOpt":[I
    .end local v11    # "size":I
    .end local v12    # "systemServerFilter":Ljava/lang/String;
    .end local v13    # "instructionSets":[Ljava/lang/String;
    .end local v14    # "compilerFilters":[Ljava/lang/String;
    .end local v15    # "uids":[I
    .end local v16    # "downGrades":[Z
    .end local v17    # "newProfiles":[Z
    .end local v18    # "clContexts":[Ljava/lang/String;
    :cond_4
    :goto_3
    const/4 v0, 0x0

    return-object v0
.end method
