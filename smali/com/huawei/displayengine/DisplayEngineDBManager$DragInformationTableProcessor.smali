.class Lcom/huawei/displayengine/DisplayEngineDBManager$DragInformationTableProcessor;
.super Lcom/huawei/displayengine/DisplayEngineDBManager$TableProcessor;
.source "DisplayEngineDBManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/displayengine/DisplayEngineDBManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DragInformationTableProcessor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/displayengine/DisplayEngineDBManager;


# direct methods
.method public constructor <init>(Lcom/huawei/displayengine/DisplayEngineDBManager;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/huawei/displayengine/DisplayEngineDBManager$DragInformationTableProcessor;->this$0:Lcom/huawei/displayengine/DisplayEngineDBManager;

    invoke-direct {p0, p1}, Lcom/huawei/displayengine/DisplayEngineDBManager$TableProcessor;-><init>(Lcom/huawei/displayengine/DisplayEngineDBManager;)V

    .line 228
    return-void
.end method

.method private pretreatmentForAddorUpdateRecord(Landroid/os/Bundle;IIJ)Z
    .locals 4
    .param p1, "data"    # Landroid/os/Bundle;
    .param p2, "userID"    # I
    .param p3, "appType"    # I
    .param p4, "time"    # J

    .line 276
    const/4 v0, 0x0

    if-ltz p2, :cond_2

    if-ltz p3, :cond_2

    const-wide/16 v1, 0x0

    cmp-long v1, p4, v1

    if-gtz v1, :cond_0

    goto :goto_0

    .line 281
    :cond_0
    iget v1, p0, Lcom/huawei/displayengine/DisplayEngineDBManager$DragInformationTableProcessor;->mMaxSize:I

    const/4 v2, 0x1

    if-lez v1, :cond_1

    .line 282
    invoke-virtual {p0, p1}, Lcom/huawei/displayengine/DisplayEngineDBManager$DragInformationTableProcessor;->getSizeWithoutLock(Landroid/os/Bundle;)I

    move-result v1

    .line 283
    .local v1, "realSize":I
    iget v3, p0, Lcom/huawei/displayengine/DisplayEngineDBManager$DragInformationTableProcessor;->mMaxSize:I

    if-lt v1, v3, :cond_1

    .line 284
    iget v3, p0, Lcom/huawei/displayengine/DisplayEngineDBManager$DragInformationTableProcessor;->mMaxSize:I

    sub-int v3, v1, v3

    add-int/2addr v3, v2

    invoke-virtual {p0, p1, v3}, Lcom/huawei/displayengine/DisplayEngineDBManager$DragInformationTableProcessor;->deleteRecordsWithoutLock(Landroid/os/Bundle;I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 285
    return v0

    .line 289
    .end local v1    # "realSize":I
    :cond_1
    return v2

    .line 277
    :cond_2
    :goto_0
    const-string v1, "DE J DisplayEngineDBManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DragInformationTableProcessor.addorUpdateRecord invalid input: time="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " userID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " appType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    return v0
.end method


# virtual methods
.method public addorUpdateRecord(Landroid/os/Bundle;)Z
    .locals 32
    .param p1, "data"    # Landroid/os/Bundle;

    move-object/from16 v7, p0

    .line 293
    move-object/from16 v8, p1

    iget-object v0, v7, Lcom/huawei/displayengine/DisplayEngineDBManager$DragInformationTableProcessor;->this$0:Lcom/huawei/displayengine/DisplayEngineDBManager;

    invoke-static {v0}, Lcom/huawei/displayengine/DisplayEngineDBManager;->access$000(Lcom/huawei/displayengine/DisplayEngineDBManager;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 294
    :try_start_0
    iget-object v0, v7, Lcom/huawei/displayengine/DisplayEngineDBManager$DragInformationTableProcessor;->this$0:Lcom/huawei/displayengine/DisplayEngineDBManager;

    invoke-static {v0}, Lcom/huawei/displayengine/DisplayEngineDBManager;->access$100(Lcom/huawei/displayengine/DisplayEngineDBManager;)Z

    move-result v0

    const/4 v10, 0x0

    if-eqz v0, :cond_9

    if-nez v8, :cond_0

    goto/16 :goto_7

    .line 299
    :cond_0
    const-string v0, "TimeStamp"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    move-wide v11, v0

    .line 300
    .local v11, "time":J
    const-string v0, "Priority"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    move v13, v0

    .line 301
    .local v13, "priority":I
    const-string v0, "StartPoint"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    move v14, v0

    .line 302
    .local v14, "start":F
    const-string v0, "StopPoint"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    move v15, v0

    .line 303
    .local v15, "stop":F
    const-string v0, "AmbientLight"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    move v5, v0

    .line 304
    .local v5, "al":I
    const-string v0, "ProximityPositive"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    move v6, v0

    .line 305
    .local v6, "cover":Z
    const-string v0, "UserID"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    move v4, v0

    .line 306
    .local v4, "userID":I
    const-string v0, "AppType"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    move v3, v0

    .line 307
    .local v3, "appType":I
    const-string v0, "GameState"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    move v2, v0

    .line 308
    .local v2, "gameState":I
    const-string v0, "PackageName"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 309
    .local v1, "pkgName":Ljava/lang/String;
    move-object/from16 v16, v1

    move-object v1, v7

    .end local v1    # "pkgName":Ljava/lang/String;
    .local v16, "pkgName":Ljava/lang/String;
    move/from16 v17, v2

    move-object v2, v8

    .end local v2    # "gameState":I
    .local v17, "gameState":I
    move/from16 v18, v3

    move v3, v4

    .end local v3    # "appType":I
    .local v18, "appType":I
    move/from16 v19, v4

    move/from16 v4, v18

    .end local v4    # "userID":I
    .local v19, "userID":I
    move/from16 v20, v5

    move/from16 v21, v6

    move-wide v5, v11

    .end local v5    # "al":I
    .end local v6    # "cover":Z
    .local v20, "al":I
    .local v21, "cover":Z
    invoke-direct/range {v1 .. v6}, Lcom/huawei/displayengine/DisplayEngineDBManager$DragInformationTableProcessor;->pretreatmentForAddorUpdateRecord(Landroid/os/Bundle;IIJ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 310
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_f

    return v10

    .line 313
    :cond_1
    const/4 v1, 0x1

    .line 314
    .local v1, "ret":Z
    const/4 v0, 0x0

    move-object v2, v0

    .line 316
    .local v2, "c":Landroid/database/Cursor;
    :try_start_1
    iget-object v3, v7, Lcom/huawei/displayengine/DisplayEngineDBManager$DragInformationTableProcessor;->this$0:Lcom/huawei/displayengine/DisplayEngineDBManager;

    invoke-static {v3}, Lcom/huawei/displayengine/DisplayEngineDBManager;->access$200(Lcom/huawei/displayengine/DisplayEngineDBManager;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "SELECT * FROM UserDragInformation where TIMESTAMP = ?"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/String;

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v6, v10

    invoke-virtual {v3, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    move-object v2, v3

    .line 317
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 318
    .local v3, "values":Landroid/content/ContentValues;
    const-string v4, "TIMESTAMP"

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 319
    const-string v4, "PRIORITY"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 320
    const-string v4, "STARTPOINT"

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 321
    const-string v4, "STOPPOINT"

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 322
    const-string v4, "AL"
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_c
    .catchall {:try_start_1 .. :try_end_1} :catchall_c

    move/from16 v6, v20

    :try_start_2
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .end local v20    # "al":I
    .local v6, "al":I
    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 323
    const-string v0, "PROXIMITYPOSITIVE"
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_b

    move/from16 v4, v21

    if-eqz v4, :cond_2

    .end local v21    # "cover":Z
    .local v4, "cover":Z
    move v10, v5

    nop

    :cond_2
    :try_start_3
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v0, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 324
    const-string v0, "USERID"
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_a
    .catchall {:try_start_3 .. :try_end_3} :catchall_a

    move/from16 v10, v19

    :try_start_4
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .end local v19    # "userID":I
    .local v10, "userID":I
    invoke-virtual {v3, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 325
    const-string v0, "APPTYPE"
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_9
    .catchall {:try_start_4 .. :try_end_4} :catchall_9

    move/from16 v23, v1

    move/from16 v5, v18

    :try_start_5
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .end local v1    # "ret":Z
    .end local v18    # "appType":I
    .local v5, "appType":I
    .local v23, "ret":Z
    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 326
    const-string v0, "GAMESTATE"
    :try_end_5
    .catch Landroid/database/SQLException; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_8

    move/from16 v1, v17

    :try_start_6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .end local v17    # "gameState":I
    .local v1, "gameState":I
    invoke-virtual {v3, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 327
    const-string v0, "PACKAGE"
    :try_end_6
    .catch Landroid/database/SQLException; {:try_start_6 .. :try_end_6} :catch_7
    .catchall {:try_start_6 .. :try_end_6} :catchall_7

    move-object/from16 v8, v16

    :try_start_7
    invoke-virtual {v3, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/database/SQLException; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 328
    .end local v16    # "pkgName":Ljava/lang/String;
    .local v8, "pkgName":Ljava/lang/String;
    if-eqz v2, :cond_4

    :try_start_8
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 329
    iget-object v0, v7, Lcom/huawei/displayengine/DisplayEngineDBManager$DragInformationTableProcessor;->this$0:Lcom/huawei/displayengine/DisplayEngineDBManager;

    invoke-static {v0}, Lcom/huawei/displayengine/DisplayEngineDBManager;->access$200(Lcom/huawei/displayengine/DisplayEngineDBManager;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_8
    .catch Landroid/database/SQLException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-object/from16 v24, v2

    :try_start_9
    const-string v2, "UserDragInformation"

    .end local v2    # "c":Landroid/database/Cursor;
    .local v24, "c":Landroid/database/Cursor;
    const-string v7, "TIMESTAMP = ?"
    :try_end_9
    .catch Landroid/database/SQLException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-object/from16 v25, v8

    const/4 v8, 0x1

    :try_start_a
    new-array v8, v8, [Ljava/lang/String;

    .end local v8    # "pkgName":Ljava/lang/String;
    .local v25, "pkgName":Ljava/lang/String;
    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    aput-object v16, v8, v17

    invoke-virtual {v0, v2, v3, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 330
    .local v0, "rows":I
    if-nez v0, :cond_3

    .line 331
    const-string v2, "DE J DisplayEngineDBManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DragInformationTableProcessor update failed: time="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ",priority="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ",start="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, ",stop="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, ",al="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ",proximitypositive="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ",userID="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ",appType="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ",gameState="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ",pkgName="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_a
    .catch Landroid/database/SQLException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-object/from16 v8, v25

    :try_start_b
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .end local v25    # "pkgName":Ljava/lang/String;
    .restart local v8    # "pkgName":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    const/4 v2, 0x0

    .line 338
    .end local v23    # "ret":Z
    .local v2, "ret":Z
    move-object/from16 v26, v3

    goto :goto_0

    .line 335
    .end local v2    # "ret":Z
    .end local v8    # "pkgName":Ljava/lang/String;
    .restart local v23    # "ret":Z
    .restart local v25    # "pkgName":Ljava/lang/String;
    :cond_3
    move-object/from16 v8, v25

    .end local v25    # "pkgName":Ljava/lang/String;
    .restart local v8    # "pkgName":Ljava/lang/String;
    const-string v2, "DE J DisplayEngineDBManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v26, v3

    const-string v3, "DragInformationTableProcessor update succ: rows="

    .end local v3    # "values":Landroid/content/ContentValues;
    .local v26, "values":Landroid/content/ContentValues;
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " time="

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ",priority="

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",start="

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ",stop="

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ",al="

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",proximitypositive="

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",userID="

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",appType="

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",gameState="

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",pkgName="

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Landroid/database/SQLException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 338
    .end local v0    # "rows":I
    move/from16 v2, v23

    .line 355
    .end local v23    # "ret":Z
    .restart local v2    # "ret":Z
    :goto_0
    move v0, v2

    goto/16 :goto_1

    .end local v2    # "ret":Z
    .end local v8    # "pkgName":Ljava/lang/String;
    .end local v26    # "values":Landroid/content/ContentValues;
    .restart local v23    # "ret":Z
    .restart local v25    # "pkgName":Ljava/lang/String;
    :catchall_0
    move-exception v0

    move/from16 v31, v13

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    .end local v25    # "pkgName":Ljava/lang/String;
    .restart local v8    # "pkgName":Ljava/lang/String;
    goto/16 :goto_6

    .line 349
    .end local v8    # "pkgName":Ljava/lang/String;
    .restart local v25    # "pkgName":Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    .end local v25    # "pkgName":Ljava/lang/String;
    .restart local v8    # "pkgName":Ljava/lang/String;
    goto/16 :goto_4

    .line 355
    :catchall_1
    move-exception v0

    move-object v3, v8

    move/from16 v31, v13

    move-object/from16 v2, v24

    goto/16 :goto_6

    .line 349
    :catch_1
    move-exception v0

    move-object v3, v8

    move-object/from16 v2, v24

    goto/16 :goto_4

    .line 355
    .end local v24    # "c":Landroid/database/Cursor;
    .local v2, "c":Landroid/database/Cursor;
    :catchall_2
    move-exception v0

    move-object/from16 v24, v2

    move-object v3, v8

    move/from16 v31, v13

    .end local v2    # "c":Landroid/database/Cursor;
    .restart local v24    # "c":Landroid/database/Cursor;
    goto/16 :goto_6

    .line 349
    .end local v24    # "c":Landroid/database/Cursor;
    .restart local v2    # "c":Landroid/database/Cursor;
    :catch_2
    move-exception v0

    move-object/from16 v24, v2

    move-object v3, v8

    .end local v2    # "c":Landroid/database/Cursor;
    .restart local v24    # "c":Landroid/database/Cursor;
    goto/16 :goto_4

    .line 339
    .end local v24    # "c":Landroid/database/Cursor;
    .restart local v2    # "c":Landroid/database/Cursor;
    .restart local v3    # "values":Landroid/content/ContentValues;
    :cond_4
    move-object/from16 v24, v2

    move-object/from16 v26, v3

    .end local v2    # "c":Landroid/database/Cursor;
    .end local v3    # "values":Landroid/content/ContentValues;
    .restart local v24    # "c":Landroid/database/Cursor;
    .restart local v26    # "values":Landroid/content/ContentValues;
    move-object/from16 v3, p0

    :try_start_c
    iget-object v0, v3, Lcom/huawei/displayengine/DisplayEngineDBManager$DragInformationTableProcessor;->this$0:Lcom/huawei/displayengine/DisplayEngineDBManager;

    invoke-static {v0}, Lcom/huawei/displayengine/DisplayEngineDBManager;->access$200(Lcom/huawei/displayengine/DisplayEngineDBManager;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v2, "UserDragInformation"

    move-object/from16 v7, v26

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2
    :try_end_c
    .catch Landroid/database/SQLException; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 340
    .end local v26    # "values":Landroid/content/ContentValues;
    .local v2, "rowID":J
    .local v7, "values":Landroid/content/ContentValues;
    const-wide/16 v16, -0x1

    cmp-long v0, v2, v16

    if-nez v0, :cond_5

    .line 341
    :try_start_d
    const-string v0, "DE J DisplayEngineDBManager"

    move-object/from16 v27, v7

    new-instance v7, Ljava/lang/StringBuilder;

    .end local v7    # "values":Landroid/content/ContentValues;
    .local v27, "values":Landroid/content/ContentValues;
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v28, v2

    const-string v2, "DragInformationTableProcessor insert failed: time="

    .end local v2    # "rowID":J
    .local v28, "rowID":J
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ",priority="

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",start="

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ",stop="

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ",al="

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",proximitypositive="

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",userID="

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",appType="

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",gameState="

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",pkgName="

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Landroid/database/SQLException; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 343
    const/4 v0, 0x0

    .line 355
    .end local v8    # "pkgName":Ljava/lang/String;
    .end local v23    # "ret":Z
    .end local v27    # "values":Landroid/content/ContentValues;
    .end local v28    # "rowID":J
    .local v0, "ret":Z
    .local v3, "pkgName":Ljava/lang/String;
    :goto_1
    move-object v3, v8

    goto :goto_2

    .line 345
    .end local v0    # "ret":Z
    .end local v3    # "pkgName":Ljava/lang/String;
    .restart local v2    # "rowID":J
    .restart local v7    # "values":Landroid/content/ContentValues;
    .restart local v8    # "pkgName":Ljava/lang/String;
    .restart local v23    # "ret":Z
    :cond_5
    move-wide/from16 v28, v2

    move-object/from16 v27, v7

    .end local v2    # "rowID":J
    .end local v7    # "values":Landroid/content/ContentValues;
    .restart local v27    # "values":Landroid/content/ContentValues;
    .restart local v28    # "rowID":J
    :try_start_e
    const-string v0, "DE J DisplayEngineDBManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DragInformationTableProcessor add a record("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_e
    .catch Landroid/database/SQLException; {:try_start_e .. :try_end_e} :catch_5
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    move-object/from16 v30, v8

    move-wide/from16 v7, v28

    :try_start_f
    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .end local v8    # "pkgName":Ljava/lang/String;
    .end local v28    # "rowID":J
    .local v7, "rowID":J
    .local v30, "pkgName":Ljava/lang/String;
    const-string v3, ") succ: time="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ",priority="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",start="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ",stop="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ",al="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",proximitypositive="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",userID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",appType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",gameState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",pkgName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_f
    .catch Landroid/database/SQLException; {:try_start_f .. :try_end_f} :catch_4
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    move-object/from16 v3, v30

    :try_start_10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .end local v30    # "pkgName":Ljava/lang/String;
    .restart local v3    # "pkgName":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catch Landroid/database/SQLException; {:try_start_10 .. :try_end_10} :catch_3
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    .line 355
    .end local v7    # "rowID":J
    .end local v27    # "values":Landroid/content/ContentValues;
    move/from16 v0, v23

    .end local v23    # "ret":Z
    .restart local v0    # "ret":Z
    :goto_2
    if-eqz v24, :cond_6

    .line 356
    move-object/from16 v2, v24

    :try_start_11
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_f

    .end local v24    # "c":Landroid/database/Cursor;
    .local v2, "c":Landroid/database/Cursor;
    goto :goto_3

    .line 359
    .end local v2    # "c":Landroid/database/Cursor;
    .restart local v24    # "c":Landroid/database/Cursor;
    :cond_6
    move-object/from16 v2, v24

    .end local v24    # "c":Landroid/database/Cursor;
    .restart local v2    # "c":Landroid/database/Cursor;
    :goto_3
    move/from16 v31, v13

    goto/16 :goto_5

    .line 355
    .end local v0    # "ret":Z
    .end local v2    # "c":Landroid/database/Cursor;
    .restart local v23    # "ret":Z
    .restart local v24    # "c":Landroid/database/Cursor;
    :catchall_3
    move-exception v0

    move-object/from16 v2, v24

    move/from16 v31, v13

    .end local v24    # "c":Landroid/database/Cursor;
    .restart local v2    # "c":Landroid/database/Cursor;
    goto/16 :goto_6

    .line 349
    .end local v2    # "c":Landroid/database/Cursor;
    .restart local v24    # "c":Landroid/database/Cursor;
    :catch_3
    move-exception v0

    move-object/from16 v2, v24

    .end local v24    # "c":Landroid/database/Cursor;
    .restart local v2    # "c":Landroid/database/Cursor;
    goto/16 :goto_4

    .line 355
    .end local v2    # "c":Landroid/database/Cursor;
    .end local v3    # "pkgName":Ljava/lang/String;
    .restart local v24    # "c":Landroid/database/Cursor;
    .restart local v30    # "pkgName":Ljava/lang/String;
    :catchall_4
    move-exception v0

    move-object/from16 v2, v24

    move-object/from16 v3, v30

    move/from16 v31, v13

    .end local v24    # "c":Landroid/database/Cursor;
    .end local v30    # "pkgName":Ljava/lang/String;
    .restart local v2    # "c":Landroid/database/Cursor;
    .restart local v3    # "pkgName":Ljava/lang/String;
    goto/16 :goto_6

    .line 349
    .end local v2    # "c":Landroid/database/Cursor;
    .end local v3    # "pkgName":Ljava/lang/String;
    .restart local v24    # "c":Landroid/database/Cursor;
    .restart local v30    # "pkgName":Ljava/lang/String;
    :catch_4
    move-exception v0

    move-object/from16 v2, v24

    move-object/from16 v3, v30

    .end local v24    # "c":Landroid/database/Cursor;
    .end local v30    # "pkgName":Ljava/lang/String;
    .restart local v2    # "c":Landroid/database/Cursor;
    .restart local v3    # "pkgName":Ljava/lang/String;
    goto/16 :goto_4

    .line 355
    .end local v2    # "c":Landroid/database/Cursor;
    .end local v3    # "pkgName":Ljava/lang/String;
    .restart local v8    # "pkgName":Ljava/lang/String;
    .restart local v24    # "c":Landroid/database/Cursor;
    :catchall_5
    move-exception v0

    move-object v3, v8

    move-object/from16 v2, v24

    move/from16 v31, v13

    .end local v8    # "pkgName":Ljava/lang/String;
    .end local v24    # "c":Landroid/database/Cursor;
    .restart local v2    # "c":Landroid/database/Cursor;
    .restart local v3    # "pkgName":Ljava/lang/String;
    goto/16 :goto_6

    .line 349
    .end local v2    # "c":Landroid/database/Cursor;
    .end local v3    # "pkgName":Ljava/lang/String;
    .restart local v8    # "pkgName":Ljava/lang/String;
    .restart local v24    # "c":Landroid/database/Cursor;
    :catch_5
    move-exception v0

    move-object v3, v8

    move-object/from16 v2, v24

    .end local v8    # "pkgName":Ljava/lang/String;
    .end local v24    # "c":Landroid/database/Cursor;
    .restart local v2    # "c":Landroid/database/Cursor;
    .restart local v3    # "pkgName":Ljava/lang/String;
    goto/16 :goto_4

    .line 355
    .end local v3    # "pkgName":Ljava/lang/String;
    .restart local v8    # "pkgName":Ljava/lang/String;
    :catchall_6
    move-exception v0

    move-object v3, v8

    move/from16 v31, v13

    .end local v8    # "pkgName":Ljava/lang/String;
    .restart local v3    # "pkgName":Ljava/lang/String;
    goto/16 :goto_6

    .line 349
    .end local v3    # "pkgName":Ljava/lang/String;
    .restart local v8    # "pkgName":Ljava/lang/String;
    :catch_6
    move-exception v0

    move-object v3, v8

    .end local v8    # "pkgName":Ljava/lang/String;
    .restart local v3    # "pkgName":Ljava/lang/String;
    goto/16 :goto_4

    .line 355
    .end local v3    # "pkgName":Ljava/lang/String;
    .restart local v16    # "pkgName":Ljava/lang/String;
    :catchall_7
    move-exception v0

    move-object/from16 v3, v16

    move/from16 v31, v13

    .end local v16    # "pkgName":Ljava/lang/String;
    .restart local v3    # "pkgName":Ljava/lang/String;
    goto/16 :goto_6

    .line 349
    .end local v3    # "pkgName":Ljava/lang/String;
    .restart local v16    # "pkgName":Ljava/lang/String;
    :catch_7
    move-exception v0

    move-object/from16 v3, v16

    .end local v16    # "pkgName":Ljava/lang/String;
    .restart local v3    # "pkgName":Ljava/lang/String;
    goto/16 :goto_4

    .line 355
    .end local v1    # "gameState":I
    .end local v3    # "pkgName":Ljava/lang/String;
    .restart local v16    # "pkgName":Ljava/lang/String;
    .restart local v17    # "gameState":I
    :catchall_8
    move-exception v0

    move-object/from16 v3, v16

    move/from16 v1, v17

    move/from16 v31, v13

    .end local v16    # "pkgName":Ljava/lang/String;
    .end local v17    # "gameState":I
    .restart local v1    # "gameState":I
    .restart local v3    # "pkgName":Ljava/lang/String;
    goto/16 :goto_6

    .line 349
    .end local v1    # "gameState":I
    .end local v3    # "pkgName":Ljava/lang/String;
    .restart local v16    # "pkgName":Ljava/lang/String;
    .restart local v17    # "gameState":I
    :catch_8
    move-exception v0

    move-object/from16 v3, v16

    move/from16 v1, v17

    .end local v16    # "pkgName":Ljava/lang/String;
    .end local v17    # "gameState":I
    .restart local v1    # "gameState":I
    .restart local v3    # "pkgName":Ljava/lang/String;
    goto/16 :goto_4

    .line 355
    .end local v3    # "pkgName":Ljava/lang/String;
    .end local v5    # "appType":I
    .end local v23    # "ret":Z
    .local v1, "ret":Z
    .restart local v16    # "pkgName":Ljava/lang/String;
    .restart local v17    # "gameState":I
    .restart local v18    # "appType":I
    :catchall_9
    move-exception v0

    move/from16 v23, v1

    move-object/from16 v3, v16

    move/from16 v1, v17

    move/from16 v5, v18

    move/from16 v31, v13

    .end local v16    # "pkgName":Ljava/lang/String;
    .end local v17    # "gameState":I
    .end local v18    # "appType":I
    .local v1, "gameState":I
    .restart local v3    # "pkgName":Ljava/lang/String;
    .restart local v5    # "appType":I
    .restart local v23    # "ret":Z
    goto/16 :goto_6

    .line 349
    .end local v3    # "pkgName":Ljava/lang/String;
    .end local v5    # "appType":I
    .end local v23    # "ret":Z
    .local v1, "ret":Z
    .restart local v16    # "pkgName":Ljava/lang/String;
    .restart local v17    # "gameState":I
    .restart local v18    # "appType":I
    :catch_9
    move-exception v0

    move/from16 v23, v1

    move-object/from16 v3, v16

    move/from16 v1, v17

    move/from16 v5, v18

    .end local v16    # "pkgName":Ljava/lang/String;
    .end local v17    # "gameState":I
    .end local v18    # "appType":I
    .local v1, "gameState":I
    .restart local v3    # "pkgName":Ljava/lang/String;
    .restart local v5    # "appType":I
    .restart local v23    # "ret":Z
    goto/16 :goto_4

    .line 355
    .end local v3    # "pkgName":Ljava/lang/String;
    .end local v5    # "appType":I
    .end local v10    # "userID":I
    .end local v23    # "ret":Z
    .local v1, "ret":Z
    .restart local v16    # "pkgName":Ljava/lang/String;
    .restart local v17    # "gameState":I
    .restart local v18    # "appType":I
    .restart local v19    # "userID":I
    :catchall_a
    move-exception v0

    move/from16 v23, v1

    move-object/from16 v3, v16

    move/from16 v1, v17

    move/from16 v5, v18

    move/from16 v10, v19

    move/from16 v31, v13

    .end local v16    # "pkgName":Ljava/lang/String;
    .end local v17    # "gameState":I
    .end local v18    # "appType":I
    .end local v19    # "userID":I
    .local v1, "gameState":I
    .restart local v3    # "pkgName":Ljava/lang/String;
    .restart local v5    # "appType":I
    .restart local v10    # "userID":I
    .restart local v23    # "ret":Z
    goto/16 :goto_6

    .line 349
    .end local v3    # "pkgName":Ljava/lang/String;
    .end local v5    # "appType":I
    .end local v10    # "userID":I
    .end local v23    # "ret":Z
    .local v1, "ret":Z
    .restart local v16    # "pkgName":Ljava/lang/String;
    .restart local v17    # "gameState":I
    .restart local v18    # "appType":I
    .restart local v19    # "userID":I
    :catch_a
    move-exception v0

    move/from16 v23, v1

    move-object/from16 v3, v16

    move/from16 v1, v17

    move/from16 v5, v18

    move/from16 v10, v19

    .end local v16    # "pkgName":Ljava/lang/String;
    .end local v17    # "gameState":I
    .end local v18    # "appType":I
    .end local v19    # "userID":I
    .local v1, "gameState":I
    .restart local v3    # "pkgName":Ljava/lang/String;
    .restart local v5    # "appType":I
    .restart local v10    # "userID":I
    .restart local v23    # "ret":Z
    goto :goto_4

    .line 355
    .end local v3    # "pkgName":Ljava/lang/String;
    .end local v4    # "cover":Z
    .end local v5    # "appType":I
    .end local v10    # "userID":I
    .end local v23    # "ret":Z
    .local v1, "ret":Z
    .restart local v16    # "pkgName":Ljava/lang/String;
    .restart local v17    # "gameState":I
    .restart local v18    # "appType":I
    .restart local v19    # "userID":I
    .restart local v21    # "cover":Z
    :catchall_b
    move-exception v0

    move/from16 v23, v1

    move-object/from16 v3, v16

    move/from16 v1, v17

    move/from16 v5, v18

    move/from16 v10, v19

    move/from16 v4, v21

    move/from16 v31, v13

    .end local v16    # "pkgName":Ljava/lang/String;
    .end local v17    # "gameState":I
    .end local v18    # "appType":I
    .end local v19    # "userID":I
    .end local v21    # "cover":Z
    .local v1, "gameState":I
    .restart local v3    # "pkgName":Ljava/lang/String;
    .restart local v4    # "cover":Z
    .restart local v5    # "appType":I
    .restart local v10    # "userID":I
    .restart local v23    # "ret":Z
    goto/16 :goto_6

    .line 349
    .end local v3    # "pkgName":Ljava/lang/String;
    .end local v4    # "cover":Z
    .end local v5    # "appType":I
    .end local v10    # "userID":I
    .end local v23    # "ret":Z
    .local v1, "ret":Z
    .restart local v16    # "pkgName":Ljava/lang/String;
    .restart local v17    # "gameState":I
    .restart local v18    # "appType":I
    .restart local v19    # "userID":I
    .restart local v21    # "cover":Z
    :catch_b
    move-exception v0

    move/from16 v23, v1

    move-object/from16 v3, v16

    move/from16 v1, v17

    move/from16 v5, v18

    move/from16 v10, v19

    move/from16 v4, v21

    .end local v16    # "pkgName":Ljava/lang/String;
    .end local v17    # "gameState":I
    .end local v18    # "appType":I
    .end local v19    # "userID":I
    .end local v21    # "cover":Z
    .local v1, "gameState":I
    .restart local v3    # "pkgName":Ljava/lang/String;
    .restart local v4    # "cover":Z
    .restart local v5    # "appType":I
    .restart local v10    # "userID":I
    .restart local v23    # "ret":Z
    goto :goto_4

    .line 355
    .end local v3    # "pkgName":Ljava/lang/String;
    .end local v4    # "cover":Z
    .end local v5    # "appType":I
    .end local v6    # "al":I
    .end local v10    # "userID":I
    .end local v23    # "ret":Z
    .local v1, "ret":Z
    .restart local v16    # "pkgName":Ljava/lang/String;
    .restart local v17    # "gameState":I
    .restart local v18    # "appType":I
    .restart local v19    # "userID":I
    .restart local v20    # "al":I
    .restart local v21    # "cover":Z
    :catchall_c
    move-exception v0

    move/from16 v23, v1

    move-object/from16 v3, v16

    move/from16 v1, v17

    move/from16 v5, v18

    move/from16 v10, v19

    move/from16 v6, v20

    move/from16 v4, v21

    move/from16 v31, v13

    .end local v16    # "pkgName":Ljava/lang/String;
    .end local v17    # "gameState":I
    .end local v18    # "appType":I
    .end local v19    # "userID":I
    .end local v20    # "al":I
    .end local v21    # "cover":Z
    .local v1, "gameState":I
    .restart local v3    # "pkgName":Ljava/lang/String;
    .restart local v4    # "cover":Z
    .restart local v5    # "appType":I
    .restart local v6    # "al":I
    .restart local v10    # "userID":I
    .restart local v23    # "ret":Z
    goto/16 :goto_6

    .line 349
    .end local v3    # "pkgName":Ljava/lang/String;
    .end local v4    # "cover":Z
    .end local v5    # "appType":I
    .end local v6    # "al":I
    .end local v10    # "userID":I
    .end local v23    # "ret":Z
    .local v1, "ret":Z
    .restart local v16    # "pkgName":Ljava/lang/String;
    .restart local v17    # "gameState":I
    .restart local v18    # "appType":I
    .restart local v19    # "userID":I
    .restart local v20    # "al":I
    .restart local v21    # "cover":Z
    :catch_c
    move-exception v0

    move/from16 v23, v1

    move-object/from16 v3, v16

    move/from16 v1, v17

    move/from16 v5, v18

    move/from16 v10, v19

    move/from16 v6, v20

    move/from16 v4, v21

    .line 350
    .end local v16    # "pkgName":Ljava/lang/String;
    .end local v17    # "gameState":I
    .end local v18    # "appType":I
    .end local v19    # "userID":I
    .end local v20    # "al":I
    .end local v21    # "cover":Z
    .local v0, "e":Landroid/database/SQLException;
    .local v1, "gameState":I
    .restart local v3    # "pkgName":Ljava/lang/String;
    .restart local v4    # "cover":Z
    .restart local v5    # "appType":I
    .restart local v6    # "al":I
    .restart local v10    # "userID":I
    .restart local v23    # "ret":Z
    :goto_4
    :try_start_12
    const-string v7, "DE J DisplayEngineDBManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_e

    move/from16 v31, v13

    :try_start_13
    const-string v13, "DragInformationTableProcessor add a record time="

    .end local v13    # "priority":I
    .local v31, "priority":I
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, ",start="

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v13, ",stop="

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v13, ",al="

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ",proximitypositive="

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, ",userID="

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ",appType="

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ",gameState="

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ",pkgName="

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", error:"

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 350
    invoke-static {v7, v8}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_d

    .line 353
    const/4 v0, 0x0

    .line 355
    .end local v23    # "ret":Z
    .local v0, "ret":Z
    if-eqz v2, :cond_7

    .line 356
    :try_start_14
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 359
    :cond_7
    :goto_5
    monitor-exit v9

    return v0

    .line 355
    .end local v0    # "ret":Z
    .restart local v23    # "ret":Z
    :catchall_d
    move-exception v0

    goto :goto_6

    .end local v31    # "priority":I
    .restart local v13    # "priority":I
    :catchall_e
    move-exception v0

    move/from16 v31, v13

    .end local v13    # "priority":I
    .restart local v31    # "priority":I
    :goto_6
    if-eqz v2, :cond_8

    .line 356
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v0

    .line 295
    .end local v1    # "gameState":I
    .end local v2    # "c":Landroid/database/Cursor;
    .end local v3    # "pkgName":Ljava/lang/String;
    .end local v4    # "cover":Z
    .end local v5    # "appType":I
    .end local v6    # "al":I
    .end local v10    # "userID":I
    .end local v11    # "time":J
    .end local v14    # "start":F
    .end local v15    # "stop":F
    .end local v23    # "ret":Z
    .end local v31    # "priority":I
    :cond_9
    :goto_7
    const-string v0, "DE J DisplayEngineDBManager"

    const-string v1, "DragInformationTableProcessor.addorUpdateRecord() mDatabase error or Invalid input!"

    invoke-static {v0, v1}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    monitor-exit v9

    const/4 v0, 0x0

    return v0

    .line 360
    :catchall_f
    move-exception v0

    monitor-exit v9
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_f

    throw v0
.end method

.method protected deleteRecordsWithoutLock(Landroid/os/Bundle;I)Z
    .locals 6
    .param p1, "info"    # Landroid/os/Bundle;
    .param p2, "count"    # I

    .line 439
    const/4 v0, 0x0

    .line 441
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/huawei/displayengine/DisplayEngineDBManager$DragInformationTableProcessor;->this$0:Lcom/huawei/displayengine/DisplayEngineDBManager;

    invoke-static {v1}, Lcom/huawei/displayengine/DisplayEngineDBManager;->access$100(Lcom/huawei/displayengine/DisplayEngineDBManager;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    if-gtz p2, :cond_0

    goto/16 :goto_1

    .line 446
    :cond_0
    const-string v1, "UserID"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 447
    .local v1, "userID":I
    if-gez v1, :cond_1

    .line 448
    const-string v3, "DE J DisplayEngineDBManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DragInformationTableProcessor.deleteRecordsWithoutLock() invalid input: userID="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    return v2

    .line 453
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/huawei/displayengine/DisplayEngineDBManager$DragInformationTableProcessor;->this$0:Lcom/huawei/displayengine/DisplayEngineDBManager;

    invoke-static {v2}, Lcom/huawei/displayengine/DisplayEngineDBManager;->access$200(Lcom/huawei/displayengine/DisplayEngineDBManager;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "UserDragInformation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id IN(SELECT _id FROM UserDragInformation where USERID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " ORDER BY PRIORITY DESC, _id ASC LIMIT "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 455
    .local v2, "rows":I
    const-string v3, "DE J DisplayEngineDBManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DragInformationTableProcessor.deleteRecordsWithoutLock(userID="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") sucess. Delete "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " records."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 456
    const/4 v0, 0x1

    .line 459
    .end local v2    # "rows":I
    goto :goto_0

    .line 457
    :catch_0
    move-exception v2

    .line 458
    .local v2, "e":Landroid/database/SQLException;
    const-string v3, "DE J DisplayEngineDBManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DragInformationTableProcessor.deleteRecordsWithoutLock() error:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/displayengine/DElog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    .end local v2    # "e":Landroid/database/SQLException;
    :goto_0
    return v0

    .line 442
    .end local v1    # "userID":I
    :cond_2
    :goto_1
    const-string v1, "DE J DisplayEngineDBManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DragInformationTableProcessor.deleteRecordsWithoutLock() mDatabase error, info is null or count="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    return v2
.end method

.method public getAllRecords(Landroid/os/Bundle;)Ljava/util/ArrayList;
    .locals 12
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

    .line 364
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 365
    .local v0, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    iget-object v1, p0, Lcom/huawei/displayengine/DisplayEngineDBManager$DragInformationTableProcessor;->this$0:Lcom/huawei/displayengine/DisplayEngineDBManager;

    invoke-static {v1}, Lcom/huawei/displayengine/DisplayEngineDBManager;->access$000(Lcom/huawei/displayengine/DisplayEngineDBManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 366
    :try_start_0
    iget-object v2, p0, Lcom/huawei/displayengine/DisplayEngineDBManager$DragInformationTableProcessor;->this$0:Lcom/huawei/displayengine/DisplayEngineDBManager;

    invoke-static {v2}, Lcom/huawei/displayengine/DisplayEngineDBManager;->access$100(Lcom/huawei/displayengine/DisplayEngineDBManager;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_9

    if-nez p1, :cond_0

    goto/16 :goto_7

    .line 371
    :cond_0
    const-string v2, "UserID"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 372
    .local v2, "userID":I
    if-gez v2, :cond_1

    .line 373
    const-string v4, "DE J DisplayEngineDBManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DragInformationTableProcessor.getAllRecords() invalid input: userID="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    monitor-exit v1

    return-object v3

    .line 376
    :cond_1
    const-string v4, "NumberLimit"

    const/4 v5, -0x1

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 378
    .local v4, "numLimit":I
    move-object v5, v3

    .line 380
    .local v5, "c":Landroid/database/Cursor;
    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ge v4, v7, :cond_2

    .line 381
    :try_start_1
    iget-object v8, p0, Lcom/huawei/displayengine/DisplayEngineDBManager$DragInformationTableProcessor;->this$0:Lcom/huawei/displayengine/DisplayEngineDBManager;

    invoke-static {v8}, Lcom/huawei/displayengine/DisplayEngineDBManager;->access$200(Lcom/huawei/displayengine/DisplayEngineDBManager;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    const-string v9, "SELECT * FROM UserDragInformation where USERID = ? ORDER BY _id ASC"

    new-array v10, v7, [Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v6

    invoke-virtual {v8, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    move-object v5, v8

    goto :goto_0

    .line 408
    :catchall_0
    move-exception v3

    goto/16 :goto_6

    .line 404
    :catch_0
    move-exception v3

    goto/16 :goto_4

    .line 383
    :cond_2
    iget-object v8, p0, Lcom/huawei/displayengine/DisplayEngineDBManager$DragInformationTableProcessor;->this$0:Lcom/huawei/displayengine/DisplayEngineDBManager;

    invoke-static {v8}, Lcom/huawei/displayengine/DisplayEngineDBManager;->access$200(Lcom/huawei/displayengine/DisplayEngineDBManager;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SELECT * FROM UserDragInformation where USERID = ? ORDER BY _id DESC LIMIT "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v7, [Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v6

    invoke-virtual {v8, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    move-object v5, v8

    .line 385
    :goto_0
    if-nez v5, :cond_4

    .line 386
    const-string v6, "DE J DisplayEngineDBManager"

    const-string v7, "DragInformationTableProcessor.getAllRecords() query database error."

    invoke-static {v6, v7}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 387
    nop

    .line 408
    if-eqz v5, :cond_3

    .line 409
    :try_start_2
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_3
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 387
    return-object v3

    .line 389
    :cond_4
    :goto_1
    :try_start_3
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 390
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 391
    .local v3, "record":Landroid/os/Bundle;
    const-string v8, "_ID"

    const-string v9, "_id"

    invoke-interface {v5, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v5, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-virtual {v3, v8, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 392
    const-string v8, "TimeStamp"

    const-string v9, "TIMESTAMP"

    invoke-interface {v5, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v5, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-virtual {v3, v8, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 393
    const-string v8, "Priority"

    const-string v9, "PRIORITY"

    invoke-interface {v5, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v5, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-virtual {v3, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 394
    const-string v8, "StartPoint"

    const-string v9, "STARTPOINT"

    invoke-interface {v5, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v5, v9}, Landroid/database/Cursor;->getFloat(I)F

    move-result v9

    invoke-virtual {v3, v8, v9}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 395
    const-string v8, "StopPoint"

    const-string v9, "STOPPOINT"

    invoke-interface {v5, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v5, v9}, Landroid/database/Cursor;->getFloat(I)F

    move-result v9

    invoke-virtual {v3, v8, v9}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 396
    const-string v8, "AmbientLight"

    const-string v9, "AL"

    invoke-interface {v5, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v5, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-virtual {v3, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 397
    const-string v8, "ProximityPositive"

    const-string v9, "PROXIMITYPOSITIVE"

    invoke-interface {v5, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v5, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    if-ne v9, v7, :cond_5

    move v9, v7

    goto :goto_2

    :cond_5
    move v9, v6

    :goto_2
    invoke-virtual {v3, v8, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 398
    const-string v8, "UserID"

    const-string v9, "USERID"

    invoke-interface {v5, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v5, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-virtual {v3, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 399
    const-string v8, "AppType"

    const-string v9, "APPTYPE"

    invoke-interface {v5, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v5, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-virtual {v3, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 400
    const-string v8, "GameState"

    const-string v9, "GAMESTATE"

    invoke-interface {v5, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v5, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-virtual {v3, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 401
    const-string v8, "PackageName"

    const-string v9, "PACKAGE"

    invoke-interface {v5, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v5, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 403
    .end local v3    # "record":Landroid/os/Bundle;
    goto/16 :goto_1

    .line 408
    :cond_6
    if-eqz v5, :cond_7

    .line 409
    :goto_3
    :try_start_4
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_5

    .line 404
    :goto_4
    nop

    .line 405
    .local v3, "e":Landroid/database/SQLException;
    const/4 v0, 0x0

    .line 406
    :try_start_5
    const-string v6, "DE J DisplayEngineDBManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DragInformationTableProcessor.getAllRecords() error:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/huawei/displayengine/DElog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 408
    .end local v3    # "e":Landroid/database/SQLException;
    if-eqz v5, :cond_7

    goto :goto_3

    .line 412
    .end local v2    # "userID":I
    .end local v4    # "numLimit":I
    .end local v5    # "c":Landroid/database/Cursor;
    :cond_7
    :goto_5
    :try_start_6
    monitor-exit v1

    .line 413
    return-object v0

    .line 408
    .restart local v2    # "userID":I
    .restart local v4    # "numLimit":I
    .restart local v5    # "c":Landroid/database/Cursor;
    :goto_6
    if-eqz v5, :cond_8

    .line 409
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v3

    .line 367
    .end local v2    # "userID":I
    .end local v4    # "numLimit":I
    .end local v5    # "c":Landroid/database/Cursor;
    :cond_9
    :goto_7
    const-string v2, "DE J DisplayEngineDBManager"

    const-string v4, "DragInformationTableProcessor.getAllRecords() mDatabase error or Invalid input!"

    invoke-static {v2, v4}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    monitor-exit v1

    return-object v3

    .line 412
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

    .line 417
    const/4 v0, 0x0

    .line 418
    .local v0, "size":I
    iget-object v1, p0, Lcom/huawei/displayengine/DisplayEngineDBManager$DragInformationTableProcessor;->this$0:Lcom/huawei/displayengine/DisplayEngineDBManager;

    invoke-static {v1}, Lcom/huawei/displayengine/DisplayEngineDBManager;->access$200(Lcom/huawei/displayengine/DisplayEngineDBManager;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/huawei/displayengine/DisplayEngineDBManager$DragInformationTableProcessor;->this$0:Lcom/huawei/displayengine/DisplayEngineDBManager;

    invoke-static {v1}, Lcom/huawei/displayengine/DisplayEngineDBManager;->access$200(Lcom/huawei/displayengine/DisplayEngineDBManager;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    .line 419
    const-string v1, "UserID"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 420
    .local v1, "userID":I
    if-gez v1, :cond_0

    .line 421
    const-string v2, "DE J DisplayEngineDBManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DragInformationTableProcessor.getSizeWithoutLock() invalid input: userID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 423
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT COUNT(*) FROM UserDragInformation where USERID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 425
    .local v2, "sql":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/huawei/displayengine/DisplayEngineDBManager$DragInformationTableProcessor;->this$0:Lcom/huawei/displayengine/DisplayEngineDBManager;

    invoke-static {v3}, Lcom/huawei/displayengine/DisplayEngineDBManager;->access$200(Lcom/huawei/displayengine/DisplayEngineDBManager;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    .line 426
    .local v3, "statement":Landroid/database/sqlite/SQLiteStatement;
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v4

    long-to-int v0, v4

    .line 427
    const-string v4, "DE J DisplayEngineDBManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DragInformationTableProcessor.getSizeWithoutLock() return "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/displayengine/DElog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 430
    .end local v3    # "statement":Landroid/database/sqlite/SQLiteStatement;
    goto :goto_0

    .line 428
    :catch_0
    move-exception v3

    .line 429
    .local v3, "e":Landroid/database/SQLException;
    const-string v4, "DE J DisplayEngineDBManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DragInformationTableProcessor.getSizeWithoutLock() error:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/displayengine/DElog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    .end local v1    # "userID":I
    .end local v2    # "sql":Ljava/lang/String;
    .end local v3    # "e":Landroid/database/SQLException;
    :goto_0
    goto :goto_1

    .line 433
    :cond_1
    const-string v1, "DE J DisplayEngineDBManager"

    const-string v2, "DragInformationTableProcessor.getSizeWithoutLock() mDatabase error."

    invoke-static {v1, v2}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    :goto_1
    return v0
.end method

.method public setMaxSize(I)Z
    .locals 7
    .param p1, "size"    # I

    .line 231
    const/4 v0, 0x1

    .line 232
    .local v0, "ret":Z
    if-lez p1, :cond_5

    .line 233
    iget-object v1, p0, Lcom/huawei/displayengine/DisplayEngineDBManager$DragInformationTableProcessor;->this$0:Lcom/huawei/displayengine/DisplayEngineDBManager;

    invoke-static {v1}, Lcom/huawei/displayengine/DisplayEngineDBManager;->access$000(Lcom/huawei/displayengine/DisplayEngineDBManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 234
    :try_start_0
    iget-object v2, p0, Lcom/huawei/displayengine/DisplayEngineDBManager$DragInformationTableProcessor;->this$0:Lcom/huawei/displayengine/DisplayEngineDBManager;

    invoke-static {v2}, Lcom/huawei/displayengine/DisplayEngineDBManager;->access$100(Lcom/huawei/displayengine/DisplayEngineDBManager;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 235
    const-string v2, "DE J DisplayEngineDBManager"

    const-string v3, "DragInformationTableProcessor.setMaxSize() mDatabase error!"

    invoke-static {v2, v3}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    const/4 v2, 0x0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    return v2

    .line 240
    :cond_0
    const/4 v2, 0x0

    move-object v3, v2

    .line 242
    .local v3, "c":Landroid/database/Cursor;
    :try_start_1
    iget-object v4, p0, Lcom/huawei/displayengine/DisplayEngineDBManager$DragInformationTableProcessor;->this$0:Lcom/huawei/displayengine/DisplayEngineDBManager;

    invoke-static {v4}, Lcom/huawei/displayengine/DisplayEngineDBManager;->access$200(Lcom/huawei/displayengine/DisplayEngineDBManager;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v5, "SELECT DISTINCT USERID FROM UserDragInformation"

    invoke-virtual {v4, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v3, v2

    .line 243
    if-eqz v3, :cond_2

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_2

    .line 244
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 245
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 246
    .local v2, "info":Landroid/os/Bundle;
    const-string v4, "UserID"

    const-string v5, "USERID"

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 247
    invoke-virtual {p0, v2}, Lcom/huawei/displayengine/DisplayEngineDBManager$DragInformationTableProcessor;->getSizeWithoutLock(Landroid/os/Bundle;)I

    move-result v4

    .line 248
    .local v4, "realSize":I
    if-le v4, p1, :cond_1

    .line 249
    sub-int v5, v4, p1

    invoke-virtual {p0, v2, v5}, Lcom/huawei/displayengine/DisplayEngineDBManager$DragInformationTableProcessor;->deleteRecordsWithoutLock(Landroid/os/Bundle;I)Z

    move-result v5
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v5, :cond_1

    .line 250
    const/4 v0, 0x0

    .line 253
    .end local v2    # "info":Landroid/os/Bundle;
    .end local v4    # "realSize":I
    :cond_1
    goto :goto_0

    .line 259
    :cond_2
    if-eqz v3, :cond_3

    .line 260
    :goto_1
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    .line 259
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 255
    :catch_0
    move-exception v2

    .line 256
    .local v2, "e":Landroid/database/SQLException;
    const/4 v0, 0x0

    .line 257
    :try_start_3
    const-string v4, "DE J DisplayEngineDBManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DragInformationTableProcessor.setMaxSize() failed to get all the user IDs, error:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/displayengine/DElog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 259
    .end local v2    # "e":Landroid/database/SQLException;
    if-eqz v3, :cond_3

    goto :goto_1

    .line 265
    :cond_3
    :goto_2
    :try_start_4
    iput p1, p0, Lcom/huawei/displayengine/DisplayEngineDBManager$DragInformationTableProcessor;->mMaxSize:I

    .line 266
    const-string v2, "DE J DisplayEngineDBManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DragInformationTableProcessor.setMaxSize("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/huawei/displayengine/DisplayEngineDBManager$DragInformationTableProcessor;->mMaxSize:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") success."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    .end local v3    # "c":Landroid/database/Cursor;
    monitor-exit v1

    goto :goto_4

    .line 259
    .restart local v3    # "c":Landroid/database/Cursor;
    :goto_3
    if-eqz v3, :cond_4

    .line 260
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v2

    .line 267
    .end local v3    # "c":Landroid/database/Cursor;
    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2

    .line 269
    :cond_5
    const/4 v0, 0x0

    .line 270
    const-string v1, "DE J DisplayEngineDBManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DragInformationTableProcessor.setMaxSize() invalid input: size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :goto_4
    return v0
.end method
