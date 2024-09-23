.class Lcom/huawei/displayengine/DisplayEngineDBManager$DataCleanerTableProcessor;
.super Lcom/huawei/displayengine/DisplayEngineDBManager$TableProcessor;
.source "DisplayEngineDBManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/displayengine/DisplayEngineDBManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataCleanerTableProcessor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/displayengine/DisplayEngineDBManager;


# direct methods
.method public constructor <init>(Lcom/huawei/displayengine/DisplayEngineDBManager;)V
    .locals 0

    .line 1000
    iput-object p1, p0, Lcom/huawei/displayengine/DisplayEngineDBManager$DataCleanerTableProcessor;->this$0:Lcom/huawei/displayengine/DisplayEngineDBManager;

    invoke-direct {p0, p1}, Lcom/huawei/displayengine/DisplayEngineDBManager$TableProcessor;-><init>(Lcom/huawei/displayengine/DisplayEngineDBManager;)V

    .line 1001
    return-void
.end method

.method private pretreatmentForAddorUpdateRecord(Landroid/os/Bundle;IIJ)Z
    .locals 3
    .param p1, "data"    # Landroid/os/Bundle;
    .param p2, "userID"    # I
    .param p3, "flag"    # I
    .param p4, "time"    # J

    .line 1004
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-lez v0, :cond_1

    if-ltz p2, :cond_1

    if-gez p3, :cond_0

    goto :goto_0

    .line 1008
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 1005
    :cond_1
    :goto_0
    const-string v0, "DE J DisplayEngineDBManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DataCleanerTableProcessor.addorUpdateRecord error: userID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " RangeFalg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public addorUpdateRecord(Landroid/os/Bundle;)Z
    .locals 17
    .param p1, "data"    # Landroid/os/Bundle;

    move-object/from16 v7, p0

    .line 1012
    move-object/from16 v8, p1

    iget-object v0, v7, Lcom/huawei/displayengine/DisplayEngineDBManager$DataCleanerTableProcessor;->this$0:Lcom/huawei/displayengine/DisplayEngineDBManager;

    invoke-static {v0}, Lcom/huawei/displayengine/DisplayEngineDBManager;->access$000(Lcom/huawei/displayengine/DisplayEngineDBManager;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 1013
    const/4 v10, 0x1

    .line 1014
    .local v10, "ret":Z
    :try_start_0
    iget-object v0, v7, Lcom/huawei/displayengine/DisplayEngineDBManager$DataCleanerTableProcessor;->this$0:Lcom/huawei/displayengine/DisplayEngineDBManager;

    invoke-static {v0}, Lcom/huawei/displayengine/DisplayEngineDBManager;->access$100(Lcom/huawei/displayengine/DisplayEngineDBManager;)Z

    move-result v0

    const/4 v11, 0x0

    if-eqz v0, :cond_6

    if-nez v8, :cond_0

    goto/16 :goto_5

    .line 1019
    :cond_0
    const-string v0, "UserID"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    move v12, v0

    .line 1020
    .local v12, "userID":I
    const-string v0, "RangeFlag"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    move v13, v0

    .line 1021
    .local v13, "flag":I
    const-string v0, "TimeStamp"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    move-wide v14, v0

    .line 1022
    .local v14, "time":J
    move-object v1, v7

    move-object v2, v8

    move v3, v12

    move v4, v13

    move-wide v5, v14

    invoke-direct/range {v1 .. v6}, Lcom/huawei/displayengine/DisplayEngineDBManager$DataCleanerTableProcessor;->pretreatmentForAddorUpdateRecord(Landroid/os/Bundle;IIJ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1023
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    return v11

    .line 1026
    :cond_1
    const/4 v0, 0x0

    move-object v1, v0

    .line 1028
    .local v1, "c":Landroid/database/Cursor;
    :try_start_1
    iget-object v0, v7, Lcom/huawei/displayengine/DisplayEngineDBManager$DataCleanerTableProcessor;->this$0:Lcom/huawei/displayengine/DisplayEngineDBManager;

    invoke-static {v0}, Lcom/huawei/displayengine/DisplayEngineDBManager;->access$200(Lcom/huawei/displayengine/DisplayEngineDBManager;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v2, "SELECT * FROM DataCleaner where _id = ?"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v11

    invoke-virtual {v0, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v1, v0

    .line 1029
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 1030
    const/4 v0, 0x0

    .line 1031
    .local v0, "rows":I
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1032
    .local v2, "values":Landroid/content/ContentValues;
    const-string v4, "_id"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1033
    const-string v4, "RANGEFLAG"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1034
    const-string v4, "TIMESTAMP"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1036
    iget-object v4, v7, Lcom/huawei/displayengine/DisplayEngineDBManager$DataCleanerTableProcessor;->this$0:Lcom/huawei/displayengine/DisplayEngineDBManager;

    invoke-static {v4}, Lcom/huawei/displayengine/DisplayEngineDBManager;->access$200(Lcom/huawei/displayengine/DisplayEngineDBManager;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v5, "DataCleaner"

    const-string v6, "_id = ?"

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v3, v11

    invoke-virtual {v4, v5, v2, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    move v0, v3

    .line 1037
    if-nez v0, :cond_2

    .line 1038
    const-string v3, "DE J DisplayEngineDBManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DataCleanerTableProcessor update failed: userID="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " RangeFlag="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " timeStamp="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    const/4 v3, 0x0

    .line 1043
    .end local v10    # "ret":Z
    .local v3, "ret":Z
    move v10, v3

    goto :goto_0

    .line 1041
    .end local v3    # "ret":Z
    .restart local v10    # "ret":Z
    :cond_2
    const-string v3, "DE J DisplayEngineDBManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DataCleanerTableProcessor update succ: rows="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " userID="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " RangeFlag="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " timeStamp="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    .end local v0    # "rows":I
    .end local v2    # "values":Landroid/content/ContentValues;
    :goto_0
    goto :goto_1

    .line 1044
    :cond_3
    iget-object v0, v7, Lcom/huawei/displayengine/DisplayEngineDBManager$DataCleanerTableProcessor;->this$0:Lcom/huawei/displayengine/DisplayEngineDBManager;

    invoke-static {v0}, Lcom/huawei/displayengine/DisplayEngineDBManager;->access$200(Lcom/huawei/displayengine/DisplayEngineDBManager;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v2, "INSERT INTO DataCleaner VALUES(?, ?, ?)"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    .line 1045
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v11

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v3, 0x2

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v3

    .line 1044
    invoke-virtual {v0, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1046
    const-string v0, "DE J DisplayEngineDBManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DataCleanerTableProcessor add a record succ: userID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " time="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " RangeFalg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1052
    :goto_1
    if-eqz v1, :cond_4

    .line 1053
    :goto_2
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    .line 1052
    :catchall_0
    move-exception v0

    goto :goto_4

    .line 1048
    :catch_0
    move-exception v0

    .line 1049
    .local v0, "e":Landroid/database/SQLException;
    :try_start_3
    const-string v2, "DE J DisplayEngineDBManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DataCleanerTableProcessor add a record userID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " time="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " RangeFalg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1050
    const/4 v10, 0x0

    .line 1052
    .end local v0    # "e":Landroid/database/SQLException;
    if-eqz v1, :cond_4

    goto :goto_2

    .line 1056
    :cond_4
    :goto_3
    :try_start_4
    monitor-exit v9

    return v10

    .line 1052
    :goto_4
    if-eqz v1, :cond_5

    .line 1053
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    .line 1015
    .end local v1    # "c":Landroid/database/Cursor;
    .end local v12    # "userID":I
    .end local v13    # "flag":I
    .end local v14    # "time":J
    :cond_6
    :goto_5
    const-string v0, "DE J DisplayEngineDBManager"

    const-string v1, "DataCleanerTableProcessor.addorUpdateRecord error: Invalid input!"

    invoke-static {v0, v1}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    monitor-exit v9

    return v11

    .line 1057
    .end local v10    # "ret":Z
    :catchall_1
    move-exception v0

    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method protected getAllRecords()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 1061
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1062
    .local v0, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    iget-object v1, p0, Lcom/huawei/displayengine/DisplayEngineDBManager$DataCleanerTableProcessor;->this$0:Lcom/huawei/displayengine/DisplayEngineDBManager;

    invoke-static {v1}, Lcom/huawei/displayengine/DisplayEngineDBManager;->access$000(Lcom/huawei/displayengine/DisplayEngineDBManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1063
    :try_start_0
    iget-object v2, p0, Lcom/huawei/displayengine/DisplayEngineDBManager$DataCleanerTableProcessor;->this$0:Lcom/huawei/displayengine/DisplayEngineDBManager;

    invoke-static {v2}, Lcom/huawei/displayengine/DisplayEngineDBManager;->access$100(Lcom/huawei/displayengine/DisplayEngineDBManager;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 1064
    const-string v2, "DE J DisplayEngineDBManager"

    const-string v4, "DataCleanerTableProcessor.getAllRecords() mDatabase error."

    invoke-static {v2, v4}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    return-object v3

    .line 1068
    :cond_0
    move-object v2, v3

    .line 1070
    .local v2, "c":Landroid/database/Cursor;
    :try_start_1
    iget-object v4, p0, Lcom/huawei/displayengine/DisplayEngineDBManager$DataCleanerTableProcessor;->this$0:Lcom/huawei/displayengine/DisplayEngineDBManager;

    invoke-static {v4}, Lcom/huawei/displayengine/DisplayEngineDBManager;->access$200(Lcom/huawei/displayengine/DisplayEngineDBManager;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v5, "SELECT * FROM DataCleaner"

    invoke-virtual {v4, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    move-object v2, v4

    .line 1071
    if-nez v2, :cond_2

    .line 1072
    const-string v4, "DE J DisplayEngineDBManager"

    const-string v5, "DataCleanerTableProcessor.getAllRecords() query database error."

    invoke-static {v4, v5}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1073
    nop

    .line 1086
    if-eqz v2, :cond_1

    .line 1087
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1073
    return-object v3

    .line 1075
    :cond_2
    :goto_0
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1076
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1077
    .local v3, "record":Landroid/os/Bundle;
    const-string v4, "UserID"

    const-string v5, "_id"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1078
    const-string v4, "RangeFlag"

    const-string v5, "RANGEFLAG"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1079
    const-string v4, "TimeStamp"

    const-string v5, "TIMESTAMP"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1080
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1081
    .end local v3    # "record":Landroid/os/Bundle;
    goto :goto_0

    .line 1086
    :cond_3
    if-eqz v2, :cond_4

    .line 1087
    :goto_1
    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    .line 1086
    :catchall_0
    move-exception v3

    goto :goto_3

    .line 1082
    :catch_0
    move-exception v3

    .line 1083
    .local v3, "e":Landroid/database/SQLException;
    const/4 v0, 0x0

    .line 1084
    :try_start_5
    const-string v4, "DE J DisplayEngineDBManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DataCleanerTableProcessor.getAllRecords() error:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/displayengine/DElog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1086
    .end local v3    # "e":Landroid/database/SQLException;
    if-eqz v2, :cond_4

    goto :goto_1

    .line 1090
    .end local v2    # "c":Landroid/database/Cursor;
    :cond_4
    :goto_2
    :try_start_6
    monitor-exit v1

    .line 1091
    return-object v0

    .line 1086
    .restart local v2    # "c":Landroid/database/Cursor;
    :goto_3
    if-eqz v2, :cond_5

    .line 1087
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v3

    .line 1090
    .end local v2    # "c":Landroid/database/Cursor;
    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v2
.end method

.method protected getSizeWithoutLock()I
    .locals 6

    .line 1095
    const/4 v0, 0x0

    .line 1096
    .local v0, "size":I
    iget-object v1, p0, Lcom/huawei/displayengine/DisplayEngineDBManager$DataCleanerTableProcessor;->this$0:Lcom/huawei/displayengine/DisplayEngineDBManager;

    invoke-static {v1}, Lcom/huawei/displayengine/DisplayEngineDBManager;->access$200(Lcom/huawei/displayengine/DisplayEngineDBManager;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/huawei/displayengine/DisplayEngineDBManager$DataCleanerTableProcessor;->this$0:Lcom/huawei/displayengine/DisplayEngineDBManager;

    invoke-static {v1}, Lcom/huawei/displayengine/DisplayEngineDBManager;->access$200(Lcom/huawei/displayengine/DisplayEngineDBManager;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1097
    const-string v1, "SELECT COUNT(*) FROM DataCleaner"

    .line 1099
    .local v1, "sql":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/huawei/displayengine/DisplayEngineDBManager$DataCleanerTableProcessor;->this$0:Lcom/huawei/displayengine/DisplayEngineDBManager;

    invoke-static {v2}, Lcom/huawei/displayengine/DisplayEngineDBManager;->access$200(Lcom/huawei/displayengine/DisplayEngineDBManager;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    .line 1100
    .local v2, "statement":Landroid/database/sqlite/SQLiteStatement;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v3

    long-to-int v0, v3

    .line 1101
    const-string v3, "DE J DisplayEngineDBManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DataCleanerTableProcessor.getSizeWithoutLock() return "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/displayengine/DElog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1104
    .end local v2    # "statement":Landroid/database/sqlite/SQLiteStatement;
    goto :goto_0

    .line 1102
    :catch_0
    move-exception v2

    .line 1103
    .local v2, "e":Landroid/database/SQLException;
    const-string v3, "DE J DisplayEngineDBManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DataCleanerTableProcessor.getSizeWithoutLock() error:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/displayengine/DElog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    .end local v1    # "sql":Ljava/lang/String;
    .end local v2    # "e":Landroid/database/SQLException;
    :goto_0
    goto :goto_1

    .line 1106
    :cond_0
    const-string v1, "DE J DisplayEngineDBManager"

    const-string v2, "DataCleanerTableProcessor.getSizeWithoutLock() mDatabase error."

    invoke-static {v1, v2}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    :goto_1
    return v0
.end method
