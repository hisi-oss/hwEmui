.class Lcom/huawei/displayengine/DisplayEngineDBManager$UserPreferencesTableProcessor;
.super Lcom/huawei/displayengine/DisplayEngineDBManager$TableProcessor;
.source "DisplayEngineDBManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/displayengine/DisplayEngineDBManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UserPreferencesTableProcessor"
.end annotation


# static fields
.field private static final mMaxSegmentLength:I = 0xff


# instance fields
.field final synthetic this$0:Lcom/huawei/displayengine/DisplayEngineDBManager;


# direct methods
.method public constructor <init>(Lcom/huawei/displayengine/DisplayEngineDBManager;)V
    .locals 0

    .line 468
    iput-object p1, p0, Lcom/huawei/displayengine/DisplayEngineDBManager$UserPreferencesTableProcessor;->this$0:Lcom/huawei/displayengine/DisplayEngineDBManager;

    invoke-direct {p0, p1}, Lcom/huawei/displayengine/DisplayEngineDBManager$TableProcessor;-><init>(Lcom/huawei/displayengine/DisplayEngineDBManager;)V

    .line 469
    return-void
.end method

.method private pretreatmentForAddorUpdateRecord(Landroid/os/Bundle;II[I[I)Z
    .locals 4
    .param p1, "data"    # Landroid/os/Bundle;
    .param p2, "userID"    # I
    .param p3, "appType"    # I
    .param p4, "alValues"    # [I
    .param p5, "deltaValues"    # [I

    .line 472
    const/4 v0, 0x0

    if-ltz p2, :cond_2

    if-ltz p3, :cond_2

    if-eqz p4, :cond_2

    if-eqz p5, :cond_2

    array-length v1, p4

    array-length v2, p5

    if-ne v1, v2, :cond_2

    array-length v1, p4

    const/16 v2, 0xff

    if-gt v1, v2, :cond_2

    iget v1, p0, Lcom/huawei/displayengine/DisplayEngineDBManager$UserPreferencesTableProcessor;->mMaxSize:I

    if-lez v1, :cond_0

    array-length v1, p4

    iget v2, p0, Lcom/huawei/displayengine/DisplayEngineDBManager$UserPreferencesTableProcessor;->mMaxSize:I

    if-le v1, v2, :cond_0

    goto :goto_0

    .line 481
    :cond_0
    invoke-virtual {p0, p1}, Lcom/huawei/displayengine/DisplayEngineDBManager$UserPreferencesTableProcessor;->clearWithoutLock(Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 482
    const-string v1, "DE J DisplayEngineDBManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UserPreferencesTableProcessor.addorUpdateRecord(userID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", appType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") error: clear last records!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    return v0

    .line 485
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 473
    :cond_2
    :goto_0
    if-eqz p4, :cond_4

    if-nez p5, :cond_3

    goto :goto_1

    .line 476
    :cond_3
    const-string v1, "DE J DisplayEngineDBManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UserPreferencesTableProcessor.addorUpdateRecord error: userID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " appType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " al size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " delta size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " max size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/huawei/displayengine/DisplayEngineDBManager$UserPreferencesTableProcessor;->mMaxSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 474
    :cond_4
    :goto_1
    const-string v1, "DE J DisplayEngineDBManager"

    const-string v2, "UserPreferencesTableProcessor.addorUpdateRecord error: al=null or delta=null"

    invoke-static {v1, v2}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    :goto_2
    return v0
.end method


# virtual methods
.method public addorUpdateRecord(Landroid/os/Bundle;)Z
    .locals 14
    .param p1, "data"    # Landroid/os/Bundle;

    .line 489
    iget-object v0, p0, Lcom/huawei/displayengine/DisplayEngineDBManager$UserPreferencesTableProcessor;->this$0:Lcom/huawei/displayengine/DisplayEngineDBManager;

    invoke-static {v0}, Lcom/huawei/displayengine/DisplayEngineDBManager;->access$000(Lcom/huawei/displayengine/DisplayEngineDBManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 490
    :try_start_0
    iget-object v1, p0, Lcom/huawei/displayengine/DisplayEngineDBManager$UserPreferencesTableProcessor;->this$0:Lcom/huawei/displayengine/DisplayEngineDBManager;

    invoke-static {v1}, Lcom/huawei/displayengine/DisplayEngineDBManager;->access$100(Lcom/huawei/displayengine/DisplayEngineDBManager;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    if-nez p1, :cond_0

    goto/16 :goto_2

    .line 495
    :cond_0
    const-string v1, "UserID"

    const/4 v3, -0x1

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 496
    .local v1, "userID":I
    const-string v4, "AppType"

    invoke-virtual {p1, v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 497
    .local v3, "appType":I
    const-string v4, "AmbientLight"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    move-object v10, v4

    .line 498
    .local v10, "alValues":[I
    const-string v4, "BackLightDelta"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    move-object v11, v4

    .line 499
    .local v11, "deltaValues":[I
    move-object v4, p0

    move-object v5, p1

    move v6, v1

    move v7, v3

    move-object v8, v10

    move-object v9, v11

    invoke-direct/range {v4 .. v9}, Lcom/huawei/displayengine/DisplayEngineDBManager$UserPreferencesTableProcessor;->pretreatmentForAddorUpdateRecord(Landroid/os/Bundle;II[I[I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 500
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    .line 504
    :cond_1
    :try_start_1
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 505
    .local v4, "text":Ljava/lang/StringBuffer;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UserPreferencesTableProcessor add record succ: userID="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", appType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", segment={"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 506
    shl-int/lit8 v5, v1, 0x10

    shl-int/lit8 v6, v3, 0x8

    add-int/2addr v5, v6

    .line 507
    .local v5, "id":I
    move v6, v2

    .local v6, "i":I
    :goto_0
    array-length v7, v10

    const/4 v8, 0x1

    if-ge v6, v7, :cond_2

    .line 508
    iget-object v7, p0, Lcom/huawei/displayengine/DisplayEngineDBManager$UserPreferencesTableProcessor;->this$0:Lcom/huawei/displayengine/DisplayEngineDBManager;

    invoke-static {v7}, Lcom/huawei/displayengine/DisplayEngineDBManager;->access$200(Lcom/huawei/displayengine/DisplayEngineDBManager;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    const-string v9, "INSERT INTO UserPreferences VALUES(?, ?, ?, ?, ?)"

    const/4 v12, 0x5

    new-array v12, v12, [Ljava/lang/Object;

    add-int v13, v5, v6

    add-int/2addr v13, v8

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v8

    const/4 v8, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v8

    const/4 v8, 0x3

    aget v13, v10, v6

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v8

    const/4 v8, 0x4

    aget v13, v11, v6

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v8

    invoke-virtual {v7, v9, v12}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 509
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget v8, v10, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v8, v11, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 507
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 511
    .end local v6    # "i":I
    :cond_2
    const-string v6, "DE J DisplayEngineDBManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "}"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 520
    .end local v4    # "text":Ljava/lang/StringBuffer;
    .end local v5    # "id":I
    nop

    .line 521
    :try_start_2
    monitor-exit v0

    return v8

    .line 512
    :catch_0
    move-exception v4

    .line 513
    .local v4, "e":Landroid/database/SQLException;
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 514
    .local v5, "text":Ljava/lang/StringBuffer;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UserPreferencesTableProcessor add record userID="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", appType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", segment={"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 515
    move v6, v2

    .restart local v6    # "i":I
    :goto_1
    array-length v7, v10

    if-ge v6, v7, :cond_3

    .line 516
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget v8, v10, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v8, v11, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 515
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 518
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

    .line 519
    monitor-exit v0

    return v2

    .line 491
    .end local v1    # "userID":I
    .end local v3    # "appType":I
    .end local v4    # "e":Landroid/database/SQLException;
    .end local v5    # "text":Ljava/lang/StringBuffer;
    .end local v10    # "alValues":[I
    .end local v11    # "deltaValues":[I
    :cond_4
    :goto_2
    const-string v1, "DE J DisplayEngineDBManager"

    const-string v3, "UserPreferencesTableProcessor.addorUpdateRecord error: Invalid input!"

    invoke-static {v1, v3}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    monitor-exit v0

    return v2

    .line 522
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method protected clearWithoutLock(Landroid/os/Bundle;)Z
    .locals 8
    .param p1, "info"    # Landroid/os/Bundle;

    .line 607
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 608
    const-string v1, "DE J DisplayEngineDBManager"

    const-string v2, "UserPreferencesTableProcessor.clearWithoutLock() invalid input: info=null"

    invoke-static {v1, v2}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    return v0

    .line 612
    :cond_0
    const-string v1, "UserID"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 613
    .local v1, "userID":I
    const-string v3, "AppType"

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 614
    .local v2, "appType":I
    if-ltz v1, :cond_4

    if-gez v2, :cond_1

    goto/16 :goto_2

    .line 619
    :cond_1
    iget-object v3, p0, Lcom/huawei/displayengine/DisplayEngineDBManager$UserPreferencesTableProcessor;->this$0:Lcom/huawei/displayengine/DisplayEngineDBManager;

    invoke-static {v3}, Lcom/huawei/displayengine/DisplayEngineDBManager;->access$100(Lcom/huawei/displayengine/DisplayEngineDBManager;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 620
    const-string v3, "DE J DisplayEngineDBManager"

    const-string v4, "UserPreferencesTableProcessor.clearWithoutLock() mDatabase error."

    invoke-static {v3, v4}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    return v0

    .line 624
    :cond_2
    move v3, v0

    .line 626
    .local v3, "ret":Z
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/huawei/displayengine/DisplayEngineDBManager$UserPreferencesTableProcessor;->getSizeWithoutLock(Landroid/os/Bundle;)I

    move-result v4

    if-lez v4, :cond_3

    .line 627
    iget-object v4, p0, Lcom/huawei/displayengine/DisplayEngineDBManager$UserPreferencesTableProcessor;->this$0:Lcom/huawei/displayengine/DisplayEngineDBManager;

    invoke-static {v4}, Lcom/huawei/displayengine/DisplayEngineDBManager;->access$200(Lcom/huawei/displayengine/DisplayEngineDBManager;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v5, "DELETE FROM UserPreferences where (USERID = ?) and (APPTYPE = ?)"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v0

    const/4 v0, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v0

    invoke-virtual {v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 629
    :cond_3
    const-string v0, "DE J DisplayEngineDBManager"

    const-string v4, "UserPreferencesTableProcessor.clearWithoutLock() sucess."

    invoke-static {v0, v4}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 630
    const/4 v3, 0x1

    .line 635
    :goto_0
    goto :goto_1

    .line 633
    :catch_0
    move-exception v0

    .line 634
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "DE J DisplayEngineDBManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UserPreferencesTableProcessor.clearWithoutLock() error:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/displayengine/DElog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_1

    .line 631
    :catch_1
    move-exception v0

    .line 632
    .local v0, "e":Landroid/database/SQLException;
    const-string v4, "DE J DisplayEngineDBManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UserPreferencesTableProcessor.clearWithoutLock() error:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/displayengine/DElog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Landroid/database/SQLException;
    goto :goto_0

    .line 636
    :goto_1
    return v3

    .line 615
    .end local v3    # "ret":Z
    :cond_4
    :goto_2
    const-string v3, "DE J DisplayEngineDBManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UserPreferencesTableProcessor.clearWithoutLock() invalid input: userID="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " appType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    return v0
.end method

.method public getAllRecords(Landroid/os/Bundle;)Ljava/util/ArrayList;
    .locals 9
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

    .line 526
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 527
    const-string v1, "DE J DisplayEngineDBManager"

    const-string v2, "UserPreferencesTableProcessor.getAllRecords invalid input: info=null"

    invoke-static {v1, v2}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    return-object v0

    .line 531
    :cond_0
    const-string v1, "UserID"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 532
    .local v1, "userID":I
    const-string v3, "AppType"

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 533
    .local v2, "appType":I
    if-ltz v1, :cond_8

    if-gez v2, :cond_1

    goto/16 :goto_4

    .line 538
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 539
    .local v3, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    iget-object v4, p0, Lcom/huawei/displayengine/DisplayEngineDBManager$UserPreferencesTableProcessor;->this$0:Lcom/huawei/displayengine/DisplayEngineDBManager;

    invoke-static {v4}, Lcom/huawei/displayengine/DisplayEngineDBManager;->access$000(Lcom/huawei/displayengine/DisplayEngineDBManager;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 540
    :try_start_0
    iget-object v5, p0, Lcom/huawei/displayengine/DisplayEngineDBManager$UserPreferencesTableProcessor;->this$0:Lcom/huawei/displayengine/DisplayEngineDBManager;

    invoke-static {v5}, Lcom/huawei/displayengine/DisplayEngineDBManager;->access$100(Lcom/huawei/displayengine/DisplayEngineDBManager;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 541
    const-string v5, "DE J DisplayEngineDBManager"

    const-string v6, "UserPreferencesTableProcessor.getAllRecords() mDatabase error."

    invoke-static {v5, v6}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    return-object v0

    .line 545
    :cond_2
    move-object v5, v0

    .line 547
    .local v5, "c":Landroid/database/Cursor;
    const/4 v6, 0x2

    :try_start_1
    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 548
    .local v6, "args":[Ljava/lang/String;
    iget-object v7, p0, Lcom/huawei/displayengine/DisplayEngineDBManager$UserPreferencesTableProcessor;->this$0:Lcom/huawei/displayengine/DisplayEngineDBManager;

    invoke-static {v7}, Lcom/huawei/displayengine/DisplayEngineDBManager;->access$200(Lcom/huawei/displayengine/DisplayEngineDBManager;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    const-string v8, "SELECT * FROM UserPreferences WHERE USERID = ? AND APPTYPE = ?"

    invoke-virtual {v7, v8, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    move-object v5, v7

    .line 549
    if-nez v5, :cond_4

    .line 550
    const-string v7, "DE J DisplayEngineDBManager"

    const-string v8, "UserPreferencesTableProcessor.getAllRecords() query database error."

    invoke-static {v7, v8}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 551
    nop

    .line 563
    if-eqz v5, :cond_3

    .line 564
    :try_start_2
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_3
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 551
    return-object v0

    .line 553
    :cond_4
    :goto_0
    :try_start_3
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 554
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 555
    .local v0, "record":Landroid/os/Bundle;
    const-string v7, "AmbientLight"

    const-string v8, "AL"

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 556
    const-string v7, "BackLightDelta"

    const-string v8, "DELTA"

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 557
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 558
    .end local v0    # "record":Landroid/os/Bundle;
    goto :goto_0

    .line 563
    .end local v6    # "args":[Ljava/lang/String;
    :cond_5
    if-eqz v5, :cond_6

    .line 564
    :goto_1
    :try_start_4
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    .line 563
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 559
    :catch_0
    move-exception v0

    .line 560
    .local v0, "e":Landroid/database/SQLException;
    const/4 v3, 0x0

    .line 561
    :try_start_5
    const-string v6, "DE J DisplayEngineDBManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "UserPreferencesTableProcessor.getAllRecords() error:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/huawei/displayengine/DElog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 563
    .end local v0    # "e":Landroid/database/SQLException;
    if-eqz v5, :cond_6

    goto :goto_1

    .line 567
    .end local v5    # "c":Landroid/database/Cursor;
    :cond_6
    :goto_2
    :try_start_6
    monitor-exit v4

    .line 568
    return-object v3

    .line 563
    .restart local v5    # "c":Landroid/database/Cursor;
    :goto_3
    if-eqz v5, :cond_7

    .line 564
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0

    .line 567
    .end local v5    # "c":Landroid/database/Cursor;
    :catchall_1
    move-exception v0

    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0

    .line 534
    .end local v3    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    :cond_8
    :goto_4
    const-string v3, "DE J DisplayEngineDBManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UserPreferencesTableProcessor.getAllRecords invalid input: userID="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " appType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    return-object v0
.end method

.method protected getSizeWithoutLock(Landroid/os/Bundle;)I
    .locals 9
    .param p1, "info"    # Landroid/os/Bundle;

    .line 572
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 573
    const-string v1, "DE J DisplayEngineDBManager"

    const-string v2, "UserPreferencesTableProcessor.getSizeWithoutLock() invalid input: info=null"

    invoke-static {v1, v2}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    return v0

    .line 577
    :cond_0
    const-string v1, "UserID"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 578
    .local v1, "userID":I
    const-string v3, "AppType"

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 579
    .local v2, "appType":I
    if-ltz v1, :cond_6

    if-gez v2, :cond_1

    goto/16 :goto_4

    .line 584
    :cond_1
    const/4 v3, 0x0

    .line 585
    .local v3, "size":I
    iget-object v4, p0, Lcom/huawei/displayengine/DisplayEngineDBManager$UserPreferencesTableProcessor;->this$0:Lcom/huawei/displayengine/DisplayEngineDBManager;

    invoke-static {v4}, Lcom/huawei/displayengine/DisplayEngineDBManager;->access$200(Lcom/huawei/displayengine/DisplayEngineDBManager;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/huawei/displayengine/DisplayEngineDBManager$UserPreferencesTableProcessor;->this$0:Lcom/huawei/displayengine/DisplayEngineDBManager;

    invoke-static {v4}, Lcom/huawei/displayengine/DisplayEngineDBManager;->access$200(Lcom/huawei/displayengine/DisplayEngineDBManager;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 586
    const/4 v4, 0x0

    .line 588
    .local v4, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v5, p0, Lcom/huawei/displayengine/DisplayEngineDBManager$UserPreferencesTableProcessor;->this$0:Lcom/huawei/displayengine/DisplayEngineDBManager;

    invoke-static {v5}, Lcom/huawei/displayengine/DisplayEngineDBManager;->access$200(Lcom/huawei/displayengine/DisplayEngineDBManager;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    const-string v6, "SELECT * FROM UserPreferences where (USERID = ?) and (APPTYPE = ?)"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v0

    const/4 v0, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v0

    invoke-virtual {v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v4, v0

    .line 589
    if-eqz v4, :cond_2

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 590
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v0

    move v3, v0

    .line 592
    :cond_2
    const-string v0, "DE J DisplayEngineDBManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UserPreferencesTableProcessor.getSizeWithoutLock() return "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 596
    if-eqz v4, :cond_3

    .line 597
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 596
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 593
    :catch_0
    move-exception v0

    .line 594
    .local v0, "e":Landroid/database/SQLException;
    :try_start_1
    const-string v5, "DE J DisplayEngineDBManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UserPreferencesTableProcessor.getSizeWithoutLock() error:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/huawei/displayengine/DElog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 596
    .end local v0    # "e":Landroid/database/SQLException;
    if-eqz v4, :cond_3

    goto :goto_0

    .line 600
    .end local v4    # "c":Landroid/database/Cursor;
    :cond_3
    :goto_1
    goto :goto_3

    .line 596
    .restart local v4    # "c":Landroid/database/Cursor;
    :goto_2
    if-eqz v4, :cond_4

    .line 597
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    .line 601
    .end local v4    # "c":Landroid/database/Cursor;
    :cond_5
    const-string v0, "DE J DisplayEngineDBManager"

    const-string v4, "UserPreferencesTableProcessor.getSizeWithoutLock() mDatabase error."

    invoke-static {v0, v4}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    :goto_3
    return v3

    .line 580
    .end local v3    # "size":I
    :cond_6
    :goto_4
    const-string v3, "DE J DisplayEngineDBManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UserPreferencesTableProcessor.getSizeWithoutLock() invalid input: userID="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " appType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    return v0
.end method
