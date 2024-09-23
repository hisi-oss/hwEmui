.class public Landroid/rms/iaware/AppTypeRecoManager;
.super Ljava/lang/Object;
.source "AppTypeRecoManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/rms/iaware/AppTypeRecoManager$AppTypeCacheInfo;
    }
.end annotation


# static fields
.field public static final APPTYPE_INIT_ACTION:Ljava/lang/String; = "APPTYPE_INIT_ACTION"

.field public static final APP_ATTR:Ljava/lang/String; = "appAttr"

.field public static final APP_FROM_ABROAD:I = 0x1

.field public static final APP_FROM_CHINA:I = 0x0

.field public static final APP_FROM_UNKNOWN:I = -0x1

.field public static final APP_PKGNAME:Ljava/lang/String; = "pkgName"

.field public static final APP_STATUS:Ljava/lang/String; = "appsSatus"

.field public static final APP_TYPE:Ljava/lang/String; = "appType"

.field public static final APP_USEINDAY:I = 0x7

.field public static final ONE_DAY:J = 0x5265c00L

.field private static final TAG:Ljava/lang/String; = "AppTypeRecoManager"

.field private static mAppTypeRecoManager:Landroid/rms/iaware/AppTypeRecoManager;


# instance fields
.field private final mAppUsedInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mAppsTypeMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/rms/iaware/AppTypeRecoManager$AppTypeCacheInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIsReady:Z

.field private final mTopIMList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    const/4 v0, 0x0

    sput-object v0, Landroid/rms/iaware/AppTypeRecoManager;->mAppTypeRecoManager:Landroid/rms/iaware/AppTypeRecoManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/rms/iaware/AppTypeRecoManager;->mAppsTypeMap:Landroid/util/ArrayMap;

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/rms/iaware/AppTypeRecoManager;->mIsReady:Z

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/rms/iaware/AppTypeRecoManager;->mTopIMList:Ljava/util/List;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/rms/iaware/AppTypeRecoManager;->mAppUsedInfos:Ljava/util/List;

    .line 96
    return-void
.end method

.method public static declared-synchronized getInstance()Landroid/rms/iaware/AppTypeRecoManager;
    .locals 2

    const-class v0, Landroid/rms/iaware/AppTypeRecoManager;

    monitor-enter v0

    .line 89
    :try_start_0
    sget-object v1, Landroid/rms/iaware/AppTypeRecoManager;->mAppTypeRecoManager:Landroid/rms/iaware/AppTypeRecoManager;

    if-nez v1, :cond_0

    .line 90
    new-instance v1, Landroid/rms/iaware/AppTypeRecoManager;

    invoke-direct {v1}, Landroid/rms/iaware/AppTypeRecoManager;-><init>()V

    sput-object v1, Landroid/rms/iaware/AppTypeRecoManager;->mAppTypeRecoManager:Landroid/rms/iaware/AppTypeRecoManager;

    .line 92
    :cond_0
    sget-object v1, Landroid/rms/iaware/AppTypeRecoManager;->mAppTypeRecoManager:Landroid/rms/iaware/AppTypeRecoManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 88
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getTopIMList(I)Ljava/util/List;
    .locals 7
    .param p1, "topN"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 329
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 330
    .local v0, "tmpAppUsedInfos":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Landroid/rms/iaware/AppTypeRecoManager;->mAppUsedInfos:Ljava/util/List;

    monitor-enter v1

    .line 331
    :try_start_0
    iget-object v2, p0, Landroid/rms/iaware/AppTypeRecoManager;->mAppUsedInfos:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 332
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 333
    iget-object v2, p0, Landroid/rms/iaware/AppTypeRecoManager;->mTopIMList:Ljava/util/List;

    monitor-enter v2

    .line 334
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 335
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    iget-object v4, p0, Landroid/rms/iaware/AppTypeRecoManager;->mTopIMList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "length":I
    :goto_0
    if-ge v3, v4, :cond_2

    .line 336
    iget-object v5, p0, Landroid/rms/iaware/AppTypeRecoManager;->mTopIMList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 337
    .local v5, "pkgName":Ljava/lang/String;
    if-eqz v5, :cond_1

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 338
    goto :goto_1

    .line 340
    :cond_0
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-lt v6, p1, :cond_1

    .line 342
    goto :goto_2

    .line 335
    .end local v5    # "pkgName":Ljava/lang/String;
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 345
    .end local v3    # "i":I
    .end local v4    # "length":I
    :cond_2
    :goto_2
    monitor-exit v2

    return-object v1

    .line 346
    .end local v1    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 332
    :catchall_1
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method private loadAllIM(Landroid/content/ContentResolver;Ljava/util/List;)V
    .locals 8
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 174
    .local p2, "imList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_7

    if-nez p2, :cond_0

    goto :goto_4

    .line 177
    :cond_0
    const/4 v0, 0x0

    .line 179
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v4, " HabitProtectList.deleted = 0 and HabitProtectList.appType = ? and HabitProtectList.userID = 0"

    .line 180
    .local v4, "whereClause":Ljava/lang/String;
    const-string v6, "CAST(HabitProtectList.avgUsedFrequency AS REAL) desc"

    .line 181
    .local v6, "orderBy":Ljava/lang/String;
    sget-object v2, Landroid/rms/iaware/AwareConstant$Database;->HABITPROTECTLIST_URI:Landroid/net/Uri;

    const-string v1, "HabitProtectList.appPkgName"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    .line 182
    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v7

    .line 181
    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 183
    if-nez v0, :cond_2

    .line 198
    if-eqz v0, :cond_1

    .line 199
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 184
    :cond_1
    return-void

    .line 186
    :cond_2
    :goto_0
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 187
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 188
    .local v1, "pkgName":Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 189
    goto :goto_0

    .line 191
    :cond_3
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 192
    .end local v1    # "pkgName":Ljava/lang/String;
    goto :goto_0

    .line 198
    .end local v4    # "whereClause":Ljava/lang/String;
    .end local v6    # "orderBy":Ljava/lang/String;
    :cond_4
    if-eqz v0, :cond_5

    .line 199
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 198
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 195
    :catch_0
    move-exception v1

    .line 196
    .local v1, "e":Ljava/lang/IllegalStateException;
    :try_start_2
    const-string v2, "AppTypeRecoManager"

    const-string v3, "Error IllegalStateException: loadAllIM"

    invoke-static {v2, v3}, Landroid/rms/iaware/AwareLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    if-eqz v0, :cond_5

    goto :goto_1

    .line 193
    :catch_1
    move-exception v1

    .line 194
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    const-string v2, "AppTypeRecoManager"

    const-string v3, "Error SQLiteException: loadAllIM"

    invoke-static {v2, v3}, Landroid/rms/iaware/AwareLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 198
    .end local v1    # "e":Landroid/database/sqlite/SQLiteException;
    if-eqz v0, :cond_5

    goto :goto_1

    .line 202
    :cond_5
    :goto_2
    return-void

    .line 198
    :goto_3
    if-eqz v0, :cond_6

    .line 199
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v1

    .line 175
    .end local v0    # "cursor":Landroid/database/Cursor;
    :cond_7
    :goto_4
    return-void
