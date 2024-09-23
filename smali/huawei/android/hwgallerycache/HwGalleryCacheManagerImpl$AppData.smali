.class Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$AppData;
.super Ljava/lang/Object;
.source "HwGalleryCacheManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AppData"
.end annotation


# instance fields
.field public mAppName:Ljava/lang/String;

.field public mSupportVersion:Ljava/lang/String;

.field public mThreadName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "supportVersion"    # Ljava/lang/String;
    .param p3, "threadName"    # Ljava/lang/String;

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-object p1, p0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$AppData;->mAppName:Ljava/lang/String;

    .line 123
    iput-object p2, p0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$AppData;->mSupportVersion:Ljava/lang/String;

    .line 124
    iput-object p3, p0, Lhuawei/android/hwgallerycache/HwGalleryCacheManagerImpl$AppData;->mThreadName:Ljava/lang/String;

    .line 125
    return-void
.end method
