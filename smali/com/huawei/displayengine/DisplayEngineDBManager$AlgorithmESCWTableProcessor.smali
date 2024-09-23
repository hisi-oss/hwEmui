.class Lcom/huawei/displayengine/DisplayEngineDBManager$AlgorithmESCWTableProcessor;
.super Lcom/huawei/displayengine/DisplayEngineDBManager$TableProcessor;
.source "DisplayEngineDBManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/displayengine/DisplayEngineDBManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlgorithmESCWTableProcessor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/displayengine/DisplayEngineDBManager;


# direct methods
.method public constructor <init>(Lcom/huawei/displayengine/DisplayEngineDBManager;)V
    .locals 0

    .line 857
    iput-object p1, p0, Lcom/huawei/displayengine/DisplayEngineDBManager$AlgorithmESCWTableProcessor;->this$0:Lcom/huawei/displayengine/DisplayEngineDBManager;

    invoke-direct {p0, p1}, Lcom/huawei/displayengine/DisplayEngineDBManager$TableProcessor;-><init>(Lcom/huawei/displayengine/DisplayEngineDBManager;)V

    .line 858
    return-void
.end method

.method private pretreatmentForAddorUpdateRecord(Landroid/os/Bundle;I[F)Z
    .locals 4
    .param p1, "data"    # Landroid/os/Bundle;
    .param p2, "userID"    # I
    .param p3, "escwValues"    # [F

    .line 861
    const/4 v0, 0x0

    if-ltz p2, :cond_2

    if-eqz p3, :cond_2

    iget v1, p0, Lcom/huawei/displayengine/DisplayEngineDBManager$AlgorithmESCWTableProcessor;->mMaxSize:I

    if-lez v1, :cond_0

    array-length v1, p3

    iget v2, p0, Lcom/huawei/displayengine/DisplayEngineDBManager$AlgorithmESCWTableProcessor;->mMaxSize:I

    if-le v1, v2, :cond_0

    goto :goto_0

    .line 870
    :cond_0
    invoke-virtual {p0, p1}, Lcom/huawei/displayengine/DisplayEngineDBManager$AlgorithmESCWTableProcessor;->clearWithoutLock(Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 871
    const-string v1, "DE J DisplayEngineDBManager"

    const-string v2, "AlgorithmESCWTableProcessor.addorUpdateRecord() error: clear last records!"

    invoke-static {v1, v2}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    return v0

    .line 874
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 862
    :cond_2
    :goto_0
    if-nez p3, :cond_3

    .line 863
    const-string v1, "DE J DisplayEngineDBManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AlgorithmESCWTableProcessor.addorUpdateRecord error: userID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " escw=null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 865
    :cond_3
    const-string v1, "DE J DisplayEngineDBManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AlgorithmESCWTableProcessor.addorUpdateRecord error: userID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " escw size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " max size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/huawei/displayengine/DisplayEngineDBManager$AlgorithmESCWTableProcessor;->mMaxSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    :goto_1
    return v0
.end method


# virtual methods
.method public addorUpdateRecord(Landroid/os/Bundle;)Z
    .locals 11
    .param p1, "data"    # Landroid/os/Bundle;

    .line 878
    iget-object v0, p0, Lcom/huawei/displayengine/DisplayEngineDBManager$AlgorithmESCWTableProcessor;->this$0:Lcom/huawei/displayengine/DisplayEngineDBManager;

    invoke-static {v0}, Lcom/huawei/displayengine/DisplayEngineDBManager;->access$000(Lcom/huawei/displayengine/DisplayEngineDBManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 879
    :try_start_0
    iget-object v1, p0, Lcom/huawei/displayengine/DisplayEngineDBManager$AlgorithmESCWTableProcessor;->this$0:Lcom/huawei/displayengine/DisplayEngineDBManager;

    invoke-static {v1}, Lcom/huawei/displayengine/DisplayEngineDBManager;->access$100(Lcom/huawei/displayengine/DisplayEngineDBManager;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    if-nez p1, :cond_0

    goto/16 :goto_2

    .line 884
    :cond_0
    const-string v1, "UserID"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 885
    .local v1, "userID":I
    const-string v3, "ESCW"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v3

    .line 886
    .local v3, "escwValues":[F
    invoke-direct {p0, p1, v1, v3}, Lcom/huawei/displayengine/DisplayEngineDBManager$AlgorithmESCWTableProcessor;->pretreatmentForAddorUpdateRecord(Landroid/os/Bundle;I[F)Z

    move-result v4

    if-nez v4, :cond_1

    .line 887
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    .line 891
    :cond_1
    :try_start_1
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 892
    .local v4, "text":Ljava/lang/StringBuffer;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AlgorithmESCWTableProcessor add record succ: userID="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " escw={"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 893
    move v5, v2

    .local v5, "i":I
    :goto_0
    array-length v6, v3

    const/4 v7, 0x1

    if-ge v5, v6, :cond_2

    .line 894
    iget-object v6, p0, Lcom/huawei/displayengine/DisplayEngineDBManager$AlgorithmESCWTableProcessor;->this$0:Lcom/huawei/displayengine/DisplayEngineDBManager;

    invoke-static {v6}, Lcom/huawei/displayengine/DisplayEngineDBManager;->access$200(Lcom/huawei/displayengine/DisplayEngineDBManager;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    const-string v8, "INSERT INTO AlgorithmESCW VALUES(?, ?, ?)"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    add-int/lit8 v10, v5, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v7

    const/4 v7, 0x2

    aget v10, v3, v5

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v9, v7

    invoke-virtual {v6, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 895
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget v7, v3, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 893
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 897
    .end local v5    # "i":I
    :cond_2
    const-string v5, "DE J DisplayEngineDBManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "}"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 906
    .end local v4    # "text":Ljava/lang/StringBuffer;
    nop

    .line 907
    :try_start_2
    monitor-exit v0

    return v7

    .line 898
    :catch_0
    move-exception v4

    .line 899
    .local v4, "e":Landroid/database/SQLException;
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 900
    .local v5, "text":Ljava/lang/StringBuffer;
    const-string v6, "AlgorithmESCWTableProcessor add record escw={"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 901
    move v6, v2

    .local v6, "i":I
    :goto_1
    array-length v7, v3

    if-ge v6, v7, :cond_3

    .line 902
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget v8, v3, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 901
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 904
    .end local v6    # "i":I
    :cond_3
    const-string v6, "DE J DisplayEngineDBManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "}, error:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    monitor-exit v0

    return v2

    .line 880
    .end local v1    # "userID":I
    .end local v3    # "escwValues":[F
    .end local v4    # "e":Landroid/database/SQLException;
    .end local v5    # "text":Ljava/lang/StringBuffer;
    :cond_4
    :goto_2
    const-string v1, "DE J DisplayEngineDBManager"

    const-string v3, "AlgorithmESCWTableProcessor.addorUpdateRecord error: Invalid input!"

    invoke-static {v1, v3}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    monitor-exit v0

    return v2

    .line 908
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method protected clearWithoutLock(Landroid/os/Bundle;)Z
    .locals 6
    .param p1, "info"    # Landroid/os/Bundle;

    .line 972
    iget-object v0, p0, Lcom/huawei/displayengine/DisplayEngineDBManager$AlgorithmESCWTableProcessor;->this$0:Lcom/huawei/displayengine/DisplayEngineDBManager;

    invoke-static {v0}, Lcom/huawei/displayengine/DisplayEngineDBManager;->access$100(Lcom/huawei/displayengine/DisplayEngineDBManager;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto/16 :goto_2

    .line 976
    :cond_0
    const-string v0, "UserID"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 977
    .local v0, "userID":I
    if-gez v0, :cond_1

    .line 978
    const-string v2, "DE J DisplayEngineDBManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AlgorithmESCWTableProcessor.clearWithoutLock() invalid input: userID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    return v1

    .line 982
    :cond_1
    nop

    .line 984
    .local v1, "ret":Z
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/huawei/displayengine/DisplayEngineDBManager$AlgorithmESCWTableProcessor;->getSizeWithoutLock(Landroid/os/Bundle;)I

    move-result v2

    if-lez v2, :cond_2

    .line 985
    iget-object v2, p0, Lcom/huawei/displayengine/DisplayEngineDBManager$AlgorithmESCWTableProcessor;->this$0:Lcom/huawei/displayengine/DisplayEngineDBManager;

    invoke-static {v2}, Lcom/huawei/displayengine/DisplayEngineDBManager;->access$200(Lcom/huawei/displayengine/DisplayEngineDBManager;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DELETE FROM AlgorithmESCW where USERID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 987
    :cond_2
    const-string v2, "DE J DisplayEngineDBManager"

    const-string v3, "AlgorithmESCWTableProcessor.clearWithoutLock() sucess."

    invoke-static {v2, v3}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 988
    const/4 v1, 0x1

    .line 993
    :goto_0
    goto :goto_1

    .line 991
    :catch_0
    move-exception v2

    .line 992
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "DE J DisplayEngineDBManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AlgorithmESCWTableProcessor.clearWithoutLock() error:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/displayengine/DElog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_1

    .line 989
    :catch_1
    move-exception v2

    .line 990
    .local v2, "e":Landroid/database/SQLException;
    const-string v3, "DE J DisplayEngineDBManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AlgorithmESCWTableProcessor.clearWithoutLock() error:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/displayengine/DElog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Landroid/database/SQLException;
    goto :goto_0

    .line 994
    :goto_1
    return v1

    .line 973
    .end local v0    # "userID":I
    .end local v1    # "ret":Z
    :cond_3
    :goto_2
    const-string v0, "DE J DisplayEngineDBManager"

    const-string v2, "AlgorithmESCWTableProcessor.clearWithoutLock() mDatabase error or info is null."

    invoke-static {v0, v2}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    return v1
.end method

.method public getAllRecords(Landroid/os/Bundle;)Ljava/util/ArrayList;
    .locals 10
    .param p1, "info"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 912
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 913
    .local v0, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    iget-object v1, p0, Lcom/huawei/displayengine/DisplayEngineDBManager$AlgorithmESCWTableProcessor;->this$0:Lcom/huawei/displayengine/DisplayEngineDBManager;

    invoke-static {v1}, Lcom/huawei/displayengine/DisplayEngineDBManager;->access$000(Lcom/huawei/displayengine/DisplayEngineDBManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 914
    :try_start_0
    iget-object v2, p0, Lcom/huawei/displayengine/DisplayEngineDBManager$AlgorithmESCWTableProcessor;->this$0:Lcom/huawei/displayengine/DisplayEngineDBManager;

    invoke-static {v2}, Lcom/huawei/displayengine/DisplayEngineDBManager;->access$100(Lcom/huawei/displayengine/DisplayEngineDBManager;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_7

    if-nez p1, :cond_0

    goto/16 :goto_4

    .line 918
    :cond_0
    const-string v2, "UserID"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 919
    .local v2, "userID":I
    if-gez v2, :cond_1

    .line 920
    const-string v4, "DE J DisplayEngineDBManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AlgorithmESCWTableProcessor.getAllRecords() invalid input: userID="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    return-object v3

    .line 924
    :cond_1
    move-object v4, v3

    .line 926
    .local v4, "c":Landroid/database/Cursor;
    :try_start_1
    iget-object v5, p0, Lcom/huawei/displayengine/DisplayEngineDBManager$AlgorithmESCWTableProcessor;->this$0:Lcom/huawei/displayengine/DisplayEngineDBManager;

    invoke-static {v5}, Lcom/huawei/displayengine/DisplayEngineDBManager;->access$200(Lcom/huawei/displayengine/DisplayEngineDBManager;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    const-string v6, "SELECT * FROM AlgorithmESCW where USERID = ?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    move-object v4, v5

    .line 927
    if-nez v4, :cond_3

    .line 928
    const-string v5, "DE J DisplayEngineDBManager"

    const-string v6, "AlgorithmESCWTableProcessor.getAllRecords() query database error."

    invoke-static {v5, v6}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 929
    nop

    .line 941
    if-eqz v4, :cond_2

    .line 942
    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 929
    return-object v3

    .line 931
    :cond_3
    :goto_0
    :try_start_3
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 932
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 933
    .local v3, "record":Landroid/os/Bundle;
    const-string v5, "UserID"

    const-string v6, "USERID"

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 934
    const-string v5, "ESCW"

    const-string v6, "ESCW"

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getFloat(I)F

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 935
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 936
    .end local v3    # "record":Landroid/os/Bundle;
    goto :goto_0

    .line 941
    :cond_4
    if-eqz v4, :cond_5

    .line 942
    :goto_1
    :try_start_4
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    .line 941
    :catchall_0
    move-exception v3

    goto :goto_3

    .line 937
    :catch_0
    move-exception v3

    .line 938
    .local v3, "e":Landroid/database/SQLException;
    const/4 v0, 0x0

    .line 939
    :try_start_5
    const-string v5, "DE J DisplayEngineDBManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AlgorithmESCWTableProcessor.getAllRecords() error:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/huawei/displayengine/DElog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 941
    .end local v3    # "e":Landroid/database/SQLException;
    if-eqz v4, :cond_5

    goto :goto_1

    .line 945
    .end local v2    # "userID":I
    .end local v4    # "c":Landroid/database/Cursor;
    :cond_5
    :goto_2
    :try_start_6
    monitor-exit v1

    .line 946
    return-object v0

    .line 941
    .restart local v2    # "userID":I
    .restart local v4    # "c":Landroid/database/Cursor;
    :goto_3
    if-eqz v4, :cond_6

    .line 942
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v3

    .line 915
    .end local v2    # "userID":I
    .end local v4    # "c":Landroid/database/Cursor;
    :cond_7
    :goto_4
    const-string v2, "DE J DisplayEngineDBManager"

    const-string v4, "AlgorithmESCWTableProcessor.getAllRecords() mDatabase error or info is null."

    invoke-static {v2, v4}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    monitor-exit v1

    return-object v3

    .line 945
    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v2
.end method

.method protected getSizeWithoutLock(Landroid/os/Bundle;)I
    .locals 7
    .param p1, "info"    # Landroid/os/Bundle;

    .line 950
    const/4 v0, 0x0

    .line 951
    .local v0, "size":I
    iget-object v1, p0, Lcom/huawei/displayengine/DisplayEngineDBManager$AlgorithmESCWTableProcessor;->this$0:Lcom/huawei/displayengine/DisplayEngineDBManager;

    invoke-static {v1}, Lcom/huawei/displayengine/DisplayEngineDBManager;->access$200(Lcom/huawei/displayengine/DisplayEngineDBManager;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/huawei/displayengine/DisplayEngineDBManager$AlgorithmESCWTableProcessor;->this$0:Lcom/huawei/displayengine/DisplayEngineDBManager;

    invoke-static {v1}, Lcom/huawei/displayengine/DisplayEngineDBManager;->access$200(Lcom/huawei/displayengine/DisplayEngineDBManager;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    .line 952
    const-string v1, "UserID"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 953
    .local v1, "userID":I
    if-gez v1, :cond_0

    .line 954
    const-string v2, "DE J DisplayEngineDBManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AlgorithmESCWTableProcessor.getSizeWithoutLock() invalid input: userID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 956
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT COUNT(*) FROM AlgorithmESCW where USERID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 958
    .local v2, "sql":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/huawei/displayengine/DisplayEngineDBManager$AlgorithmESCWTableProcessor;->this$0:Lcom/huawei/displayengine/DisplayEngineDBManager;

    invoke-static {v3}, Lcom/huawei/displayengine/DisplayEngineDBManager;->access$200(Lcom/huawei/displayengine/DisplayEngineDBManager;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    .line 959
    .local v3, "statement":Landroid/database/sqlite/SQLiteStatement;
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v4

    long-to-int v0, v4

    .line 960
    const-string v4, "DE J DisplayEngineDBManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AlgorithmESCWTableProcessor.getSizeWithoutLock() return "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/displayengine/DElog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 963
    .end local v3    # "statement":Landroid/database/sqlite/SQLiteStatement;
    goto :goto_0

    .line 961
    :catch_0
    move-exception v3

    .line 962
    .local v3, "e":Landroid/database/SQLException;
    const-string v4, "DE J DisplayEngineDBManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AlgorithmESCWTableProcessor.getSizeWithoutLock() error:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/displayengine/DElog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    .end local v1    # "userID":I
    .end local v2    # "sql":Ljava/lang/String;
    .end local v3    # "e":Landroid/database/SQLException;
    :goto_0
    goto :goto_1

    .line 966
    :cond_1
    const-string v1, "DE J DisplayEngineDBManager"

    const-string v2, "AlgorithmESCWTableProcessor.getSizeWithoutLock() mDatabase error or info is null."

    invoke-static {v1, v2}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    :goto_1
    return v0
.end method
