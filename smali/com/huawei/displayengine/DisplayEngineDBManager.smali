.class public Lcom/huawei/displayengine/DisplayEngineDBManager;
.super Ljava/lang/Object;
.source "DisplayEngineDBManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/displayengine/DisplayEngineDBManager$DataCleanerTableProcessor;,
        Lcom/huawei/displayengine/DisplayEngineDBManager$AlgorithmESCWTableProcessor;,
        Lcom/huawei/displayengine/DisplayEngineDBManager$BrightnessCurveTableProcessor;,
        Lcom/huawei/displayengine/DisplayEngineDBManager$UserPreferencesTableProcessor;,
        Lcom/huawei/displayengine/DisplayEngineDBManager$DragInformationTableProcessor;,
        Lcom/huawei/displayengine/DisplayEngineDBManager$TableProcessor;,
        Lcom/huawei/displayengine/DisplayEngineDBManager$QueryInfoKey;,
        Lcom/huawei/displayengine/DisplayEngineDBManager$DataCleanerKey;,
        Lcom/huawei/displayengine/DisplayEngineDBManager$AlgorithmESCWKey;,
        Lcom/huawei/displayengine/DisplayEngineDBManager$BrightnessCurveKey;,
        Lcom/huawei/displayengine/DisplayEngineDBManager$UserPreferencesKey;,
        Lcom/huawei/displayengine/DisplayEngineDBManager$DragInformationKey;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DE J DisplayEngineDBManager"

.field private static volatile mInstance:Lcom/huawei/displayengine/DisplayEngineDBManager;

.field private static mLock:Ljava/lang/Object;

.field private static final mTableProcessors:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/huawei/displayengine/DisplayEngineDBManager$TableProcessor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private mHelper:Lcom/huawei/displayengine/DisplayEngineDBHelper;

