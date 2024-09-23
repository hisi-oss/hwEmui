.class public Lhuawei/android/hwdrm/HwDrmManagerImpl;
.super Ljava/lang/Object;
.source "HwDrmManagerImpl.java"

# interfaces
.implements Landroid/common/HwDrmManager;


# static fields
.field private static final HW_DRM_FL_ONLY_OPEN:Z

.field private static final HW_DRM_OPEN:Z

.field private static mHwDrmManager:Landroid/common/HwDrmManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    const/4 v0, 0x0

    sput-object v0, Lhuawei/android/hwdrm/HwDrmManagerImpl;->mHwDrmManager:Landroid/common/HwDrmManager;

    .line 31
    const-string v0, "true"

    const-string v1, "ro.huawei.cust.oma_drm"

    .line 32
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lhuawei/android/hwdrm/HwDrmManagerImpl;->HW_DRM_OPEN:Z

    .line 33
    const-string v0, "true"

    const-string v1, "ro.huawei.cust.drm.fl_only"

    .line 34
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lhuawei/android/hwdrm/HwDrmManagerImpl;->HW_DRM_FL_ONLY_OPEN:Z

    .line 33
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefault()Landroid/common/HwDrmManager;
    .locals 1

    .line 38
    sget-object v0, Lhuawei/android/hwdrm/HwDrmManagerImpl;->mHwDrmManager:Landroid/common/HwDrmManager;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lhuawei/android/hwdrm/HwDrmManagerImpl;

    invoke-direct {v0}, Lhuawei/android/hwdrm/HwDrmManagerImpl;-><init>()V

    sput-object v0, Lhuawei/android/hwdrm/HwDrmManagerImpl;->mHwDrmManager:Landroid/common/HwDrmManager;

    .line 41
    :cond_0
    sget-object v0, Lhuawei/android/hwdrm/HwDrmManagerImpl;->mHwDrmManager:Landroid/common/HwDrmManager;

    return-object v0
.end method

.method public static supportDrmFlOnly()Z
    .locals 1

    .line 49
    sget-boolean v0, Lhuawei/android/hwdrm/HwDrmManagerImpl;->HW_DRM_OPEN:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lhuawei/android/hwdrm/HwDrmManagerImpl;->HW_DRM_FL_ONLY_OPEN:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static supportHwOmaDrm()Z
    .locals 1

    .line 45
    sget-boolean v0, Lhuawei/android/hwdrm/HwDrmManagerImpl;->HW_DRM_OPEN:Z

    return v0
.end method


# virtual methods
.method public addHwDrmFileType()V
    .locals 3

    .line 53
    sget-boolean v0, Lhuawei/android/hwdrm/HwDrmManagerImpl;->HW_DRM_OPEN:Z

    if-eqz v0, :cond_0

    .line 54
    const-string v0, "DCF"

    const/16 v1, 0x33

    const-string v2, "application/vnd.oma.drm.content"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->hwAddFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 56
    :cond_0
    return-void
.end method

.method public newDrmBitmapRegionDecoderInstance(Ljava/io/FileInputStream;Ljava/lang/String;Z)Landroid/graphics/BitmapRegionDecoder;
    .locals 1
    .param p1, "stream"    # Ljava/io/FileInputStream;
    .param p2, "pathName"    # Ljava/lang/String;
    .param p3, "isShareable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const-string v0, ".dcf"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {p1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0, p3}, Landroid/graphics/BitmapRegionDecoder;->hwNewInstance(Ljava/io/FileDescriptor;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v0

    return-object v0

    .line 85
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public setNtpTime(JJ)V
    .locals 5
    .param p1, "cachedNtpTime"    # J
    .param p3, "cachedElapsedTime"    # J

    .line 59
    const-string v0, "net.ntp.time"

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 60
    .local v3, "securityTime":J
    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    cmp-long v0, p1, v1

    if-lez v0, :cond_0

    .line 61
    const-string v0, "net.ntp.time"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v0, "net.ntp.timereference"

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :cond_0
    return-void
.end method

.method public updateOmaMimeType(Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;

    .line 67
    if-eqz p2, :cond_1

    .line 68
    const-string v0, "scanned"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 69
    if-eqz p1, :cond_1

    .line 70
    const-string v0, ".dm"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    const-string v0, "mimetype"

    const-string v1, "application/vnd.oma.drm.message"

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 72
    :cond_0
    const-string v0, ".dcf"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    const-string v0, "mimetype"

    const-string v1, "application/vnd.oma.drm.content"

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :cond_1
    :goto_0
    return-void
.end method
