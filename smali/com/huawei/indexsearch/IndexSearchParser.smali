.class public Lcom/huawei/indexsearch/IndexSearchParser;
.super Ljava/lang/Object;
.source "IndexSearchParser.java"

# interfaces
.implements Lcom/huawei/indexsearch/IIndexSearchParser;


# static fields
.field private static final HWINDEXSEARCHSERVICE_APK_NAME:Ljava/lang/String; = "com.huawei.nb.service"

.field private static final IS_SUPPORT_FULL_TEXT_SEARCH:Z

.field private static final TAG:Ljava/lang/String; = "IndexSearchParser"

.field private static volatile mInstance:Lcom/huawei/indexsearch/IndexSearchParser;


# instance fields
.field private mPkgName:Ljava/lang/String;

.field private mTables:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/indexsearch/IndexSearchParser;->mInstance:Lcom/huawei/indexsearch/IndexSearchParser;

    .line 22
    const-string v0, "ro.config.hw_globalSearch"

    const-string v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/huawei/indexsearch/IndexSearchParser;->IS_SUPPORT_FULL_TEXT_SEARCH:Z

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "tables"    # [Ljava/lang/String;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/huawei/indexsearch/IndexSearchParser;->mPkgName:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lcom/huawei/indexsearch/IndexSearchParser;->mTables:[Ljava/lang/String;

    .line 48
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    .line 49
    .local v2, "table":Ljava/lang/String;
    const-string v3, "IndexSearchParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "table="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .end local v2    # "table":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 51
    :cond_0
    return-void
.end method

