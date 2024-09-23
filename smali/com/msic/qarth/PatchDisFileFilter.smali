.class public Lcom/msic/qarth/PatchDisFileFilter;
.super Ljava/lang/Object;
.source "PatchDisFileFilter.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# static fields
.field private static final SYSTEM_DISABLE_PATCH_OVERLAY_ROOT:Ljava/lang/String; = "/data/hotpatch/fwkpatchdir/system/"

.field private static final TAG:Ljava/lang/String; = "PatchDisFileFilter"


# instance fields
.field private mDisPatchFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/msic/qarth/PatchFile;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisableAllMatchRegex:Ljava/lang/String;

.field private final mDisableIgnoreVCodeMatchRegex:Ljava/lang/String;

.field private final mDisableIgnoreVNameMatchRegex:Ljava/lang/String;

.field private final mDisableMathRegex:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;

.field private mRegulars:[Ljava/lang/String;

.field private mVersionCode:I

.field private mVersionName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageInfo;Ljava/lang/String;)V
    .locals 3
    .param p1, "pkgInfo"    # Landroid/content/pm/PackageInfo;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/msic/qarth/PatchDisFileFilter;->mPackageName:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/msic/qarth/PatchDisFileFilter;->mVersionName:Ljava/lang/String;

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/msic/qarth/PatchDisFileFilter;->mVersionCode:I

    .line 25
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/msic/qarth/PatchDisFileFilter;->mDisPatchFiles:Ljava/util/List;

    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(.*)_("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/msic/qarth/PatchDisFileFilter;->mVersionName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")_{0,1}(.*)\\.qarth\\.disable$"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/msic/qarth/PatchDisFileFilter;->mDisableIgnoreVCodeMatchRegex:Ljava/lang/String;

    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(.*)_("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/msic/qarth/PatchDisFileFilter;->mVersionCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")_{0,1}(.*)\\.qarth\\.disable$"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/msic/qarth/PatchDisFileFilter;->mDisableIgnoreVNameMatchRegex:Ljava/lang/String;

    .line 31
    const-string v1, "(.*)_all_{0,1}(.*)\\.qarth\\.disable$"

    iput-object v1, p0, Lcom/msic/qarth/PatchDisFileFilter;->mDisableAllMatchRegex:Ljava/lang/String;

    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(.*)_("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/msic/qarth/PatchDisFileFilter;->mVersionName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")_("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/msic/qarth/PatchDisFileFilter;->mVersionCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")_{0,1}(.*)\\.qarth\\.disable$"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/msic/qarth/PatchDisFileFilter;->mDisableMathRegex:Ljava/lang/String;

    .line 36
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "(.*)_all_{0,1}(.*)\\.qarth\\.disable$"

    aput-object v2, v1, v0

    iget-object v0, p0, Lcom/msic/qarth/PatchDisFileFilter;->mDisableIgnoreVCodeMatchRegex:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v0, v1, v2

    iget-object v0, p0, Lcom/msic/qarth/PatchDisFileFilter;->mDisableIgnoreVNameMatchRegex:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v0, v1, v2

    iget-object v0, p0, Lcom/msic/qarth/PatchDisFileFilter;->mDisableMathRegex:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v0, v1, v2

    iput-object v1, p0, Lcom/msic/qarth/PatchDisFileFilter;->mRegulars:[Ljava/lang/String;

    .line 52
    iget v0, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v0, p0, Lcom/msic/qarth/PatchDisFileFilter;->mVersionCode:I

    .line 53
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v0, p0, Lcom/msic/qarth/PatchDisFileFilter;->mVersionName:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Lcom/msic/qarth/PatchDisFileFilter;->mPackageName:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/msic/qarth/PatchDisFileFilter;->mPackageName:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/msic/qarth/PatchDisFileFilter;->mVersionName:Ljava/lang/String;

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/msic/qarth/PatchDisFileFilter;->mVersionCode:I

    .line 25
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/msic/qarth/PatchDisFileFilter;->mDisPatchFiles:Ljava/util/List;

    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(.*)_("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/msic/qarth/PatchDisFileFilter;->mVersionName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")_{0,1}(.*)\\.qarth\\.disable$"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/msic/qarth/PatchDisFileFilter;->mDisableIgnoreVCodeMatchRegex:Ljava/lang/String;

    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(.*)_("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/msic/qarth/PatchDisFileFilter;->mVersionCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")_{0,1}(.*)\\.qarth\\.disable$"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/msic/qarth/PatchDisFileFilter;->mDisableIgnoreVNameMatchRegex:Ljava/lang/String;

    .line 31
    const-string v1, "(.*)_all_{0,1}(.*)\\.qarth\\.disable$"

    iput-object v1, p0, Lcom/msic/qarth/PatchDisFileFilter;->mDisableAllMatchRegex:Ljava/lang/String;

    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(.*)_("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/msic/qarth/PatchDisFileFilter;->mVersionName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")_("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/msic/qarth/PatchDisFileFilter;->mVersionCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")_{0,1}(.*)\\.qarth\\.disable$"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/msic/qarth/PatchDisFileFilter;->mDisableMathRegex:Ljava/lang/String;

    .line 36
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "(.*)_all_{0,1}(.*)\\.qarth\\.disable$"

    aput-object v2, v1, v0

    iget-object v0, p0, Lcom/msic/qarth/PatchDisFileFilter;->mDisableIgnoreVCodeMatchRegex:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v0, v1, v2

    iget-object v0, p0, Lcom/msic/qarth/PatchDisFileFilter;->mDisableIgnoreVNameMatchRegex:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v0, v1, v2

    iget-object v0, p0, Lcom/msic/qarth/PatchDisFileFilter;->mDisableMathRegex:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v0, v1, v2

    iput-object v1, p0, Lcom/msic/qarth/PatchDisFileFilter;->mRegulars:[Ljava/lang/String;

    .line 45
    iput-object p1, p0, Lcom/msic/qarth/PatchDisFileFilter;->mPackageName:Ljava/lang/String;

    .line 46
    return-void
.end method

.method private matchPattern(Ljava/io/File;Ljava/lang/String;)Z
    .locals 7
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "fileName"    # Ljava/lang/String;

    .line 66
    sget-boolean v0, Lcom/msic/qarth/Constants;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 67
    const-string v0, "PatchDisFileFilter"

    const-string v1, "matchPattern"

    invoke-static {v0, v1}, Lcom/msic/qarth/QarthLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :cond_0
    new-instance v0, Lcom/msic/qarth/PatchFile$Builder;

    invoke-direct {v0}, Lcom/msic/qarth/PatchFile$Builder;-><init>()V

    .line 73
    .local v0, "builder":Lcom/msic/qarth/PatchFile$Builder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/msic/qarth/Constants;->FWK_HOT_PATCH_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/msic/qarth/PatchDisFileFilter;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, "aPath":Ljava/lang/String;
    sget-object v2, Lcom/msic/qarth/Constants;->COMMON_PATCH_PKG_NAME:Ljava/lang/String;

    iget-object v3, p0, Lcom/msic/qarth/PatchDisFileFilter;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 75
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/msic/qarth/Constants;->FWK_HOT_PATCH_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "all"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 78
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".disable"

    const-string v4, ""

    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/msic/qarth/PatchFile$Builder;->setPath(Ljava/lang/String;)Lcom/msic/qarth/PatchFile$Builder;

    .line 80
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lcom/msic/qarth/PatchDisFileFilter;->mRegulars:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_3

    .line 81
    iget-object v4, p0, Lcom/msic/qarth/PatchDisFileFilter;->mRegulars:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 82
    .local v4, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v4, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 83
    .local v5, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 84
    const/4 v2, 0x2

    const/4 v6, 0x1

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 106
    :pswitch_0
    invoke-virtual {v5, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/msic/qarth/PatchFile$Builder;->setFileName(Ljava/lang/String;)Lcom/msic/qarth/PatchFile$Builder;

    move-result-object v6

    .line 107
    invoke-virtual {v5, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/msic/qarth/PatchFile$Builder;->setVersionName(Ljava/lang/String;)Lcom/msic/qarth/PatchFile$Builder;

    move-result-object v2

    const/4 v6, 0x3

    .line 108
    invoke-virtual {v5, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/msic/qarth/PatchFile$Builder;->setVersionCode(Ljava/lang/String;)Lcom/msic/qarth/PatchFile$Builder;

    move-result-object v2

    .line 109
    invoke-virtual {v2}, Lcom/msic/qarth/PatchFile$Builder;->build()Lcom/msic/qarth/PatchFile;

    move-result-object v2

    .line 110
    .local v2, "patchFile":Lcom/msic/qarth/PatchFile;
    iget-object v6, p0, Lcom/msic/qarth/PatchDisFileFilter;->mDisPatchFiles:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    goto :goto_1

    .line 99
    .end local v2    # "patchFile":Lcom/msic/qarth/PatchFile;
    :pswitch_1
    invoke-virtual {v5, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/msic/qarth/PatchFile$Builder;->setFileName(Ljava/lang/String;)Lcom/msic/qarth/PatchFile$Builder;

    move-result-object v6

    .line 100
    invoke-virtual {v5, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/msic/qarth/PatchFile$Builder;->setVersionName(Ljava/lang/String;)Lcom/msic/qarth/PatchFile$Builder;

    move-result-object v2

    .line 101
    invoke-virtual {v2}, Lcom/msic/qarth/PatchFile$Builder;->build()Lcom/msic/qarth/PatchFile;

    move-result-object v2

    .line 102
    .restart local v2    # "patchFile":Lcom/msic/qarth/PatchFile;
    iget-object v6, p0, Lcom/msic/qarth/PatchDisFileFilter;->mDisPatchFiles:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    goto :goto_1

    .line 92
    .end local v2    # "patchFile":Lcom/msic/qarth/PatchFile;
    :pswitch_2
    invoke-virtual {v5, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/msic/qarth/PatchFile$Builder;->setFileName(Ljava/lang/String;)Lcom/msic/qarth/PatchFile$Builder;

    move-result-object v6

    .line 93
    invoke-virtual {v5, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/msic/qarth/PatchFile$Builder;->setVersionCode(Ljava/lang/String;)Lcom/msic/qarth/PatchFile$Builder;

    move-result-object v2

    .line 94
    invoke-virtual {v2}, Lcom/msic/qarth/PatchFile$Builder;->build()Lcom/msic/qarth/PatchFile;

    move-result-object v2

    .line 95
    .restart local v2    # "patchFile":Lcom/msic/qarth/PatchFile;
    iget-object v6, p0, Lcom/msic/qarth/PatchDisFileFilter;->mDisPatchFiles:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    goto :goto_1

    .line 86
    .end local v2    # "patchFile":Lcom/msic/qarth/PatchFile;
    :pswitch_3
    invoke-virtual {v5, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/msic/qarth/PatchFile$Builder;->setFileName(Ljava/lang/String;)Lcom/msic/qarth/PatchFile$Builder;

    move-result-object v2

    .line 87
    invoke-virtual {v2}, Lcom/msic/qarth/PatchFile$Builder;->build()Lcom/msic/qarth/PatchFile;

    move-result-object v2

    .line 88
    .restart local v2    # "patchFile":Lcom/msic/qarth/PatchFile;
    iget-object v6, p0, Lcom/msic/qarth/PatchDisFileFilter;->mDisPatchFiles:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    nop

    .line 116
    .end local v2    # "patchFile":Lcom/msic/qarth/PatchFile;
    :goto_1
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    return v2

    .line 80
    .end local v4    # "pattern":Ljava/util/regex/Pattern;
    .end local v5    # "matcher":Ljava/util/regex/Matcher;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 119
    .end local v3    # "i":I
    :cond_3
    return v2

    nop

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

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/msic/qarth/PatchDisFileFilter;->matchPattern(Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getDisPatchFiles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/msic/qarth/PatchFile;",
            ">;"
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/msic/qarth/PatchDisFileFilter;->mDisPatchFiles:Ljava/util/List;

    return-object v0
.end method
