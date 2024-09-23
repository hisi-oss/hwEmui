.class Lhuawei/android/security/securityprofile/PolicyExtractor$ApkInfo;
.super Ljava/lang/Object;
.source "PolicyExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhuawei/android/security/securityprofile/PolicyExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ApkInfo"
.end annotation


# instance fields
.field centralDirOffset:J

.field eocdBuffer:Ljava/nio/ByteBuffer;

.field eocdOffset:J

.field originalEocdBuffer:Ljava/nio/ByteBuffer;

.field policyBlock:[B

.field signingBlockBuffer:Ljava/nio/ByteBuffer;

.field signingBlockOffset:J


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lhuawei/android/security/securityprofile/PolicyExtractor$ApkInfo;->signingBlockOffset:J

    .line 41
    const/4 v2, 0x0

    iput-object v2, p0, Lhuawei/android/security/securityprofile/PolicyExtractor$ApkInfo;->signingBlockBuffer:Ljava/nio/ByteBuffer;

    .line 42
    iput-object v2, p0, Lhuawei/android/security/securityprofile/PolicyExtractor$ApkInfo;->policyBlock:[B

    .line 43
    iput-wide v0, p0, Lhuawei/android/security/securityprofile/PolicyExtractor$ApkInfo;->centralDirOffset:J

    .line 44
    iput-wide v0, p0, Lhuawei/android/security/securityprofile/PolicyExtractor$ApkInfo;->eocdOffset:J

    .line 45
    iput-object v2, p0, Lhuawei/android/security/securityprofile/PolicyExtractor$ApkInfo;->eocdBuffer:Ljava/nio/ByteBuffer;

    .line 46
    iput-object v2, p0, Lhuawei/android/security/securityprofile/PolicyExtractor$ApkInfo;->originalEocdBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method synthetic constructor <init>(Lhuawei/android/security/securityprofile/PolicyExtractor$1;)V
    .locals 0
    .param p1, "x0"    # Lhuawei/android/security/securityprofile/PolicyExtractor$1;

    .line 39
    invoke-direct {p0}, Lhuawei/android/security/securityprofile/PolicyExtractor$ApkInfo;-><init>()V

    return-void
.end method
