.class public Lhuawei/android/security/fileprotect/HwaaPackageInfo;
.super Ljava/lang/Object;
.source "HwaaPackageInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhuawei/android/security/fileprotect/HwaaPackageInfo$HwaaPolicy;,
        Lhuawei/android/security/fileprotect/HwaaPackageInfo$Builder;
    }
.end annotation


# static fields
.field private static final INVALID_USERID:I = -0x1

.field private static final POLICY_IS_SUBDIRS_FALSE:Ljava/lang/String; = "false"

.field private static final POLICY_IS_SUBDIRS_TRUE:Ljava/lang/String; = "true"

.field private static final POLICY_KEY_EXT:Ljava/lang/String; = "ext"

.field private static final POLICY_KEY_PATH:Ljava/lang/String; = "path"

.field private static final POLICY_KEY_SUBDIRS:Ljava/lang/String; = "subdirs"

.field private static final TAG:Ljava/lang/String; = "HwaaPackageInfo"


# instance fields
.field private mAppId:I

.field private mPackageName:Ljava/lang/String;

.field private mProtectPolicys:Ljava/lang/String;

.field private mSharedUserId:Ljava/lang/String;


# direct methods
.method private constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "appId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "shareUid"    # Ljava/lang/String;
    .param p4, "protectPolicys"    # Ljava/lang/String;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput p1, p0, Lhuawei/android/security/fileprotect/HwaaPackageInfo;->mAppId:I

    .line 58
    iput-object p2, p0, Lhuawei/android/security/fileprotect/HwaaPackageInfo;->mPackageName:Ljava/lang/String;

    .line 59
    iput-object p3, p0, Lhuawei/android/security/fileprotect/HwaaPackageInfo;->mSharedUserId:Ljava/lang/String;

    .line 60
    iput-object p4, p0, Lhuawei/android/security/fileprotect/HwaaPackageInfo;->mProtectPolicys:Ljava/lang/String;

    .line 61
    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lhuawei/android/security/fileprotect/HwaaPackageInfo$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Ljava/lang/String;
    .param p5, "x4"    # Lhuawei/android/security/fileprotect/HwaaPackageInfo$1;

    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Lhuawei/android/security/fileprotect/HwaaPackageInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
