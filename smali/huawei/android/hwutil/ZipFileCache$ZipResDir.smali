.class Lhuawei/android/hwutil/ZipFileCache$ZipResDir;
.super Ljava/lang/Object;
.source "ZipFileCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhuawei/android/hwutil/ZipFileCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ZipResDir"
.end annotation


# instance fields
.field public mDensity:I

.field public mDir:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "density"    # I
    .param p2, "dir"    # Ljava/lang/String;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v0, -0x1

    iput v0, p0, Lhuawei/android/hwutil/ZipFileCache$ZipResDir;->mDensity:I

    .line 76
    const-string v0, ""

    iput-object v0, p0, Lhuawei/android/hwutil/ZipFileCache$ZipResDir;->mDir:Ljava/lang/String;

    .line 78
    iput p1, p0, Lhuawei/android/hwutil/ZipFileCache$ZipResDir;->mDensity:I

    .line 79
    iput-object p2, p0, Lhuawei/android/hwutil/ZipFileCache$ZipResDir;->mDir:Ljava/lang/String;

    .line 80
    return-void
.end method
