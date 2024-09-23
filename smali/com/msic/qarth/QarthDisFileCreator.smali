.class public Lcom/msic/qarth/QarthDisFileCreator;
.super Ljava/lang/Object;
.source "QarthDisFileCreator.java"


# static fields
.field private static final DIR_PERMISSION_MODE:I = 0x1ed

.field private static final QARTH_DISFILE_CREATOR:Lcom/msic/qarth/QarthDisFileCreator;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Lcom/msic/qarth/QarthDisFileCreator;

    invoke-direct {v0}, Lcom/msic/qarth/QarthDisFileCreator;-><init>()V

    sput-object v0, Lcom/msic/qarth/QarthDisFileCreator;->QARTH_DISFILE_CREATOR:Lcom/msic/qarth/QarthDisFileCreator;

    .line 21
    const-class v0, Lcom/msic/qarth/QarthDisFileCreator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/msic/qarth/QarthDisFileCreator;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createDisableFile(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 17
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "disPath"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "hookClass"    # Ljava/lang/String;
    .param p6, "crashPackageName"    # Ljava/lang/String;

    move-object/from16 v1, p4

    .line 102
    const-string v2, "/data/hotpatch/fwkpatchdir/"

    .line 103
    .local v2, "hotfixPath":Ljava/lang/String;
    const-string v3, ".disable"

    .line 104
    .local v3, "fileNameSuffix":Ljava/lang/String;
    const-string v4, "(\\S+)(_all|_v[0-9._]+)_{0,1}(.*).qarth$"

    .line 106
    .local v4, "fileRegex":Ljava/lang/String;
    const/4 v0, 0x0

    .line 107
    .local v0, "fileName":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v7, p2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 108
    .local v5, "patchFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    const/4 v8, 0x0

    if-nez v6, :cond_0

    .line 109
    sget-object v6, Lcom/msic/qarth/QarthDisFileCreator;->TAG:Ljava/lang/String;

    const-string v9, "createDisableFile dir is null"

    invoke-static {v6, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    return v8

    .line 112
    :cond_0
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    .line 113
    .local v6, "patchFiles":[Ljava/io/File;
    if-eqz v6, :cond_c

    array-length v9, v6

    if-nez v9, :cond_1

    goto/16 :goto_a

    .line 117
    :cond_1
    array-length v9, v6

    move v10, v8

    :goto_0
    const/4 v11, 0x1

    if-ge v10, v9, :cond_4

    aget-object v12, v6, v10

    .line 118
    .local v12, "f":Ljava/io/File;
    const-string v13, "(\\S+)(_all|_v[0-9._]+)_{0,1}(.*).qarth$"

    invoke-static {v13}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v13

    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    .line 119
    .local v13, "fileMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->find()Z

    move-result v14

    if-nez v14, :cond_2

    .line 120
    sget-object v11, Lcom/msic/qarth/QarthDisFileCreator;->TAG:Ljava/lang/String;

    const-string v14, "patch file pattern not match"

    invoke-static {v11, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    nop

    .line 117
    move-object/from16 v8, p5

    goto :goto_1

    .line 124
    :cond_2
    invoke-virtual {v13, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v14

    const-string v15, "_"

    const-string v11, "."

    invoke-virtual {v14, v15, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    const-string v14, "_"

    const-string v15, "."

    move-object/from16 v8, p5

    invoke-virtual {v8, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 125
    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 126
    sget-object v9, Lcom/msic/qarth/QarthDisFileCreator;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "patch fileName = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    goto :goto_2

    .line 117
    .end local v12    # "f":Ljava/io/File;
    .end local v13    # "fileMatcher":Ljava/util/regex/Matcher;
    :cond_3
    :goto_1
    add-int/lit8 v10, v10, 0x1

    const/4 v8, 0x0

    goto :goto_0

    .line 131
    :cond_4
    move-object/from16 v8, p5

    .end local v0    # "fileName":Ljava/lang/String;
    .local v9, "fileName":Ljava/lang/String;
    :goto_2
    move-object v9, v0

    if-nez v9, :cond_5

    .line 132
    sget-object v0, Lcom/msic/qarth/QarthDisFileCreator;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "patch file not found: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const/4 v10, 0x0

    return v10

    .line 137
    :cond_5
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/data/hotpatch/fwkpatchdir/"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    move-object/from16 v10, p3

    :try_start_1
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ".disable"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, "fullPath":Ljava/lang/String;
    const-string v11, "all"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    const-string v11, "android"
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 139
    move-object/from16 v12, p6

    :try_start_2
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    .line 140
    invoke-static/range {p6 .. p6}, Lcom/msic/qarth/PatchStore;->isSystemApp(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_7

    .line 141
    move-object v11, v12

    .line 142
    .local v11, "curPackageName":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "/data/hotpatch/fwkpatchdir/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v14, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ".disable"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object v0, v13

    .line 143
    sget-object v13, Lcom/msic/qarth/QarthDisFileCreator;->TAG:Ljava/lang/String;

    const-string v14, "all qarth patch for non-system app to create disabled file."

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v11    # "curPackageName":Ljava/lang/String;
    goto :goto_3

    .line 146
    :cond_6
    move-object/from16 v12, p6

    .end local v0    # "fullPath":Ljava/lang/String;
    .local v11, "fullPath":Ljava/lang/String;
    :cond_7
    :goto_3
    move-object v11, v0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v13, v0

    .line 148
    .local v13, "file":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_9

    .line 149
    invoke-virtual {v13}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v0, :cond_8

    .line 151
    :try_start_3
    invoke-virtual {v13}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v14, 0x1ed

    invoke-static {v0, v14}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_3
    .catch Landroid/system/ErrnoException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 154
    :goto_4
    goto :goto_5

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Landroid/system/ErrnoException;
    :try_start_4
    sget-object v14, Lcom/msic/qarth/QarthDisFileCreator;->TAG:Ljava/lang/String;

    const-string v15, "parentFile change mode exception"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Landroid/system/ErrnoException;
    goto :goto_4

    .line 156
    :cond_8
    sget-object v0, Lcom/msic/qarth/QarthDisFileCreator;->TAG:Ljava/lang/String;

    const-string v14, "parentFile create file failed"

    invoke-static {v0, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const/4 v14, 0x0

    return v14

    .line 161
    :cond_9
    :goto_5
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 162
    sget-object v0, Lcom/msic/qarth/QarthDisFileCreator;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "the disabled file is already exists:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v0, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const/4 v14, 0x1

    return v14

    .line 166
    :cond_a
    invoke-virtual {v13}, Ljava/io/File;->createNewFile()Z

    move-result v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    if-eqz v0, :cond_b

    .line 168
    :try_start_5
    sget-object v0, Lcom/msic/qarth/QarthDisFileCreator;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "create disabled file success and change permission for file:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v0, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-virtual {v13}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v14, 0x1a4

    invoke-static {v0, v14}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_5
    .catch Landroid/system/ErrnoException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 172
    goto :goto_6

    .line 170
    :catch_1
    move-exception v0

    .line 171
    .restart local v0    # "e":Landroid/system/ErrnoException;
    :try_start_6
    sget-object v14, Lcom/msic/qarth/QarthDisFileCreator;->TAG:Ljava/lang/String;

    const-string v15, "patch disabled file change mode exception"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 173
    .end local v0    # "e":Landroid/system/ErrnoException;
    :goto_6
    const/4 v14, 0x1

    return v14

    .line 177
    .end local v11    # "fullPath":Ljava/lang/String;
    .end local v13    # "file":Ljava/io/File;
    :cond_b
    goto :goto_9

    .line 175
    :catch_2
    move-exception v0

    goto :goto_8

    :catch_3
    move-exception v0

    goto :goto_7

    :catch_4
    move-exception v0

    move-object/from16 v10, p3

    :goto_7
    move-object/from16 v12, p6

    .line 176
    .local v0, "ex":Ljava/io/IOException;
    :goto_8
    sget-object v11, Lcom/msic/qarth/QarthDisFileCreator;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "create file failed: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "ex = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    .end local v0    # "ex":Ljava/io/IOException;
    :goto_9
    const/4 v11, 0x0

    return v11

    .line 114
    .end local v9    # "fileName":Ljava/lang/String;
    .local v0, "fileName":Ljava/lang/String;
    :cond_c
    :goto_a
    move-object/from16 v10, p3

    move-object/from16 v8, p5

    move-object/from16 v12, p6

    sget-object v9, Lcom/msic/qarth/QarthDisFileCreator;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "create disable file not find patch in : "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/msic/qarth/QarthLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const/4 v9, 0x0

    return v9
.end method

.method private createDisableFileByType(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 16
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "hookClass"    # Ljava/lang/String;
    .param p3, "hookType"    # Ljava/lang/String;
    .param p4, "crashPackageName"    # Ljava/lang/String;

    move-object/from16 v0, p3

    .line 69
    const-string v1, "/patch_hw/fwkhotpatch/"

    .line 72
    .local v1, "normalPath":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v2, "3"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    goto :goto_1

    :pswitch_1
    const-string v2, "2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :pswitch_2
    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v2, -0x1

    :goto_1
    packed-switch v2, :pswitch_data_1

    .line 89
    return v3

    .line 84
    :pswitch_3
    move-object/from16 v8, p4

    .line 85
    .local v8, "packageName":Ljava/lang/String;
    move-object v7, v8

    .line 86
    .local v7, "disPath":Ljava/lang/String;
    const-string v6, "/patch_hw/fwkhotpatch/"

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p4

    invoke-direct/range {v4 .. v10}, Lcom/msic/qarth/QarthDisFileCreator;->createDisableFile(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    return v2

    .line 79
    .end local v7    # "disPath":Ljava/lang/String;
    .end local v8    # "packageName":Ljava/lang/String;
    :pswitch_4
    const-string v2, "all"

    .line 80
    .local v2, "packageName":Ljava/lang/String;
    const-string v3, "system/all"

    .line 81
    .local v3, "disPath":Ljava/lang/String;
    const-string v11, "/patch_hw/fwkhotpatch/"

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object v12, v3

    move-object v13, v2

    move-object/from16 v14, p2

    move-object/from16 v15, p4

    invoke-direct/range {v9 .. v15}, Lcom/msic/qarth/QarthDisFileCreator;->createDisableFile(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    return v4

    .line 74
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "disPath":Ljava/lang/String;
    :pswitch_5
    const-string v2, "systemserver"

    .line 75
    .restart local v2    # "packageName":Ljava/lang/String;
    const-string v3, "system/systemserver"

    .line 76
    .restart local v3    # "disPath":Ljava/lang/String;
    const-string v7, "/patch_hw/fwkhotpatch/"

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object v8, v3

    move-object v9, v2

    move-object/from16 v10, p2

    move-object/from16 v11, p4

    invoke-direct/range {v5 .. v11}, Lcom/msic/qarth/QarthDisFileCreator;->createDisableFile(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    return v4

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public static getQarthDisFileCreator()Lcom/msic/qarth/QarthDisFileCreator;
    .locals 1

    .line 30
    sget-object v0, Lcom/msic/qarth/QarthDisFileCreator;->QARTH_DISFILE_CREATOR:Lcom/msic/qarth/QarthDisFileCreator;

    return-object v0
.end method


# virtual methods
.method public disableExceptionQarthPatch(Ljava/lang/Throwable;Ljava/lang/String;)Z
    .locals 9
    .param p1, "e"    # Ljava/lang/Throwable;
    .param p2, "crashPackageName"    # Ljava/lang/String;

    .line 41
    const-string v0, "(\\S+)\\(<Qarth>\\)"

    .line 42
    .local v0, "regexQarth":Ljava/lang/String;
    const-string v1, "\\((\\w+)_Hook(1|2|3)_\\S+\\)"

    .line 44
    .local v1, "regexHook":Ljava/lang/String;
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 45
    .local v2, "writer":Ljava/io/StringWriter;
    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p1, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 46
    invoke-virtual {v2}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v3

    .line 48
    .local v3, "buffer":Ljava/lang/StringBuffer;
    const-string v4, "(\\S+)\\(<Qarth>\\)"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 49
    .local v4, "matcherQarth":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_0

    .line 50
    sget-object v5, Lcom/msic/qarth/QarthDisFileCreator;->TAG:Ljava/lang/String;

    const-string v7, "pattern not match"

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    return v6

    .line 54
    :cond_0
    const-string v5, "\\((\\w+)_Hook(1|2|3)_\\S+\\)"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 55
    .local v5, "matcherHook":Ljava/util/regex/Matcher;
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-nez v7, :cond_1

    .line 56
    sget-object v7, Lcom/msic/qarth/QarthDisFileCreator;->TAG:Ljava/lang/String;

    const-string v8, "hook file pattern not match"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    return v6

    .line 59
    :cond_1
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 60
    .local v6, "hookClass":Ljava/lang/String;
    const/4 v7, 0x2

    invoke-virtual {v5, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    .line 62
    .local v7, "hookType":Ljava/lang/String;
    invoke-direct {p0, v3, v6, v7, p2}, Lcom/msic/qarth/QarthDisFileCreator;->createDisableFileByType(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    return v8
.end method
