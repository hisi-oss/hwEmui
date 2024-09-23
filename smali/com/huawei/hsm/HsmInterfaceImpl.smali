.class public Lcom/huawei/hsm/HsmInterfaceImpl;
.super Ljava/lang/Object;
.source "HsmInterfaceImpl.java"

# interfaces
.implements Landroid/hsm/HwSystemManager$HsmInterface;


# static fields
.field private static final RESTRICTED_NUM:I = 0x2

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    const-class v0, Lcom/huawei/hsm/HsmInterfaceImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/hsm/HsmInterfaceImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method

.method private getListStr(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 197
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-nez p1, :cond_0

    .line 198
    const-string v0, "NULL"

    return-object v0

    .line 200
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isSameUid(Landroid/content/pm/ApplicationInfo;)Z
    .locals 3
    .param p1, "applicationInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 190
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 191
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    return v0

    .line 193
    :cond_1
    return v0
.end method


# virtual methods
.method public allowOp(I)Z
    .locals 1
    .param p1, "type"    # I

    .line 99
    invoke-static {p1}, Lcom/huawei/hsm/permission/PermissionManager;->allowOp(I)Z

    move-result v0

    return v0
.end method

.method public allowOp(Landroid/content/Context;I)Z
    .locals 1
    .param p1, "cxt"    # Landroid/content/Context;
    .param p2, "type"    # I

    .line 103
    invoke-static {p1, p2}, Lcom/huawei/hsm/permission/PermissionManager;->allowOp(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method public allowOp(Landroid/content/Context;IZ)Z
    .locals 1
    .param p1, "cxt"    # Landroid/content/Context;
    .param p2, "type"    # I
    .param p3, "enable"    # Z

    .line 107
    invoke-static {p1, p2, p3}, Lcom/huawei/hsm/permission/PermissionManager;->allowOp(Landroid/content/Context;IZ)Z

    move-result v0

    return v0
.end method

.method public allowOp(Landroid/net/Uri;I)Z
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "action"    # I

    .line 75
    invoke-static {p1, p2}, Lcom/huawei/hsm/permission/PermissionManager;->allowOp(Landroid/net/Uri;I)Z

    move-result v0

    return v0
.end method

.method public allowOp(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Z
    .locals 1
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "smsBody"    # Ljava/lang/String;
    .param p3, "sentIntent"    # Landroid/app/PendingIntent;

    .line 79
    invoke-static {p1, p2, p3}, Lcom/huawei/hsm/permission/PermissionManager;->allowOp(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Z

    move-result v0

    return v0
.end method

.method public allowOp(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z
    .locals 1
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "smsBody"    # Ljava/lang/String;
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

    .line 83
    .local p3, "sentIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    invoke-static {p1, p2, p3}, Lcom/huawei/hsm/permission/PermissionManager;->allowOp(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public authenticateSmsSend(Landroid/hsm/HwSystemManager$Notifier;IILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "callback"    # Landroid/hsm/HwSystemManager$Notifier;
    .param p2, "callingUid"    # I
    .param p3, "smsId"    # I
    .param p4, "smsBody"    # Ljava/lang/String;
    .param p5, "smsAddress"    # Ljava/lang/String;

    .line 88
    invoke-static {p1, p2, p3, p4, p5}, Lcom/huawei/hsm/permission/PermissionManager;->authenticateSmsSend(Landroid/hsm/HwSystemManager$Notifier;IILjava/lang/String;Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public canSendBroadcast(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 66
    invoke-static {p1, p2}, Lcom/huawei/hsm/permission/PermissionManager;->canSendBroadcast(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public canStartActivity(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 61
    invoke-static {p1, p2}, Lcom/huawei/hsm/permission/PermissionManager;->canStartActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public getDummyCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "projection"    # [Ljava/lang/String;
    .param p4, "selection"    # Ljava/lang/String;
    .param p5, "selectionArgs"    # [Ljava/lang/String;
    .param p6, "sortOrder"    # Ljava/lang/String;

    .line 112
    invoke-static/range {p1 .. p6}, Lcom/huawei/hsm/permission/PermissionManager;->getDummyCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getFakeApplications(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .line 151
    .local p1, "installedList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 152
    .local v0, "fakeList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 153
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/ApplicationInfo;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 154
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 155
    .local v2, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    invoke-direct {p0, v2}, Lcom/huawei/hsm/HsmInterfaceImpl;->isSameUid(Landroid/content/pm/ApplicationInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 156
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    goto :goto_1

    .line 159
    .end local v2    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :cond_0
    goto :goto_0

    .line 160
    :cond_1
    :goto_1
    sget-object v2, Lcom/huawei/hsm/HsmInterfaceImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "List "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lcom/huawei/hsm/HsmInterfaceImpl;->getListStr(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    return-object v0
.end method

.method public getFakeLocation(Ljava/lang/String;)Landroid/location/Location;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 116
    invoke-static {p1}, Lcom/huawei/hsm/permission/PermissionManager;->getFakeLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public getFakePackages(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 137
    .local p1, "installedList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 138
    .local v0, "fakeList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 139
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/PackageInfo;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 140
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 141
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {p0, v3}, Lcom/huawei/hsm/HsmInterfaceImpl;->isSameUid(Landroid/content/pm/ApplicationInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 142
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    goto :goto_1

    .line 145
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_0
    goto :goto_0

    .line 146
    :cond_1
    :goto_1
    sget-object v2, Lcom/huawei/hsm/HsmInterfaceImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "List "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lcom/huawei/hsm/HsmInterfaceImpl;->getListStr(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    return-object v0
.end method

.method public getFakeResolveInfoList(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 165
    .local p1, "originalList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez p1, :cond_0

    .line 166
    return-object p1

    .line 168
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 169
    .local v0, "fakeList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 170
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/ResolveInfo;>;"
    const/4 v2, 0x0

    .line 171
    .local v2, "num":I
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 172
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 173
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 174
    .local v4, "activityInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v4, :cond_2

    .line 175
    iget-object v5, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {p0, v5}, Lcom/huawei/hsm/HsmInterfaceImpl;->isSameUid(Landroid/content/pm/ApplicationInfo;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 176
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 177
    :cond_1
    const/4 v5, 0x2

    if-ge v2, v5, :cond_2

    .line 178
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    add-int/lit8 v2, v2, 0x1

    .line 182
    .end local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v4    # "activityInfo":Landroid/content/pm/ActivityInfo;
    :cond_2
    :goto_1
    goto :goto_0

    .line 183
    :cond_3
    sget-object v3, Lcom/huawei/hsm/HsmInterfaceImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "List "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lcom/huawei/hsm/HsmInterfaceImpl;->getListStr(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    return-object v0
.end method

.method public insertSendBroadcastRecord(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .line 71
    invoke-static {p1, p2, p3}, Lcom/huawei/hsm/permission/PermissionManager;->insertSendBroadcastRecord(Ljava/lang/String;Ljava/lang/String;I)V

    .line 72
    return-void
.end method

.method public notifyBackgroundMgr(Ljava/lang/String;IIII)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uidOf3RdApk"    # I
    .param p4, "permType"    # I
    .param p5, "permCfg"    # I

    .line 94
    invoke-static {p1, p2, p3, p4, p5}, Lcom/huawei/hsm/permission/PermissionManager;->notifyBackgroundMgr(Ljava/lang/String;IIII)V

    .line 95
    return-void
.end method

.method public setOutputFile(Landroid/media/MediaRecorder;)V
    .locals 0
    .param p1, "recorder"    # Landroid/media/MediaRecorder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    invoke-static {p1}, Lcom/huawei/hsm/permission/PermissionManager;->setOutputFile(Landroid/media/MediaRecorder;)V

    .line 123
    return-void
.end method

.method public shouldInterceptAudience([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "people"    # [Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 130
    const/4 v0, 0x0

    return v0
.end method
