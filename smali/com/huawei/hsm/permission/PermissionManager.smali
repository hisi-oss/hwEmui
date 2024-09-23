.class public Lcom/huawei/hsm/permission/PermissionManager;
.super Ljava/lang/Object;
.source "PermissionManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-class v0, Lcom/huawei/hsm/permission/PermissionManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/hsm/permission/PermissionManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static allowOp(I)Z
    .locals 5
    .param p0, "type"    # I

    .line 114
    const/4 v0, 0x1

    const/16 v1, 0x400

    if-ne v1, p0, :cond_0

    .line 115
    new-instance v1, Lcom/huawei/hsm/permission/CameraPermission;

    invoke-direct {v1}, Lcom/huawei/hsm/permission/CameraPermission;-><init>()V

    .line 116
    .local v1, "cameraPermission":Lcom/huawei/hsm/permission/CameraPermission;
    invoke-virtual {v1}, Lcom/huawei/hsm/permission/CameraPermission;->remind()V

    .line 117
    sget-object v2, Lcom/huawei/hsm/permission/PermissionManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "camera remind result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v1, Lcom/huawei/hsm/permission/CameraPermission;->isCameraBlocked:Z

    xor-int/2addr v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-boolean v2, v1, Lcom/huawei/hsm/permission/CameraPermission;->isCameraBlocked:Z

    xor-int/2addr v0, v2

    return v0

    .line 119
    .end local v1    # "cameraPermission":Lcom/huawei/hsm/permission/CameraPermission;
    :cond_0
    const/16 v1, 0x80

    if-ne v1, p0, :cond_1

    .line 120
    new-instance v0, Lcom/huawei/hsm/permission/AudioRecordPermission;

    invoke-direct {v0}, Lcom/huawei/hsm/permission/AudioRecordPermission;-><init>()V

    .line 121
    .local v0, "arp":Lcom/huawei/hsm/permission/AudioRecordPermission;
    invoke-virtual {v0}, Lcom/huawei/hsm/permission/AudioRecordPermission;->remindWithResult()Z

    move-result v1

    return v1

    .line 122
    .end local v0    # "arp":Lcom/huawei/hsm/permission/AudioRecordPermission;
    :cond_1
    const/high16 v1, 0x2000000

    if-ne v1, p0, :cond_2

    .line 123
    new-instance v0, Lcom/huawei/hsm/permission/AppListPermission;

    invoke-direct {v0}, Lcom/huawei/hsm/permission/AppListPermission;-><init>()V

    .line 124
    .local v0, "alp":Lcom/huawei/hsm/permission/AppListPermission;
    invoke-virtual {v0}, Lcom/huawei/hsm/permission/AppListPermission;->allowOp()Z

    move-result v1

    return v1

    .line 125
    .end local v0    # "alp":Lcom/huawei/hsm/permission/AppListPermission;
    :cond_2
    const/high16 v1, 0x4000000

    if-ne v1, p0, :cond_3

    .line 126
    new-instance v0, Lcom/huawei/hsm/permission/ReadMotionDataPermission;

    invoke-direct {v0}, Lcom/huawei/hsm/permission/ReadMotionDataPermission;-><init>()V

    .line 127
    .local v0, "rmd":Lcom/huawei/hsm/permission/ReadMotionDataPermission;
    invoke-virtual {v0}, Lcom/huawei/hsm/permission/ReadMotionDataPermission;->allowOp()Z

    move-result v1

    return v1

    .line 128
    .end local v0    # "rmd":Lcom/huawei/hsm/permission/ReadMotionDataPermission;
    :cond_3
    const/high16 v1, 0x8000000

    if-ne v1, p0, :cond_4

    .line 129
    new-instance v0, Lcom/huawei/hsm/permission/ReadHealthDataPermission;

    invoke-direct {v0}, Lcom/huawei/hsm/permission/ReadHealthDataPermission;-><init>()V

    .line 130
    .local v0, "rmd":Lcom/huawei/hsm/permission/ReadHealthDataPermission;
    invoke-virtual {v0}, Lcom/huawei/hsm/permission/ReadHealthDataPermission;->allowOp()Z

    move-result v1

    return v1

    .line 131
    .end local v0    # "rmd":Lcom/huawei/hsm/permission/ReadHealthDataPermission;
    :cond_4
    const/high16 v1, 0x1000000

    if-ne v1, p0, :cond_5

    .line 132
    new-instance v0, Lcom/huawei/hsm/permission/PinShortcutPermission;

    invoke-direct {v0}, Lcom/huawei/hsm/permission/PinShortcutPermission;-><init>()V

    .line 133
    .local v0, "pinShortcut":Lcom/huawei/hsm/permission/PinShortcutPermission;
    invoke-virtual {v0}, Lcom/huawei/hsm/permission/PinShortcutPermission;->allowOp()Z

    move-result v1

    return v1

    .line 135
    .end local v0    # "pinShortcut":Lcom/huawei/hsm/permission/PinShortcutPermission;
    :cond_5
    return v0
