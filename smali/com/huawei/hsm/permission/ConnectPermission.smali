.class public Lcom/huawei/hsm/permission/ConnectPermission;
.super Ljava/lang/Object;
.source "ConnectPermission.java"


# static fields
.field public static final DEBUG:Z = false

.field public static final HOTALK_CLASS:Ljava/lang/String; = "com.hotalk.ui.chat.singleChat.SingleChatActivity"

.field public static final MMS_CLASS:Ljava/lang/String; = "com.android.mms.ui.ComposeMessageActivity"

.field public static final MMS_PACKAGE:Ljava/lang/String; = "com.huawei.message"

.field private static final ONE_MMS:I = 0x1

.field public static final PERMISSION_MMS:I = 0x2000

.field private static final SEND_MUTIL_MMS_STATUS:Ljava/lang/String; = "true"

.field public static final TAG:Ljava/lang/String;

.field public static final isControl:Z


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    const-class v0, Lcom/huawei/hsm/permission/ConnectPermission;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/hsm/permission/ConnectPermission;->TAG:Ljava/lang/String;

    .line 32
    const-string v0, "ro.config.hw_wirenetcontrol"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/huawei/hsm/permission/ConnectPermission;->isControl:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/huawei/hsm/permission/ConnectPermission;->mContext:Landroid/content/Context;

    .line 51
    return-void
.end method

.method public static allowOpenBt(Landroid/content/Context;)Z
    .locals 7
    .param p0, "cxt"    # Landroid/content/Context;

    .line 214
    const/4 v0, 0x1

    if-nez p0, :cond_0

    .line 215
    return v0

    .line 218
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 219
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string v2, "bluetooth_on"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 220
    .local v2, "old":I
    if-eq v2, v0, :cond_1

    .line 221
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 222
    .local v4, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 223
    .local v5, "pid":I
    const/high16 v6, 0x800000

    invoke-static {v6, v4, v5}, Lcom/huawei/hsm/permission/ConnectPermission;->isBlocked(III)Z

    move-result v6

    .line 224
    .local v6, "blocked":Z
    if-eqz v6, :cond_1

    .line 225
    return v3

    .line 228
    .end local v4    # "uid":I
    .end local v5    # "pid":I
    .end local v6    # "blocked":Z
    :cond_1
    return v0
.end method

.method public static allowOpenMobile(Landroid/content/Context;)Z
    .locals 7
    .param p0, "cxt"    # Landroid/content/Context;

    .line 233
    const/4 v0, 0x1

    if-nez p0, :cond_0

    .line 234
    return v0

    .line 237
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 238
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string v2, "mobile_data"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 239
    .local v2, "old":I
    if-eq v2, v0, :cond_1

    .line 240
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 241
    .local v4, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 242
    .local v5, "pid":I
    const/high16 v6, 0x400000

    invoke-static {v6, v4, v5}, Lcom/huawei/hsm/permission/ConnectPermission;->isBlocked(III)Z

    move-result v6

    .line 243
    .local v6, "blocked":Z
    if-eqz v6, :cond_1

    .line 244
    return v3

    .line 247
    .end local v4    # "uid":I
    .end local v5    # "pid":I
    .end local v6    # "blocked":Z
    :cond_1
    return v0
.end method

.method public static allowOpenWifi(Landroid/content/Context;)Z
    .locals 10
    .param p0, "cxt"    # Landroid/content/Context;

    .line 252
    const/4 v0, 0x1

    if-nez p0, :cond_0

    .line 253
    return v0

    .line 256
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 257
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string v2, "wifi_on"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 258
    .local v2, "old":I
    if-eq v2, v0, :cond_1

    .line 259
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 260
    .local v4, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 261
    .local v5, "pid":I
    const/high16 v6, 0x200000

    invoke-static {v6, v4, v5}, Lcom/huawei/hsm/permission/ConnectPermission;->isBlocked(III)Z

    move-result v6

    .line 262
    .local v6, "blocked":Z
    sget-object v7, Lcom/huawei/hsm/permission/ConnectPermission;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "allowOpenWifi blocked:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    if-eqz v6, :cond_1

    .line 264
    return v3

    .line 267
    .end local v4    # "uid":I
    .end local v5    # "pid":I
    .end local v6    # "blocked":Z
    :cond_1
    return v0
