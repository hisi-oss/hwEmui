.class public Lhuawei/android/hwutil/ZipUtil;
.super Ljava/lang/Object;
.source "ZipUtil.java"


# static fields
.field private static final BUFFER_BYTE:I = 0x1000

.field private static final BUFF_SIZE:I = 0x2800

.field private static final EXCLUDE_ENTRY:Ljava/lang/String; = ".."

.field private static final MAX_ENTRY_THEME_SIZE:I = 0xbebc200

.field private static final TAG:Ljava/lang/String; = "ZipUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEntriesNames(Ljava/io/File;)Ljava/util/ArrayList;
    .locals 6
    .param p0, "zipFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 414
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 416
    .local v0, "entryNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-direct {v1, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 418
    .local v1, "zf":Ljava/util/zip/ZipFile;
    :try_start_0
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v2

    .line 419
    .local v2, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 420
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/zip/ZipEntry;

    .line 422
    .local v3, "entry":Ljava/util/zip/ZipEntry;
    invoke-static {v3}, Lhuawei/android/hwutil/ZipUtil;->getEntryName(Ljava/util/zip/ZipEntry;)Ljava/lang/String;

    move-result-object v4

    .line 423
    .local v4, "entryName":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 424
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 427
    .end local v3    # "entry":Ljava/util/zip/ZipEntry;
    .end local v4    # "entryName":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 433
    .end local v2    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 436
    :goto_1
    goto :goto_3

    .line 434
    :catch_0
    move-exception v2

    .line 435
    .local v2, "e1":Ljava/lang/Exception;
    const-string v3, "ZipUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2
    const-string v5, "Exception e1: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    .end local v2    # "e1":Ljava/lang/Exception;
    goto :goto_3

    .line 432
    :catchall_0
    move-exception v2

    goto :goto_4

    .line 428
    :catch_1
    move-exception v2

    .line 429
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v3, "ZipUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception e: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 433
    .end local v2    # "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 434
    :catch_2
    move-exception v2

    .line 435
    .local v2, "e1":Ljava/lang/Exception;
    const-string v3, "ZipUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_2

    .line 438
    .end local v2    # "e1":Ljava/lang/Exception;
    :goto_3
    return-object v0

    .line 432
    :goto_4
    nop

    .line 433
    :try_start_4
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 436
    goto :goto_5

    .line 434
    :catch_3
    move-exception v3

    .line 435
    .local v3, "e1":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception e1: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ZipUtil"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    .end local v3    # "e1":Ljava/lang/Exception;
    :goto_5
    throw v2
.end method

