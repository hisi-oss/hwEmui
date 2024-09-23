.class Lhuawei/android/provider/HwSettings$NameValueCache;
.super Ljava/lang/Object;
.source "HwSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhuawei/android/provider/HwSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NameValueCache"
.end annotation


# static fields
.field private static final NAME_EQ_PLACEHOLDER:Ljava/lang/String; = "name=?"

.field private static final SELECT_VALUE:[Ljava/lang/String;


# instance fields
.field private final mCallCommand:Ljava/lang/String;

.field private mContentProvider:Landroid/content/IContentProvider;

.field private final mUri:Landroid/net/Uri;

.field private final mValues:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mValuesVersion:J

.field private final mVersionSystemProperty:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 69
    const-string v0, "value"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lhuawei/android/provider/HwSettings$NameValueCache;->SELECT_VALUE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 2
    .param p1, "versionSystemProperty"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "callCommand"    # Ljava/lang/String;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lhuawei/android/provider/HwSettings$NameValueCache;->mValues:Ljava/util/HashMap;

    .line 75
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lhuawei/android/provider/HwSettings$NameValueCache;->mValuesVersion:J

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lhuawei/android/provider/HwSettings$NameValueCache;->mContentProvider:Landroid/content/IContentProvider;

    .line 85
    iput-object p1, p0, Lhuawei/android/provider/HwSettings$NameValueCache;->mVersionSystemProperty:Ljava/lang/String;

    .line 86
    iput-object p2, p0, Lhuawei/android/provider/HwSettings$NameValueCache;->mUri:Landroid/net/Uri;

    .line 87
    iput-object p3, p0, Lhuawei/android/provider/HwSettings$NameValueCache;->mCallCommand:Ljava/lang/String;

    .line 88
    return-void
.end method


# virtual methods
.method public getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "name"    # Ljava/lang/String;

    .line 91
    iget-object v0, p0, Lhuawei/android/provider/HwSettings$NameValueCache;->mVersionSystemProperty:Ljava/lang/String;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 93
    .local v0, "newValuesVersion":J
    monitor-enter p0

    .line 94
    :try_start_0
    iget-wide v2, p0, Lhuawei/android/provider/HwSettings$NameValueCache;->mValuesVersion:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    .line 100
    iget-object v2, p0, Lhuawei/android/provider/HwSettings$NameValueCache;->mValues:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 101
    iput-wide v0, p0, Lhuawei/android/provider/HwSettings$NameValueCache;->mValuesVersion:J

    .line 104
    :cond_0
    iget-object v2, p0, Lhuawei/android/provider/HwSettings$NameValueCache;->mValues:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 105
    iget-object v2, p0, Lhuawei/android/provider/HwSettings$NameValueCache;->mValues:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    monitor-exit p0

    return-object v2

    .line 107
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 109
    const/4 v2, 0x0

    .line 110
    .local v2, "cp":Landroid/content/IContentProvider;
    monitor-enter p0

    .line 111
    :try_start_1
    iget-object v3, p0, Lhuawei/android/provider/HwSettings$NameValueCache;->mContentProvider:Landroid/content/IContentProvider;

    move-object v2, v3

    .line 112
    if-nez v2, :cond_2

    .line 113
    iget-object v3, p0, Lhuawei/android/provider/HwSettings$NameValueCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v3

    iput-object v3, p0, Lhuawei/android/provider/HwSettings$NameValueCache;->mContentProvider:Landroid/content/IContentProvider;

    move-object v2, v3

    .line 115
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 122
    iget-object v3, p0, Lhuawei/android/provider/HwSettings$NameValueCache;->mCallCommand:Ljava/lang/String;

    const/4 v10, 0x0

    if-eqz v3, :cond_4

    if-eqz v2, :cond_4

    .line 125
    :try_start_2
    invoke-virtual {p1}, Landroid/content/ContentResolver;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lhuawei/android/provider/HwSettings$NameValueCache;->mCallCommand:Ljava/lang/String;

    invoke-interface {v2, v3, v4, p2, v10}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    .line 126
    .local v3, "b":Landroid/os/Bundle;
    if-eqz v3, :cond_3

    .line 127
    invoke-virtual {v3}, Landroid/os/Bundle;->getPairValue()Ljava/lang/String;

    move-result-object v4

    .line 128
    .local v4, "value":Ljava/lang/String;
    monitor-enter p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 129
    :try_start_3
    iget-object v5, p0, Lhuawei/android/provider/HwSettings$NameValueCache;->mValues:Ljava/util/HashMap;

    invoke-virtual {v5, p2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    monitor-exit p0

    .line 131
    return-object v4

    .line 130
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v5
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 138
    .end local v3    # "b":Landroid/os/Bundle;
    .end local v4    # "value":Ljava/lang/String;
    :cond_3
    goto :goto_0

    .line 135
    :catch_0
    move-exception v3

    .line 141
    :cond_4
    :goto_0
    move-object v3, v10

    .line 144
    .local v3, "c":Landroid/database/Cursor;
    const/4 v11, 0x0

    if-eqz v2, :cond_5

    .line 146
    :try_start_5
    const-string v4, "name=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    aput-object p2, v5, v11

    invoke-static {v4, v5, v10}, Landroid/content/ContentResolver;->createSqlQueryBundle(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    .line 150
    .local v8, "queryArgs":Landroid/os/Bundle;
    invoke-virtual {p1}, Landroid/content/ContentResolver;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lhuawei/android/provider/HwSettings$NameValueCache;->mUri:Landroid/net/Uri;

    sget-object v7, Lhuawei/android/provider/HwSettings$NameValueCache;->SELECT_VALUE:[Ljava/lang/String;

    const/4 v9, 0x0

    move-object v4, v2

    invoke-interface/range {v4 .. v9}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v4

    move-object v3, v4

    .end local v8    # "queryArgs":Landroid/os/Bundle;
    goto :goto_1

    .line 171
    :catchall_1
    move-exception v4

    goto :goto_4

    .line 167
    :catch_1
    move-exception v4

    goto :goto_3

    .line 153
    :cond_5
    :goto_1
    if-nez v3, :cond_7

    .line 154
    const-string v4, "Settings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t get key "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lhuawei/android/provider/HwSettings$NameValueCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 155
    nop

    .line 171
    if-eqz v3, :cond_6

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 155
    :cond_6
    return-object v10

    .line 158
    :cond_7
    :try_start_6
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_8
    move-object v4, v10

    .line 159
    .restart local v4    # "value":Ljava/lang/String;
    :goto_2
    monitor-enter p0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 160
    :try_start_7
    iget-object v5, p0, Lhuawei/android/provider/HwSettings$NameValueCache;->mValues:Ljava/util/HashMap;

    invoke-virtual {v5, p2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 166
    nop

    .line 171
    if-eqz v3, :cond_9

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 166
    :cond_9
    return-object v4

    .line 161
    :catchall_2
    move-exception v5

    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v5
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 167
    .end local v4    # "value":Ljava/lang/String;
    :goto_3
    nop

    .line 168
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_a
    const-string v5, "Settings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t get key "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lhuawei/android/provider/HwSettings$NameValueCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 169
    nop

    .line 171
    if-eqz v3, :cond_a

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 169
    :cond_a
    return-object v10

    .line 171
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_4
    if-eqz v3, :cond_b

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_b
    throw v4

    .line 115
    .end local v3    # "c":Landroid/database/Cursor;
    :catchall_3
    move-exception v3

    :try_start_b
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    throw v3

    .line 107
    .end local v2    # "cp":Landroid/content/IContentProvider;
    :catchall_4
    move-exception v2

    :try_start_c
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    throw v2
.end method
