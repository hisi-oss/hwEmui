.class public Lcom/huawei/hsm/permission/ContentPermission;
.super Ljava/lang/Object;
.source "ContentPermission.java"


# static fields
.field private static final SUPPORT_ACCESS_BROWSER_HISTORY_MONITOR:Z

.field private static final TAG:Ljava/lang/String; = "ContentPermission"


# instance fields
.field private mPermissionType:I

.field private mPid:I

.field private mUid:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    const-string v0, "ro.config.browser_history_perm"

    .line 28
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/huawei/hsm/permission/ContentPermission;->SUPPORT_ACCESS_BROWSER_HISTORY_MONITOR:Z

    .line 27
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/hsm/permission/ContentPermission;->mPermissionType:I

    .line 36
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iput v0, p0, Lcom/huawei/hsm/permission/ContentPermission;->mUid:I

    .line 37
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    iput v0, p0, Lcom/huawei/hsm/permission/ContentPermission;->mPid:I

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/hsm/permission/ContentPermission;->mPermissionType:I

    .line 42
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iput v0, p0, Lcom/huawei/hsm/permission/ContentPermission;->mUid:I

    .line 43
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    iput v0, p0, Lcom/huawei/hsm/permission/ContentPermission;->mPid:I

    .line 44
    return-void
.end method