.method public static getEntryComment(Ljava/util/zip/ZipEntry;)Ljava/lang/String;
    .locals 3
    .param p0, "entry"    # Ljava/util/zip/ZipEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 443
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getComment()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GB2312"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const-string v2, "8859_1"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public static getEntryName(Ljava/util/zip/ZipEntry;)Ljava/lang/String;
    .locals 3
    .param p0, "entry"    # Ljava/util/zip/ZipEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 448
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 449
    const/4 v0, 0x0

    return-object v0

    .line 452
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GB2312"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const-string v2, "8859_1"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public static isZipError(Ljava/lang/String;)Z
    .locals 13
    .param p0, "zipFile"    # Ljava/lang/String;

    .line 170
    const/4 v0, 0x1

    if-nez p0, :cond_0

    .line 171
    return v0

    .line 173
    :cond_0
    const/4 v1, 0x0

    .line 174
    .local v1, "zf":Ljava/util/zip/ZipFile;
    const/4 v2, 0x0

    .line 175
    .local v2, "in":Ljava/io/InputStream;
    const/4 v3, 0x0

    move v4, v3

    .line 177
    .local v4, "total":I
    :try_start_0
    new-instance v5, Ljava/util/zip/ZipFile;

    invoke-direct {v5, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    move-object v1, v5

    .line 178
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v5

    .local v5, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    :goto_0
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 179
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/zip/ZipEntry;

    .line 180
    .local v6, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v1, v6}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v7

    move-object v2, v7

    .line 181
    const/16 v7, 0x1000

    .line 182
    .local v7, "bufferSize":I
    const/4 v8, 0x0

    .line 183
    .local v8, "entrySzie":I
    new-array v9, v7, [B

    .line 185
    .local v9, "buffer":[B
    :cond_1
    invoke-virtual {v2, v9}, Ljava/io/InputStream;->read([B)I

    move-result v10

    move v11, v10

    .local v11, "bytesRead":I
    const v12, 0xbebc200

    if-ltz v10, :cond_3

    .line 186
    add-int/2addr v8, v11

    .line 187
    if-lt v8, v12, :cond_1

    .line 188
    const-string v3, "ZipUtil"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isZipError entry checkZipIsSize true "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    nop

    .line 205
    if-eqz v2, :cond_2

    .line 207
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 210
    goto :goto_1

    .line 208
    :catch_0
    move-exception v3

    .line 209
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 212
    .end local v3    # "e":Ljava/io/IOException;
    :cond_2
    :goto_1
    nop

    .line 214
    :try_start_2
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 217
    goto :goto_2

    .line 215
    :catch_1
    move-exception v3

    .line 216
    .local v3, "e2":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 189
    .end local v3    # "e2":Ljava/lang/Exception;
    :goto_2
    return v0

    .line 192
    :cond_3
    add-int/2addr v4, v8

    .line 193
    if-lt v4, v12, :cond_5

    .line 194
    :try_start_3
    const-string v3, "ZipUtil"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isZipError total checkZipIsSize true "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 195
    nop

    .line 205
    if-eqz v2, :cond_4

    .line 207
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 210
    goto :goto_3

    .line 208
    :catch_2
    move-exception v3

    .line 209
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 212
    .end local v3    # "e":Ljava/io/IOException;
    :cond_4
    :goto_3
    nop

    .line 214
    :try_start_5
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 217
    goto :goto_4

    .line 215
    :catch_3
    move-exception v3

    .line 216
    .local v3, "e2":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 195
    .end local v3    # "e2":Ljava/lang/Exception;
    :goto_4
    return v0

    .line 197
    :cond_5
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_8
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 198
    .end local v6    # "entry":Ljava/util/zip/ZipEntry;
    .end local v7    # "bufferSize":I
    .end local v8    # "entrySzie":I
    .end local v9    # "buffer":[B
    .end local v11    # "bytesRead":I
    goto :goto_0

    .line 199
    .end local v5    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    :cond_6
    nop

    .line 205
    if-eqz v2, :cond_7

    .line 207
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 210
    goto :goto_5

    .line 208
    :catch_4
    move-exception v0

    .line 209
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 212
    .end local v0    # "e":Ljava/io/IOException;
    :cond_7
    :goto_5
    nop

    .line 214
    :try_start_8
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 217
    goto :goto_6

    .line 215
    :catch_5
    move-exception v0

    .line 216
    .local v0, "e2":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 199
    .end local v0    # "e2":Ljava/lang/Exception;
    :goto_6
    return v3

    .line 205
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_8

    .line 207
    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 210
    goto :goto_7

    .line 208
    :catch_6
    move-exception v3

    .line 209
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 212
    .end local v3    # "e":Ljava/io/IOException;
    :cond_8
    :goto_7
    if-eqz v1, :cond_9

    .line 214
    :try_start_a
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    .line 217
    goto :goto_8

    .line 215
    :catch_7
    move-exception v3

    .line 216
    .local v3, "e2":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 217
    .end local v3    # "e2":Ljava/lang/Exception;
    :cond_9
    :goto_8
    throw v0

    .line 202
    :catch_8
    move-exception v3

    .line 203
    .local v3, "e":Ljava/lang/Exception;
    nop

    .line 205
    if-eqz v2, :cond_a

    .line 207
    :try_start_b
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    .line 210
    goto :goto_9

    .line 208
    :catch_9
    move-exception v5

    .line 209
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 212
    .end local v5    # "e":Ljava/io/IOException;
    :cond_a
    :goto_9
    if-eqz v1, :cond_b

    .line 214
    :try_start_c
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_a

    .line 217
    goto :goto_a

    .line 215
    :catch_a
    move-exception v5

    .line 216
    .local v5, "e2":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 203
    .end local v5    # "e2":Ljava/lang/Exception;
    :cond_b
    :goto_a
    return v0

    .line 200
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_b
    move-exception v3

    .line 201
    .local v3, "e":Ljava/io/IOException;
    nop

    .line 205
    if-eqz v2, :cond_c

    .line 207
    :try_start_d
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_c

    .line 210
    goto :goto_b

    .line 208
    :catch_c
    move-exception v5

    .line 209
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 212
    .end local v5    # "e":Ljava/io/IOException;
    :cond_c
    :goto_b
    if-eqz v1, :cond_d

    .line 214
    :try_start_e
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_d

    .line 217
    goto :goto_c

    .line 215
    :catch_d
    move-exception v5

    .line 216
    .local v5, "e2":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 201
    .end local v5    # "e2":Ljava/lang/Exception;
    :cond_d
    :goto_c
    return v0
.end method

.method public static unZipDirectory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p0, "zipFile"    # Ljava/lang/String;
    .param p1, "entryName"    # Ljava/lang/String;
    .param p2, "desPath"    # Ljava/lang/String;

    .line 224
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 225
    .local v0, "desDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 226
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_0

    .line 227
    return-void

    .line 229
    :cond_0
    const/4 v1, 0x0

    move-object v2, v1

    .line 231
    .local v2, "zf":Ljava/util/zip/ZipFile;
    :try_start_0
    new-instance v3, Ljava/util/zip/ZipFile;

    invoke-direct {v3, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 232
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v3

    .local v3, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 233
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/zip/ZipEntry;

    .line 235
    .local v4, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_9

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".."

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 237
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 238
    .local v5, "str":Ljava/lang/String;
    new-instance v6, Ljava/lang/String;

    const-string v7, "8859_1"

    invoke-virtual {v5, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-direct {v6, v7, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-object v5, v6

    .line 239
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 240
    .local v6, "desFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 241
    goto :goto_0

    .line 243
    :cond_1
    const/4 v7, 0x1

    .line 244
    .local v7, "newOk":Z
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_3

    .line 245
    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    .line 246
    .local v8, "fileParentDir":Ljava/io/File;
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_2

    .line 247
    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    move-result v9

    move v7, v9

    .line 249
    :cond_2
    if-eqz v7, :cond_3

    .line 250
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    move-result v9

    move v7, v9

    .line 253
    .end local v8    # "fileParentDir":Ljava/io/File;
    :cond_3
    if-nez v7, :cond_4

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v8, :cond_9

    .line 255
    :cond_4
    const/4 v8, 0x0

    .line 256
    .local v8, "out":Ljava/io/OutputStream;
    move-object v9, v1

    .line 258
    .local v9, "in":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v2, v4}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v10

    move-object v9, v10

    .line 259
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v8, v10

    .line 260
    const/16 v10, 0x2800

    new-array v10, v10, [B

    .line 262
    .local v10, "buffer":[B
    :goto_1
    invoke-virtual {v9, v10}, Ljava/io/InputStream;->read([B)I

    move-result v11

    move v12, v11

    .local v12, "realLength":I
    if-lez v11, :cond_5

    .line 263
    const/4 v11, 0x0

    invoke-virtual {v8, v10, v11, v12}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 266
    .end local v10    # "buffer":[B
    .end local v12    # "realLength":I
    :cond_5
    if-eqz v9, :cond_6

    .line 268
    :try_start_2
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 271
    goto :goto_2

    .line 269
    :catch_0
    move-exception v10

    .line 270
    .local v10, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 273
    .end local v10    # "e":Ljava/io/IOException;
    :cond_6
    :goto_2
    nop

    .line 275
    :try_start_4
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 278
    :goto_3
    goto :goto_6

    .line 276
    :catch_1
    move-exception v10

    .line 277
    .restart local v10    # "e":Ljava/io/IOException;
    :try_start_5
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .end local v10    # "e":Ljava/io/IOException;
    goto :goto_3

    .line 266
    :catchall_0
    move-exception v1

    if-eqz v9, :cond_7

    .line 268
    :try_start_6
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 271
    goto :goto_4

    .line 269
    :catch_2
    move-exception v10

    .line 270
    .restart local v10    # "e":Ljava/io/IOException;
    :try_start_7
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 273
    .end local v10    # "e":Ljava/io/IOException;
    :cond_7
    :goto_4
    if-eqz v8, :cond_8

    .line 275
    :try_start_8
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 278
    goto :goto_5

    .line 276
    :catch_3
    move-exception v10

    .line 277
    .restart local v10    # "e":Ljava/io/IOException;
    :try_start_9
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    .line 278
    .end local v10    # "e":Ljava/io/IOException;
    :cond_8
    :goto_5
    throw v1
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 285
    .end local v4    # "entry":Ljava/util/zip/ZipEntry;
    .end local v5    # "str":Ljava/lang/String;
    .end local v6    # "desFile":Ljava/io/File;
    .end local v7    # "newOk":Z
    .end local v8    # "out":Ljava/io/OutputStream;
    .end local v9    # "in":Ljava/io/InputStream;
    :cond_9
    :goto_6
    goto/16 :goto_0

    .line 289
    .end local v3    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    :cond_a
    nop

    .line 291
    :try_start_a
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    .line 294
    :goto_7
    goto :goto_8

    .line 292
    :catch_4
    move-exception v1

    .line 293
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_7

    .line 289
    :catchall_1
    move-exception v1

    goto :goto_9

    .line 286
    :catch_5
    move-exception v1

    .line 287
    .local v1, "e":Ljava/lang/Exception;
    :try_start_b
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 289
    .end local v1    # "e":Ljava/lang/Exception;
    if-eqz v2, :cond_b

    .line 291
    :try_start_c
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4

    goto :goto_7

    .line 297
    :cond_b
    :goto_8
    return-void

    .line 289
    :goto_9
    if-eqz v2, :cond_c

    .line 291
    :try_start_d
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6

    .line 294
    goto :goto_a

    .line 292
    :catch_6
    move-exception v3

    .line 293
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 294
    .end local v3    # "e":Ljava/io/IOException;
    :cond_c
    :goto_a
    throw v1
.end method

.method public static unZipFile(Ljava/io/File;Ljava/lang/String;)V
    .locals 14
    .param p0, "zipFile"    # Ljava/io/File;
    .param p1, "folderPath"    # Ljava/lang/String;

    .line 85
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 86
    .local v0, "desDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 87
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_0

    .line 88
    return-void

    .line 90
    :cond_0
    const/4 v1, 0x0

    .line 91
    .local v1, "i":I
    const/4 v2, 0x0

    move-object v3, v2

    .line 93
    .local v3, "zf":Ljava/util/zip/ZipFile;
    :try_start_0
    new-instance v4, Ljava/util/zip/ZipFile;

    invoke-direct {v4, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    move-object v3, v4

    .line 94
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v4

    .local v4, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 95
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/zip/ZipEntry;

    .line 97
    .local v5, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".."

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 98
    goto :goto_0

    .line 101
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 102
    .local v6, "str":Ljava/lang/String;
    new-instance v7, Ljava/lang/String;

    const-string v8, "8859_1"

    invoke-virtual {v6, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    const-string v9, "UTF-8"

    invoke-direct {v7, v8, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-object v6, v7

    .line 103
    add-int/lit8 v1, v1, 0x1

    .line 104
    const-string v7, "ZipUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "======file=====:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 106
    .local v7, "desFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 107
    goto :goto_0

    .line 109
    :cond_2
    const/4 v8, 0x1

    .line 110
    .local v8, "newOk":Z
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_4

    .line 111
    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v9

    .line 112
    .local v9, "fileParentDir":Ljava/io/File;
    if-eqz v9, :cond_3

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_3

    .line 113
    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    move-result v10

    move v8, v10

    .line 115
    :cond_3
    if-eqz v8, :cond_4

    .line 116
    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z

    move-result v10

    move v8, v10

    .line 119
    .end local v9    # "fileParentDir":Ljava/io/File;
    :cond_4
    if-nez v8, :cond_5

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v9, :cond_8

    .line 121
    :cond_5
    const/4 v9, 0x0

    .line 122
    .local v9, "out":Ljava/io/OutputStream;
    move-object v10, v2

    .line 124
    .local v10, "in":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v3, v5}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v11

    move-object v10, v11

    .line 125
    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v9, v11

    .line 126
    const/16 v11, 0x2800

    new-array v11, v11, [B

    .line 128
    .local v11, "buffer":[B
    :goto_1
    invoke-virtual {v10, v11}, Ljava/io/InputStream;->read([B)I

    move-result v12

    move v13, v12

    .local v13, "realLength":I
    if-lez v12, :cond_6

    .line 129
    const/4 v12, 0x0

    invoke-virtual {v9, v11, v12, v13}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_1

    .line 132
    :cond_6
    invoke-virtual {v9}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 135
    .end local v11    # "buffer":[B
    .end local v13    # "realLength":I
    if-eqz v10, :cond_7

    .line 137
    :try_start_2
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 140
    goto :goto_2

    .line 138
    :catch_0
    move-exception v11

    .line 139
    .local v11, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 142
    .end local v11    # "e":Ljava/io/IOException;
    :cond_7
    :goto_2
    nop

    .line 144
    :try_start_4
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 147
    :goto_3
    goto :goto_4

    .line 145
    :catch_1
    move-exception v11

    .line 146
    .restart local v11    # "e":Ljava/io/IOException;
    :try_start_5
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .end local v11    # "e":Ljava/io/IOException;
    goto :goto_3

    .line 153
    .end local v5    # "entry":Ljava/util/zip/ZipEntry;
    .end local v6    # "str":Ljava/lang/String;
    .end local v7    # "desFile":Ljava/io/File;
    .end local v8    # "newOk":Z
    .end local v9    # "out":Ljava/io/OutputStream;
    .end local v10    # "in":Ljava/io/InputStream;
    :cond_8
    :goto_4
    goto/16 :goto_0

    .line 135
    .restart local v5    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v6    # "str":Ljava/lang/String;
    .restart local v7    # "desFile":Ljava/io/File;
    .restart local v8    # "newOk":Z
    .restart local v9    # "out":Ljava/io/OutputStream;
    .restart local v10    # "in":Ljava/io/InputStream;
    :catchall_0
    move-exception v2

    if-eqz v10, :cond_9

    .line 137
    :try_start_6
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 140
    goto :goto_5

    .line 138
    :catch_2
    move-exception v11

    .line 139
    .restart local v11    # "e":Ljava/io/IOException;
    :try_start_7
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 142
    .end local v11    # "e":Ljava/io/IOException;
    :cond_9
    :goto_5
    if-eqz v9, :cond_a

    .line 144
    :try_start_8
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 147
    goto :goto_6

    .line 145
    :catch_3
    move-exception v11

    .line 146
    .restart local v11    # "e":Ljava/io/IOException;
    :try_start_9
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    .line 147
    .end local v11    # "e":Ljava/io/IOException;
    :cond_a
    :goto_6
    throw v2

    .line 154
    .end local v4    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    .end local v5    # "entry":Ljava/util/zip/ZipEntry;
    .end local v6    # "str":Ljava/lang/String;
    .end local v7    # "desFile":Ljava/io/File;
    .end local v8    # "newOk":Z
    .end local v9    # "out":Ljava/io/OutputStream;
    .end local v10    # "in":Ljava/io/InputStream;
    :cond_b
    const-string v2, "ZipUtil"

    const-string v4, "unzip end"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 158
    nop

    .line 160
    :try_start_a
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    .line 163
    :goto_7
    goto :goto_8

    .line 161
    :catch_4
    move-exception v2

    .line 162
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_7

    .line 158
    :catchall_1
    move-exception v2

    goto :goto_9

    .line 155
    :catch_5
    move-exception v2

    .line 156
    .local v2, "e":Ljava/lang/Exception;
    :try_start_b
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 158
    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v3, :cond_c

    .line 160
    :try_start_c
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4

    goto :goto_7

    .line 166
    :cond_c
    :goto_8
    return-void

    .line 158
    :goto_9
    if-eqz v3, :cond_d

    .line 160
    :try_start_d
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6

    .line 163
    goto :goto_a

    .line 161
    :catch_6
    move-exception v4

    .line 162
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 163
    .end local v4    # "e":Ljava/io/IOException;
    :cond_d
    :goto_a
    throw v2
.end method

.method public static unZipFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "zipFile"    # Ljava/io/File;
    .param p1, "desPath"    # Ljava/lang/String;
    .param p2, "entryName"    # Ljava/lang/String;

    .line 556
    if-eqz p0, :cond_c

    if-eqz p2, :cond_c

    const-string v0, ".."

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_f

    .line 560
    :cond_0
    const/4 v0, 0x0

    .line 561
    .local v0, "inStream":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 562
    .local v1, "outStream":Ljava/io/OutputStream;
    const/4 v2, 0x0

    .line 563
    .local v2, "zf":Ljava/util/zip/ZipFile;
    const/4 v3, 0x0

    .line 565
    .local v3, "zEntry":Ljava/util/zip/ZipEntry;
    :try_start_0
    new-instance v4, Ljava/util/zip/ZipFile;

    invoke-direct {v4, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    move-object v2, v4

    .line 566
    invoke-virtual {v2, p2}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v4

    .line 567
    if-nez v3, :cond_3

    .line 586
    nop

    .line 588
    :try_start_1
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 591
    goto :goto_0

    .line 589
    :catch_0
    move-exception v4

    .line 590
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 593
    .end local v4    # "e":Ljava/io/IOException;
    :goto_0
    if-eqz v0, :cond_1

    .line 595
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 598
    goto :goto_1

    .line 596
    :catch_1
    move-exception v4

    .line 597
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 600
    .end local v4    # "e":Ljava/io/IOException;
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 602
    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 605
    goto :goto_2

    .line 603
    :catch_2
    move-exception v4

    .line 604
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 568
    .end local v4    # "e":Ljava/io/IOException;
    :cond_2
    :goto_2
    return-void

    .line 570
    :cond_3
    :try_start_4
    invoke-virtual {v2, v3}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v4

    move-object v0, v4

    .line 572
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 573
    .local v4, "str":Ljava/lang/String;
    new-instance v5, Ljava/lang/String;

    const-string v6, "8859_1"

    invoke-virtual {v4, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    const-string v7, "GB2312"

    invoke-direct {v5, v6, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-object v4, v5

    .line 574
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v1, v5

    .line 576
    const/16 v5, 0x1000

    new-array v5, v5, [B

    .line 579
    .local v5, "buffer":[B
    :goto_3
    invoke-virtual {v0, v5}, Ljava/io/InputStream;->read([B)I

    move-result v6

    move v7, v6

    .local v7, "realLength":I
    if-lez v6, :cond_4

    .line 580
    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6, v7}, Ljava/io/OutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 586
    .end local v4    # "str":Ljava/lang/String;
    .end local v5    # "buffer":[B
    .end local v7    # "realLength":I
    :cond_4
    nop

    .line 588
    :try_start_5
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 591
    goto :goto_4

    .line 589
    :catch_3
    move-exception v4

    .line 590
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 593
    .end local v4    # "e":Ljava/io/IOException;
    :goto_4
    if-eqz v0, :cond_5

    .line 595
    :try_start_6
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 598
    goto :goto_5

    .line 596
    :catch_4
    move-exception v4

    .line 597
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 600
    .end local v4    # "e":Ljava/io/IOException;
    :cond_5
    :goto_5
    nop

    .line 602
    :try_start_7
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 605
    :goto_6
    goto :goto_7

    .line 603
    :catch_5
    move-exception v4

    .line 604
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .end local v4    # "e":Ljava/io/IOException;
    goto :goto_6

    .line 608
    :goto_7
    return-void

    .line 586
    :catchall_0
    move-exception v4

    goto :goto_b

    .line 582
    :catch_6
    move-exception v4

    .line 583
    .local v4, "e":Ljava/lang/Exception;
    :try_start_8
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 586
    if-eqz v2, :cond_6

    .line 588
    :try_start_9
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 591
    goto :goto_8

    .line 589
    :catch_7
    move-exception v5

    .line 590
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 593
    .end local v5    # "e":Ljava/io/IOException;
    :cond_6
    :goto_8
    if-eqz v0, :cond_7

    .line 595
    :try_start_a
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    .line 598
    goto :goto_9

    .line 596
    :catch_8
    move-exception v5

    .line 597
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 600
    .end local v5    # "e":Ljava/io/IOException;
    :cond_7
    :goto_9
    if-eqz v1, :cond_8

    .line 602
    :try_start_b
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    .line 605
    goto :goto_a

    .line 603
    :catch_9
    move-exception v5

    .line 604
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 584
    .end local v5    # "e":Ljava/io/IOException;
    :cond_8
    :goto_a
    return-void

    .line 586
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_b
    if-eqz v2, :cond_9

    .line 588
    :try_start_c
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_a

    .line 591
    goto :goto_c

    .line 589
    :catch_a
    move-exception v5

    .line 590
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 593
    .end local v5    # "e":Ljava/io/IOException;
    :cond_9
    :goto_c
    if-eqz v0, :cond_a

    .line 595
    :try_start_d
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_b

    .line 598
    goto :goto_d

    .line 596
    :catch_b
    move-exception v5

    .line 597
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 600
    .end local v5    # "e":Ljava/io/IOException;
    :cond_a
    :goto_d
    if-eqz v1, :cond_b

    .line 602
    :try_start_e
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_c

    .line 605
    goto :goto_e

    .line 603
    :catch_c
    move-exception v5

    .line 604
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 605
    .end local v5    # "e":Ljava/io/IOException;
    :cond_b
    :goto_e
    throw v4

    .line 557
    .end local v0    # "inStream":Ljava/io/InputStream;
    .end local v1    # "outStream":Ljava/io/OutputStream;
    .end local v2    # "zf":Ljava/util/zip/ZipFile;
    .end local v3    # "zEntry":Ljava/util/zip/ZipEntry;
    :cond_c
    :goto_f
    return-void
.end method

.method public static unZipFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "zipFile"    # Ljava/lang/String;
    .param p1, "entryName"    # Ljava/lang/String;
    .param p2, "desPath"    # Ljava/lang/String;

    .line 505
    const/4 v0, 0x0

    .line 506
    .local v0, "zf":Ljava/util/zip/ZipFile;
    const/4 v1, 0x0

    .line 507
    .local v1, "in":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 509
    .local v2, "out":Ljava/io/OutputStream;
    :try_start_0
    new-instance v3, Ljava/util/zip/ZipFile;

    invoke-direct {v3, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    .line 510
    invoke-virtual {v0, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v3

    .line 512
    .local v3, "zEntry":Ljava/util/zip/ZipEntry;
    if-eqz v3, :cond_4

    if-eqz p1, :cond_4

    const-string v4, ".."

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_6

    .line 516
    :cond_0
    invoke-virtual {v0, v3}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v4

    move-object v1, v4

    .line 517
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 518
    .local v4, "str":Ljava/lang/String;
    new-instance v5, Ljava/lang/String;

    const-string v6, "8859_1"

    invoke-virtual {v4, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    const-string v7, "GB2312"

    invoke-direct {v5, v6, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-object v4, v5

    .line 519
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v2, v5

    .line 521
    const/16 v5, 0x1000

    new-array v5, v5, [B

    .line 524
    .local v5, "buffer":[B
    :goto_0
    invoke-virtual {v1, v5}, Ljava/io/InputStream;->read([B)I

    move-result v6

    move v7, v6

    .local v7, "realLength":I
    if-lez v6, :cond_1

    .line 525
    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6, v7}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 531
    .end local v3    # "zEntry":Ljava/util/zip/ZipEntry;
    .end local v4    # "str":Ljava/lang/String;
    .end local v5    # "buffer":[B
    .end local v7    # "realLength":I
    :cond_1
    if-eqz v1, :cond_2

    .line 532
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 534
    :catch_0
    move-exception v3

    .line 535
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 536
    :cond_2
    :goto_1
    nop

    .line 538
    :goto_2
    nop

    .line 539
    :try_start_2
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 541
    :catch_1
    move-exception v3

    .line 542
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_4

    .line 543
    :goto_3
    nop

    .line 545
    :goto_4
    nop

    .line 546
    :try_start_3
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_5

    .line 548
    :catch_2
    move-exception v3

    .line 549
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 551
    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_11

    .line 550
    :cond_3
    :goto_5
    goto :goto_11

    .line 531
    .local v3, "zEntry":Ljava/util/zip/ZipEntry;
    :cond_4
    :goto_6
    if-eqz v1, :cond_5

    .line 532
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_7

    .line 534
    :catch_3
    move-exception v4

    .line 535
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .end local v4    # "e":Ljava/io/IOException;
    goto :goto_8

    .line 536
    :cond_5
    :goto_7
    nop

    .line 538
    :goto_8
    if-eqz v2, :cond_6

    .line 539
    :try_start_5
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_9

    .line 541
    :catch_4
    move-exception v4

    .line 542
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .end local v4    # "e":Ljava/io/IOException;
    goto :goto_a

    .line 543
    :cond_6
    :goto_9
    nop

    .line 545
    :goto_a
    nop

    .line 546
    :try_start_6
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_b

    .line 548
    :catch_5
    move-exception v4

    .line 549
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .end local v4    # "e":Ljava/io/IOException;
    goto :goto_c

    .line 550
    :goto_b
    nop

    .line 513
    :goto_c
    return-void

    .line 530
    .end local v3    # "zEntry":Ljava/util/zip/ZipEntry;
    :catchall_0
    move-exception v3

    goto :goto_12

    .line 527
    :catch_6
    move-exception v3

    .line 528
    .local v3, "e":Ljava/lang/Exception;
    :try_start_7
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 531
    .end local v3    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_7

    .line 532
    :try_start_8
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_d

    .line 534
    :catch_7
    move-exception v3

    .line 535
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_e

    .line 536
    :cond_7
    :goto_d
    nop

    .line 538
    :goto_e
    if-eqz v2, :cond_8

    .line 539
    :try_start_9
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    goto :goto_f

    .line 541
    :catch_8
    move-exception v3

    .line 542
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_10

    .line 543
    :cond_8
    :goto_f
    nop

    .line 545
    :goto_10
    if-eqz v0, :cond_3

    .line 546
    :try_start_a
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_5

    .line 552
    :goto_11
    return-void

    .line 530
    :goto_12
    nop

    .line 531
    if-eqz v1, :cond_9

    .line 532
    :try_start_b
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    goto :goto_13

    .line 534
    :catch_9
    move-exception v4

    .line 535
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .end local v4    # "e":Ljava/io/IOException;
    goto :goto_14

    .line 536
    :cond_9
    :goto_13
    nop

    .line 538
    :goto_14
    if-eqz v2, :cond_a

    .line 539
    :try_start_c
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_a

    goto :goto_15

    .line 541
    :catch_a
    move-exception v4

    .line 542
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .end local v4    # "e":Ljava/io/IOException;
    goto :goto_16

    .line 543
    :cond_a
    :goto_15
    nop

    .line 545
    :goto_16
    if-eqz v0, :cond_b

    .line 546
    :try_start_d
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_b

    goto :goto_17

    .line 548
    :catch_b
    move-exception v4

    .line 549
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .end local v4    # "e":Ljava/io/IOException;
    nop

    .line 550
    :cond_b
    :goto_17
    throw v3
.end method

.method public static upZipSelectedFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 20
    .param p0, "form"    # Ljava/io/File;
    .param p1, "to"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 301
    const/4 v3, 0x0

    .line 302
    .local v3, "existAudio":Z
    if-nez v1, :cond_0

    .line 303
    return v3

    .line 306
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    .line 307
    .local v4, "targetDir":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v5, 0x0

    if-nez v0, :cond_1

    .line 309
    const-string v0, "ive"

    const-string v6, "add audio dir"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    move-result v0

    if-nez v0, :cond_1

    .line 311
    return v5

    .line 316
    :cond_1
    new-instance v0, Ljava/util/zip/ZipFile;

    invoke-direct {v0, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    move-object v6, v0

    .line 317
    .local v6, "zf":Ljava/util/zip/ZipFile;
    nop

    .line 320
    invoke-virtual {v6}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    :goto_0
    move-object v7, v0

    .end local v0    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    .local v7, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 321
    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/util/zip/ZipEntry;

    .line 322
    .local v8, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v9, p2

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 332
    .local v10, "fileName":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v11, v0

    .line 334
    .local v11, "desFile":Ljava/io/File;
    const-string v0, ".."

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 335
    nop

    .line 320
    .end local v4    # "targetDir":Ljava/io/File;
    .end local v8    # "entry":Ljava/util/zip/ZipEntry;
    .end local v10    # "fileName":Ljava/lang/String;
    .end local v11    # "desFile":Ljava/io/File;
    .local v19, "targetDir":Ljava/io/File;
    :goto_1
    move-object/from16 v19, v4

    goto/16 :goto_14

    .line 338
    .end local v19    # "targetDir":Ljava/io/File;
    .restart local v4    # "targetDir":Ljava/io/File;
    .restart local v8    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v10    # "fileName":Ljava/lang/String;
    .restart local v11    # "desFile":Ljava/io/File;
    :cond_2
    invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_d

    .line 339
    const/4 v0, 0x1

    .line 340
    .local v0, "newOk":Z
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_d

    .line 341
    invoke-virtual {v11}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v12

    .line 342
    .local v12, "fileParentDir":Ljava/io/File;
    if-eqz v12, :cond_3

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_3

    .line 343
    invoke-virtual {v12}, Ljava/io/File;->mkdirs()Z

    move-result v0

    .line 347
    .end local v0    # "newOk":Z
    .local v13, "newOk":Z
    :cond_3
    move v13, v0

    if-eqz v13, :cond_4

    .line 348
    :try_start_0
    invoke-virtual {v11}, Ljava/io/File;->createNewFile()Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v13, v0

    goto :goto_2

    .line 350
    :catch_0
    move-exception v0

    move-object v14, v0

    .line 351
    .local v0, "e":Ljava/io/IOException;
    const-string v14, "ZipUtil"

    const-string v15, " create new file failed"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_3

    .line 352
    :cond_4
    :goto_2
    nop

    .line 353
    :goto_3
    if-nez v13, :cond_5

    .line 354
    goto :goto_1

    .line 356
    :cond_5
    const/4 v14, 0x0

    .line 357
    .local v14, "inStream":Ljava/io/InputStream;
    const/4 v0, 0x0

    move-object v15, v0

    .line 361
    .local v15, "outStream":Ljava/io/OutputStream;
    const/16 v0, 0x1000

    :try_start_1
    new-array v0, v0, [B

    .line 363
    .local v0, "buffer":[B
    const/16 v16, 0x0

    .line 364
    .local v16, "realLength":I
    invoke-virtual {v6, v8}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v17

    move-object/from16 v14, v17

    .line 365
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v15, v5

    .line 366
    :goto_4
    invoke-virtual {v14, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    move/from16 v18, v5

    .end local v16    # "realLength":I
    .local v18, "realLength":I
    if-lez v5, :cond_6

    .line 367
    move/from16 v5, v18

    const/4 v1, 0x0

    invoke-virtual {v15, v0, v1, v5}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 366
    .end local v18    # "realLength":I
    .local v5, "realLength":I
    move/from16 v16, v5

    move-object/from16 v1, p0

    goto :goto_4

    .line 377
    .end local v0    # "buffer":[B
    .end local v5    # "realLength":I
    :cond_6
    const/4 v1, 0x0

    if-eqz v14, :cond_7

    .line 378
    :try_start_2
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_6

    .line 383
    :catchall_0
    move-exception v0

    goto :goto_5

    .line 380
    :catch_1
    move-exception v0

    move-object v5, v0

    .line 381
    .local v0, "ioe":Ljava/io/IOException;
    :try_start_3
    const-string v5, "ZipUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ioe is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "ioe":Ljava/io/IOException;
    goto :goto_6

    .line 383
    :goto_5
    const/4 v1, 0x0

    .end local v14    # "inStream":Ljava/io/InputStream;
    .local v1, "inStream":Ljava/io/InputStream;
    throw v0

    .restart local v14    # "inStream":Ljava/io/InputStream;
    :cond_7
    :goto_6
    const/4 v0, 0x0

    .line 384
    .end local v14    # "inStream":Ljava/io/InputStream;
    .local v0, "inStream":Ljava/io/InputStream;
    nop

    .line 386
    move-object v1, v0

    .line 387
    .end local v0    # "inStream":Ljava/io/InputStream;
    :try_start_4
    invoke-virtual {v15}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_8

    .line 392
    :catchall_1
    move-exception v0

    goto :goto_7

    .line 389
    :catch_2
    move-exception v0

    move-object v2, v0

    .line 390
    .local v0, "ioexception":Ljava/io/IOException;
    :try_start_5
    const-string v2, "ZipUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "ioexception is "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .end local v0    # "ioexception":Ljava/io/IOException;
    goto :goto_8

    .line 392
    :goto_7
    const/4 v2, 0x0

    .end local v15    # "outStream":Ljava/io/OutputStream;
    .local v2, "outStream":Ljava/io/OutputStream;
    throw v0

    .end local v2    # "outStream":Ljava/io/OutputStream;
    .restart local v15    # "outStream":Ljava/io/OutputStream;
    :cond_8
    :goto_8
    const/4 v0, 0x0

    .line 393
    .end local v15    # "outStream":Ljava/io/OutputStream;
    .local v0, "outStream":Ljava/io/OutputStream;
    nop

    .line 395
    nop

    .line 403
    move-object/from16 v19, v4

    goto/16 :goto_14

    .line 376
    .end local v0    # "outStream":Ljava/io/OutputStream;
    .end local v1    # "inStream":Ljava/io/InputStream;
    .restart local v14    # "inStream":Ljava/io/InputStream;
    .restart local v15    # "outStream":Ljava/io/OutputStream;
    :catchall_2
    move-exception v0

    move-object v1, v0

    goto/16 :goto_f

    .line 371
    :catch_3
    move-exception v0

    .line 372
    .local v0, "e":Ljava/lang/Exception;
    :try_start_6
    const-string v1, "ZipUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception is "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 377
    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v14, :cond_9

    .line 378
    :try_start_7
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_a

    .line 383
    :catchall_3
    move-exception v0

    goto :goto_9

    .line 380
    :catch_4
    move-exception v0

    move-object v1, v0

    .line 381
    .local v0, "ioe":Ljava/io/IOException;
    :try_start_8
    const-string v1, "ZipUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ioe is "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .end local v0    # "ioe":Ljava/io/IOException;
    goto :goto_a

    .line 383
    :goto_9
    const/4 v1, 0x0

    .end local v14    # "inStream":Ljava/io/InputStream;
    .restart local v1    # "inStream":Ljava/io/InputStream;
    throw v0

    .restart local v14    # "inStream":Ljava/io/InputStream;
    :cond_9
    :goto_a
    const/4 v0, 0x0

    .line 384
    .end local v14    # "inStream":Ljava/io/InputStream;
    .local v0, "inStream":Ljava/io/InputStream;
    nop

    .line 386
    move-object v1, v0

    .end local v0    # "inStream":Ljava/io/InputStream;
    if-eqz v15, :cond_8

    .line 387
    :try_start_9
    invoke-virtual {v15}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto :goto_8

    .line 392
    :catchall_4
    move-exception v0

    goto :goto_b

    .line 389
    :catch_5
    move-exception v0

    move-object v2, v0

    .line 390
    .local v0, "ioexception":Ljava/io/IOException;
    :try_start_a
    const-string v2, "ZipUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "ioexception is "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .end local v0    # "ioexception":Ljava/io/IOException;
    goto :goto_8

    .line 392
    :goto_b
    const/4 v2, 0x0

    .end local v15    # "outStream":Ljava/io/OutputStream;
    .restart local v2    # "outStream":Ljava/io/OutputStream;
    throw v0

    .line 369
    .end local v1    # "inStream":Ljava/io/InputStream;
    .end local v2    # "outStream":Ljava/io/OutputStream;
    .restart local v14    # "inStream":Ljava/io/InputStream;
    .restart local v15    # "outStream":Ljava/io/OutputStream;
    :catch_6
    move-exception v0

    .line 370
    .local v0, "e1":Ljava/io/IOException;
    :try_start_b
    const-string v1, "ZipUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IOException is "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 377
    .end local v0    # "e1":Ljava/io/IOException;
    if-eqz v14, :cond_a

    .line 378
    :try_start_c
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    goto :goto_d

    .line 383
    :catchall_5
    move-exception v0

    goto :goto_c

    .line 380
    :catch_7
    move-exception v0

    move-object v1, v0

    .line 381
    .local v0, "ioe":Ljava/io/IOException;
    :try_start_d
    const-string v1, "ZipUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ioe is "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .end local v0    # "ioe":Ljava/io/IOException;
    goto :goto_d

    .line 383
    :goto_c
    const/4 v1, 0x0

    .end local v14    # "inStream":Ljava/io/InputStream;
    .restart local v1    # "inStream":Ljava/io/InputStream;
    throw v0

    .restart local v14    # "inStream":Ljava/io/InputStream;
    :cond_a
    :goto_d
    const/4 v0, 0x0

    .line 384
    .end local v14    # "inStream":Ljava/io/InputStream;
    .local v0, "inStream":Ljava/io/InputStream;
    nop

    .line 386
    move-object v1, v0

    .end local v0    # "inStream":Ljava/io/InputStream;
    if-eqz v15, :cond_8

    .line 387
    :try_start_e
    invoke-virtual {v15}, Ljava/io/OutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    goto/16 :goto_8

    .line 392
    :catchall_6
    move-exception v0

    goto :goto_e

    .line 389
    :catch_8
    move-exception v0

    move-object v2, v0

    .line 390
    .local v0, "ioexception":Ljava/io/IOException;
    :try_start_f
    const-string v2, "ZipUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "ioexception is "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    .end local v0    # "ioexception":Ljava/io/IOException;
    goto/16 :goto_8

    .line 392
    :goto_e
    const/4 v2, 0x0

    .end local v15    # "outStream":Ljava/io/OutputStream;
    .restart local v2    # "outStream":Ljava/io/OutputStream;
    throw v0

    .line 376
    .end local v1    # "inStream":Ljava/io/InputStream;
    .end local v2    # "outStream":Ljava/io/OutputStream;
    .restart local v14    # "inStream":Ljava/io/InputStream;
    .restart local v15    # "outStream":Ljava/io/OutputStream;
    :goto_f
    nop

    .line 377
    if-eqz v14, :cond_b

    .line 378
    :try_start_10
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_9
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    .line 383
    move-object/from16 v19, v4

    goto :goto_11

    :catchall_7
    move-exception v0

    move-object/from16 v19, v4

    goto :goto_10

    .line 380
    :catch_9
    move-exception v0

    move-object v2, v0

    .line 381
    .local v0, "ioe":Ljava/io/IOException;
    :try_start_11
    const-string v2, "ZipUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_9

    move-object/from16 v19, v4

    :try_start_12
    const-string v4, "ioe is "

    .end local v4    # "targetDir":Ljava/io/File;
    .restart local v19    # "targetDir":Ljava/io/File;
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    .end local v0    # "ioe":Ljava/io/IOException;
    goto :goto_11

    .line 383
    :catchall_8
    move-exception v0

    goto :goto_10

    .end local v19    # "targetDir":Ljava/io/File;
    .restart local v4    # "targetDir":Ljava/io/File;
    :catchall_9
    move-exception v0

    move-object/from16 v19, v4

    .end local v4    # "targetDir":Ljava/io/File;
    .restart local v19    # "targetDir":Ljava/io/File;
    :goto_10
    const/4 v1, 0x0

    .end local v14    # "inStream":Ljava/io/InputStream;
    .restart local v1    # "inStream":Ljava/io/InputStream;
    throw v0

    .end local v1    # "inStream":Ljava/io/InputStream;
    .end local v19    # "targetDir":Ljava/io/File;
    .restart local v4    # "targetDir":Ljava/io/File;
    .restart local v14    # "inStream":Ljava/io/InputStream;
    :cond_b
    move-object/from16 v19, v4

    .end local v4    # "targetDir":Ljava/io/File;
    .local v2, "inStream":Ljava/io/InputStream;
    .restart local v19    # "targetDir":Ljava/io/File;
    :goto_11
    const/4 v0, 0x0

    .line 384
    .end local v14    # "inStream":Ljava/io/InputStream;
    .local v0, "inStream":Ljava/io/InputStream;
    nop

    .line 386
    move-object v2, v0

    .end local v0    # "inStream":Ljava/io/InputStream;
    if-eqz v15, :cond_c

    .line 387
    :try_start_13
    invoke-virtual {v15}, Ljava/io/OutputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_a
    .catchall {:try_start_13 .. :try_end_13} :catchall_a

    goto :goto_13

    .line 392
    :catchall_a
    move-exception v0

    goto :goto_12

    .line 389
    :catch_a
    move-exception v0

    move-object v4, v0

    .line 390
    .local v0, "ioexception":Ljava/io/IOException;
    :try_start_14
    const-string v4, "ZipUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "ioexception is "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_a

    .end local v0    # "ioexception":Ljava/io/IOException;
    goto :goto_13

    .line 392
    :goto_12
    const/4 v1, 0x0

    .end local v15    # "outStream":Ljava/io/OutputStream;
    .local v1, "outStream":Ljava/io/OutputStream;
    throw v0

    .end local v1    # "outStream":Ljava/io/OutputStream;
    .restart local v15    # "outStream":Ljava/io/OutputStream;
    :cond_c
    :goto_13
    const/4 v0, 0x0

    .line 393
    .end local v15    # "outStream":Ljava/io/OutputStream;
    .local v0, "outStream":Ljava/io/OutputStream;
    nop

    .line 392
    throw v1

    .line 320
    .end local v0    # "outStream":Ljava/io/OutputStream;
    .end local v2    # "inStream":Ljava/io/InputStream;
    .end local v8    # "entry":Ljava/util/zip/ZipEntry;
    .end local v10    # "fileName":Ljava/lang/String;
    .end local v11    # "desFile":Ljava/io/File;
    .end local v12    # "fileParentDir":Ljava/io/File;
    .end local v13    # "newOk":Z
    .end local v19    # "targetDir":Ljava/io/File;
    .restart local v4    # "targetDir":Ljava/io/File;
    :cond_d
    move-object/from16 v19, v4

    .end local v4    # "targetDir":Ljava/io/File;
    .restart local v19    # "targetDir":Ljava/io/File;
    goto :goto_14

    .line 403
    .end local v19    # "targetDir":Ljava/io/File;
    .restart local v4    # "targetDir":Ljava/io/File;
    :cond_e
    move-object/from16 v19, v4

    .line 320
    .end local v4    # "targetDir":Ljava/io/File;
    .restart local v19    # "targetDir":Ljava/io/File;
    :goto_14
    move-object v0, v7

    move-object/from16 v4, v19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v5, 0x0

    goto/16 :goto_0

    .line 405
    .end local v7    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    .end local v19    # "targetDir":Ljava/io/File;
    .restart local v4    # "targetDir":Ljava/io/File;
    :cond_f
    move-object/from16 v9, p2

    move-object/from16 v19, v4

    .end local v4    # "targetDir":Ljava/io/File;
    .restart local v19    # "targetDir":Ljava/io/File;
    :try_start_15
    invoke-virtual {v6}, Ljava/util/zip/ZipFile;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_b

    .line 408
    goto :goto_15

    .line 406
    :catch_b
    move-exception v0

    move-object v1, v0

    .line 407
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 409
    .end local v0    # "e":Ljava/io/IOException;
    :goto_15
    return v3
.end method

.method private static zipFile(Ljava/io/File;Ljava/util/zip/ZipOutputStream;Ljava/lang/String;)V
    .locals 7
    .param p0, "resFile"    # Ljava/io/File;
    .param p1, "zipout"    # Ljava/util/zip/ZipOutputStream;
    .param p2, "rootpath"    # Ljava/lang/String;

    .line 455
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 458
    const/4 v0, 0x0

    .line 459
    .local v0, "bis":Ljava/io/BufferedInputStream;
    const/4 v1, 0x0

    .line 461
    .local v1, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v2, Ljava/lang/String;

    const-string v3, "8859_1"

    invoke-virtual {p2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    const-string v4, "GB2312"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-object p2, v2

    .line 462
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 463
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 464
    .local v2, "fileList":[Ljava/io/File;
    if-eqz v2, :cond_1

    .line 465
    array-length v4, v2

    :goto_1
    if-ge v3, v4, :cond_1

    aget-object v5, v2, v3

    .line 466
    .local v5, "file":Ljava/io/File;
    invoke-static {v5, p1, p2}, Lhuawei/android/hwutil/ZipUtil;->zipFile(Ljava/io/File;Ljava/util/zip/ZipOutputStream;Ljava/lang/String;)V

    .line 465
    .end local v5    # "file":Ljava/io/File;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 469
    :cond_1
    new-instance v3, Ljava/util/zip/ZipEntry;

    invoke-direct {v3, p2}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 470
    .end local v2    # "fileList":[Ljava/io/File;
    goto :goto_3

    .line 471
    :cond_2
    const/16 v2, 0x2800

    new-array v4, v2, [B

    .line 472
    .local v4, "buffer":[B
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v1, v5

    .line 473
    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-direct {v5, v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object v0, v5

    .line 475
    new-instance v2, Ljava/util/zip/ZipEntry;

    invoke-direct {v2, p2}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 477
    :goto_2
    invoke-virtual {v0, v4}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v2

    move v5, v2

    .local v5, "realLength":I
    const/4 v6, -0x1

    if-eq v2, v6, :cond_3

    .line 478
    invoke-virtual {p1, v4, v3, v5}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    goto :goto_2

    .line 480
    :cond_3
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 481
    invoke-virtual {p1}, Ljava/util/zip/ZipOutputStream;->flush()V

    .line 482
    invoke-virtual {p1}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 488
    .end local v4    # "buffer":[B
    .end local v5    # "realLength":I
    :goto_3
    if-eqz v0, :cond_4

    .line 489
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 491
    :catch_0
    move-exception v2

    .line 492
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_5

    .line 493
    :cond_4
    :goto_4
    nop

    .line 495
    :goto_5
    if-eqz v1, :cond_5

    .line 496
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_6

    .line 498
    :catch_1
    move-exception v2

    .line 499
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 501
    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_9

    .line 500
    :cond_5
    :goto_6
    goto :goto_9

    .line 487
    :catchall_0
    move-exception v2

    goto :goto_a

    .line 484
    :catch_2
    move-exception v2

    .line 485
    .local v2, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 488
    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v0, :cond_6

    .line 489
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_7

    .line 491
    :catch_3
    move-exception v2

    .line 492
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_8

    .line 493
    :cond_6
    :goto_7
    nop

    .line 495
    :goto_8
    if-eqz v1, :cond_5

    .line 496
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_6

    .line 502
    :goto_9
    return-void

    .line 487
    :goto_a
    nop

    .line 488
    if-eqz v0, :cond_7

    .line 489
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_b

    .line 491
    :catch_4
    move-exception v3

    .line 492
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_c

    .line 493
    :cond_7
    :goto_b
    nop

    .line 495
    :goto_c
    if-eqz v1, :cond_8

    .line 496
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_d

    .line 498
    :catch_5
    move-exception v3

    .line 499
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .end local v3    # "e":Ljava/io/IOException;
    nop

    .line 500
    :cond_8
    :goto_d
    throw v2
.end method

.method public static zipFiles(Ljava/util/Collection;Ljava/io/File;Ljava/lang/String;)V
    .locals 4
    .param p1, "zipFile"    # Ljava/io/File;
    .param p2, "comment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    .local p0, "resFileList":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/io/File;>;"
    new-instance v0, Ljava/util/zip/ZipOutputStream;

    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v3, 0x2800

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {v0, v1}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 78
    .local v0, "zipout":Ljava/util/zip/ZipOutputStream;
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 79
    .local v2, "resFile":Ljava/io/File;
    const-string v3, ""

    invoke-static {v2, v0, v3}, Lhuawei/android/hwutil/ZipUtil;->zipFile(Ljava/io/File;Ljava/util/zip/ZipOutputStream;Ljava/lang/String;)V

    .line 80
    .end local v2    # "resFile":Ljava/io/File;
    goto :goto_0

    .line 81
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/zip/ZipOutputStream;->setComment(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v0}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 83
    return-void
.end method

.method public static zipFiles(Ljava/util/Collection;Ljava/io/File;)Z
    .locals 6
    .param p1, "zipFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            ")Z"
        }
    .end annotation

    .line 33
    .local p0, "resFileList":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/io/File;>;"
    const/4 v0, 0x0

    .line 34
    .local v0, "zipout":Ljava/util/zip/ZipOutputStream;
    const/4 v1, 0x0

    .line 35
    .local v1, "fos":Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    .line 37
    .local v2, "bos":Ljava/io/BufferedOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v1, v3

    .line 38
    new-instance v3, Ljava/io/BufferedOutputStream;

    const/16 v4, 0x2800

    invoke-direct {v3, v1, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    move-object v2, v3

    .line 39
    new-instance v3, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v3, v2}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v0, v3

    .line 40
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    .line 41
    .local v4, "resFile":Ljava/io/File;
    const-string v5, ""

    invoke-static {v4, v0, v5}, Lhuawei/android/hwutil/ZipUtil;->zipFile(Ljava/io/File;Ljava/util/zip/ZipOutputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .end local v4    # "resFile":Ljava/io/File;
    goto :goto_0

    .line 43
    :cond_0
    const/4 v3, 0x1

    .line 49
    nop

    .line 51
    :try_start_1
    invoke-virtual {v0}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 54
    goto :goto_1

    .line 52
    :catch_0
    move-exception v4

    .line 53
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 56
    .end local v4    # "e":Ljava/io/IOException;
    :goto_1
    nop

    .line 58
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 61
    goto :goto_2

    .line 59
    :catch_1
    move-exception v4

    .line 60
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 63
    .end local v4    # "e":Ljava/io/IOException;
    :goto_2
    nop

    .line 65
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 68
    goto :goto_3

    .line 66
    :catch_2
    move-exception v4

    .line 67
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 43
    .end local v4    # "e":Ljava/io/IOException;
    :goto_3
    return v3

    .line 49
    :catchall_0
    move-exception v3

    goto :goto_8

    .line 44
    :catch_3
    move-exception v3

    .line 45
    .local v3, "e":Ljava/io/FileNotFoundException;
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 49
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    if-eqz v0, :cond_1

    .line 51
    :try_start_5
    invoke-virtual {v0}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 54
    goto :goto_4

    .line 52
    :catch_4
    move-exception v3

    .line 53
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 56
    .end local v3    # "e":Ljava/io/IOException;
    :cond_1
    :goto_4
    if-eqz v1, :cond_2

    .line 58
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 61
    goto :goto_5

    .line 59
    :catch_5
    move-exception v3

    .line 60
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 63
    .end local v3    # "e":Ljava/io/IOException;
    :cond_2
    :goto_5
    if-eqz v2, :cond_3

    .line 65
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 68
    :goto_6
    goto :goto_7

    .line 66
    :catch_6
    move-exception v3

    .line 67
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_6

    .line 71
    :cond_3
    :goto_7
    const/4 v3, 0x0

    return v3

    .line 49
    :goto_8
    if-eqz v0, :cond_4

    .line 51
    :try_start_8
    invoke-virtual {v0}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 54
    goto :goto_9

    .line 52
    :catch_7
    move-exception v4

    .line 53
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 56
    .end local v4    # "e":Ljava/io/IOException;
    :cond_4
    :goto_9
    if-eqz v1, :cond_5

    .line 58
    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    .line 61
    goto :goto_a

    .line 59
    :catch_8
    move-exception v4

    .line 60
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 63
    .end local v4    # "e":Ljava/io/IOException;
    :cond_5
    :goto_a
    if-eqz v2, :cond_6

    .line 65
    :try_start_a
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    .line 68
    goto :goto_b

    .line 66
    :catch_9
    move-exception v4

    .line 67
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 68
    .end local v4    # "e":Ljava/io/IOException;
    :cond_6
    :goto_b
    throw v3
.end method
