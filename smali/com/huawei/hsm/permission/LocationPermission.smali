.class public Lcom/huawei/hsm/permission/LocationPermission;
.super Ljava/lang/Object;
.source "LocationPermission.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LocationPermission"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public static getFakeLocation(Ljava/lang/String;)Landroid/location/Location;
    .locals 7
    .param p0, "name"    # Ljava/lang/String;

    .line 53
    const-wide/16 v0, 0x0

    .line 54
    .local v0, "FAKE_LONGITUDE":D
    const-wide/16 v2, 0x0

    .line 55
    .local v2, "FAKE_LATITUDE":D
    new-instance v4, Landroid/location/Location;

    invoke-direct {v4, p0}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 56
    .local v4, "loc":Landroid/location/Location;
    const-wide/16 v5, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/location/Location;->setLongitude(D)V

    .line 57
    invoke-virtual {v4, v5, v6}, Landroid/location/Location;->setLatitude(D)V

    .line 58
    return-object v4
.end method

.method private recordPermissionUsed(II)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "pid"    # I

    .line 23
    invoke-static {}, Lcom/huawei/hsm/permission/monitor/PermRecordHandler;->getHandleInstance()Lcom/huawei/hsm/permission/monitor/PermRecordHandler;

    move-result-object v0

    .line 24
    .local v0, "mPermRecHandler":Lcom/huawei/hsm/permission/monitor/PermRecordHandler;
    if-eqz v0, :cond_0

    .line 25
    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/huawei/hsm/permission/monitor/PermRecordHandler;->accessPermission(IIILjava/lang/String;)V

    .line 27
    :cond_0
    return-void
.end method


# virtual methods
.method public isLocationBlocked()Z
    .locals 5

    .line 31
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 32
    .local v0, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 34
    .local v1, "pid":I
    invoke-static {v0}, Lcom/huawei/hsm/permission/StubController;->checkPrecondition(I)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 35
    invoke-direct {p0, v0, v1}, Lcom/huawei/hsm/permission/LocationPermission;->recordPermissionUsed(II)V

    .line 36
    return v3

    .line 39
    :cond_0
    const/16 v2, 0x8

    const/4 v4, 0x0

    invoke-static {v2, v0, v1, v4}, Lcom/huawei/hsm/permission/StubController;->holdForGetPermissionSelection(IIILjava/lang/String;)I

    move-result v2

    .line 42
    .local v2, "selectionResult":I
    if-nez v2, :cond_1

    .line 43
    return v3

    .line 46
    :cond_1
    const/4 v4, 0x2

    if-ne v4, v2, :cond_2

    const/4 v3, 0x1

    nop

    :cond_2
    return v3
.end method
