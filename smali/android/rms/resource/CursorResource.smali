.class public final Landroid/rms/resource/CursorResource;
.super Landroid/rms/HwSysCountRes;
.source "CursorResource.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RMS.CursorResource"

.field private static mCursorResource:Landroid/rms/resource/CursorResource;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const/4 v0, 0x0

    sput-object v0, Landroid/rms/resource/CursorResource;->mCursorResource:Landroid/rms/resource/CursorResource;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 47
    const-string v0, "RMS.CursorResource"

    const/16 v1, 0x10

    invoke-direct {p0, v1, v0}, Landroid/rms/HwSysCountRes;-><init>(ILjava/lang/String;)V

    .line 48
    return-void
.end method

.method public static declared-synchronized getInstance()Landroid/rms/resource/CursorResource;
    .locals 3

    const-class v0, Landroid/rms/resource/CursorResource;

    monitor-enter v0

    .line 51
    :try_start_0
    sget-object v1, Landroid/rms/resource/CursorResource;->mCursorResource:Landroid/rms/resource/CursorResource;

    if-nez v1, :cond_0

    .line 52
    new-instance v1, Landroid/rms/resource/CursorResource;

    invoke-direct {v1}, Landroid/rms/resource/CursorResource;-><init>()V

    sput-object v1, Landroid/rms/resource/CursorResource;->mCursorResource:Landroid/rms/resource/CursorResource;

    .line 53
    sget-boolean v1, Landroid/rms/utils/Utils;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "RMS.CursorResource"

    const-string v2, "getInstance create new resource"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_0
    sget-object v1, Landroid/rms/resource/CursorResource;->mCursorResource:Landroid/rms/resource/CursorResource;

    invoke-virtual {v1}, Landroid/rms/resource/CursorResource;->getConfig()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 56
    sget-boolean v1, Landroid/rms/utils/Utils;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "RMS.CursorResource"

    const-string v2, "getInstance getConfig"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_1
    sget-object v1, Landroid/rms/resource/CursorResource;->mCursorResource:Landroid/rms/resource/CursorResource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 59
    :cond_2
    :try_start_1
    sget-boolean v1, Landroid/rms/utils/Utils;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "RMS.CursorResource"

    const-string v2, "RMS not ready!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    :cond_3
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 50
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private parsePackageNameFromToken(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "token"    # Ljava/lang/String;

    .line 94
    const-string v0, ""

    .line 95
    .local v0, "pkgName":Ljava/lang/String;
    if-eqz p1, :cond_0

    const-string v1, ";"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "-"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    const-string v1, ";"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, "list":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v3, v1, v2

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 98
    .local v3, "n":I
    if-lez v3, :cond_0

    .line 99
    aget-object v4, v1, v2

    invoke-virtual {v4, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 102
    .end local v1    # "list":[Ljava/lang/String;
    .end local v3    # "n":I
    :cond_0
    sget-boolean v1, Landroid/rms/utils/Utils;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "RMS.CursorResource"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current parsed pkgName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " from token:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_1
    return-object v0
.end method


# virtual methods
.method public acquire(ILjava/lang/String;II)I
    .locals 5
    .param p1, "callingUid"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "processTpye"    # I
    .param p4, "count"    # I

    .line 69
    const/4 v0, 0x1

    .line 74
    .local v0, "strategy":I
    const/4 v1, 0x0

    invoke-super {p0, p1, v1, p3}, Landroid/rms/HwSysCountRes;->getTypeId(ILjava/lang/String;I)I

    move-result v1

    .line 75
    .local v1, "typeID":I
    iget-object v2, p0, Landroid/rms/resource/CursorResource;->mResourceConfig:[Landroid/rms/config/ResourceConfig;

    if-eqz v2, :cond_2

    invoke-virtual {p0, p1, p2, v1, p4}, Landroid/rms/resource/CursorResource;->isResourceCountOverload(ILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 76
    invoke-direct {p0, p2}, Landroid/rms/resource/CursorResource;->parsePackageNameFromToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/rms/resource/CursorResource;->isInWhiteList(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 77
    iget-object v2, p0, Landroid/rms/resource/CursorResource;->mResourceConfig:[Landroid/rms/config/ResourceConfig;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/rms/config/ResourceConfig;->getResourceStrategy()I

    move-result v0

    .line 78
    sget-boolean v2, Landroid/rms/utils/Utils;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "RMS.CursorResource"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getOverloadStrategy CountOverload = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 80
    sget-boolean v2, Landroid/rms/utils/Utils;->DEBUG:Z

    if-nez v2, :cond_1

    sget-boolean v2, Landroid/rms/utils/Utils;->HWFLOW:Z

    if-eqz v2, :cond_2

    .line 81
    :cond_1
    const-string v2, "RMS.CursorResource"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "process uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " open too many cursor "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_2
    return v0
.end method

.method protected needUpdateWhiteList()Z
    .locals 1

    .line 90
    const/4 v0, 0x0

    return v0
.end method
