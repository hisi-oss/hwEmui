.class Lcom/huawei/hsm/permission/minimms/EncodedStringValue;
.super Ljava/lang/Object;
.source "EncodedStringValue.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final TAG:Ljava/lang/String; = "EncodedStringValue"


# instance fields
.field private mCharacterSet:I

.field private mData:[B


# direct methods
.method public constructor <init>(I[B)V
    .locals 3
    .param p1, "charset"    # I
    .param p2, "data"    # [B

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    if-eqz p2, :cond_0

    .line 55
    iput p1, p0, Lcom/huawei/hsm/permission/minimms/EncodedStringValue;->mCharacterSet:I

    .line 56
    array-length v0, p2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/huawei/hsm/permission/minimms/EncodedStringValue;->mData:[B

    .line 57
    iget-object v0, p0, Lcom/huawei/hsm/permission/minimms/EncodedStringValue;->mData:[B

    array-length v1, p2

    const/4 v2, 0x0

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 58
    return-void

    .line 52
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "EncodedStringValue: Text-string is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/String;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    :try_start_0
    const-string v0, "utf-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hsm/permission/minimms/EncodedStringValue;->mData:[B

    .line 73
    const/16 v0, 0x6a

    iput v0, p0, Lcom/huawei/hsm/permission/minimms/EncodedStringValue;->mCharacterSet:I
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    goto :goto_0

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v1, "EncodedStringValue"

    const-string v2, "Default encoding must be supported."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "data"    # [B

    .line 67
    const/16 v0, 0x6a

    invoke-direct {p0, v0, p1}, Lcom/huawei/hsm/permission/minimms/EncodedStringValue;-><init>(I[B)V

    .line 68
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 112
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 113
    iget-object v0, p0, Lcom/huawei/hsm/permission/minimms/EncodedStringValue;->mData:[B

    array-length v0, v0

    .line 114
    .local v0, "len":I
    new-array v1, v0, [B

    .line 115
    .local v1, "dstBytes":[B
    iget-object v2, p0, Lcom/huawei/hsm/permission/minimms/EncodedStringValue;->mData:[B

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 118
    :try_start_0
    new-instance v2, Lcom/huawei/hsm/permission/minimms/EncodedStringValue;

    iget v3, p0, Lcom/huawei/hsm/permission/minimms/EncodedStringValue;->mCharacterSet:I

    invoke-direct {v2, v3, v1}, Lcom/huawei/hsm/permission/minimms/EncodedStringValue;-><init>(I[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 119
    :catch_0
    move-exception v2

    .line 120
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "EncodedStringValue"

    const-string v4, "failed to clone an EncodedStringValue"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 122
    new-instance v3, Ljava/lang/CloneNotSupportedException;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/CloneNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getTextString()[B
    .locals 4

    .line 85
    iget-object v0, p0, Lcom/huawei/hsm/permission/minimms/EncodedStringValue;->mData:[B

    array-length v0, v0

    new-array v0, v0, [B

    .line 87
    .local v0, "byteArray":[B
    iget-object v1, p0, Lcom/huawei/hsm/permission/minimms/EncodedStringValue;->mData:[B

    iget-object v2, p0, Lcom/huawei/hsm/permission/minimms/EncodedStringValue;->mData:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 88
    return-object v0
.end method

.method public setTextString([B)V
    .locals 3
    .param p1, "textString"    # [B

    .line 98
    if-eqz p1, :cond_0

    .line 102
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/huawei/hsm/permission/minimms/EncodedStringValue;->mData:[B

    .line 103
    iget-object v0, p0, Lcom/huawei/hsm/permission/minimms/EncodedStringValue;->mData:[B

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 104
    return-void

    .line 99
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "EncodedStringValue: Text-string is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