.end method

.method public static blockStartActivity(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .line 140
    sget-boolean v0, Lcom/huawei/hsm/permission/ConnectPermission;->isControl:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    invoke-static {p1}, Lcom/huawei/hsm/permission/ConnectPermission;->intentToMms(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 143
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v3, 0x2000

    invoke-static {v0, v3}, Lcom/huawei/hsm/permission/StubController;->checkPreBlock(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    return v2

    .line 147
    :cond_0
    new-instance v0, Lcom/huawei/hsm/permission/ConnectPermission;

    invoke-direct {v0, p0}, Lcom/huawei/hsm/permission/ConnectPermission;-><init>(Landroid/content/Context;)V

    .line 148
    .local v0, "wnp":Lcom/huawei/hsm/permission/ConnectPermission;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/huawei/hsm/permission/ConnectPermission;->isBlocked(III)Z

    move-result v3

    .line 149
    .local v3, "blocked":Z
    if-eqz v3, :cond_1

    .line 150
    return v2

    .line 153
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 154
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/high16 v4, 0x10000

    invoke-virtual {v2, p1, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 155
    .local v4, "ri":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-gtz v5, :cond_3

    .line 157
    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.huawei.message"

    const-string v7, "com.hotalk.ui.chat.singleChat.SingleChatActivity"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .local v5, "componentName":Landroid/content/ComponentName;
    :try_start_0
    invoke-virtual {v2, v5, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v6

    .line 161
    .local v6, "ai":Landroid/content/pm/ActivityInfo;
    if-eqz v6, :cond_2

    .line 162
    invoke-virtual {p1, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    .end local v6    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_2
    goto :goto_0

    .line 164
    :catch_0
    move-exception v6

    .line 165
    .local v6, "e":Ljava/lang/Exception;
    sget-object v7, Lcom/huawei/hsm/permission/ConnectPermission;->TAG:Ljava/lang/String;

    const-string v8, "can not found com.hotalk.ui.chat.singleChat.SingleChatActivity"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    .end local v5    # "componentName":Landroid/content/ComponentName;
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_0
    return v1

    .line 171
    .end local v0    # "wnp":Lcom/huawei/hsm/permission/ConnectPermission;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    .end local v3    # "blocked":Z
    .end local v4    # "ri":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_4
    sget-boolean v0, Lcom/huawei/hsm/permission/ConnectPermission;->isControl:Z

    if-eqz v0, :cond_5

    invoke-static {p1}, Lcom/huawei/hsm/permission/ConnectPermission;->intentToSms(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 173
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v3, 0x20

    invoke-static {v0, v3}, Lcom/huawei/hsm/permission/StubController;->checkPreBlock(II)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 174
    return v2

    .line 178
    :cond_5
    return v1
.end method

.method private static intentToMms(Landroid/content/Intent;)Z
    .locals 4
    .param p0, "intent"    # Landroid/content/Intent;

    .line 182
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 184
    return v2

    .line 187
    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 188
    .local v1, "componentName":Landroid/content/ComponentName;
    if-nez v1, :cond_1

    .line 189
    return v2

    .line 192
    :cond_1
    const-string v2, "com.android.mms.ui.ComposeMessageActivity"

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method private static intentToSms(Landroid/content/Intent;)Z
    .locals 3
    .param p0, "intent"    # Landroid/content/Intent;

    .line 197
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.SENDTO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.VIEW"

    .line 199
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 200
    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 201
    nop

    .line 200
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 201
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 202
    .local v1, "scheme":Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_3

    const-string v2, "sms"

    .line 203
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "smsto"

    .line 204
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 205
    :cond_2
    const/4 v2, 0x1

    return v2

    .line 208
    .end local v1    # "scheme":Ljava/lang/String;
    :cond_3
    const/4 v1, 0x0

    return v1
.end method

.method public static isBlocked(III)Z
    .locals 4
    .param p0, "type"    # I
    .param p1, "uid"    # I
    .param p2, "pid"    # I

    .line 64
    sget-boolean v0, Lcom/huawei/hsm/permission/ConnectPermission;->isControl:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 65
    return v1

    .line 68
    :cond_0
    invoke-static {p1}, Lcom/huawei/hsm/permission/StubController;->checkPrecondition(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 69
    invoke-static {p0, p1, p2}, Lcom/huawei/hsm/permission/ConnectPermission;->recordPermissionUsed(III)V

    .line 70
    return v1

    .line 73
    :cond_1
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/huawei/hsm/permission/StubController;->holdForGetPermissionSelection(IIILjava/lang/String;)I

    move-result v0

    .line 75
    .local v0, "remindResult":I
    if-nez v0, :cond_2

    .line 77
    return v1

    .line 78
    :cond_2
    const/4 v2, 0x1

    if-ne v2, v0, :cond_3

    .line 80
    return v1

    .line 81
    :cond_3
    const/4 v3, 0x2

    if-ne v3, v0, :cond_4

    .line 83
    return v2

    .line 86
    :cond_4
    return v1
.end method

.method private static recordPermissionUsed(III)V
    .locals 2
    .param p0, "type"    # I
    .param p1, "uid"    # I
    .param p2, "pid"    # I

    .line 55
    invoke-static {}, Lcom/huawei/hsm/permission/monitor/PermRecordHandler;->getHandleInstance()Lcom/huawei/hsm/permission/monitor/PermRecordHandler;

    move-result-object v0

    .line 56
    .local v0, "mPermRecHandler":Lcom/huawei/hsm/permission/monitor/PermRecordHandler;
    if-eqz v0, :cond_0

    .line 57
    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p0, v1}, Lcom/huawei/hsm/permission/monitor/PermRecordHandler;->accessPermission(IIILjava/lang/String;)V

    .line 59
    :cond_0
    return-void
.end method


# virtual methods
.method public isBlocked([B)Z
    .locals 9
    .param p1, "pduDataStream"    # [B

    .line 93
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 94
    .local v0, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 97
    .local v1, "pid":I
    sget-boolean v2, Lcom/huawei/hsm/permission/ConnectPermission;->isControl:Z

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 98
    return v3

    .line 102
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v4, 0x2000

    invoke-static {v2, v4}, Lcom/huawei/hsm/permission/StubController;->checkPreBlock(II)Z

    move-result v2

    const/4 v5, 0x1

    if-eqz v2, :cond_1

    .line 103
    return v5

    .line 108
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v2}, Lcom/huawei/hsm/permission/StubController;->checkPrecondition(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 110
    invoke-static {v4, v0, v1}, Lcom/huawei/hsm/permission/ConnectPermission;->recordPermissionUsed(III)V

    .line 111
    return v3

    .line 114
    :cond_2
    new-instance v2, Lcom/huawei/hsm/permission/minimms/PduParser;

    invoke-direct {v2, p1}, Lcom/huawei/hsm/permission/minimms/PduParser;-><init>([B)V

    .line 115
    .local v2, "pduParser":Lcom/huawei/hsm/permission/minimms/PduParser;
    const/4 v6, 0x0

    .line 116
    .local v6, "desAddr":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/huawei/hsm/permission/minimms/PduParser;->getTargetCount()I

    move-result v7

    .line 120
    .local v7, "targetCount":I
    if-ge v5, v7, :cond_3

    .line 121
    const-string v6, "true"

    .line 124
    :cond_3
    invoke-static {v4, v0, v1, v6}, Lcom/huawei/hsm/permission/StubController;->holdForGetPermissionSelection(IIILjava/lang/String;)I

    move-result v4

    .line 125
    .local v4, "remindResult":I
    if-nez v4, :cond_4

    .line 127
    return v3

    .line 128
    :cond_4
    if-ne v5, v4, :cond_5

    .line 130
    return v3

    .line 131
    :cond_5
    const/4 v8, 0x2

    if-ne v8, v4, :cond_6

    .line 133
    return v5

    .line 135
    :cond_6
    return v3
.end method