.end method

.method private loadAppType(Landroid/content/ContentResolver;Ljava/util/Map;)V
    .locals 7
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/rms/iaware/AppTypeRecoManager$AppTypeCacheInfo;",
            ">;)V"
        }
    .end annotation

    .line 225
    .local p2, "typeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/rms/iaware/AppTypeRecoManager$AppTypeCacheInfo;>;"
    if-eqz p1, :cond_7

    if-nez p2, :cond_0

    goto/16 :goto_4

    .line 228
    :cond_0
    const/4 v0, 0x0

    .line 230
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v2, Landroid/rms/iaware/AwareConstant$Database;->APPTYPE_URI:Landroid/net/Uri;

    const-string v1, "appPkgName"

    const-string v3, "typeAttri"

    const-string v4, "appType"

    const-string v5, "source"

    filled-new-array {v1, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object v0, v1

    .line 232
    if-nez v0, :cond_2

    .line 233
    const-string v1, "AppTypeRecoManager"

    const-string v2, "loadAppType cursor is null."

    invoke-static {v1, v2}, Landroid/rms/iaware/AwareLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    if-eqz v0, :cond_1

    .line 251
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 234
    :cond_1
    return-void

    .line 236
    :cond_2
    :goto_0
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 237
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 238
    .local v1, "pkgName":Ljava/lang/String;
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 239
    .local v2, "attri":I
    const/4 v3, 0x2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 240
    .local v3, "apptype":I
    const/4 v4, 0x3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 241
    .local v4, "source":I
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    const/16 v5, 0x131

    if-eq v3, v5, :cond_3

    .line 242
    new-instance v5, Landroid/rms/iaware/AppTypeRecoManager$AppTypeCacheInfo;

    invoke-direct {v5, v3, v2, v4}, Landroid/rms/iaware/AppTypeRecoManager$AppTypeCacheInfo;-><init>(III)V

    invoke-interface {p2, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 244
    .end local v1    # "pkgName":Ljava/lang/String;
    .end local v2    # "attri":I
    .end local v3    # "apptype":I
    .end local v4    # "source":I
    :cond_3
    goto :goto_0

    .line 250
    :cond_4
    if-eqz v0, :cond_5

    .line 251
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 250
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 247
    :catch_0
    move-exception v1

    .line 248
    .local v1, "e":Ljava/lang/IllegalStateException;
    :try_start_2
    const-string v2, "AppTypeRecoManager"

    const-string v3, "Error: loadAppType IllegalStateException"

    invoke-static {v2, v3}, Landroid/rms/iaware/AwareLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    if-eqz v0, :cond_5

    goto :goto_1

    .line 245
    :catch_1
    move-exception v1

    .line 246
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    const-string v2, "AppTypeRecoManager"

    const-string v3, "Error: loadAppType SQLiteException"

    invoke-static {v2, v3}, Landroid/rms/iaware/AwareLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 250
    .end local v1    # "e":Landroid/database/sqlite/SQLiteException;
    if-eqz v0, :cond_5

    goto :goto_1

    .line 254
    :cond_5
    :goto_2
    return-void

    .line 250
    :goto_3
    if-eqz v0, :cond_6

    .line 251
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v1

    .line 226
    .end local v0    # "cursor":Landroid/database/Cursor;
    :cond_7
    :goto_4
    return-void
.end method

.method private loadUsedApp(Landroid/content/ContentResolver;Ljava/util/List;Ljava/util/List;II)V
    .locals 17
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p4, "userId"    # I
    .param p5, "dayNum"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    .local p2, "appUsedInfos":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "imList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 258
    if-eqz p1, :cond_7

    if-eqz v1, :cond_7

    if-eqz v2, :cond_7

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_6

    .line 261
    :cond_0
    const/4 v0, 0x0

    move-object v10, v0

    .line 263
    .local v10, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-wide v11, v3

    .line 264
    .local v11, "now":J
    move/from16 v13, p5

    int-to-long v3, v13

    const-wide/32 v5, 0x5265c00

    mul-long/2addr v3, v5

    sub-long v14, v11, v3

    .line 265
    .local v14, "timeDiff":J
    :try_start_1
    const-string v6, "foregroungTime > ? and foregroungTime < ? and userID = ?"

    .line 267
    .local v6, "whereClause":Ljava/lang/String;
    sget-object v4, Landroid/rms/iaware/AwareConstant$AppUsageDatabase;->APPUSAGE_URI:Landroid/net/Uri;

    const-string v0, "pkgName"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x3

    new-array v7, v0, [Ljava/lang/String;

    .line 268
    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x0

    aput-object v0, v7, v8

    const/4 v0, 0x1

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v0

    const/4 v0, 0x2

    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v0

    const/4 v0, 0x0

    .line 267
    move-object/from16 v3, p1

    move v9, v8

    move-object v8, v0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v10, v0

    .line 269
    if-nez v10, :cond_2

    .line 284
    if-eqz v10, :cond_1

    .line 285
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 270
    :cond_1
    return-void

    .line 272
    :cond_2
    :goto_0
    :try_start_2
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 273
    invoke-interface {v10, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 274
    .local v0, "pkgName":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 275
    goto :goto_0

    .line 277
    :cond_3
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 278
    .end local v0    # "pkgName":Ljava/lang/String;
    goto :goto_0

    .line 284
    .end local v6    # "whereClause":Ljava/lang/String;
    .end local v11    # "now":J
    .end local v14    # "timeDiff":J
    :cond_4
    if-eqz v10, :cond_5

    .line 285
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_4

    .line 284
    :catchall_0
    move-exception v0

    goto :goto_5

    .line 281
    :catch_0
    move-exception v0

    goto :goto_2

    .line 279
    :catch_1
    move-exception v0

    goto :goto_3

    .line 284
    :catchall_1
    move-exception v0

    move/from16 v13, p5

    goto :goto_5

    .line 281
    :catch_2
    move-exception v0

    move/from16 v13, p5

    .line 282
    .local v0, "e":Ljava/lang/IllegalStateException;
    :goto_2
    :try_start_3
    const-string v3, "AppTypeRecoManager"

    const-string v4, "Error IllegalStateException: loadUsedApp"

    invoke-static {v3, v4}, Landroid/rms/iaware/AwareLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    if-eqz v10, :cond_5

    goto :goto_1

    .line 279
    :catch_3
    move-exception v0

    move/from16 v13, p5

    .line 280
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    :goto_3
    const-string v3, "AppTypeRecoManager"

    const-string v4, "Error SQLiteException: loadUsedApp"

    invoke-static {v3, v4}, Landroid/rms/iaware/AwareLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 284
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    if-eqz v10, :cond_5

    goto :goto_1

    .line 288
    :cond_5
    :goto_4
    return-void

    .line 284
    :goto_5
    if-eqz v10, :cond_6

    .line 285
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

    .line 259
    .end local v10    # "cursor":Landroid/database/Cursor;
    :cond_7
    :goto_6
    move/from16 v13, p5

    return-void
.end method


# virtual methods
.method public addAppType(Ljava/lang/String;II)V
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "attr"    # I

    .line 470
    iget-object v0, p0, Landroid/rms/iaware/AppTypeRecoManager;->mAppsTypeMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 471
    :try_start_0
    iget-object v1, p0, Landroid/rms/iaware/AppTypeRecoManager;->mAppsTypeMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/rms/iaware/AppTypeRecoManager$AppTypeCacheInfo;

    .line 472
    .local v1, "cacheInfo":Landroid/rms/iaware/AppTypeRecoManager$AppTypeCacheInfo;
    if-nez v1, :cond_0

    .line 473
    iget-object v2, p0, Landroid/rms/iaware/AppTypeRecoManager;->mAppsTypeMap:Landroid/util/ArrayMap;

    new-instance v3, Landroid/rms/iaware/AppTypeRecoManager$AppTypeCacheInfo;

    invoke-direct {v3, p2, p3}, Landroid/rms/iaware/AppTypeRecoManager$AppTypeCacheInfo;-><init>(II)V

    invoke-virtual {v2, p1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 475
    :cond_0
    invoke-virtual {v1, p2, p3}, Landroid/rms/iaware/AppTypeRecoManager$AppTypeCacheInfo;->setInfo(II)V

    .line 477
    .end local v1    # "cacheInfo":Landroid/rms/iaware/AppTypeRecoManager$AppTypeCacheInfo;
    :goto_0
    monitor-exit v0

    .line 478
    return-void

    .line 477
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public containsAppType(Ljava/lang/String;)Z
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 397
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 398
    return v0

    .line 400
    :cond_0
    iget-object v1, p0, Landroid/rms/iaware/AppTypeRecoManager;->mAppsTypeMap:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 401
    :try_start_0
    iget-object v2, p0, Landroid/rms/iaware/AppTypeRecoManager;->mAppsTypeMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 402
    const/4 v0, 0x1

    monitor-exit v1

    return v0

    .line 404
    :cond_1
    monitor-exit v1

    .line 405
    return v0

    .line 404
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public convertType(I)I
    .locals 1
    .param p1, "appType"    # I

    .line 486
    const/16 v0, 0xff

    if-gt p1, v0, :cond_0

    .line 487
    return p1

    .line 489
    :cond_0
    move v0, p1

    .line 490
    .local v0, "type":I
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 558
    :pswitch_1
    const/4 v0, 0x2

    .line 559
    goto :goto_0

    .line 555
    :pswitch_2
    const/16 v0, 0x11

    .line 556
    goto :goto_0

    .line 552
    :pswitch_3
    const/16 v0, 0x22

    .line 553
    goto :goto_0

    .line 549
    :pswitch_4
    const/16 v0, 0x21

    .line 550
    goto :goto_0

    .line 546
    :pswitch_5
    const/16 v0, 0x20

    .line 547
    goto :goto_0

    .line 543
    :pswitch_6
    const/16 v0, 0x1f

    .line 544
    goto :goto_0

    .line 540
    :pswitch_7
    const/16 v0, 0xe

    .line 541
    goto :goto_0

    .line 537
    :pswitch_8
    const/16 v0, 0x1a

    .line 538
    goto :goto_0

    .line 534
    :pswitch_9
    const/16 v0, 0x1e

    .line 535
    goto :goto_0

    .line 531
    :pswitch_a
    const/16 v0, 0x1d

    .line 532
    goto :goto_0

    .line 525
    :pswitch_b
    const/16 v0, 0xc

    .line 526
    goto :goto_0

    .line 528
    :pswitch_c
    const/4 v0, 0x3

    .line 529
    goto :goto_0

    .line 507
    :pswitch_d
    const/4 v0, 0x7

    .line 508
    goto :goto_0

    .line 492
    :pswitch_e
    const/4 v0, 0x0

    .line 493
    goto :goto_0

    .line 504
    :pswitch_f
    const/4 v0, 0x5

    .line 505
    goto :goto_0

    .line 501
    :pswitch_10
    const/16 v0, 0x8

    .line 502
    goto :goto_0

    .line 510
    :pswitch_11
    const/4 v0, 0x6

    .line 511
    goto :goto_0

    .line 498
    :pswitch_12
    const/16 v0, 0x12

    .line 499
    goto :goto_0

    .line 513
    :pswitch_13
    const/16 v0, 0x9

    .line 514
    goto :goto_0

    .line 516
    :pswitch_14
    const/16 v0, 0x13

    .line 517
    goto :goto_0

    .line 495
    :pswitch_15
    const/4 v0, 0x1

    .line 496
    goto :goto_0

    .line 519
    :pswitch_16
    const/16 v0, 0x1b

    .line 520
    goto :goto_0

    .line 522
    :pswitch_17
    const/16 v0, 0x1c

    .line 523
    nop

    .line 563
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x12d
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public deinit()V
    .locals 2

    .line 134
    iget-object v0, p0, Landroid/rms/iaware/AppTypeRecoManager;->mAppsTypeMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 135
    :try_start_0
    iget-object v1, p0, Landroid/rms/iaware/AppTypeRecoManager;->mAppsTypeMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 136
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 137
    iget-object v1, p0, Landroid/rms/iaware/AppTypeRecoManager;->mTopIMList:Ljava/util/List;

    monitor-enter v1

    .line 138
    :try_start_1
    iget-object v0, p0, Landroid/rms/iaware/AppTypeRecoManager;->mTopIMList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 139
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 140
    monitor-enter p0

    .line 141
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Landroid/rms/iaware/AppTypeRecoManager;->mIsReady:Z

    .line 142
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 143
    iget-object v0, p0, Landroid/rms/iaware/AppTypeRecoManager;->mAppUsedInfos:Ljava/util/List;

    monitor-enter v0

    .line 144
    :try_start_3
    iget-object v1, p0, Landroid/rms/iaware/AppTypeRecoManager;->mAppUsedInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 145
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 146
    const-string v0, "AppTypeRecoManager"

    const-string v1, "deinit."

    invoke-static {v0, v1}, Landroid/rms/iaware/AwareLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    return-void

    .line 145
    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    .line 142
    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    .line 139
    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    .line 136
    :catchall_3
    move-exception v1

    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v1
.end method

.method public dumpTopIMList(I)Ljava/util/List;
    .locals 1
    .param p1, "topN"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 350
    if-gtz p1, :cond_0

    .line 351
    const/4 v0, 0x0

    return-object v0

    .line 353
    :cond_0
    invoke-direct {p0, p1}, Landroid/rms/iaware/AppTypeRecoManager;->getTopIMList(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAlarmApps()Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 435
    const/4 v0, 0x0

    .line 436
    .local v0, "appList":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v1, p0, Landroid/rms/iaware/AppTypeRecoManager;->mAppsTypeMap:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 437
    :try_start_0
    new-instance v2, Landroid/util/ArrayMap;

    iget-object v3, p0, Landroid/rms/iaware/AppTypeRecoManager;->mAppsTypeMap:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/util/ArrayMap;-><init>(I)V

    move-object v0, v2

    .line 438
    iget-object v2, p0, Landroid/rms/iaware/AppTypeRecoManager;->mAppsTypeMap:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 439
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/rms/iaware/AppTypeRecoManager$AppTypeCacheInfo;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/rms/iaware/AppTypeRecoManager$AppTypeCacheInfo;

    invoke-virtual {v5}, Landroid/rms/iaware/AppTypeRecoManager$AppTypeCacheInfo;->getType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/rms/iaware/AppTypeRecoManager$AppTypeCacheInfo;>;"
    goto :goto_0

    .line 441
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 442
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 443
    .local v1, "appSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 444
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_3

    .line 445
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x5

    if-eq v4, v5, :cond_1

    .line 446
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x136

    if-ne v4, v5, :cond_2

    .line 447
    :cond_1
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 444
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 450
    .end local v3    # "i":I
    :cond_3
    return-object v1

    .line 441
    .end local v1    # "appSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v2    # "size":I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getAppAttribute(Ljava/lang/String;)I
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 368
    const/4 v0, 0x0

    .line 369
    .local v0, "info":Landroid/rms/iaware/AppTypeRecoManager$AppTypeCacheInfo;
    iget-object v1, p0, Landroid/rms/iaware/AppTypeRecoManager;->mAppsTypeMap:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 370
    :try_start_0
    iget-object v2, p0, Landroid/rms/iaware/AppTypeRecoManager;->mAppsTypeMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/rms/iaware/AppTypeRecoManager$AppTypeCacheInfo;

    move-object v0, v2

    .line 371
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 372
    if-nez v0, :cond_0

    .line 373
    const/4 v1, -0x1

    return v1

    .line 375
    :cond_0
    invoke-virtual {v0}, Landroid/rms/iaware/AppTypeRecoManager$AppTypeCacheInfo;->getAttribute()I

    move-result v1

    return v1

    .line 371
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getAppType(Ljava/lang/String;)I
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 357
    const/4 v0, 0x0

    .line 358
    .local v0, "info":Landroid/rms/iaware/AppTypeRecoManager$AppTypeCacheInfo;
    iget-object v1, p0, Landroid/rms/iaware/AppTypeRecoManager;->mAppsTypeMap:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 359
    :try_start_0
    iget-object v2, p0, Landroid/rms/iaware/AppTypeRecoManager;->mAppsTypeMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/rms/iaware/AppTypeRecoManager$AppTypeCacheInfo;

    move-object v0, v2

    .line 360
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 361
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/rms/iaware/AppTypeRecoManager$AppTypeCacheInfo;->getType()I

    move-result v1

    const/4 v2, -0x2

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 364
    :cond_0
    invoke-virtual {v0}, Landroid/rms/iaware/AppTypeRecoManager$AppTypeCacheInfo;->getType()I

    move-result v1

    return v1

    .line 362
    :cond_1
    :goto_0
    const/4 v1, -0x1

    return v1

    .line 360
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getAppWhereFrom(Ljava/lang/String;)I
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 379
    iget-object v0, p0, Landroid/rms/iaware/AppTypeRecoManager;->mAppsTypeMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 380
    :try_start_0
    iget-object v1, p0, Landroid/rms/iaware/AppTypeRecoManager;->mAppsTypeMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_3

    .line 381
    iget-object v1, p0, Landroid/rms/iaware/AppTypeRecoManager;->mAppsTypeMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/rms/iaware/AppTypeRecoManager$AppTypeCacheInfo;

    .line 382
    .local v1, "appTypeInfo":Landroid/rms/iaware/AppTypeRecoManager$AppTypeCacheInfo;
    if-nez v1, :cond_0

    .line 383
    monitor-exit v0

    return v2

    .line 385
    :cond_0
    invoke-virtual {v1}, Landroid/rms/iaware/AppTypeRecoManager$AppTypeCacheInfo;->getAttribute()I

    move-result v3

    .line 386
    .local v3, "appAttr":I
    if-ne v3, v2, :cond_1

    .line 387
    monitor-exit v0

    return v2

    .line 389
    :cond_1
    const/high16 v2, -0x80000000

    and-int v4, v3, v2

    if-ne v4, v2, :cond_2

    .line 390
    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    .line 389
    return v2

    .line 392
    .end local v1    # "appTypeInfo":Landroid/rms/iaware/AppTypeRecoManager$AppTypeCacheInfo;
    .end local v3    # "appAttr":I
    :cond_3
    monitor-exit v0

    .line 393
    return v2

    .line 392
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAppsByType(I)Ljava/util/Set;
    .locals 6
    .param p1, "appType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 414
    const/4 v0, 0x0

    .line 415
    .local v0, "appList":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v1, p0, Landroid/rms/iaware/AppTypeRecoManager;->mAppsTypeMap:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 416
    :try_start_0
    new-instance v2, Landroid/util/ArrayMap;

    iget-object v3, p0, Landroid/rms/iaware/AppTypeRecoManager;->mAppsTypeMap:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/util/ArrayMap;-><init>(I)V

    move-object v0, v2

    .line 417
    iget-object v2, p0, Landroid/rms/iaware/AppTypeRecoManager;->mAppsTypeMap:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 418
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/rms/iaware/AppTypeRecoManager$AppTypeCacheInfo;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/rms/iaware/AppTypeRecoManager$AppTypeCacheInfo;

    invoke-virtual {v5}, Landroid/rms/iaware/AppTypeRecoManager$AppTypeCacheInfo;->getType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/rms/iaware/AppTypeRecoManager$AppTypeCacheInfo;>;"
    goto :goto_0

    .line 420
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 421
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 422
    .local v1, "appSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 423
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_2

    .line 424
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, p1, :cond_1

    .line 425
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 423
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 428
    .end local v3    # "i":I
    :cond_2
    return-object v1

    .line 420
    .end local v1    # "appSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v2    # "size":I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public declared-synchronized init(Landroid/content/Context;)V
    .locals 10
    .param p1, "ctx"    # Landroid/content/Context;

    monitor-enter p0

    .line 99
    :try_start_0
    const-string v0, "AppTypeRecoManager"

    const-string v1, "init begin."

    invoke-static {v0, v1}, Landroid/rms/iaware/AwareLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    if-eqz p1, :cond_2

    iget-boolean v0, p0, Landroid/rms/iaware/AppTypeRecoManager;->mIsReady:Z

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 104
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 105
    .local v0, "resolver":Landroid/content/ContentResolver;
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    move-object v7, v1

    .line 106
    .local v7, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/rms/iaware/AppTypeRecoManager$AppTypeCacheInfo;>;"
    invoke-direct {p0, v0, v7}, Landroid/rms/iaware/AppTypeRecoManager;->loadAppType(Landroid/content/ContentResolver;Ljava/util/Map;)V

    .line 107
    invoke-virtual {v7}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v1, :cond_1

    .line 108
    monitor-exit p0

    return-void

    .line 110
    :cond_1
    :try_start_1
    iget-object v1, p0, Landroid/rms/iaware/AppTypeRecoManager;->mAppsTypeMap:Landroid/util/ArrayMap;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 111
    :try_start_2
    iget-object v2, p0, Landroid/rms/iaware/AppTypeRecoManager;->mAppsTypeMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v7}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 112
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 113
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v1

    .line 114
    .local v8, "allImList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, v0, v8}, Landroid/rms/iaware/AppTypeRecoManager;->loadAllIM(Landroid/content/ContentResolver;Ljava/util/List;)V

    .line 115
    iget-object v1, p0, Landroid/rms/iaware/AppTypeRecoManager;->mTopIMList:Ljava/util/List;

    monitor-enter v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 116
    :try_start_4
    iget-object v2, p0, Landroid/rms/iaware/AppTypeRecoManager;->mTopIMList:Ljava/util/List;

    invoke-interface {v2, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 117
    const-string v2, "AppTypeRecoManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IMList:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/rms/iaware/AppTypeRecoManager;->mTopIMList:Ljava/util/List;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/rms/iaware/AwareLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 119
    :try_start_5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v1

    .line 120
    .local v9, "usedIMList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    const/4 v6, 0x7

    move-object v1, p0

    move-object v2, v0

    move-object v3, v9

    move-object v4, v8

    invoke-direct/range {v1 .. v6}, Landroid/rms/iaware/AppTypeRecoManager;->loadUsedApp(Landroid/content/ContentResolver;Ljava/util/List;Ljava/util/List;II)V

    .line 121
    iget-object v1, p0, Landroid/rms/iaware/AppTypeRecoManager;->mAppUsedInfos:Ljava/util/List;

    monitor-enter v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 122
    :try_start_6
    iget-object v2, p0, Landroid/rms/iaware/AppTypeRecoManager;->mAppUsedInfos:Ljava/util/List;

    invoke-interface {v2, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 123
    const-string v2, "AppTypeRecoManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NewUsedIMList:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/rms/iaware/AwareLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 125
    const/4 v1, 0x1

    :try_start_7
    iput-boolean v1, p0, Landroid/rms/iaware/AppTypeRecoManager;->mIsReady:Z

    .line 126
    const-string v1, "AppTypeRecoManager"

    const-string v2, "init end."

    invoke-static {v1, v2}, Landroid/rms/iaware/AwareLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 127
    monitor-exit p0

    return-void

    .line 124
    :catchall_0
    move-exception v2

    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 118
    .end local v9    # "usedIMList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_1
    move-exception v2

    :try_start_a
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    throw v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 112
    .end local v8    # "allImList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_2
    move-exception v2

    :try_start_c
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :try_start_d
    throw v2

    .line 101
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v7    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/rms/iaware/AppTypeRecoManager$AppTypeCacheInfo;>;"
    :cond_2
    :goto_0
    const-string v0, "AppTypeRecoManager"

    const-string v1, "no need to init"

    invoke-static {v0, v1}, Landroid/rms/iaware/AwareLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 102
    monitor-exit p0

    return-void

    .line 98
    .end local p1    # "ctx":Landroid/content/Context;
    :catchall_3
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Landroid/rms/iaware/AppTypeRecoManager;
    throw p1
.end method

.method public isTopIM(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "count"    # I

    .line 211
    if-eqz p1, :cond_1

    if-gtz p2, :cond_0

    goto :goto_0

    .line 214
    :cond_0
    invoke-direct {p0, p2}, Landroid/rms/iaware/AppTypeRecoManager;->getTopIMList(I)Ljava/util/List;

    move-result-object v0

    .line 215
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 212
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public loadAppUsedInfo(Landroid/content/Context;Ljava/util/Map;II)V
    .locals 18
    .param p1, "cxt"    # Landroid/content/Context;
    .param p3, "userId"    # I
    .param p4, "dayNum"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;II)V"
        }
    .end annotation

    .local p2, "appUsedMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    move-object/from16 v1, p2

    .line 291
    if-eqz p1, :cond_8

    if-nez v1, :cond_0

    goto/16 :goto_6

    .line 294
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 295
    .local v9, "resolver":Landroid/content/ContentResolver;
    if-nez v9, :cond_1

    .line 296
    return-void

    .line 298
    :cond_1
    const/4 v0, 0x0

    move-object v10, v0

    .line 300
    .local v10, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-wide v11, v3

    .line 301
    .local v11, "now":J
    move/from16 v13, p4

    int-to-long v3, v13

    const-wide/32 v5, 0x5265c00

    mul-long/2addr v3, v5

    sub-long v14, v11, v3

    .line 302
    .local v14, "timeDiff":J
    :try_start_1
    const-string v6, "foregroungTime > ? and foregroungTime < ? and userID = ? "

    .line 304
    .local v6, "whereClause":Ljava/lang/String;
    sget-object v4, Landroid/rms/iaware/AwareConstant$AppUsageDatabase;->APPUSAGE_URI:Landroid/net/Uri;

    const-string v0, "pkgName"

    const-string v3, "foregroungTime"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x3

    new-array v7, v0, [Ljava/lang/String;

    .line 305
    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x0

    aput-object v0, v7, v8

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    aput-object v0, v7, v3

    const/4 v0, 0x2

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v7, v0

    const/4 v0, 0x0

    .line 304
    move-object v3, v9

    move v2, v8

    move-object v8, v0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v10, v0

    .line 306
    if-nez v10, :cond_3

    .line 322
    if-eqz v10, :cond_2

    .line 323
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 307
    :cond_2
    return-void

    .line 309
    :cond_3
    :goto_0
    :try_start_2
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 310
    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 311
    .local v0, "pkgName":Ljava/lang/String;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 312
    goto :goto_0

    .line 314
    :cond_4
    const/4 v3, 0x1

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 315
    .local v4, "switchFgTime":Ljava/lang/Long;
    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 316
    .end local v0    # "pkgName":Ljava/lang/String;
    .end local v4    # "switchFgTime":Ljava/lang/Long;
    goto :goto_0

    .line 322
    .end local v6    # "whereClause":Ljava/lang/String;
    .end local v11    # "now":J
    .end local v14    # "timeDiff":J
    :cond_5
    if-eqz v10, :cond_6

    .line 323
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_4

    .line 322
    :catchall_0
    move-exception v0

    goto :goto_5

    .line 319
    :catch_0
    move-exception v0

    goto :goto_2

    .line 317
    :catch_1
    move-exception v0

    goto :goto_3

    .line 322
    :catchall_1
    move-exception v0

    move/from16 v13, p4

    goto :goto_5

    .line 319
    :catch_2
    move-exception v0

    move/from16 v13, p4

    .line 320
    .local v0, "e":Ljava/lang/IllegalStateException;
    :goto_2
    :try_start_3
    const-string v2, "AppTypeRecoManager"

    const-string v3, "Error IllegalStateException: loadAppUsedInfo"

    invoke-static {v2, v3}, Landroid/rms/iaware/AwareLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    if-eqz v10, :cond_6

    goto :goto_1

    .line 317
    :catch_3
    move-exception v0

    move/from16 v13, p4

    .line 318
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    :goto_3
    const-string v2, "AppTypeRecoManager"

    const-string v3, "Error SQLiteException: loadAppUsedInfo"

    invoke-static {v2, v3}, Landroid/rms/iaware/AwareLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 322
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    if-eqz v10, :cond_6

    goto :goto_1

    .line 326
    :cond_6
    :goto_4
    return-void

    .line 322
    :goto_5
    if-eqz v10, :cond_7

    .line 323
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0

    .line 292
    .end local v9    # "resolver":Landroid/content/ContentResolver;
    .end local v10    # "cursor":Landroid/database/Cursor;
    :cond_8
    :goto_6
    move/from16 v13, p4

    return-void
.end method

.method public loadInstalledAppTypeInfo()Z
    .locals 6

    .line 150
    const/4 v0, 0x0

    .line 152
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/rms/iaware/AppTypeInfo;>;"
    :try_start_0
    invoke-static {}, Landroid/rms/iaware/IAwareCMSManager;->getICMSManager()Landroid/os/IBinder;

    move-result-object v1

    .line 153
    .local v1, "binder":Landroid/os/IBinder;
    if-eqz v1, :cond_0

    .line 154
    invoke-static {v1}, Landroid/rms/iaware/IAwareCMSManager;->getAllAppTypeInfo(Landroid/os/IBinder;)Ljava/util/List;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 156
    :cond_0
    const-string v2, "AppTypeRecoManager"

    const-string v3, "can not find service IAwareCMSService."

    invoke-static {v2, v3}, Landroid/rms/iaware/AwareLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    .end local v1    # "binder":Landroid/os/IBinder;
    :goto_0
    goto :goto_1

    .line 158
    :catch_0
    move-exception v1

    .line 159
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "AppTypeRecoManager"

    const-string v3, "loadAppTypeInfo RemoteException"

    invoke-static {v2, v3}, Landroid/rms/iaware/AwareLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1
    if-nez v0, :cond_1

    .line 162
    const/4 v1, 0x0

    return v1

    .line 164
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/rms/iaware/AppTypeInfo;

    .line 165
    .local v2, "info":Landroid/rms/iaware/AppTypeInfo;
    const/4 v3, -0x1

    invoke-virtual {v2}, Landroid/rms/iaware/AppTypeInfo;->getPkgName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/rms/iaware/AppTypeRecoManager;->getAppType(Ljava/lang/String;)I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 166
    invoke-virtual {v2}, Landroid/rms/iaware/AppTypeInfo;->getType()I

    move-result v3

    const/16 v4, 0xff

    if-eq v3, v4, :cond_3

    .line 167
    :cond_2
    invoke-virtual {v2}, Landroid/rms/iaware/AppTypeInfo;->getPkgName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/rms/iaware/AppTypeInfo;->getType()I

    move-result v4

    invoke-virtual {v2}, Landroid/rms/iaware/AppTypeInfo;->getAttribute()I

    move-result v5

    invoke-virtual {p0, v3, v4, v5}, Landroid/rms/iaware/AppTypeRecoManager;->addAppType(Ljava/lang/String;II)V

    .line 169
    .end local v2    # "info":Landroid/rms/iaware/AppTypeInfo;
    :cond_3
    goto :goto_2

    .line 170
    :cond_4
    const/4 v1, 0x1

    return v1
.end method

.method public removeAppType(Ljava/lang/String;)V
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 459
    iget-object v0, p0, Landroid/rms/iaware/AppTypeRecoManager;->mAppsTypeMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 460
    :try_start_0
    iget-object v1, p0, Landroid/rms/iaware/AppTypeRecoManager;->mAppsTypeMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    monitor-exit v0

    .line 462
    return-void

    .line 461
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
