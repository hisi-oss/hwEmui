.class public Lcom/huawei/hsm/permission/CallPermission;
.super Ljava/lang/Object;
.source "CallPermission.java"


# static fields
.field private static final BEGIN_NUMS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "CallPermission"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 27

    .line 20
    const-string v0, "*72"

    const-string v1, "*90"

    const-string v2, "*92"

    const-string v3, "*68"

    const-string v4, "**62*"

    const-string v5, "*62*"

    const-string v6, "%2362%23"

    const-string v7, "**61*"

    const-string v8, "*61*"

    const-string v9, "%2361%23"

    const-string v10, "**67*"

    const-string v11, "*67*"

    const-string v12, "%2367%23"

    const-string v13, "**21*"

    const-string v14, "*21*"

    const-string v15, "%2321%23"

    const-string v16, "*720"

    const-string v17, "*920"

    const-string v18, "*680"

    const-string v19, "*74"

    const-string v20, "*730"

    const-string v21, "%23%2362%23"

    const-string v22, "%23%2361%23"

    const-string v23, "%23%2367%23"

    const-string v24, "%23%2321%23"

    const-string v25, "*900"

    const-string v26, "%23%23002%23"

    filled-new-array/range {v0 .. v26}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/hsm/permission/CallPermission;->BEGIN_NUMS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/huawei/hsm/permission/CallPermission;->mContext:Landroid/content/Context;

    .line 27
    return-void
.end method

.method public static blockStartActivity(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .line 98
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.CALL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    new-instance v1, Lcom/huawei/hsm/permission/CallPermission;

    invoke-direct {v1, p0}, Lcom/huawei/hsm/permission/CallPermission;-><init>(Landroid/content/Context;)V

    .line 104
    .local v1, "callPermission":Lcom/huawei/hsm/permission/CallPermission;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v1, p1, v2, v3}, Lcom/huawei/hsm/permission/CallPermission;->isCallBlocked(Landroid/content/Intent;II)Z

    move-result v2

    return v2

    .line 105
    .end local v1    # "callPermission":Lcom/huawei/hsm/permission/CallPermission;
    :cond_0
    invoke-static {p1}, Lcom/huawei/hsm/permission/CallPermission;->intentToDial(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 106
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x40

    invoke-static {v1, v2}, Lcom/huawei/hsm/permission/StubController;->checkPreBlock(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 107
    const/4 v1, 0x1

    return v1

    .line 111
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private getCallType(Ljava/lang/String;)I
    .locals 5
    .param p1, "tel"    # Ljava/lang/String;

    .line 41
    sget-object v0, Lcom/huawei/hsm/permission/CallPermission;->BEGIN_NUMS:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 42
    .local v3, "head":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 43
    const/high16 v0, 0x100000

    return v0

    .line 41
    .end local v3    # "head":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 46
    :cond_1
    const/16 v0, 0x40

    return v0
.end method

.method private static intentToDial(Landroid/content/Intent;)Z
    .locals 4
    .param p0, "intent"    # Landroid/content/Intent;

    .line 116
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.DIAL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 118
    return v2

    .line 119
    :cond_0
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 120
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 121
    nop

    .line 120
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 121
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 122
    .local v1, "scheme":Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_2

    const-string v3, "tel"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 123
    return v2

    .line 126
    .end local v1    # "scheme":Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method private recordPermissionUsed(III)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "permissionType"    # I

    .line 31
    invoke-static {}, Lcom/huawei/hsm/permission/monitor/PermRecordHandler;->getHandleInstance()Lcom/huawei/hsm/permission/monitor/PermRecordHandler;

    move-result-object v0

    .line 32
    .local v0, "mPermRecHandler":Lcom/huawei/hsm/permission/monitor/PermRecordHandler;
    if-eqz v0, :cond_0

    .line 33
    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/huawei/hsm/permission/monitor/PermRecordHandler;->accessPermission(IIILjava/lang/String;)V

    .line 35
    :cond_0
    return-void
.end method


# virtual methods
.method public isCallBlocked(Landroid/content/Intent;II)Z
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "uid"    # I
    .param p3, "pid"    # I

    .line 52
    const/4 v0, 0x0

    .line 53
    .local v0, "permissionType":I
    const/4 v1, 0x0

    .line 54
    .local v1, "tel":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    .line 55
    .local v2, "uriStr":Ljava/lang/String;
    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 56
    const/16 v4, 0x3a

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    add-int/2addr v4, v3

    .line 57
    .local v4, "start":I
    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 58
    invoke-direct {p0, v1}, Lcom/huawei/hsm/permission/CallPermission;->getCallType(Ljava/lang/String;)I

    move-result v0

    .line 63
    .end local v4    # "start":I
    :cond_0
    const/16 v4, 0x40

    invoke-static {p2, v4}, Lcom/huawei/hsm/permission/StubController;->checkPreBlock(II)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 64
    return v3

    .line 68
    :cond_1
    invoke-static {p2}, Lcom/huawei/hsm/permission/StubController;->checkPrecondition(I)Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_2

    .line 69
    invoke-direct {p0, p2, p3, v0}, Lcom/huawei/hsm/permission/CallPermission;->recordPermissionUsed(III)V

    .line 70
    return v6

    .line 73
    :cond_2
    iget-object v5, p0, Lcom/huawei/hsm/permission/CallPermission;->mContext:Landroid/content/Context;

    invoke-static {v5, v4}, Lcom/huawei/hsm/permission/StubController;->isGlobalSwitchOn(Landroid/content/Context;I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 75
    return v6

    .line 78
    :cond_3
    if-nez v2, :cond_4

    .line 79
    const-string v3, "CallPermission"

    const-string v4, "error! uriStr is null!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    return v6

    .line 83
    :cond_4
    const/4 v4, 0x0

    .line 85
    .local v4, "selectionResult":I
    invoke-static {v0, p2, p3, v1}, Lcom/huawei/hsm/permission/StubController;->holdForGetPermissionSelection(IIILjava/lang/String;)I

    move-result v4

    .line 86
    if-nez v4, :cond_5

    .line 87
    const-string v3, "CallPermission"

    const-string v5, "CallPermission holdForGetPermissionSelection error"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    return v6

    .line 91
    :cond_5
    const/4 v5, 0x2

    if-ne v5, v4, :cond_6

    goto :goto_0

    :cond_6
    move v3, v6

    :goto_0
    return v3
.end method