.method public static allowContentOpInner(Landroid/net/Uri;I)Z
    .locals 6
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "action"    # I

    .line 162
    new-instance v0, Lcom/huawei/hsm/permission/ContentPermission;

    invoke-direct {v0}, Lcom/huawei/hsm/permission/ContentPermission;-><init>()V

    .line 163
    .local v0, "contentPermission":Lcom/huawei/hsm/permission/ContentPermission;
    invoke-virtual {v0, p0, p1}, Lcom/huawei/hsm/permission/ContentPermission;->getContentType(Landroid/net/Uri;I)I

    move-result v1

    .line 164
    .local v1, "authority":I
    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 165
    return v2

    .line 169
    :cond_0
    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lcom/huawei/hsm/permission/ContentPermission;->isGlobalSwitchOn(Landroid/database/Cursor;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 170
    const-string v3, "ContentPermission"

    const-string v4, "isGlobalSwitchOn false"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    return v2

    .line 174
    :cond_1
    invoke-direct {v0}, Lcom/huawei/hsm/permission/ContentPermission;->remind()I

    move-result v3

    .line 175
    .local v3, "selectionResult":I
    if-nez v3, :cond_2

    .line 176
    const-string v4, "ContentPermission"

    const-string v5, "Get selection error"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    return v2

    .line 180
    :cond_2
    if-ne v2, v3, :cond_3

    .line 181
    return v2

    .line 183
    :cond_3
    const/4 v2, 0x0

    return v2
.end method

.method private getAccessBrowserHistoryPermType()I
    .locals 1

    .line 125
    sget-boolean v0, Lcom/huawei/hsm/permission/ContentPermission;->SUPPORT_ACCESS_BROWSER_HISTORY_MONITOR:Z

    if-eqz v0, :cond_0

    .line 126
    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_0

    .line 127
    :cond_0
    const/4 v0, 0x0

    .line 125
    :goto_0
    return v0
.end method

.method public static getDummyCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .line 211
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireUnstableProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v7

    .line 212
    .local v7, "unstableProvider":Landroid/content/IContentProvider;
    const/4 v8, 0x0

    if-nez v7, :cond_0

    .line 213
    return-object v8

    .line 216
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, "pkgName":Ljava/lang/String;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, v7

    invoke-static/range {v0 .. v6}, Lcom/huawei/hsm/permission/ContentPermission;->getDummyCursorInner(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/content/IContentProvider;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    invoke-virtual {p0, v7}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 217
    return-object v1

    .line 221
    .end local v0    # "pkgName":Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-virtual {p0, v7}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    throw v0

    .line 218
    :catch_0
    move-exception v0

    .line 219
    .local v0, "e":Landroid/os/RemoteException;
    nop

    .line 221
    invoke-virtual {p0, v7}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 219
    return-object v8
.end method

.method private static getDummyCursorInner(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/content/IContentProvider;)Landroid/database/Cursor;
    .locals 3
    .param p0, "pkgName"    # Ljava/lang/String;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;
    .param p6, "provider"    # Landroid/content/IContentProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 237
    const/4 v0, 0x0

    .line 238
    .local v0, "fakeCursor":Landroid/database/MatrixCursor;
    if-nez p2, :cond_0

    .line 239
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "_id"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    .line 241
    :cond_0
    new-instance v1, Landroid/database/MatrixCursor;

    invoke-direct {v1, p2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v0, v1

    .line 243
    :goto_0
    return-object v0
.end method

.method public static isBeginWithRightBrace(Ljava/lang/String;)Z
    .locals 3
    .param p0, "selection"    # Ljava/lang/String;

    .line 196
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 199
    :cond_0
    const-string v1, ")"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const-string v2, "("

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 200
    const/4 v0, 0x1

    return v0

    .line 202
    :cond_1
    return v0

    .line 197
    :cond_2
    :goto_0
    return v0
.end method

.method private isGlobalSwitchOn(Landroid/database/Cursor;)Z
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .line 131
    const/4 v0, 0x1

    return v0
.end method

.method private recordPermissionUsed()V
    .locals 5

    .line 140
    iget v0, p0, Lcom/huawei/hsm/permission/ContentPermission;->mPermissionType:I

    if-nez v0, :cond_0

    .line 141
    return-void

    .line 143
    :cond_0
    invoke-static {}, Lcom/huawei/hsm/permission/monitor/PermRecordHandler;->getHandleInstance()Lcom/huawei/hsm/permission/monitor/PermRecordHandler;

    move-result-object v0

    .line 144
    .local v0, "mPermRecHandler":Lcom/huawei/hsm/permission/monitor/PermRecordHandler;
    if-eqz v0, :cond_1

    .line 145
    iget v1, p0, Lcom/huawei/hsm/permission/ContentPermission;->mUid:I

    iget v2, p0, Lcom/huawei/hsm/permission/ContentPermission;->mPid:I

    iget v3, p0, Lcom/huawei/hsm/permission/ContentPermission;->mPermissionType:I

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/huawei/hsm/permission/monitor/PermRecordHandler;->accessPermission(IIILjava/lang/String;)V

    .line 147
    :cond_1
    return-void
.end method

.method private remind()I
    .locals 4

    .line 135
    iget v0, p0, Lcom/huawei/hsm/permission/ContentPermission;->mPermissionType:I

    iget v1, p0, Lcom/huawei/hsm/permission/ContentPermission;->mUid:I

    iget v2, p0, Lcom/huawei/hsm/permission/ContentPermission;->mPid:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/huawei/hsm/permission/StubController;->holdForGetPermissionSelection(IIILjava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public getContentType(Landroid/net/Uri;I)I
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "action"    # I

    .line 54
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 55
    const-string v1, "ContentPermission"

    const-string v2, "getContentType, uri==null"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    return v0

    .line 58
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, "auth":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 60
    const-string v2, "ContentPermission"

    const-string v3, "getContentType, auth is null."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    return v0

    .line 64
    :cond_1
    const-string v2, "com.android.contacts"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-nez v2, :cond_10

    const-string v2, "contacts"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_2

    .line 74
    :cond_2
    const-string v2, "call_log"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 75
    if-ne p2, v5, :cond_3

    .line 76
    iput v4, p0, Lcom/huawei/hsm/permission/ContentPermission;->mPermissionType:I

    goto/16 :goto_3

    .line 77
    :cond_3
    if-ne p2, v4, :cond_4

    .line 78
    const v2, 0x8000

    iput v2, p0, Lcom/huawei/hsm/permission/ContentPermission;->mPermissionType:I

    goto/16 :goto_3

    .line 79
    :cond_4
    if-ne p2, v3, :cond_5

    .line 80
    const/high16 v2, 0x40000

    iput v2, p0, Lcom/huawei/hsm/permission/ContentPermission;->mPermissionType:I

    goto/16 :goto_3

    .line 82
    :cond_5
    iput v0, p0, Lcom/huawei/hsm/permission/ContentPermission;->mPermissionType:I

    goto/16 :goto_3

    .line 84
    :cond_6
    const-string v2, "sms"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string v2, "mms-sms"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string v2, "mms"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_1

    .line 90
    :cond_7
    const-string v2, "com.android.calendar"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 91
    if-ne p2, v5, :cond_8

    .line 92
    const/16 v2, 0x800

    iput v2, p0, Lcom/huawei/hsm/permission/ContentPermission;->mPermissionType:I

    goto/16 :goto_3

    .line 93
    :cond_8
    const/high16 v2, 0x10000000

    if-ne p2, v4, :cond_9

    .line 94
    iput v2, p0, Lcom/huawei/hsm/permission/ContentPermission;->mPermissionType:I

    goto :goto_3

    .line 95
    :cond_9
    if-ne p2, v3, :cond_a

    .line 96
    iput v2, p0, Lcom/huawei/hsm/permission/ContentPermission;->mPermissionType:I

    goto :goto_3

    .line 98
    :cond_a
    iput v0, p0, Lcom/huawei/hsm/permission/ContentPermission;->mPermissionType:I

    goto :goto_3

    .line 100
    :cond_b
    const-string v2, "browser"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "com.android.browser"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 101
    :cond_c
    if-ne p2, v5, :cond_d

    .line 102
    invoke-direct {p0}, Lcom/huawei/hsm/permission/ContentPermission;->getAccessBrowserHistoryPermType()I

    move-result v2

    iput v2, p0, Lcom/huawei/hsm/permission/ContentPermission;->mPermissionType:I

    goto :goto_0

    .line 104
    :cond_d
    iput v0, p0, Lcom/huawei/hsm/permission/ContentPermission;->mPermissionType:I

    .line 106
    :goto_0
    const-string v2, "ContentPermission"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "browser mPermissionType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/huawei/hsm/permission/ContentPermission;->mPermissionType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 85
    :cond_e
    :goto_1
    if-ne p2, v5, :cond_f

    .line 86
    const/4 v2, 0x4

    iput v2, p0, Lcom/huawei/hsm/permission/ContentPermission;->mPermissionType:I

    goto :goto_3

    .line 88
    :cond_f
    iput v0, p0, Lcom/huawei/hsm/permission/ContentPermission;->mPermissionType:I

    goto :goto_3

    .line 65
    :cond_10
    :goto_2
    if-ne p2, v5, :cond_11

    .line 66
    iput v5, p0, Lcom/huawei/hsm/permission/ContentPermission;->mPermissionType:I

    goto :goto_3

    .line 67
    :cond_11
    if-ne p2, v4, :cond_12

    .line 68
    const/16 v2, 0x4000

    iput v2, p0, Lcom/huawei/hsm/permission/ContentPermission;->mPermissionType:I

    goto :goto_3

    .line 69
    :cond_12
    if-ne p2, v3, :cond_13

    .line 70
    const/high16 v2, 0x20000

    iput v2, p0, Lcom/huawei/hsm/permission/ContentPermission;->mPermissionType:I

    goto :goto_3

    .line 72
    :cond_13
    iput v0, p0, Lcom/huawei/hsm/permission/ContentPermission;->mPermissionType:I

    .line 111
    :cond_14
    :goto_3
    iget v2, p0, Lcom/huawei/hsm/permission/ContentPermission;->mPermissionType:I

    if-eqz v2, :cond_15

    .line 112
    iget v2, p0, Lcom/huawei/hsm/permission/ContentPermission;->mUid:I

    invoke-static {v2}, Lcom/huawei/hsm/permission/StubController;->checkPrecondition(I)Z

    move-result v2

    if-nez v2, :cond_15

    .line 113
    invoke-direct {p0}, Lcom/huawei/hsm/permission/ContentPermission;->recordPermissionUsed()V

    .line 114
    return v0

    .line 117
    :cond_15
    iget v0, p0, Lcom/huawei/hsm/permission/ContentPermission;->mPermissionType:I

    return v0
.end method
