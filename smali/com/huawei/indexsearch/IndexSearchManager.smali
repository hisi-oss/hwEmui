.class public Lcom/huawei/indexsearch/IndexSearchManager;
.super Ljava/lang/Object;
.source "IndexSearchManager.java"

# interfaces
.implements Lcom/huawei/indexsearch/IIndexSearchManager;


# static fields
.field private static final TAG:Ljava/lang/String; = "IndexSearchManager"

.field private static volatile mInstance:Lcom/huawei/indexsearch/IndexSearchManager;


# instance fields
.field private context:Landroid/content/Context;

.field private searchServiceProxy:Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/indexsearch/IndexSearchManager;->mInstance:Lcom/huawei/indexsearch/IndexSearchManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string v0, "IndexSearchManager"

    const-string v1, "new IndexSearchManager"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/indexsearch/IndexSearchManager;->context:Landroid/content/Context;

    .line 37
    new-instance v0, Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;

    iget-object v1, p0, Lcom/huawei/indexsearch/IndexSearchManager;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/huawei/indexsearch/IndexSearchManager;->searchServiceProxy:Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;

    .line 38
    return-void
.end method

.method public static getInstance()Lcom/huawei/indexsearch/IndexSearchManager;
    .locals 1

    .line 28
    sget-object v0, Lcom/huawei/indexsearch/IndexSearchManager;->mInstance:Lcom/huawei/indexsearch/IndexSearchManager;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lcom/huawei/indexsearch/IndexSearchManager;

    invoke-direct {v0}, Lcom/huawei/indexsearch/IndexSearchManager;-><init>()V

    sput-object v0, Lcom/huawei/indexsearch/IndexSearchManager;->mInstance:Lcom/huawei/indexsearch/IndexSearchManager;

    .line 31
    :cond_0
    sget-object v0, Lcom/huawei/indexsearch/IndexSearchManager;->mInstance:Lcom/huawei/indexsearch/IndexSearchManager;

    return-object v0
.end method


# virtual methods
.method public connect()V
    .locals 2

    .line 42
    const-string v0, "IndexSearchManager"

    const-string v1, "connect"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iget-object v0, p0, Lcom/huawei/indexsearch/IndexSearchManager;->searchServiceProxy:Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;

    new-instance v1, Lcom/huawei/indexsearch/IndexSearchManager$1;

    invoke-direct {v1, p0}, Lcom/huawei/indexsearch/IndexSearchManager$1;-><init>(Lcom/huawei/indexsearch/IndexSearchManager;)V

    invoke-virtual {v0, v1}, Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;->connect(Lcom/huawei/nb/searchmanager/emuiclient/connect/ServiceConnectCallback;)Z

    .line 52
    return-void
.end method

.method public destroy()V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/huawei/indexsearch/IndexSearchManager;->searchServiceProxy:Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;

    invoke-virtual {v0}, Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;->hasConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/huawei/indexsearch/IndexSearchManager;->searchServiceProxy:Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;

    invoke-virtual {v0}, Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;->disconnect()Z

    .line 89
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/indexsearch/IndexSearchManager;->mInstance:Lcom/huawei/indexsearch/IndexSearchManager;

    .line 90
    return-void
.end method

.method public hasConnected()Z
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/huawei/indexsearch/IndexSearchManager;->searchServiceProxy:Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;

    invoke-virtual {v0}, Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;->hasConnected()Z

    move-result v0

    return v0
.end method

.method public search(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "queryStr"    # Ljava/lang/String;
    .param p3, "strField"    # Ljava/lang/String;

    .line 55
    const-string v0, "IndexSearchManager"

    const-string v1, "search"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-object v0, p0, Lcom/huawei/indexsearch/IndexSearchManager;->searchServiceProxy:Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;

    invoke-virtual {v0}, Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;->hasConnected()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 57
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    const-string v0, "IndexSearchManager"

    const-string v2, "search strField is null"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    return-object v1

    .line 61
    :cond_0
    const-string v0, ","

    invoke-virtual {p3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "fields":[Ljava/lang/String;
    if-eqz v0, :cond_2

    array-length v2, v0

    if-lez v2, :cond_2

    .line 63
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 64
    .local v2, "fieldList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/huawei/indexsearch/IndexSearchManager;->searchServiceProxy:Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;

    invoke-virtual {v3, p1, p2, v2}, Lcom/huawei/nb/searchmanager/emuiclient/SearchServiceProxy;->executeSearch(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/huawei/nb/searchmanager/emuiclient/query/bulkcursor/BulkCursorDescriptorEx;

    move-result-object v3

    .line 65
    .local v3, "bulkCursorDescriptor":Lcom/huawei/nb/searchmanager/emuiclient/query/bulkcursor/BulkCursorDescriptorEx;
    if-nez v3, :cond_1

    return-object v1

    .line 66
    :cond_1
    new-instance v1, Lcom/huawei/nb/searchmanager/emuiclient/query/bulkcursor/BulkCursorToCursorAdaptor;

    invoke-direct {v1}, Lcom/huawei/nb/searchmanager/emuiclient/query/bulkcursor/BulkCursorToCursorAdaptor;-><init>()V

    .line 67
    .local v1, "adaptor":Lcom/huawei/nb/searchmanager/emuiclient/query/bulkcursor/BulkCursorToCursorAdaptor;
    invoke-virtual {v1, v3}, Lcom/huawei/nb/searchmanager/emuiclient/query/bulkcursor/BulkCursorToCursorAdaptor;->initialize(Lcom/huawei/nb/searchmanager/emuiclient/query/bulkcursor/BulkCursorDescriptorEx;)V

    .line 68
    const-string v4, "IndexSearchManager"

    const-string v5, "return adaptor"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    return-object v1

    .line 71
    .end local v1    # "adaptor":Lcom/huawei/nb/searchmanager/emuiclient/query/bulkcursor/BulkCursorToCursorAdaptor;
    .end local v2    # "fieldList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "bulkCursorDescriptor":Lcom/huawei/nb/searchmanager/emuiclient/query/bulkcursor/BulkCursorDescriptorEx;
    :cond_2
    const-string v2, "IndexSearchManager"

    const-string v3, "search fields is null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    return-object v1

    .line 75
    .end local v0    # "fields":[Ljava/lang/String;
    :cond_3
    const-string v0, "IndexSearchManager"

    const-string v2, "not Connected, return null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return-object v1
.end method
