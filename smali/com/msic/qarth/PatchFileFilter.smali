.class public Lcom/msic/qarth/PatchFileFilter;
.super Ljava/lang/Object;
.source "PatchFileFilter.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# static fields
.field private static final TAG:Ljava/lang/String; = "PatchFileFilter"


# instance fields
.field private final mAllMatchRegex:Ljava/lang/String;

.field private final mIgnoreVCodeMatchRegex:Ljava/lang/String;

.field private final mIgnoreVNameMatchRegex:Ljava/lang/String;

.field private final mMathRegex:Ljava/lang/String;

.field private mPatchFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/msic/qarth/PatchFile;",
            ">;"
        }
    .end annotation
.end field

.field private mRegulars:[Ljava/lang/String;

.field private mVersionCode:I

.field private mVersionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/msic/qarth/PatchFileFilter;->mVersionName:Ljava/lang/String;

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/msic/qarth/PatchFileFilter;->mVersionCode:I

    .line 25
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/msic/qarth/PatchFileFilter;->mPatchFiles:Ljava/util/List;

    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(.*)_("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/msic/qarth/PatchFileFilter;->mVersionName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")_{0,1}(.*)\\.qarth$"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/msic/qarth/PatchFileFilter;->mIgnoreVCodeMatchRegex:Ljava/lang/String;

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(.*)_("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/msic/qarth/PatchFileFilter;->mVersionCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")_{0,1}(.*)\\.qarth$"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/msic/qarth/PatchFileFilter;->mIgnoreVNameMatchRegex:Ljava/lang/String;

    .line 29
    const-string v1, "(.*)_all_{0,1}(.*)\\.qarth$"

    iput-object v1, p0, Lcom/msic/qarth/PatchFileFilter;->mAllMatchRegex:Ljava/lang/String;

    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(.*)_("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/msic/qarth/PatchFileFilter;->mVersionName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")_("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/msic/qarth/PatchFileFilter;->mVersionCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")_{0,1}(.*)\\.qarth$"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/msic/qarth/PatchFileFilter;->mMathRegex:Ljava/lang/String;

    .line 32
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "(.*)_all_{0,1}(.*)\\.qarth$"

    aput-object v2, v1, v0

    iget-object v0, p0, Lcom/msic/qarth/PatchFileFilter;->mIgnoreVCodeMatchRegex:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v0, v1, v2

    iget-object v0, p0, Lcom/msic/qarth/PatchFileFilter;->mIgnoreVNameMatchRegex:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v0, v1, v2

    iget-object v0, p0, Lcom/msic/qarth/PatchFileFilter;->mMathRegex:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v0, v1, v2

    iput-object v1, p0, Lcom/msic/qarth/PatchFileFilter;->mRegulars:[Ljava/lang/String;

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageInfo;)V
    .locals 3
    .param p1, "pkgInfo"    # Landroid/content/pm/PackageInfo;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/msic/qarth/PatchFileFilter;->mVersionName:Ljava/lang/String;

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/msic/qarth/PatchFileFilter;->mVersionCode:I

    .line 25
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/msic/qarth/PatchFileFilter;->mPatchFiles:Ljava/util/List;

    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(.*)_("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/msic/qarth/PatchFileFilter;->mVersionName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")_{0,1}(.*)\\.qarth$"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/msic/qarth/PatchFileFilter;->mIgnoreVCodeMatchRegex:Ljava/lang/String;

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(.*)_("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/msic/qarth/PatchFileFilter;->mVersionCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")_{0,1}(.*)\\.qarth$"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/msic/qarth/PatchFileFilter;->mIgnoreVNameMatchRegex:Ljava/lang/String;

    .line 29
    const-string v1, "(.*)_all_{0,1}(.*)\\.qarth$"

    iput-object v1, p0, Lcom/msic/qarth/PatchFileFilter;->mAllMatchRegex:Ljava/lang/String;

    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(.*)_("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/msic/qarth/PatchFileFilter;->mVersionName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")_("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/msic/qarth/PatchFileFilter;->mVersionCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")_{0,1}(.*)\\.qarth$"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/msic/qarth/PatchFileFilter;->mMathRegex:Ljava/lang/String;

    .line 32
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "(.*)_all_{0,1}(.*)\\.qarth$"

    aput-object v2, v1, v0

    iget-object v0, p0, Lcom/msic/qarth/PatchFileFilter;->mIgnoreVCodeMatchRegex:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v0, v1, v2

    iget-object v0, p0, Lcom/msic/qarth/PatchFileFilter;->mIgnoreVNameMatchRegex:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v0, v1, v2

    iget-object v0, p0, Lcom/msic/qarth/PatchFileFilter;->mMathRegex:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v0, v1, v2

    iput-object v1, p0, Lcom/msic/qarth/PatchFileFilter;->mRegulars:[Ljava/lang/String;

    .line 48
    iget v0, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v0, p0, Lcom/msic/qarth/PatchFileFilter;->mVersionCode:I

    .line 49
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v0, p0, Lcom/msic/qarth/PatchFileFilter;->mVersionName:Ljava/lang/String;

    .line 50
    return-void
.end method

.method private matchPattern(Ljava/io/File;Ljava/lang/String;)Z
    .locals 6
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "fileName"    # Ljava/lang/String;

    .line 61
    sget-boolean v0, Lcom/msic/qarth/Constants;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 62
    const-string v0, "PatchFileFilter"

    const-string v1, "matchPattern"

    invoke-static {v0, v1}, Lcom/msic/qarth/QarthLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :cond_0
    new-instance v0, Lcom/msic/qarth/PatchFile$Builder;

    invoke-direct {v0}, Lcom/msic/qarth/PatchFile$Builder;-><init>()V

    .line 68
    .local v0, "builder":Lcom/msic/qarth/PatchFile$Builder;
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/msic/qarth/PatchFile$Builder;->setPath(Ljava/lang/String;)Lcom/msic/qarth/PatchFile$Builder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    goto :goto_0

    .line 69
    :catch_0
    move-exception v1

    .line 70
    .local v1, "ioEx":Ljava/io/IOException;
    const-string v2, "PatchFileFilter"

    const-string v3, "get patch file path exception"

    invoke-static {v2, v3}, Lcom/msic/qarth/QarthLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .end local v1    # "ioEx":Ljava/io/IOException;
    :goto_0
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_1
    iget-object v3, p0, Lcom/msic/qarth/PatchFileFilter;->mRegulars:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 73
    iget-object v3, p0, Lcom/msic/qarth/PatchFileFilter;->mRegulars:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 74
    .local v3, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v3, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 75
    .local v4, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 76
    const/4 v1, 0x2

    const/4 v5, 0x1

    packed-switch v2, :pswitch_data_0

    goto :goto_2

    .line 98
    :pswitch_0
    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/msic/qarth/PatchFile$Builder;->setFileName(Ljava/lang/String;)Lcom/msic/qarth/PatchFile$Builder;

    move-result-object v5

    .line 99
    invoke-virtual {v4, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/msic/qarth/PatchFile$Builder;->setVersionName(Ljava/lang/String;)Lcom/msic/qarth/PatchFile$Builder;

    move-result-object v1

    const/4 v5, 0x3

    .line 100
    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/msic/qarth/PatchFile$Builder;->setVersionCode(Ljava/lang/String;)Lcom/msic/qarth/PatchFile$Builder;

    move-result-object v1

    .line 101
    invoke-virtual {v1}, Lcom/msic/qarth/PatchFile$Builder;->build()Lcom/msic/qarth/PatchFile;

    move-result-object v1

    .line 102
    .local v1, "patchFile":Lcom/msic/qarth/PatchFile;
    iget-object v5, p0, Lcom/msic/qarth/PatchFileFilter;->mPatchFiles:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    goto :goto_2

    .line 91
    .end local v1    # "patchFile":Lcom/msic/qarth/PatchFile;
    :pswitch_1
    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/msic/qarth/PatchFile$Builder;->setFileName(Ljava/lang/String;)Lcom/msic/qarth/PatchFile$Builder;

    move-result-object v5

    .line 92
    invoke-virtual {v4, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/msic/qarth/PatchFile$Builder;->setVersionName(Ljava/lang/String;)Lcom/msic/qarth/PatchFile$Builder;

    move-result-object v1

    .line 93
    invoke-virtual {v1}, Lcom/msic/qarth/PatchFile$Builder;->build()Lcom/msic/qarth/PatchFile;

    move-result-object v1

    .line 94
    .restart local v1    # "patchFile":Lcom/msic/qarth/PatchFile;
    iget-object v5, p0, Lcom/msic/qarth/PatchFileFilter;->mPatchFiles:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    goto :goto_2

    .line 84
    .end local v1    # "patchFile":Lcom/msic/qarth/PatchFile;
    :pswitch_2
    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/msic/qarth/PatchFile$Builder;->setFileName(Ljava/lang/String;)Lcom/msic/qarth/PatchFile$Builder;

    move-result-object v5

    .line 85
    invoke-virtual {v4, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/msic/qarth/PatchFile$Builder;->setVersionCode(Ljava/lang/String;)Lcom/msic/qarth/PatchFile$Builder;

    move-result-object v1

    .line 86
    invoke-virtual {v1}, Lcom/msic/qarth/PatchFile$Builder;->build()Lcom/msic/qarth/PatchFile;

    move-result-object v1

    .line 87
    .restart local v1    # "patchFile":Lcom/msic/qarth/PatchFile;
    iget-object v5, p0, Lcom/msic/qarth/PatchFileFilter;->mPatchFiles:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    goto :goto_2

    .line 78
    .end local v1    # "patchFile":Lcom/msic/qarth/PatchFile;
    :pswitch_3
    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/msic/qarth/PatchFile$Builder;->setFileName(Ljava/lang/String;)Lcom/msic/qarth/PatchFile$Builder;

    move-result-object v1

    .line 79
    invoke-virtual {v1}, Lcom/msic/qarth/PatchFile$Builder;->build()Lcom/msic/qarth/PatchFile;

    move-result-object v1

    .line 80
    .restart local v1    # "patchFile":Lcom/msic/qarth/PatchFile;
    iget-object v5, p0, Lcom/msic/qarth/PatchFileFilter;->mPatchFiles:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    nop

    .line 108
    .end local v1    # "patchFile":Lcom/msic/qarth/PatchFile;
    :goto_2
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    return v1

    .line 72
    .end local v3    # "pattern":Ljava/util/regex/Pattern;
    .end local v4    # "matcher":Ljava/util/regex/Matcher;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 111
    .end local v2    # "i":I
    :cond_2
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "filename"    # Ljava/lang/String;

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/msic/qarth/PatchFileFilter;->matchPattern(Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getPatchFiles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/msic/qarth/PatchFile;",
            ">;"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/msic/qarth/PatchFileFilter;->mPatchFiles:Ljava/util/List;

    return-object v0
.end method
