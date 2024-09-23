.class public Lhuawei/android/hwutil/FileUtil;
.super Ljava/lang/Object;
.source "FileUtil.java"


# static fields
.field static final TAG:Ljava/lang/String; = "FileUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isFileContentAllZero(Ljava/lang/String;)Z
    .locals 10
    .param p0, "fileName"    # Ljava/lang/String;

    .line 43
    const/4 v0, 0x0

    if-eqz p0, :cond_5

    .line 44
    const/4 v1, 0x0

    .line 45
    .local v1, "isNotValid":Z
    const/4 v2, 0x0

    .line 47
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 48
    const/4 v3, 0x0

    .line 49
    .local v3, "realLength":I
    const/16 v4, 0x400

    .line 50
    .local v4, "BUFF_SIZE":I
    new-array v5, v4, [B

    .line 51
    .local v5, "buffer":[B
    :cond_0
    invoke-virtual {v2, v5}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    move v3, v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_2

    .line 52
    move v6, v0

    .local v6, "j":I
    :goto_0
    if-ge v6, v3, :cond_0

    .line 53
    aget-byte v7, v5, v6
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_1

    .line 54
    nop

    .line 64
    nop

    .line 66
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 69
    goto :goto_1

    .line 67
    :catch_0
    move-exception v7

    .line 68
    .local v7, "e":Ljava/io/IOException;
    const-string v8, "FileUtil"

    const-string v9, "isFileContentAllZero IOException "

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .end local v7    # "e":Ljava/io/IOException;
    :goto_1
    return v0

    .line 52
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 58
    .end local v6    # "j":I
    :cond_2
    const/4 v1, 0x1

    .line 64
    .end local v3    # "realLength":I
    .end local v4    # "BUFF_SIZE":I
    .end local v5    # "buffer":[B
    nop

    .line 66
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 69
    :goto_2
    goto :goto_3

    .line 67
    :catch_1
    move-exception v3

    .line 68
    .local v3, "e":Ljava/io/IOException;
    const-string v4, "FileUtil"

    const-string v5, "isFileContentAllZero IOException "

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 64
    :catchall_0
    move-exception v0

    goto :goto_4

    .line 61
    :catch_2
    move-exception v3

    .line 62
    .local v3, "ex":Ljava/lang/Exception;
    :try_start_3
    const-string v4, "FileUtil"

    const-string v5, "isFileContentAllZero Exception "

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 64
    .end local v3    # "ex":Ljava/lang/Exception;
    if-eqz v2, :cond_3

    .line 66
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 59
    :catch_3
    move-exception v3

    .line 60
    .local v3, "e":Ljava/lang/RuntimeException;
    :try_start_5
    const-string v4, "FileUtil"

    const-string v5, "isFileContentAllZero RuntimeException "

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 64
    .end local v3    # "e":Ljava/lang/RuntimeException;
    if-eqz v2, :cond_3

    .line 66
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    .line 73
    :cond_3
    :goto_3
    if-eqz v1, :cond_5

    .line 74
    const-string v0, "FileUtil"

    const-string v3, "file content is all zero"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const/4 v0, 0x1

    return v0

    .line 64
    :goto_4
    if-eqz v2, :cond_4

    .line 66
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 69
    goto :goto_5

    .line 67
    :catch_4
    move-exception v3

    .line 68
    .local v3, "e":Ljava/io/IOException;
    const-string v4, "FileUtil"

    const-string v5, "isFileContentAllZero IOException "

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .end local v3    # "e":Ljava/io/IOException;
    :cond_4
    :goto_5
    throw v0

    .line 78
    .end local v1    # "isNotValid":Z
    .end local v2    # "fis":Ljava/io/FileInputStream;
    :cond_5
    return v0
.end method

.method public static isFileExists(Ljava/lang/String;)Z
    .locals 2
    .param p0, "filename"    # Ljava/lang/String;

    .line 35
    if-nez p0, :cond_0

    .line 36
    const/4 v0, 0x0

    return v0

    .line 38
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 39
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method