.end method

.method public static allowOp(Landroid/content/Context;I)Z
    .locals 3
    .param p0, "cxt"    # Landroid/content/Context;
    .param p1, "type"    # I

    .line 142
    const/high16 v0, 0x800000

    if-ne v0, p1, :cond_0

    .line 143
    invoke-static {p0}, Lcom/huawei/hsm/permission/ConnectPermission;->allowOpenBt(Landroid/content/Context;)Z

    move-result v0

    return v0

    .line 144
    :cond_0
    const/high16 v0, 0x400000

    if-ne v0, p1, :cond_1

    .line 145
    invoke-static {p0}, Lcom/huawei/hsm/permission/ConnectPermission;->allowOpenMobile(Landroid/content/Context;)Z

    move-result v0

    return v0

    .line 146
    :cond_1
    const/high16 v0, 0x200000

    if-ne v0, p1, :cond_2

    .line 147
    invoke-static {p0}, Lcom/huawei/hsm/permission/ConnectPermission;->allowOpenWifi(Landroid/content/Context;)Z

    move-result v0

    return v0

    .line 148
    :cond_2
    const/16 v0, 0x8

    const/4 v1, 0x1

    if-ne v0, p1, :cond_3

    .line 149
    new-instance v0, Lcom/huawei/hsm/permission/LocationPermission;

    invoke-direct {v0, p0}, Lcom/huawei/hsm/permission/LocationPermission;-><init>(Landroid/content/Context;)V

    .line 150
    .local v0, "lp":Lcom/huawei/hsm/permission/LocationPermission;
    invoke-virtual {v0}, Lcom/huawei/hsm/permission/LocationPermission;->isLocationBlocked()Z

    move-result v2

    xor-int/2addr v1, v2

    return v1

    .line 152
    .end local v0    # "lp":Lcom/huawei/hsm/permission/LocationPermission;
    :cond_3
    return v1
.end method

