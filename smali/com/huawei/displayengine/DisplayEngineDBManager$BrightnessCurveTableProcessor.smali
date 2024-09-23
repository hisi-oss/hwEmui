.class Lcom/huawei/displayengine/DisplayEngineDBManager$BrightnessCurveTableProcessor;
.super Lcom/huawei/displayengine/DisplayEngineDBManager$TableProcessor;
.source "DisplayEngineDBManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/displayengine/DisplayEngineDBManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BrightnessCurveTableProcessor"
.end annotation


# instance fields
.field private final mTableName:Ljava/lang/String;

.field final synthetic this$0:Lcom/huawei/displayengine/DisplayEngineDBManager;


# direct methods
.method public constructor <init>(Lcom/huawei/displayengine/DisplayEngineDBManager;Ljava/lang/String;)V
    .locals 3
    .param p2, "name"    # Ljava/lang/String;

    .line 644
    iput-object p1, p0, Lcom/huawei/displayengine/DisplayEngineDBManager$BrightnessCurveTableProcessor;->this$0:Lcom/huawei/displayengine/DisplayEngineDBManager;

    invoke-direct {p0, p1}, Lcom/huawei/displayengine/DisplayEngineDBManager$TableProcessor;-><init>(Lcom/huawei/displayengine/DisplayEngineDBManager;)V

    .line 645
    const/4 p1, 0x0

    if-nez p2, :cond_0

    .line 646
    iput-object p1, p0, Lcom/huawei/displayengine/DisplayEngineDBManager$BrightnessCurveTableProcessor;->mTableName:Ljava/lang/String;

    .line 647
    const-string p1, "DE J DisplayEngineDBManager"

    const-string v0, "BrightnessCurveTableProcessor invalid input name=null!"

    invoke-static {p1, v0}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    return-void

    .line 650
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x5a80c48a

    if-eq v1, v2, :cond_4

    const v2, 0xa6649c0

    if-eq v1, v2, :cond_3

    const v2, 0x1281b633

    if-eq v1, v2, :cond_2

    const v2, 0x5ae48d63

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "BrightnessCurveDefault"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    const-string v1, "BrightnessCurveMiddle"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const-string v1, "BrightnessCurveHigh"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x2

    goto :goto_0

    :cond_4
    const-string v1, "BrightnessCurveLow"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x0

    :cond_5
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 664
    iput-object p1, p0, Lcom/huawei/displayengine/DisplayEngineDBManager$BrightnessCurveTableProcessor;->mTableName:Ljava/lang/String;

    .line 665
    const-string p1, "DE J DisplayEngineDBManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BrightnessCurveTableProcessor unknown name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 661
    :pswitch_0
    const-string p1, "BrightnessCurveDefault"

    iput-object p1, p0, Lcom/huawei/displayengine/DisplayEngineDBManager$BrightnessCurveTableProcessor;->mTableName:Ljava/lang/String;

    .line 662
    goto :goto_1

    .line 658
    :pswitch_1
    const-string p1, "BrightnessCurveHigh"

    iput-object p1, p0, Lcom/huawei/displayengine/DisplayEngineDBManager$BrightnessCurveTableProcessor;->mTableName:Ljava/lang/String;

    .line 659
    goto :goto_1

    .line 655
    :pswitch_2
    const-string p1, "BrightnessCurveMiddle"

    iput-object p1, p0, Lcom/huawei/displayengine/DisplayEngineDBManager$BrightnessCurveTableProcessor;->mTableName:Ljava/lang/String;

    .line 656
    goto :goto_1

    .line 652
    :pswitch_3
    const-string p1, "BrightnessCurveLow"

    iput-object p1, p0, Lcom/huawei/displayengine/DisplayEngineDBManager$BrightnessCurveTableProcessor;->mTableName:Ljava/lang/String;

    .line 653
    nop

    .line 668
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private pretreatmentForAddorUpdateRecord(Landroid/os/Bundle;I[F[F)Z
    .locals 4
    .param p1, "data"    # Landroid/os/Bundle;
    .param p2, "userID"    # I
    .param p3, "alValues"    # [F
    .param p4, "blValues"    # [F

    .line 715
    const/4 v0, 0x0

    if-ltz p2, :cond_2

    if-eqz p3, :cond_2

    if-eqz p4, :cond_2

    array-length v1, p3

    array-length v2, p4

    if-ne v1, v2, :cond_2

    iget v1, p0, Lcom/huawei/displayengine/DisplayEngineDBManager$BrightnessCurveTableProcessor;->mMaxSize:I

    if-lez v1, :cond_0

    array-length v1, p3

    iget v2, p0, Lcom/huawei/displayengine/DisplayEngineDBManager$BrightnessCurveTableProcessor;->mMaxSize:I

    if-le v1, v2, :cond_0

    goto :goto_0

    .line 724
    :cond_0
    invoke-virtual {p0, p1}, Lcom/huawei/displayengine/DisplayEngineDBManager$BrightnessCurveTableProcessor;->clearWithoutLock(Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 725
    const-string v1, "DE J DisplayEngineDBManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TableProcessor["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/huawei/displayengine/DisplayEngineDBManager$BrightnessCurveTableProcessor;->mTableName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "].addorUpdateRecord error: clear last records!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    return v0

    .line 728
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 716
    :cond_2
    :goto_0
    if-eqz p3, :cond_4

    if-nez p4, :cond_3

    goto :goto_1

    .line 719
    :cond_3
    const-string v1, "DE J DisplayEngineDBManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TableProcessor["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/huawei/displayengine/DisplayEngineDBManager$BrightnessCurveTableProcessor;->mTableName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "].addorUpdateRecord error: userID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " al size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " bl size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " max size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/huawei/displayengine/DisplayEngineDBManager$BrightnessCurveTableProcessor;->mMaxSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 717
    :cond_4
    :goto_1
    const-string v1, "DE J DisplayEngineDBManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TableProcessor["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/huawei/displayengine/DisplayEngineDBManager$BrightnessCurveTableProcessor;->mTableName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "].addorUpdateRecord error: userID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " al=null or bl=null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    :goto_2
    return v0
.end method


# virtual methods
.method public addorUpdateRecord(Landroid/os/Bundle;)Z
    .locals 12
    .param p1, "data"    # Landroid/os/Bundle;

    .line 732
    iget-object v0, p0, Lcom/huawei/displayengine/DisplayEngineDBManager$BrightnessCurveTableProcessor;->this$0:Lcom/huawei/displayengine/DisplayEngineDBManager;

    invoke-static {v0}, Lcom/huawei/displayengine/DisplayEngineDBManager;->access$000(Lcom/huawei/displayengine/DisplayEngineDBManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 733
    :try_start_0
    iget-object v1, p0, Lcom/huawei/displayengine/DisplayEngineDBManager$BrightnessCurveTableProcessor;->this$0:Lcom/huawei/displayengine/DisplayEngineDBManager;

    invoke-static {v1}, Lcom/huawei/displayengine/DisplayEngineDBManager;->access$100(Lcom/huawei/displayengine/DisplayEngineDBManager;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    if-nez p1, :cond_0

    goto/16 :goto_2

    .line 738
    :cond_0
    const-string v1, "UserID"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 739
    .local v1, "userID":I
    const-string v3, "AmbientLight"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v3

    .line 740
    .local v3, "alValues":[F
    const-string v4, "BackLight"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v4

    .line 741
    .local v4, "blValues":[F
    invoke-direct {p0, p1, v1, v3, v4}, Lcom/huawei/displayengine/DisplayEngineDBManager$BrightnessCurveTableProcessor;->pretreatmentForAddorUpdateRecord(Landroid/os/Bundle;I[F[F)Z

    move-result v5

    if-nez v5, :cond_1

    .line 742
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    .line 746
    :cond_1
    :try_start_1
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 747
    .local v5, "text":Ljava/lang/StringBuffer;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TableProcessor["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/huawei/displayengine/DisplayEngineDBManager$BrightnessCurveTableProcessor;->mTableName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "] add record succ: userID="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " points={"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 748
    move v6, v2

    .local v6, "i":I
    :goto_0
    array-length v7, v3

    const/4 v8, 0x1

    if-ge v6, v7, :cond_2

    .line 749
    iget-object v7, p0, Lcom/huawei/displayengine/DisplayEngineDBManager$BrightnessCurveTableProcessor;->this$0:Lcom/huawei/displayengine/DisplayEngineDBManager;

    invoke-static {v7}, Lcom/huawei/displayengine/DisplayEngineDBManager;->access$200(Lcom/huawei/displayengine/DisplayEngineDBManager;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "INSERT INTO "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/huawei/displayengine/DisplayEngineDBManager$BrightnessCurveTableProcessor;->mTableName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " VALUES(?, ?, ?, ?)"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    add-int/lit8 v11, v6, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v8

    const/4 v8, 0x2

    aget v11, v3, v6

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v10, v8

    const/4 v8, 0x3

    aget v11, v4, v6

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v10, v8

    invoke-virtual {v7, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 750
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget v8, v3, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v8, v4, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 748
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 752
    .end local v6    # "i":I
    :cond_2
    const-string v6, "DE J DisplayEngineDBManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

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

    .line 761
    .end local v5    # "text":Ljava/lang/StringBuffer;
    nop

    .line 762
    :try_start_2
    monitor-exit v0

    return v8

    .line 753
    :catch_0
    move-exception v5

    .line 754
    .local v5, "e":Landroid/database/SQLException;
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 755
    .local v6, "text":Ljava/lang/StringBuffer;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TableProcessor["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/huawei/displayengine/DisplayEngineDBManager$BrightnessCurveTableProcessor;->mTableName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "] add record userID="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " points={"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 756
    move v7, v2

    .local v7, "i":I
    :goto_1
    array-length v8, v3

    if-ge v7, v8, :cond_3

    .line 757
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    aget v9, v3, v7

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v9, v4, v7

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 756
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 759
    .end local v7    # "i":I
    :cond_3
    const-string v7, "DE J DisplayEngineDBManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "}, error:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    monitor-exit v0

    return v2

    .line 734
    .end local v1    # "userID":I
    .end local v3    # "alValues":[F
    .end local v4    # "blValues":[F
    .end local v5    # "e":Landroid/database/SQLException;
    .end local v6    # "text":Ljava/lang/StringBuffer;
    :cond_4
    :goto_2
    const-string v1, "DE J DisplayEngineDBManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TableProcessor["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/huawei/displayengine/DisplayEngineDBManager$BrightnessCurveTableProcessor;->mTableName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "].addorUpdateRecord error: Invalid input!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    monitor-exit v0

    return v2

    .line 763
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

    .line 828
    const/4 v0, 0x0

    .line 830
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/huawei/displayengine/DisplayEngineDBManager$BrightnessCurveTableProcessor;->this$0:Lcom/huawei/displayengine/DisplayEngineDBManager;

    invoke-static {v1}, Lcom/huawei/displayengine/DisplayEngineDBManager;->access$100(Lcom/huawei/displayengine/DisplayEngineDBManager;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    if-nez p1, :cond_0

    goto/16 :goto_2

    .line 834
    :cond_0
    const-string v1, "UserID"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 835
    .local v1, "userID":I
    if-gez v1, :cond_1

    .line 836
    const-string v3, "DE J DisplayEngineDBManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TableProcessor["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/huawei/displayengine/DisplayEngineDBManager$BrightnessCurveTableProcessor;->mTableName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "].clearWithoutLock() invalid input: userID="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    return v2

    .line 841
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/huawei/displayengine/DisplayEngineDBManager$BrightnessCurveTableProcessor;->getSizeWithoutLock(Landroid/os/Bundle;)I

    move-result v2

    if-lez v2, :cond_2

    .line 842
    iget-object v2, p0, Lcom/huawei/displayengine/DisplayEngineDBManager$BrightnessCurveTableProcessor;->this$0:Lcom/huawei/displayengine/DisplayEngineDBManager;

    invoke-static {v2}, Lcom/huawei/displayengine/DisplayEngineDBManager;->access$200(Lcom/huawei/displayengine/DisplayEngineDBManager;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DELETE FROM "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/huawei/displayengine/DisplayEngineDBManager$BrightnessCurveTableProcessor;->mTableName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " where USERID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 844
    :cond_2
    const-string v2, "DE J DisplayEngineDBManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TableProcessor["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/huawei/displayengine/DisplayEngineDBManager$BrightnessCurveTableProcessor;->mTableName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "].clearWithoutLock() sucess."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 845
    const/4 v0, 0x1

    .line 850
    :goto_0
    goto :goto_1

    .line 848
    :catch_0
    move-exception v2

    .line 849
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "DE J DisplayEngineDBManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TableProcessor["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/huawei/displayengine/DisplayEngineDBManager$BrightnessCurveTableProcessor;->mTableName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "].clearWithoutLock() error:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/displayengine/DElog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_1

    .line 846
    :catch_1
    move-exception v2

    .line 847
    .local v2, "e":Landroid/database/SQLException;
    const-string v3, "DE J DisplayEngineDBManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TableProcessor["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/huawei/displayengine/DisplayEngineDBManager$BrightnessCurveTableProcessor;->mTableName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "].clearWithoutLock() error:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/displayengine/DElog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Landroid/database/SQLException;
    goto :goto_0

    .line 851
    :goto_1
    return v0

    .line 831
    .end local v1    # "userID":I
    :cond_3
    :goto_2
    const-string v1, "DE J DisplayEngineDBManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TableProcessor["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/huawei/displayengine/DisplayEngineDBManager$BrightnessCurveTableProcessor;->mTableName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "].clearWithoutLock() mDatabase error or info is null."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    return v2
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

    .line 767
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 768
    .local v0, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    iget-object v1, p0, Lcom/huawei/displayengine/DisplayEngineDBManager$BrightnessCurveTableProcessor;->this$0:Lcom/huawei/displayengine/DisplayEngineDBManager;

    invoke-static {v1}, Lcom/huawei/displayengine/DisplayEngineDBManager;->access$000(Lcom/huawei/displayengine/DisplayEngineDBManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 769
    :try_start_0
    iget-object v2, p0, Lcom/huawei/displayengine/DisplayEngineDBManager$BrightnessCurveTableProcessor;->this$0:Lcom/huawei/displayengine/DisplayEngineDBManager;

    invoke-static {v2}, Lcom/huawei/displayengine/DisplayEngineDBManager;->access$100(Lcom/huawei/displayengine/DisplayEngineDBManager;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_7

    if-nez p1, :cond_0

    goto/16 :goto_4

    .line 773
    :cond_0
    const-string v2, "UserID"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 774
    .local v2, "userID":I
    if-gez v2, :cond_1

    .line 775
    const-string v4, "DE J DisplayEngineDBManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TableProcessor["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/huawei/displayengine/DisplayEngineDBManager$BrightnessCurveTableProcessor;->mTableName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "].getAllRecords() invalid input: userID="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    return-object v3

    .line 779
    :cond_1
    move-object v4, v3

    .line 781
    .local v4, "c":Landroid/database/Cursor;
    :try_start_1
    iget-object v5, p0, Lcom/huawei/displayengine/DisplayEngineDBManager$BrightnessCurveTableProcessor;->this$0:Lcom/huawei/displayengine/DisplayEngineDBManager;

    invoke-static {v5}, Lcom/huawei/displayengine/DisplayEngineDBManager;->access$200(Lcom/huawei/displayengine/DisplayEngineDBManager;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SELECT * FROM "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/huawei/displayengine/DisplayEngineDBManager$BrightnessCurveTableProcessor;->mTableName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " where USERID = ? ORDER BY AL ASC"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    move-object v4, v5

    .line 782
    if-nez v4, :cond_3

    .line 783
    const-string v5, "DE J DisplayEngineDBManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TableProcessor["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/huawei/displayengine/DisplayEngineDBManager$BrightnessCurveTableProcessor;->mTableName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "].getAllRecords() query database error."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 784
    nop

    .line 797
    if-eqz v4, :cond_2

    .line 798
    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 784
    return-object v3

    .line 786
    :cond_3
    :goto_0
    :try_start_3
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 787
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 788
    .local v3, "record":Landroid/os/Bundle;
    const-string v5, "UserID"

    const-string v6, "USERID"

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 789
    const-string v5, "AmbientLight"

    const-string v6, "AL"

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getFloat(I)F

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 790
    const-string v5, "BackLight"

    const-string v6, "BL"

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getFloat(I)F

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 791
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 792
    .end local v3    # "record":Landroid/os/Bundle;
    goto :goto_0

    .line 797
    :cond_4
    if-eqz v4, :cond_5

    .line 798
    :goto_1
    :try_start_4
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    .line 797
    :catchall_0
    move-exception v3

    goto :goto_3

    .line 793
    :catch_0
    move-exception v3

    .line 794
    .local v3, "e":Landroid/database/SQLException;
    const/4 v0, 0x0

    .line 795
    :try_start_5
    const-string v5, "DE J DisplayEngineDBManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TableProcessor["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/huawei/displayengine/DisplayEngineDBManager$BrightnessCurveTableProcessor;->mTableName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "].getAllRecords() error:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/huawei/displayengine/DElog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 797
    .end local v3    # "e":Landroid/database/SQLException;
    if-eqz v4, :cond_5

    goto :goto_1

    .line 801
    .end local v2    # "userID":I
    .end local v4    # "c":Landroid/database/Cursor;
    :cond_5
    :goto_2
    :try_start_6
    monitor-exit v1

    .line 802
    return-object v0

    .line 797
    .restart local v2    # "userID":I
    .restart local v4    # "c":Landroid/database/Cursor;
    :goto_3
    if-eqz v4, :cond_6

    .line 798
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v3

    .line 770
    .end local v2    # "userID":I
    .end local v4    # "c":Landroid/database/Cursor;
    :cond_7
    :goto_4
    const-string v2, "DE J DisplayEngineDBManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TableProcessor["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/huawei/displayengine/DisplayEngineDBManager$BrightnessCurveTableProcessor;->mTableName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "].getAllRecords() mDatabase error or info is null."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    monitor-exit v1

    return-object v3

    .line 801
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

    .line 806
    const/4 v0, 0x0

    .line 807
    .local v0, "size":I
    iget-object v1, p0, Lcom/huawei/displayengine/DisplayEngineDBManager$BrightnessCurveTableProcessor;->this$0:Lcom/huawei/displayengine/DisplayEngineDBManager;

    invoke-static {v1}, Lcom/huawei/displayengine/DisplayEngineDBManager;->access$200(Lcom/huawei/displayengine/DisplayEngineDBManager;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/huawei/displayengine/DisplayEngineDBManager$BrightnessCurveTableProcessor;->this$0:Lcom/huawei/displayengine/DisplayEngineDBManager;

    invoke-static {v1}, Lcom/huawei/displayengine/DisplayEngineDBManager;->access$200(Lcom/huawei/displayengine/DisplayEngineDBManager;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    .line 808
    const-string v1, "UserID"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 809
    .local v1, "userID":I
    if-gez v1, :cond_0

    .line 810
    const-string v2, "DE J DisplayEngineDBManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TableProcessor["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/huawei/displayengine/DisplayEngineDBManager$BrightnessCurveTableProcessor;->mTableName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "].getSizeWithoutLock() invalid input: userID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 812
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT COUNT(*) FROM "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/huawei/displayengine/DisplayEngineDBManager$BrightnessCurveTableProcessor;->mTableName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " where USERID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 814
    .local v2, "sql":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/huawei/displayengine/DisplayEngineDBManager$BrightnessCurveTableProcessor;->this$0:Lcom/huawei/displayengine/DisplayEngineDBManager;

    invoke-static {v3}, Lcom/huawei/displayengine/DisplayEngineDBManager;->access$200(Lcom/huawei/displayengine/DisplayEngineDBManager;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    .line 815
    .local v3, "statement":Landroid/database/sqlite/SQLiteStatement;
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v4

    long-to-int v0, v4

    .line 816
    const-string v4, "DE J DisplayEngineDBManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TableProcessor["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/huawei/displayengine/DisplayEngineDBManager$BrightnessCurveTableProcessor;->mTableName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "].getSizeWithoutLock() return "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 819
    .end local v3    # "statement":Landroid/database/sqlite/SQLiteStatement;
    goto :goto_0

    .line 817
    :catch_0
    move-exception v3

    .line 818
    .local v3, "e":Landroid/database/SQLException;
    const-string v4, "DE J DisplayEngineDBManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TableProcessor["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/huawei/displayengine/DisplayEngineDBManager$BrightnessCurveTableProcessor;->mTableName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "].getSizeWithoutLock() error:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/displayengine/DElog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    .end local v1    # "userID":I
    .end local v2    # "sql":Ljava/lang/String;
    .end local v3    # "e":Landroid/database/SQLException;
    :goto_0
    goto :goto_1

    .line 822
    :cond_1
    const-string v1, "DE J DisplayEngineDBManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TableProcessor["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/huawei/displayengine/DisplayEngineDBManager$BrightnessCurveTableProcessor;->mTableName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "].getSizeWithoutLock() mDatabase error."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    :goto_1
    return v0
.end method

.method public setMaxSize(I)Z
    .locals 7
    .param p1, "size"    # I

    .line 671
    const/4 v0, 0x1

    .line 672
    .local v0, "ret":Z
    if-lez p1, :cond_5

    .line 673
    iget-object v1, p0, Lcom/huawei/displayengine/DisplayEngineDBManager$BrightnessCurveTableProcessor;->this$0:Lcom/huawei/displayengine/DisplayEngineDBManager;

    invoke-static {v1}, Lcom/huawei/displayengine/DisplayEngineDBManager;->access$000(Lcom/huawei/displayengine/DisplayEngineDBManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 674
    :try_start_0
    iget-object v2, p0, Lcom/huawei/displayengine/DisplayEngineDBManager$BrightnessCurveTableProcessor;->this$0:Lcom/huawei/displayengine/DisplayEngineDBManager;

    invoke-static {v2}, Lcom/huawei/displayengine/DisplayEngineDBManager;->access$100(Lcom/huawei/displayengine/DisplayEngineDBManager;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 675
    const-string v2, "DE J DisplayEngineDBManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TableProcessor["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/huawei/displayengine/DisplayEngineDBManager$BrightnessCurveTableProcessor;->mTableName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "].setMaxSize() mDatabase error!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    const/4 v2, 0x0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    return v2

    .line 680
    :cond_0
    const/4 v2, 0x0

    move-object v3, v2

    .line 682
    .local v3, "c":Landroid/database/Cursor;
    :try_start_1
    iget-object v4, p0, Lcom/huawei/displayengine/DisplayEngineDBManager$BrightnessCurveTableProcessor;->this$0:Lcom/huawei/displayengine/DisplayEngineDBManager;

    invoke-static {v4}, Lcom/huawei/displayengine/DisplayEngineDBManager;->access$200(Lcom/huawei/displayengine/DisplayEngineDBManager;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v5, "SELECT DISTINCT USERID FROM UserDragInformation"

    invoke-virtual {v4, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v3, v2

    .line 683
    if-eqz v3, :cond_2

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_2

    .line 684
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 685
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 686
    .local v2, "info":Landroid/os/Bundle;
    const-string v4, "UserID"

    const-string v5, "USERID"

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 687
    invoke-virtual {p0, v2}, Lcom/huawei/displayengine/DisplayEngineDBManager$BrightnessCurveTableProcessor;->getSizeWithoutLock(Landroid/os/Bundle;)I

    move-result v4

    if-le v4, p1, :cond_1

    .line 688
    invoke-virtual {p0, v2}, Lcom/huawei/displayengine/DisplayEngineDBManager$BrightnessCurveTableProcessor;->clearWithoutLock(Landroid/os/Bundle;)Z

    move-result v4
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v4, :cond_1

    .line 689
    const/4 v0, 0x0

    .line 692
    .end local v2    # "info":Landroid/os/Bundle;
    :cond_1
    goto :goto_0

    .line 698
    :cond_2
    if-eqz v3, :cond_3

    .line 699
    :goto_1
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    .line 698
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 694
    :catch_0
    move-exception v2

    .line 695
    .local v2, "e":Landroid/database/SQLException;
    const/4 v0, 0x0

    .line 696
    :try_start_3
    const-string v4, "DE J DisplayEngineDBManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TableProcessor["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/huawei/displayengine/DisplayEngineDBManager$BrightnessCurveTableProcessor;->mTableName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "].setMaxSize() failed to get all the user IDs, error:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/displayengine/DElog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 698
    .end local v2    # "e":Landroid/database/SQLException;
    if-eqz v3, :cond_3

    goto :goto_1

    .line 704
    :cond_3
    :goto_2
    :try_start_4
    iput p1, p0, Lcom/huawei/displayengine/DisplayEngineDBManager$BrightnessCurveTableProcessor;->mMaxSize:I

    .line 705
    const-string v2, "DE J DisplayEngineDBManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TableProcessor["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/huawei/displayengine/DisplayEngineDBManager$BrightnessCurveTableProcessor;->mTableName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "].setMaxSize("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/huawei/displayengine/DisplayEngineDBManager$BrightnessCurveTableProcessor;->mMaxSize:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") success."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    .end local v3    # "c":Landroid/database/Cursor;
    monitor-exit v1

    goto :goto_4

    .line 698
    .restart local v3    # "c":Landroid/database/Cursor;
    :goto_3
    if-eqz v3, :cond_4

    .line 699
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v2

    .line 706
    .end local v3    # "c":Landroid/database/Cursor;
    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2

    .line 708
    :cond_5
    const/4 v0, 0x0

    .line 709
    const-string v1, "DE J DisplayEngineDBManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TableProcessor["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/huawei/displayengine/DisplayEngineDBManager$BrightnessCurveTableProcessor;->mTableName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "].setMaxSize invalid input: size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    :goto_4
    return v0
.end method