.field private mdbLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/huawei/displayengine/DisplayEngineDBManager;->mLock:Ljava/lang/Object;

    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/displayengine/DisplayEngineDBManager;->mInstance:Lcom/huawei/displayengine/DisplayEngineDBManager;

    .line 25
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/huawei/displayengine/DisplayEngineDBManager;->mTableProcessors:Landroid/util/ArrayMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/displayengine/DisplayEngineDBManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 23
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/huawei/displayengine/DisplayEngineDBManager;->mdbLock:Ljava/lang/Object;

    .line 28
    sget-object v0, Lcom/huawei/displayengine/DisplayEngineDBManager;->mTableProcessors:Landroid/util/ArrayMap;

    const-string v1, "DragInfo"

    new-instance v2, Lcom/huawei/displayengine/DisplayEngineDBManager$DragInformationTableProcessor;

    invoke-direct {v2, p0}, Lcom/huawei/displayengine/DisplayEngineDBManager$DragInformationTableProcessor;-><init>(Lcom/huawei/displayengine/DisplayEngineDBManager;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lcom/huawei/displayengine/DisplayEngineDBManager;->mTableProcessors:Landroid/util/ArrayMap;

    const-string v1, "UserPref"

    new-instance v2, Lcom/huawei/displayengine/DisplayEngineDBManager$UserPreferencesTableProcessor;

    invoke-direct {v2, p0}, Lcom/huawei/displayengine/DisplayEngineDBManager$UserPreferencesTableProcessor;-><init>(Lcom/huawei/displayengine/DisplayEngineDBManager;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lcom/huawei/displayengine/DisplayEngineDBManager;->mTableProcessors:Landroid/util/ArrayMap;

    const-string v1, "BrightnessCurveLow"

    new-instance v2, Lcom/huawei/displayengine/DisplayEngineDBManager$BrightnessCurveTableProcessor;

    const-string v3, "BrightnessCurveLow"

    invoke-direct {v2, p0, v3}, Lcom/huawei/displayengine/DisplayEngineDBManager$BrightnessCurveTableProcessor;-><init>(Lcom/huawei/displayengine/DisplayEngineDBManager;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lcom/huawei/displayengine/DisplayEngineDBManager;->mTableProcessors:Landroid/util/ArrayMap;

    const-string v1, "BrightnessCurveMiddle"

    new-instance v2, Lcom/huawei/displayengine/DisplayEngineDBManager$BrightnessCurveTableProcessor;

    const-string v3, "BrightnessCurveMiddle"

    invoke-direct {v2, p0, v3}, Lcom/huawei/displayengine/DisplayEngineDBManager$BrightnessCurveTableProcessor;-><init>(Lcom/huawei/displayengine/DisplayEngineDBManager;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lcom/huawei/displayengine/DisplayEngineDBManager;->mTableProcessors:Landroid/util/ArrayMap;

    const-string v1, "BrightnessCurveHigh"

    new-instance v2, Lcom/huawei/displayengine/DisplayEngineDBManager$BrightnessCurveTableProcessor;

    const-string v3, "BrightnessCurveHigh"

    invoke-direct {v2, p0, v3}, Lcom/huawei/displayengine/DisplayEngineDBManager$BrightnessCurveTableProcessor;-><init>(Lcom/huawei/displayengine/DisplayEngineDBManager;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lcom/huawei/displayengine/DisplayEngineDBManager;->mTableProcessors:Landroid/util/ArrayMap;

    const-string v1, "BrightnessCurveDefault"

    new-instance v2, Lcom/huawei/displayengine/DisplayEngineDBManager$BrightnessCurveTableProcessor;

    const-string v3, "BrightnessCurveDefault"

    invoke-direct {v2, p0, v3}, Lcom/huawei/displayengine/DisplayEngineDBManager$BrightnessCurveTableProcessor;-><init>(Lcom/huawei/displayengine/DisplayEngineDBManager;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lcom/huawei/displayengine/DisplayEngineDBManager;->mTableProcessors:Landroid/util/ArrayMap;

    const-string v1, "AlgorithmESCW"

    new-instance v2, Lcom/huawei/displayengine/DisplayEngineDBManager$AlgorithmESCWTableProcessor;

    invoke-direct {v2, p0}, Lcom/huawei/displayengine/DisplayEngineDBManager$AlgorithmESCWTableProcessor;-><init>(Lcom/huawei/displayengine/DisplayEngineDBManager;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lcom/huawei/displayengine/DisplayEngineDBManager;->mTableProcessors:Landroid/util/ArrayMap;

    const-string v1, "DataCleaner"

    new-instance v2, Lcom/huawei/displayengine/DisplayEngineDBManager$DataCleanerTableProcessor;

    invoke-direct {v2, p0}, Lcom/huawei/displayengine/DisplayEngineDBManager$DataCleanerTableProcessor;-><init>(Lcom/huawei/displayengine/DisplayEngineDBManager;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    new-instance v0, Lcom/huawei/displayengine/DisplayEngineDBHelper;

    invoke-direct {v0, p1}, Lcom/huawei/displayengine/DisplayEngineDBHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/huawei/displayengine/DisplayEngineDBManager;->mHelper:Lcom/huawei/displayengine/DisplayEngineDBHelper;

    .line 37
    invoke-direct {p0}, Lcom/huawei/displayengine/DisplayEngineDBManager;->openDatabase()V

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/huawei/displayengine/DisplayEngineDBManager;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/displayengine/DisplayEngineDBManager;

    .line 17
    iget-object v0, p0, Lcom/huawei/displayengine/DisplayEngineDBManager;->mdbLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/huawei/displayengine/DisplayEngineDBManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/huawei/displayengine/DisplayEngineDBManager;

    .line 17
    invoke-direct {p0}, Lcom/huawei/displayengine/DisplayEngineDBManager;->checkDatabaseStatusIsOk()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/huawei/displayengine/DisplayEngineDBManager;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/displayengine/DisplayEngineDBManager;

    .line 17
    iget-object v0, p0, Lcom/huawei/displayengine/DisplayEngineDBManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method private checkDatabaseStatusIsOk()Z
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/huawei/displayengine/DisplayEngineDBManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/displayengine/DisplayEngineDBManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 174
    :cond_0
    invoke-direct {p0}, Lcom/huawei/displayengine/DisplayEngineDBManager;->openDatabase()V

    .line 176
    :cond_1
    iget-object v0, p0, Lcom/huawei/displayengine/DisplayEngineDBManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/huawei/displayengine/DisplayEngineDBManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/huawei/displayengine/DisplayEngineDBManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 42
    sget-object v0, Lcom/huawei/displayengine/DisplayEngineDBManager;->mInstance:Lcom/huawei/displayengine/DisplayEngineDBManager;

    if-nez v0, :cond_1

    .line 43
    sget-object v0, Lcom/huawei/displayengine/DisplayEngineDBManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 44
    :try_start_0
    sget-object v1, Lcom/huawei/displayengine/DisplayEngineDBManager;->mInstance:Lcom/huawei/displayengine/DisplayEngineDBManager;

    if-nez v1, :cond_0

    .line 45
    new-instance v1, Lcom/huawei/displayengine/DisplayEngineDBManager;

    invoke-direct {v1, p0}, Lcom/huawei/displayengine/DisplayEngineDBManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/huawei/displayengine/DisplayEngineDBManager;->mInstance:Lcom/huawei/displayengine/DisplayEngineDBManager;

    .line 47
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 49
    :cond_1
    :goto_0
    sget-object v0, Lcom/huawei/displayengine/DisplayEngineDBManager;->mInstance:Lcom/huawei/displayengine/DisplayEngineDBManager;

    return-object v0
.end method

.method private openDatabase()V
    .locals 4

    .line 166
    :try_start_0
    iget-object v0, p0, Lcom/huawei/displayengine/DisplayEngineDBManager;->mHelper:Lcom/huawei/displayengine/DisplayEngineDBHelper;

    invoke-virtual {v0}, Lcom/huawei/displayengine/DisplayEngineDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/displayengine/DisplayEngineDBManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    goto :goto_0

    .line 167
    :catch_0
    move-exception v0

    .line 168
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    const-string v1, "DE J DisplayEngineDBManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to open DisplayEngine.db error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :goto_0
    return-void
.end method


# virtual methods
.method public addorUpdateRecord(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .line 65
    const/4 v0, 0x0

    .line 66
    .local v0, "ret":Z
    sget-object v1, Lcom/huawei/displayengine/DisplayEngineDBManager;->mTableProcessors:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/displayengine/DisplayEngineDBManager$TableProcessor;

    .line 67
    .local v1, "processor":Lcom/huawei/displayengine/DisplayEngineDBManager$TableProcessor;
    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    .line 68
    invoke-virtual {v1, p2}, Lcom/huawei/displayengine/DisplayEngineDBManager$TableProcessor;->addorUpdateRecord(Landroid/os/Bundle;)Z

    move-result v0

    goto :goto_0

    .line 70
    :cond_0
    const-string v2, "DE J DisplayEngineDBManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid input for addorUpdateRecord:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is not support or data is null!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :goto_0
    return v0
.end method

.method public getAllRecords(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 102
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/huawei/displayengine/DisplayEngineDBManager;->getAllRecords(Ljava/lang/String;Landroid/os/Bundle;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getAllRecords(Ljava/lang/String;Landroid/os/Bundle;)Ljava/util/ArrayList;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "info"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 91
    const/4 v0, 0x0

    .line 92
    .local v0, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    sget-object v1, Lcom/huawei/displayengine/DisplayEngineDBManager;->mTableProcessors:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/displayengine/DisplayEngineDBManager$TableProcessor;

    .line 93
    .local v1, "processor":Lcom/huawei/displayengine/DisplayEngineDBManager$TableProcessor;
    if-eqz v1, :cond_0

    .line 94
    invoke-virtual {v1, p2}, Lcom/huawei/displayengine/DisplayEngineDBManager$TableProcessor;->getAllRecords(Landroid/os/Bundle;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 96
    :cond_0
    const-string v2, "DE J DisplayEngineDBManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid input for getAllRecords:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is not support!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :goto_0
    return-object v0
.end method

.method public getSize(Ljava/lang/String;)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 87
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/huawei/displayengine/DisplayEngineDBManager;->getSize(Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v0

    return v0
.end method

.method public getSize(Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "info"    # Landroid/os/Bundle;

    .line 76
    const/4 v0, 0x0

    .line 77
    .local v0, "ret":I
    sget-object v1, Lcom/huawei/displayengine/DisplayEngineDBManager;->mTableProcessors:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/displayengine/DisplayEngineDBManager$TableProcessor;

    .line 78
    .local v1, "processor":Lcom/huawei/displayengine/DisplayEngineDBManager$TableProcessor;
    if-eqz v1, :cond_0

    .line 79
    invoke-virtual {v1, p2}, Lcom/huawei/displayengine/DisplayEngineDBManager$TableProcessor;->getSize(Landroid/os/Bundle;)I

    move-result v0

    goto :goto_0

    .line 81
    :cond_0
    const-string v2, "DE J DisplayEngineDBManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid input for getSize:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is not support!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :goto_0
    return v0
.end method

.method public setMaxSize(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "size"    # I

    .line 54
    const/4 v0, 0x0

    .line 55
    .local v0, "ret":Z
    sget-object v1, Lcom/huawei/displayengine/DisplayEngineDBManager;->mTableProcessors:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/displayengine/DisplayEngineDBManager$TableProcessor;

    .line 56
    .local v1, "processor":Lcom/huawei/displayengine/DisplayEngineDBManager$TableProcessor;
    if-eqz v1, :cond_0

    if-lez p2, :cond_0

    .line 57
    invoke-virtual {v1, p2}, Lcom/huawei/displayengine/DisplayEngineDBManager$TableProcessor;->setMaxSize(I)Z

    move-result v0

    goto :goto_0

    .line 59
    :cond_0
    const-string v2, "DE J DisplayEngineDBManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid input for setMaxSize("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ") size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :goto_0
    return v0
.end method