.method public static allowOp(Landroid/content/Context;IZ)Z
    .locals 1
    .param p0, "cxt"    # Landroid/content/Context;
    .param p1, "type"    # I
    .param p2, "enable"    # Z

    .line 159
    if-nez p2, :cond_0

    .line 161
    const/4 v0, 0x1

    return v0

    .line 163
    :cond_0
    invoke-static {p0, p1}, Lcom/huawei/hsm/permission/PermissionManager;->allowOp(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method public static allowOp(Landroid/net/Uri;I)Z
    .locals 1
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "action"    # I

    .line 81
    invoke-static {p0, p1}, Lcom/huawei/hsm/permission/ContentPermission;->allowContentOpInner(Landroid/net/Uri;I)Z

    move-result v0

    return v0
.end method

.method public static allowOp(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Z
    .locals 1
    .param p0, "destAddr"    # Ljava/lang/String;
    .param p1, "smsBody"    # Ljava/lang/String;
    .param p2, "sentIntent"    # Landroid/app/PendingIntent;

    .line 88
    invoke-static {}, Lcom/huawei/hsm/permission/SmsPermission;->getInstance()Lcom/huawei/hsm/permission/SmsPermission;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/huawei/hsm/permission/SmsPermission;->isSmsBlocked(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static allowOp(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z
    .locals 1
    .param p0, "destAddr"    # Ljava/lang/String;
    .param p1, "smsBody"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;)Z"
        }
    .end annotation

    .line 95
    .local p2, "sentIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    invoke-static {}, Lcom/huawei/hsm/permission/SmsPermission;->getInstance()Lcom/huawei/hsm/permission/SmsPermission;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/huawei/hsm/permission/SmsPermission;->isSmsBlocked(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static authenticateSmsSend(Landroid/hsm/HwSystemManager$Notifier;IILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "callback"    # Landroid/hsm/HwSystemManager$Notifier;
    .param p1, "callingUid"    # I
    .param p2, "smsId"    # I
    .param p3, "smsBody"    # Ljava/lang/String;
    .param p4, "smsAddress"    # Ljava/lang/String;

    .line 100
    invoke-static {}, Lcom/huawei/hsm/permission/SmsPermission;->getInstance()Lcom/huawei/hsm/permission/SmsPermission;

    move-result-object v0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/huawei/hsm/permission/SmsPermission;->authenticateSmsSend(Landroid/hsm/HwSystemManager$Notifier;IILjava/lang/String;Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public static canSendBroadcast(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .line 59
    if-nez p1, :cond_0

    .line 61
    const/4 v0, 0x1

    return v0

    .line 64
    :cond_0
    new-instance v0, Lcom/huawei/hsm/permission/SendBroadcastPermission;

    invoke-direct {v0, p0}, Lcom/huawei/hsm/permission/SendBroadcastPermission;-><init>(Landroid/content/Context;)V

    .line 65
    .local v0, "per":Lcom/huawei/hsm/permission/SendBroadcastPermission;
    invoke-virtual {v0, p1}, Lcom/huawei/hsm/permission/SendBroadcastPermission;->allowSendBroadcast(Landroid/content/Intent;)Z

    move-result v1

    .line 67
    .local v1, "allow":Z
    return v1
.end method

.method public static canStartActivity(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .line 38
    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 40
    return v0

    .line 46
    :cond_0
    nop

    .line 47
    invoke-static {p0, p1}, Lcom/huawei/hsm/permission/CallPermission;->blockStartActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 48
    invoke-static {p0, p1}, Lcom/huawei/hsm/permission/ConnectPermission;->blockStartActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v0

    .line 50
    .local v1, "block":Z
    :goto_1
    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    move v0, v2

    :goto_2
    return v0
.end method

.method public static getDummyCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .line 179
    invoke-static/range {p0 .. p5}, Lcom/huawei/hsm/permission/ContentPermission;->getDummyCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static getFakeLocation(Ljava/lang/String;)Landroid/location/Location;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 170
    invoke-static {p0}, Lcom/huawei/hsm/permission/LocationPermission;->getFakeLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public static insertSendBroadcastRecord(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p0, "pkgName"    # Ljava/lang/String;
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 72
    new-instance v0, Lcom/huawei/hsm/permission/SendBroadcastPermission;

    invoke-direct {v0}, Lcom/huawei/hsm/permission/SendBroadcastPermission;-><init>()V

    .line 73
    .local v0, "per":Lcom/huawei/hsm/permission/SendBroadcastPermission;
    invoke-virtual {v0, p0, p1, p2}, Lcom/huawei/hsm/permission/SendBroadcastPermission;->insertSendBroadcastRecord(Ljava/lang/String;Ljava/lang/String;I)V

    .line 74
    return-void
.end method

.method public static notifyBackgroundMgr(Ljava/lang/String;IIII)V
    .locals 6
    .param p0, "pkgName"    # Ljava/lang/String;
    .param p1, "pid"    # I
    .param p2, "uidOf3RdApk"    # I
    .param p3, "permType"    # I
    .param p4, "permCfg"    # I

    .line 106
    invoke-static {}, Lcom/huawei/hsm/permission/BackgroundPermManager;->getInstance()Lcom/huawei/hsm/permission/BackgroundPermManager;

    move-result-object v0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/huawei/hsm/permission/BackgroundPermManager;->notifyBackgroundMgr(Ljava/lang/String;IIII)V

    .line 107
    return-void
.end method

.method public static setOutputFile(Landroid/media/MediaRecorder;)V
    .locals 5
    .param p0, "recorder"    # Landroid/media/MediaRecorder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 189
    sget-object v0, Lcom/huawei/hsm/permission/PermissionManager;->TAG:Ljava/lang/String;

    const-string v1, "set put File null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    new-instance v0, Ljava/io/FileOutputStream;

    const-string v1, "dev/null"

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 193
    .local v0, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/media/MediaRecorder;->setInterOutputFile(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    nop

    .line 199
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 202
    goto :goto_0

    .line 200
    :catch_0
    move-exception v1

    .line 201
    .local v1, "ioe":Ljava/io/IOException;
    sget-object v2, Lcom/huawei/hsm/permission/PermissionManager;->TAG:Ljava/lang/String;

    const-string v3, "close output file fail"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    .end local v1    # "ioe":Ljava/io/IOException;
    :goto_0
    return-void

    .line 197
    :catchall_0
    move-exception v1

    .line 199
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 202
    goto :goto_1

    .line 200
    :catch_1
    move-exception v2

    .line 201
    .local v2, "ioe":Ljava/io/IOException;
    sget-object v3, Lcom/huawei/hsm/permission/PermissionManager;->TAG:Ljava/lang/String;

    const-string v4, "close output file fail"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    .end local v2    # "ioe":Ljava/io/IOException;
    :goto_1
    throw v1
.end method
