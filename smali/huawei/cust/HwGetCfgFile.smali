.class public Lhuawei/cust/HwGetCfgFile;
.super Ljava/lang/Object;
.source "HwGetCfgFile.java"

# interfaces
.implements Lhuawei/cust/IHwGetCfgFileConfig;


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "HwGetCfgFile"

.field private static final SIM_NUM:I

.field private static sInstance:Lhuawei/cust/HwGetCfgFile;


# instance fields
.field private cfgFileData:[Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    sput v0, Lhuawei/cust/HwGetCfgFile;->SIM_NUM:I

    .line 28
    const/4 v0, 0x0

    sput-object v0, Lhuawei/cust/HwGetCfgFile;->sInstance:Lhuawei/cust/HwGetCfgFile;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/util/Map;

    iput-object v0, p0, Lhuawei/cust/HwGetCfgFile;->cfgFileData:[Ljava/util/Map;

    .line 30
    return-void
.end method

.method private getCfgFileData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Class;)Ljava/lang/Object;
    .locals 9
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "ikey"    # Ljava/lang/String;
    .param p3, "rkey"    # Ljava/lang/String;
    .param p4, "ivalue"    # Ljava/lang/String;
    .param p5, "slotid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 179
    .local p6, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0, p1}, Lhuawei/cust/HwGetCfgFile;->isAvail(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    if-eqz p6, :cond_6

    invoke-direct {p0, p3}, Lhuawei/cust/HwGetCfgFile;->isAvail(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 183
    :cond_0
    invoke-static {p5}, Lhuawei/cust/HwGetCfgFile;->isValidSlot(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 184
    const-string v0, "HwGetCfgFile"

    const-string v2, "getCfgFileData Error slotId "

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    return-object v1

    .line 187
    :cond_1
    iget-object v0, p0, Lhuawei/cust/HwGetCfgFile;->cfgFileData:[Ljava/util/Map;

    aget-object v0, v0, p5

    if-eqz v0, :cond_5

    .line 188
    iget-object v0, p0, Lhuawei/cust/HwGetCfgFile;->cfgFileData:[Ljava/util/Map;

    aget-object v0, v0, p5

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 189
    .local v0, "datalist":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map;>;"
    const-string v2, "00000"

    .line 191
    .local v2, "anyRplmn":Ljava/lang/String;
    const/4 v3, 0x1

    .line 192
    .local v3, "ruleNum":I
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 193
    .local v4, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TT;>;"
    if-eqz v0, :cond_4

    .line 194
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 195
    .local v6, "data":Ljava/util/Map;
    invoke-interface {v6, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 196
    .local v7, "idata":Ljava/lang/String;
    invoke-direct {p0, v7}, Lhuawei/cust/HwGetCfgFile;->isAvail(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v7, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 197
    invoke-interface {v6, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 199
    :cond_2
    invoke-direct {p0, v7}, Lhuawei/cust/HwGetCfgFile;->isAvail(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-direct {p0, p4}, Lhuawei/cust/HwGetCfgFile;->isAvail(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 200
    invoke-interface {v6, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v4, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    .end local v6    # "data":Ljava/util/Map;
    .end local v7    # "idata":Ljava/lang/String;
    :cond_3
    goto :goto_0

    .line 204
    :cond_4
    invoke-interface {v4, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 205
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 208
    .end local v0    # "datalist":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map;>;"
    .end local v2    # "anyRplmn":Ljava/lang/String;
    .end local v3    # "ruleNum":I
    .end local v4    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TT;>;"
    :cond_5
    return-object v1

    .line 180
    :cond_6
    :goto_1
    const-string v0, "HwGetCfgFile"

    const-string v2, "getCfgFileData param invalid "

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    return-object v1
.end method

.method private getCfgFileData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Class;)Ljava/lang/Object;
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "ifkey"    # Ljava/lang/String;
    .param p3, "iskey"    # Ljava/lang/String;
    .param p4, "rkey"    # Ljava/lang/String;
    .param p5, "fvalue"    # Ljava/lang/String;
    .param p6, "svalue"    # Ljava/lang/String;
    .param p7, "slotid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 131
    .local p8, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0, p1}, Lhuawei/cust/HwGetCfgFile;->isAvail(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    if-eqz p8, :cond_6

    invoke-direct {p0, p4}, Lhuawei/cust/HwGetCfgFile;->isAvail(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 135
    :cond_0
    invoke-static {p7}, Lhuawei/cust/HwGetCfgFile;->isValidSlot(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 136
    const-string v0, "HwGetCfgFile"

    const-string v2, "getCfgFileData Error slotId "

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    return-object v1

    .line 139
    :cond_1
    invoke-direct {p0, p3}, Lhuawei/cust/HwGetCfgFile;->isAvail(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, p2}, Lhuawei/cust/HwGetCfgFile;->isAvail(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 140
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    move v5, p7

    move-object v6, p8

    invoke-direct/range {v0 .. v6}, Lhuawei/cust/HwGetCfgFile;->getCfgFileData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 143
    :cond_2
    iget-object v0, p0, Lhuawei/cust/HwGetCfgFile;->cfgFileData:[Ljava/util/Map;

    aget-object v0, v0, p7

    if-eqz v0, :cond_5

    .line 144
    iget-object v0, p0, Lhuawei/cust/HwGetCfgFile;->cfgFileData:[Ljava/util/Map;

    aget-object v0, v0, p7

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 145
    .local v0, "datalist":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map;>;"
    if-eqz v0, :cond_5

    .line 146
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 147
    .local v3, "data":Ljava/util/Map;
    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 148
    .local v4, "fdata":Ljava/lang/String;
    invoke-interface {v3, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 149
    .local v5, "sdata":Ljava/lang/String;
    invoke-direct {p0, v4}, Lhuawei/cust/HwGetCfgFile;->isAvail(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-direct {p0, v5}, Lhuawei/cust/HwGetCfgFile;->isAvail(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v4, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v5, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 150
    invoke-interface {v3, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 151
    :cond_3
    invoke-direct {p0, v4}, Lhuawei/cust/HwGetCfgFile;->isAvail(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-direct {p0, v5}, Lhuawei/cust/HwGetCfgFile;->isAvail(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v4, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 152
    invoke-interface {v3, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 154
    .end local v3    # "data":Ljava/util/Map;
    .end local v4    # "fdata":Ljava/lang/String;
    .end local v5    # "sdata":Ljava/lang/String;
    :cond_4
    goto :goto_0

    .line 157
    .end local v0    # "datalist":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map;>;"
    :cond_5
    return-object v1

    .line 132
    :cond_6
    :goto_1
    const-string v0, "HwGetCfgFile"

    const-string v2, "getCfgFileData param invalid "

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    return-object v1
.end method

.method public static declared-synchronized getDefault()Lhuawei/cust/HwGetCfgFile;
    .locals 3

    const-class v0, Lhuawei/cust/HwGetCfgFile;

    monitor-enter v0

    .line 33
    :try_start_0
    const-class v1, Lhuawei/cust/HwGetCfgFile;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 34
    :try_start_1
    sget-object v2, Lhuawei/cust/HwGetCfgFile;->sInstance:Lhuawei/cust/HwGetCfgFile;

    if-nez v2, :cond_0

    .line 35
    new-instance v2, Lhuawei/cust/HwGetCfgFile;

    invoke-direct {v2}, Lhuawei/cust/HwGetCfgFile;-><init>()V

    sput-object v2, Lhuawei/cust/HwGetCfgFile;->sInstance:Lhuawei/cust/HwGetCfgFile;

    .line 37
    :cond_0
    sget-object v2, Lhuawei/cust/HwGetCfgFile;->sInstance:Lhuawei/cust/HwGetCfgFile;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v2

    .line 38
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 32
    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private isAvail(Ljava/lang/String;)Z
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .line 56
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isValidSlot(I)Z
    .locals 1
    .param p0, "slotId"    # I

    .line 211
    if-ltz p0, :cond_0

    sget v0, Lhuawei/cust/HwGetCfgFile;->SIM_NUM:I

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public clearCfgFileConfig(I)V
    .locals 2
    .param p1, "slotId"    # I

    .line 216
    invoke-static {p1}, Lhuawei/cust/HwGetCfgFile;->isValidSlot(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 217
    const-string v0, "HwGetCfgFile"

    const-string v1, "ClearCfgFileConfig Error slotId "

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    return-void

    .line 220
    :cond_0
    iget-object v0, p0, Lhuawei/cust/HwGetCfgFile;->cfgFileData:[Ljava/util/Map;

    aget-object v0, v0, p1

    if-eqz v0, :cond_1

    .line 221
    iget-object v0, p0, Lhuawei/cust/HwGetCfgFile;->cfgFileData:[Ljava/util/Map;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    .line 223
    :cond_1
    return-void
.end method

.method public getCfgFileData(Landroid/common/HwCfgKey;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 17
    .param p1, "keyCollection"    # Landroid/common/HwCfgKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/common/HwCfgKey;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    .line 59
    const/4 v0, 0x0

    if-eqz v10, :cond_d

    if-nez p2, :cond_0

    goto/16 :goto_5

    .line 65
    :cond_0
    iget v11, v10, Landroid/common/HwCfgKey;->slotid:I

    .line 66
    .local v11, "slotid":I
    invoke-static {v11}, Lhuawei/cust/HwGetCfgFile;->isValidSlot(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 67
    const-string v1, "HwGetCfgFile"

    const-string v2, "getCfgFileData Error slotId "

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    return-object v0

    .line 70
    :cond_1
    iget-object v1, v10, Landroid/common/HwCfgKey;->itkey:Ljava/lang/String;

    invoke-direct {v9, v1}, Lhuawei/cust/HwGetCfgFile;->isAvail(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v10, Landroid/common/HwCfgKey;->iskey:Ljava/lang/String;

    invoke-direct {v9, v1}, Lhuawei/cust/HwGetCfgFile;->isAvail(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v10, Landroid/common/HwCfgKey;->ifkey:Ljava/lang/String;

    invoke-direct {v9, v1}, Lhuawei/cust/HwGetCfgFile;->isAvail(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 71
    iget-object v1, v10, Landroid/common/HwCfgKey;->key:Ljava/lang/String;

    iget-object v2, v10, Landroid/common/HwCfgKey;->ifkey:Ljava/lang/String;

    iget-object v3, v10, Landroid/common/HwCfgKey;->iskey:Ljava/lang/String;

    iget-object v4, v10, Landroid/common/HwCfgKey;->rkey:Ljava/lang/String;

    iget-object v5, v10, Landroid/common/HwCfgKey;->fvalue:Ljava/lang/String;

    iget-object v6, v10, Landroid/common/HwCfgKey;->svalue:Ljava/lang/String;

    move-object v0, v9

    move v7, v11

    move-object/from16 v8, p2

    invoke-direct/range {v0 .. v8}, Lhuawei/cust/HwGetCfgFile;->getCfgFileData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 74
    :cond_2
    iget-object v1, v10, Landroid/common/HwCfgKey;->itkey:Ljava/lang/String;

    invoke-direct {v9, v1}, Lhuawei/cust/HwGetCfgFile;->isAvail(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, v10, Landroid/common/HwCfgKey;->iskey:Ljava/lang/String;

    invoke-direct {v9, v1}, Lhuawei/cust/HwGetCfgFile;->isAvail(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, v10, Landroid/common/HwCfgKey;->ifkey:Ljava/lang/String;

    invoke-direct {v9, v1}, Lhuawei/cust/HwGetCfgFile;->isAvail(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 75
    iget-object v1, v10, Landroid/common/HwCfgKey;->key:Ljava/lang/String;

    iget-object v2, v10, Landroid/common/HwCfgKey;->ifkey:Ljava/lang/String;

    iget-object v3, v10, Landroid/common/HwCfgKey;->rkey:Ljava/lang/String;

    iget-object v4, v10, Landroid/common/HwCfgKey;->fvalue:Ljava/lang/String;

    move-object v0, v9

    move v5, v11

    move-object/from16 v6, p2

    invoke-direct/range {v0 .. v6}, Lhuawei/cust/HwGetCfgFile;->getCfgFileData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 78
    :cond_3
    iget-object v1, v9, Lhuawei/cust/HwGetCfgFile;->cfgFileData:[Ljava/util/Map;

    iget v2, v10, Landroid/common/HwCfgKey;->slotid:I

    aget-object v1, v1, v2

    if-eqz v1, :cond_c

    .line 79
    iget-object v1, v9, Lhuawei/cust/HwGetCfgFile;->cfgFileData:[Ljava/util/Map;

    iget v2, v10, Landroid/common/HwCfgKey;->slotid:I

    aget-object v1, v1, v2

    iget-object v2, v10, Landroid/common/HwCfgKey;->key:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 80
    .local v1, "datalist":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map;>;"
    if-eqz v1, :cond_c

    .line 81
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 82
    .local v3, "data":Ljava/util/Map;
    iget-object v4, v10, Landroid/common/HwCfgKey;->ifkey:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 83
    .local v4, "fdata":Ljava/lang/String;
    iget-object v5, v10, Landroid/common/HwCfgKey;->iskey:Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 84
    .local v5, "sdata":Ljava/lang/String;
    iget-object v6, v10, Landroid/common/HwCfgKey;->itkey:Ljava/lang/String;

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 86
    .local v6, "tdata":Ljava/lang/String;
    invoke-direct {v9, v4}, Lhuawei/cust/HwGetCfgFile;->isAvail(Ljava/lang/String;)Z

    move-result v7

    const/4 v12, 0x1

    if-eqz v7, :cond_4

    iget-object v7, v10, Landroid/common/HwCfgKey;->fvalue:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    move v7, v12

    goto :goto_1

    :cond_4
    const/4 v7, 0x0

    .line 87
    .local v7, "isAvailRplmn":Z
    :goto_1
    invoke-direct {v9, v4}, Lhuawei/cust/HwGetCfgFile;->isAvail(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    const-string v13, "00000"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    move v13, v12

    goto :goto_2

    :cond_5
    const/4 v13, 0x0

    .line 88
    .local v13, "isAnyRplmn":Z
    :goto_2
    invoke-direct {v9, v6}, Lhuawei/cust/HwGetCfgFile;->isAvail(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6

    iget-object v14, v10, Landroid/common/HwCfgKey;->tvalue:Ljava/lang/String;

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    move v14, v12

    goto :goto_3

    :cond_6
    const/4 v14, 0x0

    .line 89
    .local v14, "isAvailNetworktype":Z
    :goto_3
    invoke-direct {v9, v5}, Lhuawei/cust/HwGetCfgFile;->isAvail(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_7

    iget-object v8, v10, Landroid/common/HwCfgKey;->svalue:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    goto :goto_4

    :cond_7
    const/4 v12, 0x0

    :goto_4
    move v8, v12

    .line 90
    .local v8, "isAvailSdata":Z
    if-eqz v7, :cond_8

    if-eqz v8, :cond_8

    if-eqz v14, :cond_8

    .line 91
    iget-object v0, v10, Landroid/common/HwCfgKey;->rkey:Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 92
    :cond_8
    if-eqz v7, :cond_9

    if-eqz v8, :cond_9

    invoke-direct {v9, v6}, Lhuawei/cust/HwGetCfgFile;->isAvail(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_9

    .line 93
    iget-object v0, v10, Landroid/common/HwCfgKey;->rkey:Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 95
    :cond_9
    if-eqz v13, :cond_a

    if-eqz v8, :cond_a

    if-eqz v14, :cond_a

    .line 96
    iget-object v0, v10, Landroid/common/HwCfgKey;->rkey:Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 97
    :cond_a
    if-eqz v13, :cond_b

    if-eqz v8, :cond_b

    invoke-direct {v9, v6}, Lhuawei/cust/HwGetCfgFile;->isAvail(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_b

    .line 98
    iget-object v0, v10, Landroid/common/HwCfgKey;->rkey:Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 100
    :cond_b
    const-string v12, "HwGetCfgFile"

    const-string v0, "Can\'t match this scene"

    invoke-static {v12, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    .end local v3    # "data":Ljava/util/Map;
    .end local v4    # "fdata":Ljava/lang/String;
    .end local v5    # "sdata":Ljava/lang/String;
    .end local v6    # "tdata":Ljava/lang/String;
    .end local v7    # "isAvailRplmn":Z
    .end local v8    # "isAvailSdata":Z
    .end local v13    # "isAnyRplmn":Z
    .end local v14    # "isAvailNetworktype":Z
    nop

    .line 81
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 106
    .end local v1    # "datalist":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map;>;"
    :cond_c
    const/4 v0, 0x0

    return-object v0

    .line 60
    .end local v11    # "slotid":I
    :cond_d
    :goto_5
    const-string v1, "HwGetCfgFile"

    const-string v2, "getCfgFileData param invalid "

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    return-object v0
.end method

.method public getCfgFileMap(I)Ljava/util/Map;
    .locals 1
    .param p1, "slotId"    # I

    .line 46
    iget-object v0, p0, Lhuawei/cust/HwGetCfgFile;->cfgFileData:[Ljava/util/Map;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lhuawei/cust/HwGetCfgFile;->cfgFileData:[Ljava/util/Map;

    aget-object v0, v0, p1

    return-object v0

    .line 49
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public readCfgFileConfig(Ljava/lang/String;I)V
    .locals 3
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "slotId"    # I

    .line 230
    invoke-static {p2}, Lhuawei/cust/HwGetCfgFile;->isValidSlot(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 231
    const-string v0, "HwGetCfgFile"

    const-string v1, "ClearCfgFileConfig Error slotId "

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    return-void

    .line 235
    :cond_0
    :try_start_0
    invoke-static {p1, p2}, Lhuawei/cust/HwCfgFilePolicy;->getFileConfig(Ljava/lang/String;I)Ljava/util/Map;

    move-result-object v0

    .line 236
    .local v0, "data":Ljava/util/Map;
    if-eqz v0, :cond_1

    iget-object v1, p0, Lhuawei/cust/HwGetCfgFile;->cfgFileData:[Ljava/util/Map;

    aget-object v1, v1, p2

    if-eqz v1, :cond_1

    .line 237
    iget-object v1, p0, Lhuawei/cust/HwGetCfgFile;->cfgFileData:[Ljava/util/Map;

    aget-object v1, v1, p2

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_0

    .line 239
    :cond_1
    iget-object v1, p0, Lhuawei/cust/HwGetCfgFile;->cfgFileData:[Ljava/util/Map;

    aput-object v0, v1, p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    .end local v0    # "data":Ljava/util/Map;
    :goto_0
    goto :goto_1

    .line 241
    :catch_0
    move-exception v0

    .line 242
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "HwGetCfgFile"

    const-string v2, "Exception: read CfgFileConfig error "

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method
