.class public interface abstract Lcom/huawei/nb/searchmanager/emuiclient/ISearchClient;
.super Ljava/lang/Object;
.source "ISearchClient.java"


# virtual methods
.method public abstract clearUserIndexSearchData(Ljava/lang/String;I)V
.end method

.method public abstract executeDBCrawl(Ljava/lang/String;Ljava/util/List;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract executeSearch(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/huawei/nb/searchmanager/emuiclient/query/bulkcursor/BulkCursorDescriptorEx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/huawei/nb/searchmanager/emuiclient/query/bulkcursor/BulkCursorDescriptorEx;"
        }
    .end annotation
.end method
