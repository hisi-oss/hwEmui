.class public Lcom/huawei/indexsearch/IndexClearManager;
.super Ljava/lang/Object;
.source "IndexClearManager.java"

# interfaces
.implements Lcom/huawei/indexsearch/IIndexClearManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/indexsearch/IndexClearManager$IndexSearchHandler;,
        Lcom/huawei/indexsearch/IndexClearManager$CachedItem;
    }
.end annotation


# static fields
.field private static final INIT_CLEAR_INDEX:I = 0x3e8

.field static final MONITOR_ALL_PACKAGE_NAME:[Ljava/lang/String;

.field private static final MSG_BOUND:I = 0x3e9

.field private static final MSG_UNBOUND:I = 0x3ea

.field private static final TAG:Ljava/lang/String; = "IndexClearManager"

.field private static volatile mInstance:Lcom/huawei/indexsearch/IndexClearManager;


# instance fields
.field final mCachedItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/huawei/indexsearch/IndexClearManager$CachedItem;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field mHandlerThread:Landroid/os/HandlerThread;

.field private searchServiceProxy:Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 21
    const-string v0, "com.android.email"

    const-string v1, "com.example.android.notepad"

    const-string v2, "com.android.providers.calendar"

    const-string v3, "com.android.providers.telephony"

    const-string v4, "com.android.mms"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/indexsearch/IndexClearManager;->MONITOR_ALL_PACKAGE_NAME:[Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/indexsearch/IndexClearManager;->mInstance:Lcom/huawei/indexsearch/IndexClearManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/indexsearch/IndexClearManager;->mCachedItemList:Ljava/util/ArrayList;

    .line 41
    new-instance v0, Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/huawei/indexsearch/IndexClearManager;->searchServiceProxy:Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;

    .line 42
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "IndexSearchManager"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/huawei/indexsearch/IndexClearManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 43
    iget-object v0, p0, Lcom/huawei/indexsearch/IndexClearManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 44
    new-instance v0, Lcom/huawei/indexsearch/IndexClearManager$IndexSearchHandler;

    iget-object v1, p0, Lcom/huawei/indexsearch/IndexClearManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/huawei/indexsearch/IndexClearManager$IndexSearchHandler;-><init>(Lcom/huawei/indexsearch/IndexClearManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/huawei/indexsearch/IndexClearManager;->mHandler:Landroid/os/Handler;

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/huawei/indexsearch/IndexClearManager;)Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/indexsearch/IndexClearManager;

    .line 19
    iget-object v0, p0, Lcom/huawei/indexsearch/IndexClearManager;->searchServiceProxy:Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;

    return-object v0
.end method

.method static synthetic access$100(Lcom/huawei/indexsearch/IndexClearManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/indexsearch/IndexClearManager;

    .line 19
    iget-object v0, p0, Lcom/huawei/indexsearch/IndexClearManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static getInstance()Lcom/huawei/indexsearch/IndexClearManager;
    .locals 1

    .line 34
    sget-object v0, Lcom/huawei/indexsearch/IndexClearManager;->mInstance:Lcom/huawei/indexsearch/IndexClearManager;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/huawei/indexsearch/IndexClearManager;

    invoke-direct {v0}, Lcom/huawei/indexsearch/IndexClearManager;-><init>()V

    sput-object v0, Lcom/huawei/indexsearch/IndexClearManager;->mInstance:Lcom/huawei/indexsearch/IndexClearManager;

    .line 37
    :cond_0
    sget-object v0, Lcom/huawei/indexsearch/IndexClearManager;->mInstance:Lcom/huawei/indexsearch/IndexClearManager;

    return-object v0
.end method

.method private isMonitorPackage(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 124
    const/4 v0, 0x0

    .line 125
    .local v0, "flag":Z
    const/4 v1, 0x0

    .local v1, "x":I
    :goto_0
    sget-object v2, Lcom/huawei/indexsearch/IndexClearManager;->MONITOR_ALL_PACKAGE_NAME:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 126
    sget-object v2, Lcom/huawei/indexsearch/IndexClearManager;->MONITOR_ALL_PACKAGE_NAME:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 127
    const/4 v0, 0x1

    .line 128
    goto :goto_1

    .line 125
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 131
    .end local v1    # "x":I
    :cond_1
    :goto_1
    return v0
.end method


# virtual methods
.method public clearUserIndexSearchData(Ljava/lang/String;I)V
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 136
    invoke-direct {p0, p1}, Lcom/huawei/indexsearch/IndexClearManager;->isMonitorPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/huawei/indexsearch/IndexClearManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    new-instance v2, Lcom/huawei/indexsearch/IndexClearManager$CachedItem;

    invoke-direct {v2, p0, p1, p2}, Lcom/huawei/indexsearch/IndexClearManager$CachedItem;-><init>(Lcom/huawei/indexsearch/IndexClearManager;Ljava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 138
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 140
    :cond_0
    return-void
.end method
