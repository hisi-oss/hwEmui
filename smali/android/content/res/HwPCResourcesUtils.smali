.class public Landroid/content/res/HwPCResourcesUtils;
.super Ljava/lang/Object;
.source "HwPCResourcesUtils.java"

# interfaces
.implements Landroid/content/res/IHwPCResourcesUtils;


# static fields
.field static final COLUMN_FOUR:I = 0x3

.field static final COLUMN_ONE:I = 0x0

.field static final COLUMN_THREE:I = 0x2

.field static final COLUMN_TWO:I = 0x1

.field private static mInstance:Landroid/content/res/HwPCResourcesUtils;

.field private static final mLock:Ljava/lang/Object;


# instance fields
.field private mAssetManager:Landroid/content/res/AssetManager;

.field final mOverrideNames:[[Ljava/lang/String;

.field private mOverrideValues:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/TypedValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    const/4 v0, 0x0

    sput-object v0, Landroid/content/res/HwPCResourcesUtils;->mInstance:Landroid/content/res/HwPCResourcesUtils;

    .line 15
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/content/res/HwPCResourcesUtils;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/res/AssetManager;)V
    .locals 5
    .param p1, "assetManager"    # Landroid/content/res/AssetManager;

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/HwPCResourcesUtils;->mOverrideValues:Landroid/util/SparseArray;

    .line 30
    const/4 v0, 0x3

    new-array v0, v0, [[Ljava/lang/String;

    const-string v1, "navigation_bar_width"

    const-string v2, "dimen"

    const-string v3, "android"

    const-string v4, "hw_desktop_dock_height"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "navigation_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    const-string v4, "hw_desktop_dock_height"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    const-string v4, "1"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iput-object v0, p0, Landroid/content/res/HwPCResourcesUtils;->mOverrideNames:[[Ljava/lang/String;

    .line 17
    iput-object p1, p0, Landroid/content/res/HwPCResourcesUtils;->mAssetManager:Landroid/content/res/AssetManager;

    .line 18
    return-void
.end method

.method public static getDefault(Landroid/content/res/AssetManager;)Landroid/content/res/HwPCResourcesUtils;
    .locals 2
    .param p0, "assetManager"    # Landroid/content/res/AssetManager;

    .line 21
    sget-object v0, Landroid/content/res/HwPCResourcesUtils;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 22
    :try_start_0
    sget-object v1, Landroid/content/res/HwPCResourcesUtils;->mInstance:Landroid/content/res/HwPCResourcesUtils;

    if-nez v1, :cond_0

    .line 23
    new-instance v1, Landroid/content/res/HwPCResourcesUtils;

    invoke-direct {v1, p0}, Landroid/content/res/HwPCResourcesUtils;-><init>(Landroid/content/res/AssetManager;)V

    sput-object v1, Landroid/content/res/HwPCResourcesUtils;->mInstance:Landroid/content/res/HwPCResourcesUtils;

    .line 25
    :cond_0
    sget-object v1, Landroid/content/res/HwPCResourcesUtils;->mInstance:Landroid/content/res/HwPCResourcesUtils;

    monitor-exit v0

    return-object v1

    .line 26
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private loadHwPCOverrideValues()V
    .locals 12

    .line 41
    iget-object v0, p0, Landroid/content/res/HwPCResourcesUtils;->mAssetManager:Landroid/content/res/AssetManager;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/content/res/HwPCResourcesUtils;->mOverrideValues:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 44
    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/HwPCResourcesUtils;->mOverrideValues:Landroid/util/SparseArray;

    .line 45
    iget-object v0, p0, Landroid/content/res/HwPCResourcesUtils;->mOverrideNames:[[Ljava/lang/String;

    array-length v0, v0

    .line 46
    .local v0, "size":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 47
    iget-object v3, p0, Landroid/content/res/HwPCResourcesUtils;->mAssetManager:Landroid/content/res/AssetManager;

    iget-object v4, p0, Landroid/content/res/HwPCResourcesUtils;->mOverrideNames:[[Ljava/lang/String;

    aget-object v4, v4, v2

    aget-object v4, v4, v1

    iget-object v5, p0, Landroid/content/res/HwPCResourcesUtils;->mOverrideNames:[[Ljava/lang/String;

    aget-object v5, v5, v2

    const/4 v6, 0x1

    aget-object v5, v5, v6

    iget-object v7, p0, Landroid/content/res/HwPCResourcesUtils;->mOverrideNames:[[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x2

    aget-object v7, v7, v8

    invoke-virtual {v3, v4, v5, v7}, Landroid/content/res/AssetManager;->getResourceIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 49
    .local v3, "id":I
    if-eqz v3, :cond_2

    .line 50
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 51
    .local v4, "outValue":Landroid/util/TypedValue;
    iget-object v5, p0, Landroid/content/res/HwPCResourcesUtils;->mAssetManager:Landroid/content/res/AssetManager;

    invoke-virtual {v5, v3, v1, v4, v6}, Landroid/content/res/AssetManager;->getResourceValue(IILandroid/util/TypedValue;Z)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 52
    iget v5, v4, Landroid/util/TypedValue;->type:I

    const/4 v7, 0x5

    const/4 v8, 0x3

    if-ne v5, v7, :cond_1

    .line 54
    :try_start_0
    iget-object v5, p0, Landroid/content/res/HwPCResourcesUtils;->mOverrideNames:[[Ljava/lang/String;

    aget-object v5, v5, v2

    aget-object v5, v5, v8

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Landroid/util/TypedValue;->data:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    goto :goto_1

    .line 55
    :catch_0
    move-exception v5

    .line 56
    .local v5, "e":Ljava/lang/NumberFormatException;
    iget-object v7, p0, Landroid/content/res/HwPCResourcesUtils;->mAssetManager:Landroid/content/res/AssetManager;

    iget-object v9, p0, Landroid/content/res/HwPCResourcesUtils;->mOverrideNames:[[Ljava/lang/String;

    aget-object v9, v9, v2

    aget-object v9, v9, v8

    iget-object v10, p0, Landroid/content/res/HwPCResourcesUtils;->mOverrideNames:[[Ljava/lang/String;

    aget-object v10, v10, v2

    aget-object v10, v10, v6

    const-string v11, "androidhwext"

    invoke-virtual {v7, v9, v10, v11}, Landroid/content/res/AssetManager;->getResourceIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 58
    .local v7, "overrideId":I
    if-eqz v7, :cond_1

    .line 59
    iget-object v9, p0, Landroid/content/res/HwPCResourcesUtils;->mAssetManager:Landroid/content/res/AssetManager;

    invoke-virtual {v9, v7, v1, v4, v6}, Landroid/content/res/AssetManager;->getResourceValue(IILandroid/util/TypedValue;Z)Z

    .line 60
    iput v3, v4, Landroid/util/TypedValue;->resourceId:I

    .line 64
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    .end local v7    # "overrideId":I
    :cond_1
    :goto_1
    iget-object v5, p0, Landroid/content/res/HwPCResourcesUtils;->mOverrideNames:[[Ljava/lang/String;

    aget-object v5, v5, v2

    aget-object v5, v5, v8

    iput-object v5, v4, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    .line 65
    iget-object v5, p0, Landroid/content/res/HwPCResourcesUtils;->mOverrideValues:Landroid/util/SparseArray;

    invoke-virtual {v5, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 46
    .end local v3    # "id":I
    .end local v4    # "outValue":Landroid/util/TypedValue;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 69
    .end local v2    # "i":I
    :cond_3
    return-void

    .line 42
    .end local v0    # "size":I
    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method public getResourceValue(ILandroid/util/TypedValue;)Z
    .locals 3
    .param p1, "resId"    # I
    .param p2, "outValue"    # Landroid/util/TypedValue;

    .line 72
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    .line 73
    .local v0, "at":Landroid/app/ActivityThread;
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getDisplayId()I

    move-result v2

    invoke-static {v2}, Landroid/util/HwPCUtils;->isValidExtDisplayId(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 74
    iget-object v2, p0, Landroid/content/res/HwPCResourcesUtils;->mOverrideValues:Landroid/util/SparseArray;

    if-nez v2, :cond_0

    .line 75
    invoke-direct {p0}, Landroid/content/res/HwPCResourcesUtils;->loadHwPCOverrideValues()V

    .line 77
    :cond_0
    iget-object v2, p0, Landroid/content/res/HwPCResourcesUtils;->mOverrideValues:Landroid/util/SparseArray;

    if-nez v2, :cond_1

    .line 78
    return v1

    .line 80
    :cond_1
    iget-object v2, p0, Landroid/content/res/HwPCResourcesUtils;->mOverrideValues:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/TypedValue;

    .line 81
    .local v2, "tv":Landroid/util/TypedValue;
    if-eqz v2, :cond_2

    .line 82
    invoke-virtual {p2, v2}, Landroid/util/TypedValue;->setTo(Landroid/util/TypedValue;)V

    .line 83
    const/4 v1, 0x1

    return v1

    .line 86
    .end local v2    # "tv":Landroid/util/TypedValue;
    :cond_2
    return v1
.end method