.method public static declared-synchronized createIndexSearchParser(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4
    .param p0, "pkgName"    # Ljava/lang/String;
    .param p1, "tables"    # [Ljava/lang/String;

    const-class v0, Lcom/huawei/indexsearch/IndexSearchParser;

    monitor-enter v0

    .line 29
    :try_start_0
    const-string v1, "IndexSearchParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createIndexSearchParser pkgName "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    invoke-static {}, Lcom/huawei/indexsearch/IndexSearchParser;->isHwIndexSearchServiceExist()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 31
    sget-object v1, Lcom/huawei/indexsearch/IndexSearchParser;->mInstance:Lcom/huawei/indexsearch/IndexSearchParser;

    if-nez v1, :cond_0

    .line 32
    new-instance v1, Lcom/huawei/indexsearch/IndexSearchParser;

    invoke-direct {v1, p0, p1}, Lcom/huawei/indexsearch/IndexSearchParser;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v1, Lcom/huawei/indexsearch/IndexSearchParser;->mInstance:Lcom/huawei/indexsearch/IndexSearchParser;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    :cond_0
    monitor-exit v0

    return-void

    .line 28
    .end local p0    # "pkgName":Ljava/lang/String;
    .end local p1    # "tables":[Ljava/lang/String;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static destroy()V
    .locals 1

    .line 142
    sget-object v0, Lcom/huawei/indexsearch/IndexSearchParser;->mInstance:Lcom/huawei/indexsearch/IndexSearchParser;

    if-eqz v0, :cond_0

    .line 143
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/indexsearch/IndexSearchParser;->mInstance:Lcom/huawei/indexsearch/IndexSearchParser;

    .line 144
    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/huawei/indexsearch/IndexSearchParser;
    .locals 1

    .line 42
    sget-object v0, Lcom/huawei/indexsearch/IndexSearchParser;->mInstance:Lcom/huawei/indexsearch/IndexSearchParser;

    return-object v0
.end method

.method public static isHwIndexSearchServiceExist()Z
    .locals 5

    .line 124
    sget-boolean v0, Lcom/huawei/indexsearch/IndexSearchParser;->IS_SUPPORT_FULL_TEXT_SEARCH:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 125
    return v1

    .line 126
    :cond_0
    const/4 v0, 0x0

    .line 128
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    const-string v3, "com.huawei.nb.service"

    invoke-interface {v2, v3, v1, v1}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    .line 133
    if-nez v0, :cond_1

    .line 134
    .end local v0    # "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    const-string v2, "IndexSearchParser"

    const-string v3, "IndexSearchService not exist"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    return v1

    .line 133
    .restart local v0    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 129
    :catch_0
    move-exception v2

    .line 130
    .local v2, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 131
    :try_start_1
    const-string v3, "IndexSearchParser"

    const-string v4, "IndexSearchService packageInfo is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    .end local v2    # "e":Ljava/lang/Exception;
    if-nez v0, :cond_1

    goto :goto_0

    .line 138
    :cond_1
    const/4 v1, 0x1

    return v1

    .line 133
    :goto_1
    if-nez v0, :cond_2

    goto :goto_0

    .line 135
    :cond_2
    throw v2
.end method

.method private updateTable(Ljava/lang/String;)V
    .locals 1
    .param p1, "table"    # Ljava/lang/String;

    .line 113
    const-string v0, "pdu"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    const-string v0, "com.android.providers.telephony"

    iput-object v0, p0, Lcom/huawei/indexsearch/IndexSearchParser;->mPkgName:Ljava/lang/String;

    goto :goto_0

    .line 115
    :cond_0
    const-string v0, "sms"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "fav_sms"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 116
    :cond_1
    const-string v0, "com.android.mms"

    iput-object v0, p0, Lcom/huawei/indexsearch/IndexSearchParser;->mPkgName:Ljava/lang/String;

    .line 118
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public isValidTable(Ljava/lang/String;)Z
    .locals 3
    .param p1, "table"    # Ljava/lang/String;

    .line 103
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/huawei/indexsearch/IndexSearchParser;->mTables:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 104
    iget-object v2, p0, Lcom/huawei/indexsearch/IndexSearchParser;->mTables:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 105
    invoke-direct {p0, p1}, Lcom/huawei/indexsearch/IndexSearchParser;->updateTable(Ljava/lang/String;)V

    .line 106
    const/4 v0, 0x1

    return v0

    .line 103
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 109
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method public notifyIndexSearchService(JI)V
    .locals 2
    .param p1, "id"    # J
    .param p3, "operator"    # I

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .local v0, "idList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    invoke-virtual {p0, v0, p3}, Lcom/huawei/indexsearch/IndexSearchParser;->notifyIndexSearchService(Ljava/util/List;I)V

    .line 78
    return-void
.end method

.method public notifyIndexSearchService(Landroid/database/Cursor;I)V
    .locals 3
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "operator"    # I

    .line 57
    if-nez p1, :cond_0

    .line 58
    const-string v0, "IndexSearchParser"

    const-string v1, "notifyIndexSearchService(Cursor c, int operator) : cursor is null, return."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    return-void

    .line 61
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .local v0, "idList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 63
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 65
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 66
    invoke-static {}, Lcom/huawei/indexsearch/IndexSearchObserverManager;->getInstance()Lcom/huawei/indexsearch/IndexSearchObserverManager;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/indexsearch/IndexSearchParser;->mPkgName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, p2}, Lcom/huawei/indexsearch/IndexSearchObserverManager;->buildIndex(Ljava/lang/String;Ljava/util/List;I)V

    .line 68
    :cond_2
    return-void
.end method

.method public notifyIndexSearchService(Ljava/util/List;I)V
    .locals 5
    .param p2, "operator"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;I)V"
        }
    .end annotation

    .line 85
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const-string v0, "IndexSearchParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyIndexSearchService begin operator: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .local v0, "idList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 88
    .local v2, "id":Ljava/lang/Long;
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    .end local v2    # "id":Ljava/lang/Long;
    goto :goto_0

    .line 90
    :cond_0
    iget-object v1, p0, Lcom/huawei/indexsearch/IndexSearchParser;->mPkgName:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 91
    invoke-static {}, Lcom/huawei/indexsearch/IndexSearchObserverManager;->getInstance()Lcom/huawei/indexsearch/IndexSearchObserverManager;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/indexsearch/IndexSearchParser;->mPkgName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, p2}, Lcom/huawei/indexsearch/IndexSearchObserverManager;->buildIndex(Ljava/lang/String;Ljava/util/List;I)V

    .line 93
    :cond_1
    const-string v1, "IndexSearchParser"

    const-string v2, "notifyIndexSearchService end"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    return-void
.end method
