.class public Lcom/huawei/hsm/permission/minimms/PduParser;
.super Ljava/lang/Object;
.source "PduParser.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final END_STRING_FLAG:I = 0x0

.field private static final LENGTH_QUOTE:I = 0x1f

.field private static final LOCAL_LOGV:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "PduParser"

.field private static final LONG_INTEGER_LENGTH_MAX:I = 0x8

.field private static final QUOTE:I = 0x7f

.field private static final QUOTED_STRING_FLAG:I = 0x22

.field private static final SHORT_INTEGER_MAX:I = 0x7f

.field private static final SHORT_LENGTH_MAX:I = 0x1e

.field private static final TEXT_MAX:I = 0x7f

.field private static final TEXT_MIN:I = 0x20

.field private static final TYPE_QUOTED_STRING:I = 0x1

.field private static final TYPE_TEXT_STRING:I = 0x0

.field private static final TYPE_TOKEN_STRING:I = 0x2


# instance fields
.field private mHeaders:Lcom/huawei/hsm/permission/minimms/PduHeaders;

.field private mPduDataStream:Ljava/io/ByteArrayInputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 30
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "pduDataStream"    # [B

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/hsm/permission/minimms/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    .line 57
    iput-object v0, p0, Lcom/huawei/hsm/permission/minimms/PduParser;->mHeaders:Lcom/huawei/hsm/permission/minimms/PduHeaders;

    .line 71
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lcom/huawei/hsm/permission/minimms/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    .line 72
    return-void
.end method

.method private static extractByteValue(Ljava/io/ByteArrayInputStream;)I
    .locals 2
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    .line 873
    nop

    .line 874
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 875
    .local v0, "temp":I
    nop

    .line 876
    and-int/lit16 v1, v0, 0xff

    return v1
.end method

.method private static getWapString(Ljava/io/ByteArrayInputStream;I)[B
    .locals 3
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;
    .param p1, "stringType"    # I

    .line 839
    nop

    .line 840
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 841
    .local v0, "out":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 842
    .local v1, "temp":I
    nop

    .line 843
    :goto_0
    const/4 v2, -0x1

    if-eq v2, v1, :cond_2

    if-eqz v1, :cond_2

    .line 845
    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    .line 846
    invoke-static {v1}, Lcom/huawei/hsm/permission/minimms/PduParser;->isTokenCharacter(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 847
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    .line 850
    :cond_0
    invoke-static {v1}, Lcom/huawei/hsm/permission/minimms/PduParser;->isText(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 851
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 855
    :cond_1
    :goto_1
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 856
    goto :goto_0

    .line 859
    :cond_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 860
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2

    .line 863
    :cond_3
    const/4 v2, 0x0

    return-object v2
.end method

.method private static isText(I)Z
    .locals 2
    .param p0, "ch"    # I

    .line 823
    const/4 v0, 0x1

    const/16 v1, 0x20

    if-lt p0, v1, :cond_0

    const/16 v1, 0x7e

    if-le p0, v1, :cond_1

    :cond_0
    const/16 v1, 0x80

    if-lt p0, v1, :cond_2

    const/16 v1, 0xff

    if-gt p0, v1, :cond_2

    .line 824
    :cond_1
    return v0

    .line 827
    :cond_2
    const/16 v1, 0xd

    if-eq p0, v1, :cond_3

    packed-switch p0, :pswitch_data_0

    .line 834
    const/4 v0, 0x0

    return v0

    .line 831
    :cond_3
    :pswitch_0
    return v0

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static isTokenCharacter(I)Z
    .locals 2
    .param p0, "ch"    # I

    .line 779
    const/4 v0, 0x0

    const/16 v1, 0x21

    if-lt p0, v1, :cond_2

    const/16 v1, 0x7e

    if-le p0, v1, :cond_0

    goto :goto_0

    .line 783
    :cond_0
    const/16 v1, 0x22

    if-eq p0, v1, :cond_1

    const/16 v1, 0x2c

    if-eq p0, v1, :cond_1

    const/16 v1, 0x2f

    if-eq p0, v1, :cond_1

    const/16 v1, 0x7b

    if-eq p0, v1, :cond_1

    const/16 v1, 0x7d

    if-eq p0, v1, :cond_1

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    .line 804
    const/4 v0, 0x1

    return v0

    .line 801
    :cond_1
    :pswitch_0
    return v0

    .line 780
    :cond_2
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x5b
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B
    .locals 10
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ByteArrayInputStream;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)[B"
        }
    .end annotation

    .line 1175
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    nop

    .line 1177
    const/4 v0, 0x0

    .line 1178
    .local v0, "contentType":[B
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1179
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v2

    .line 1180
    .local v2, "temp":I
    nop

    .line 1181
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1183
    and-int/lit16 v3, v2, 0xff

    .line 1185
    .local v3, "cur":I
    const/16 v4, 0x20

    const/16 v5, 0x7f

    const/4 v6, 0x0

    if-ge v3, v4, :cond_5

    .line 1186
    invoke-static {p0}, Lcom/huawei/hsm/permission/minimms/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    move-result v7

    .line 1187
    .local v7, "length":I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v8

    .line 1188
    .local v8, "startPos":I
    invoke-virtual {p0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1189
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v2

    .line 1190
    nop

    .line 1191
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1192
    and-int/lit16 v1, v2, 0xff

    .line 1194
    .local v1, "first":I
    if-lt v1, v4, :cond_0

    if-gt v1, v5, :cond_0

    .line 1195
    invoke-static {p0, v6}, Lcom/huawei/hsm/permission/minimms/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v0

    goto :goto_1

    .line 1196
    :cond_0
    if-le v1, v5, :cond_4

    .line 1197
    invoke-static {p0}, Lcom/huawei/hsm/permission/minimms/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v4

    .line 1199
    .local v4, "index":I
    sget-object v5, Lcom/huawei/hsm/permission/minimms/PduContentTypes;->contentTypes:[Ljava/lang/String;

    array-length v5, v5

    if-ge v4, v5, :cond_1

    .line 1200
    sget-object v5, Lcom/huawei/hsm/permission/minimms/PduContentTypes;->contentTypes:[Ljava/lang/String;

    aget-object v5, v5, v4

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    goto :goto_0

    .line 1202
    :cond_1
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1203
    invoke-static {p0, v6}, Lcom/huawei/hsm/permission/minimms/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v0

    .line 1205
    .end local v4    # "index":I
    :goto_0
    nop

    .line 1209
    :goto_1
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v4

    .line 1210
    .local v4, "endPos":I
    sub-int v5, v8, v4

    sub-int v5, v7, v5

    .line 1211
    .local v5, "parameterLen":I
    if-lez v5, :cond_2

    .line 1212
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {p0, p1, v9}, Lcom/huawei/hsm/permission/minimms/PduParser;->parseContentTypeParams(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;Ljava/lang/Integer;)V

    .line 1215
    :cond_2
    if-gez v5, :cond_3

    .line 1216
    sget-object v9, Lcom/huawei/hsm/permission/minimms/PduContentTypes;->contentTypes:[Ljava/lang/String;

    aget-object v6, v9, v6

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    return-object v6

    .line 1218
    .end local v1    # "first":I
    .end local v4    # "endPos":I
    .end local v5    # "parameterLen":I
    .end local v7    # "length":I
    .end local v8    # "startPos":I
    :cond_3
    goto :goto_2

    .line 1206
    .restart local v1    # "first":I
    .restart local v7    # "length":I
    .restart local v8    # "startPos":I
    :cond_4
    sget-object v4, Lcom/huawei/hsm/permission/minimms/PduContentTypes;->contentTypes:[Ljava/lang/String;

    aget-object v4, v4, v6

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    return-object v4

    .line 1218
    .end local v1    # "first":I
    .end local v7    # "length":I
    .end local v8    # "startPos":I
    :cond_5
    if-gt v3, v5, :cond_6

    .line 1219
    invoke-static {p0, v6}, Lcom/huawei/hsm/permission/minimms/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v0

    goto :goto_2

    .line 1221
    :cond_6
    sget-object v1, Lcom/huawei/hsm/permission/minimms/PduContentTypes;->contentTypes:[Ljava/lang/String;

    .line 1222
    invoke-static {p0}, Lcom/huawei/hsm/permission/minimms/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v4

    aget-object v1, v1, v4

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 1225
    :goto_2
    return-object v0
.end method

.method private static parseContentTypeParams(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;Ljava/lang/Integer;)V
    .locals 11
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;
    .param p2, "length"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ByteArrayInputStream;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .line 1006
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    nop

    .line 1007
    nop

    .line 1009
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    .line 1010
    .local v0, "startPos":I
    const/4 v1, 0x0

    .line 1011
    .local v1, "tempPos":I
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1012
    .local v2, "lastLen":I
    :goto_0
    if-lez v2, :cond_10

    .line 1013
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v3

    .line 1014
    .local v3, "param":I
    nop

    .line 1015
    add-int/lit8 v2, v2, -0x1

    .line 1017
    const/16 v4, 0x7f

    const/4 v5, 0x1

    const/16 v6, 0x81

    const/4 v7, 0x0

    if-eq v3, v6, :cond_9

    const/16 v6, 0x83

    if-eq v3, v6, :cond_5

    const/16 v8, 0x85

    const/16 v9, 0x97

    if-eq v3, v8, :cond_3

    if-eq v3, v9, :cond_3

    const/16 v8, 0x99

    if-eq v3, v8, :cond_1

    packed-switch v3, :pswitch_data_0

    .line 1150
    invoke-static {p0, v2}, Lcom/huawei/hsm/permission/minimms/PduParser;->skipWapValue(Ljava/io/ByteArrayInputStream;I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v5, v4, :cond_0

    .end local v3    # "param":I
    goto/16 :goto_6

    .line 1152
    .restart local v3    # "param":I
    :cond_0
    const/4 v2, 0x0

    .end local v3    # "param":I
    goto/16 :goto_6

    .line 1075
    .restart local v3    # "param":I
    :cond_1
    :pswitch_0
    invoke-static {p0, v7}, Lcom/huawei/hsm/permission/minimms/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v4

    .line 1076
    .local v4, "start":[B
    if-eqz v4, :cond_2

    if-eqz p1, :cond_2

    .line 1077
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1080
    :cond_2
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 1081
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sub-int v6, v0, v1

    sub-int/2addr v5, v6

    .line 1082
    .end local v2    # "lastLen":I
    .local v5, "lastLen":I
    goto :goto_1

    .line 1141
    .end local v4    # "start":[B
    .end local v5    # "lastLen":I
    .restart local v2    # "lastLen":I
    :cond_3
    invoke-static {p0, v7}, Lcom/huawei/hsm/permission/minimms/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v4

    .line 1142
    .local v4, "name":[B
    if-eqz v4, :cond_4

    if-eqz p1, :cond_4

    .line 1143
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1146
    :cond_4
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 1147
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sub-int v6, v0, v1

    sub-int/2addr v5, v6

    .line 1148
    .end local v2    # "lastLen":I
    .restart local v5    # "lastLen":I
    nop

    .line 1156
    .end local v3    # "param":I
    .end local v4    # "name":[B
    .end local v5    # "lastLen":I
    .restart local v2    # "lastLen":I
    :goto_1
    move v2, v5

    goto/16 :goto_6

    .line 1033
    .restart local v3    # "param":I
    :cond_5
    :pswitch_1
    invoke-virtual {p0, v5}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1034
    invoke-static {p0}, Lcom/huawei/hsm/permission/minimms/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v5

    .line 1035
    .local v5, "first":I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1036
    if-le v5, v4, :cond_7

    .line 1038
    invoke-static {p0}, Lcom/huawei/hsm/permission/minimms/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v4

    .line 1040
    .local v4, "index":I
    sget-object v7, Lcom/huawei/hsm/permission/minimms/PduContentTypes;->contentTypes:[Ljava/lang/String;

    array-length v7, v7

    if-ge v4, v7, :cond_6

    .line 1041
    sget-object v7, Lcom/huawei/hsm/permission/minimms/PduContentTypes;->contentTypes:[Ljava/lang/String;

    aget-object v7, v7, v4

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v7

    .line 1042
    .local v7, "type":[B
    if-eqz p1, :cond_6

    .line 1043
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1048
    .end local v4    # "index":I
    .end local v7    # "type":[B
    :cond_6
    goto :goto_2

    .line 1050
    :cond_7
    invoke-static {p0, v7}, Lcom/huawei/hsm/permission/minimms/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v4

    .line 1051
    .local v4, "type":[B
    if-eqz v4, :cond_8

    if-eqz p1, :cond_8

    .line 1052
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p1, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1056
    .end local v4    # "type":[B
    :cond_8
    :goto_2
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 1057
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int v6, v0, v1

    sub-int/2addr v4, v6

    .line 1058
    .end local v2    # "lastLen":I
    .local v4, "lastLen":I
    nop

    .line 1156
    .end local v3    # "param":I
    .end local v4    # "lastLen":I
    .end local v5    # "first":I
    .restart local v2    # "lastLen":I
    :goto_3
    move v2, v4

    goto :goto_6

    .line 1099
    .restart local v3    # "param":I
    :cond_9
    invoke-virtual {p0, v5}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1100
    invoke-static {p0}, Lcom/huawei/hsm/permission/minimms/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v5

    .line 1101
    .local v5, "firstValue":I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1103
    const/16 v8, 0x20

    if-le v5, v8, :cond_a

    if-lt v5, v4, :cond_b

    :cond_a
    if-nez v5, :cond_e

    .line 1106
    :cond_b
    invoke-static {p0, v7}, Lcom/huawei/hsm/permission/minimms/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v4

    .line 1108
    .local v4, "charsetStr":[B
    :try_start_0
    new-instance v8, Ljava/lang/String;

    .line 1109
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v9

    invoke-direct {v8, v4, v9}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 1108
    invoke-static {v8}, Lcom/huawei/hsm/permission/minimms/CharacterSets;->getMibEnumValue(Ljava/lang/String;)I

    move-result v8

    .line 1110
    .local v8, "charsetInt":I
    if-eqz p1, :cond_c

    .line 1111
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p1, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1118
    .end local v8    # "charsetInt":I
    :cond_c
    goto :goto_4

    .line 1113
    :catch_0
    move-exception v8

    .line 1115
    .local v8, "e":Ljava/io/UnsupportedEncodingException;
    if-eqz p1, :cond_d

    .line 1116
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1119
    .end local v4    # "charsetStr":[B
    .end local v8    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_d
    :goto_4
    goto :goto_5

    .line 1121
    :cond_e
    invoke-static {p0}, Lcom/huawei/hsm/permission/minimms/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v7

    long-to-int v4, v7

    .line 1122
    .local v4, "charset":I
    if-eqz p1, :cond_f

    .line 1123
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1127
    .end local v4    # "charset":I
    :cond_f
    :goto_5
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 1128
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int v6, v0, v1

    sub-int/2addr v4, v6

    .line 1129
    .end local v2    # "lastLen":I
    .local v4, "lastLen":I
    goto :goto_3

    .line 1156
    .end local v3    # "param":I
    .end local v4    # "lastLen":I
    .end local v5    # "firstValue":I
    .restart local v2    # "lastLen":I
    :goto_6
    goto/16 :goto_0

    .line 1158
    :cond_10
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x89
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/huawei/hsm/permission/minimms/EncodedStringValue;
    .locals 7
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    .line 675
    nop

    .line 676
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 677
    const/4 v0, 0x0

    .line 678
    .local v0, "returnValue":Lcom/huawei/hsm/permission/minimms/EncodedStringValue;
    const/4 v1, 0x0

    .line 679
    .local v1, "charset":I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v2

    .line 680
    .local v2, "temp":I
    nop

    .line 681
    and-int/lit16 v3, v2, 0xff

    .line 682
    .local v3, "first":I
    if-nez v3, :cond_0

    .line 683
    new-instance v4, Lcom/huawei/hsm/permission/minimms/EncodedStringValue;

    const-string v5, ""

    invoke-direct {v4, v5}, Lcom/huawei/hsm/permission/minimms/EncodedStringValue;-><init>(Ljava/lang/String;)V

    return-object v4

    .line 686
    :cond_0
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 687
    const/16 v4, 0x20

    if-ge v3, v4, :cond_1

    .line 688
    invoke-static {p0}, Lcom/huawei/hsm/permission/minimms/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 690
    invoke-static {p0}, Lcom/huawei/hsm/permission/minimms/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v1

    .line 693
    :cond_1
    const/4 v4, 0x0

    invoke-static {p0, v4}, Lcom/huawei/hsm/permission/minimms/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v4

    .line 696
    .local v4, "textString":[B
    if-eqz v1, :cond_2

    .line 697
    :try_start_0
    new-instance v5, Lcom/huawei/hsm/permission/minimms/EncodedStringValue;

    invoke-direct {v5, v1, v4}, Lcom/huawei/hsm/permission/minimms/EncodedStringValue;-><init>(I[B)V

    move-object v0, v5

    goto :goto_0

    .line 701
    :catch_0
    move-exception v5

    goto :goto_1

    .line 699
    :cond_2
    new-instance v5, Lcom/huawei/hsm/permission/minimms/EncodedStringValue;

    invoke-direct {v5, v4}, Lcom/huawei/hsm/permission/minimms/EncodedStringValue;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v5

    .line 703
    :goto_0
    nop

    .line 705
    return-object v0

    .line 701
    :goto_1
    nop

    .line 702
    .local v5, "e":Ljava/lang/Exception;
    const/4 v6, 0x0

    return-object v6
.end method

.method private parseHeaders(Ljava/io/ByteArrayInputStream;)Lcom/huawei/hsm/permission/minimms/PduHeaders;
    .locals 12
    .param p1, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    .line 108
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 109
    return-object v0

    .line 111
    :cond_0
    const/4 v1, 0x1

    .line 112
    .local v1, "keepParsing":Z
    new-instance v2, Lcom/huawei/hsm/permission/minimms/PduHeaders;

    invoke-direct {v2}, Lcom/huawei/hsm/permission/minimms/PduHeaders;-><init>()V

    .line 114
    .local v2, "headers":Lcom/huawei/hsm/permission/minimms/PduHeaders;
    :goto_0
    if-eqz v1, :cond_13

    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v3

    if-lez v3, :cond_13

    .line 115
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 116
    invoke-static {p1}, Lcom/huawei/hsm/permission/minimms/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v4

    .line 118
    .local v4, "headerField":I
    const/16 v5, 0x20

    const/4 v6, 0x0

    if-lt v4, v5, :cond_1

    const/16 v5, 0x7f

    if-gt v4, v5, :cond_1

    .line 119
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 120
    invoke-static {p1, v6}, Lcom/huawei/hsm/permission/minimms/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    .line 122
    goto :goto_0

    .line 124
    :cond_1
    const/16 v5, 0x81

    const/16 v7, 0x80

    packed-switch v4, :pswitch_data_0

    .end local v4    # "headerField":I
    :pswitch_0
    goto/16 :goto_12

    .line 561
    .restart local v4    # "headerField":I
    :pswitch_1
    invoke-static {p1, v0}, Lcom/huawei/hsm/permission/minimms/PduParser;->parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B

    .line 565
    goto/16 :goto_12

    .line 217
    :pswitch_2
    :try_start_0
    invoke-static {p1}, Lcom/huawei/hsm/permission/minimms/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v5

    .line 218
    .local v5, "value":J
    invoke-virtual {v2, v5, v6, v4}, Lcom/huawei/hsm/permission/minimms/PduHeaders;->setLongInteger(JI)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    .end local v5    # "value":J
    goto/16 :goto_12

    .line 219
    :catch_0
    move-exception v3

    .line 220
    .local v3, "e":Ljava/lang/RuntimeException;
    return-object v0

    .line 543
    .end local v3    # "e":Ljava/lang/RuntimeException;
    :pswitch_3
    invoke-static {p1}, Lcom/huawei/hsm/permission/minimms/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 546
    invoke-static {p1}, Lcom/huawei/hsm/permission/minimms/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    .line 550
    :try_start_1
    invoke-static {p1}, Lcom/huawei/hsm/permission/minimms/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 553
    goto/16 :goto_12

    .line 551
    :catch_1
    move-exception v3

    .line 552
    .restart local v3    # "e":Ljava/lang/RuntimeException;
    return-object v0

    .line 524
    .end local v3    # "e":Ljava/lang/RuntimeException;
    :pswitch_4
    invoke-static {p1}, Lcom/huawei/hsm/permission/minimms/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 527
    invoke-static {p1}, Lcom/huawei/hsm/permission/minimms/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    .line 530
    invoke-static {p1}, Lcom/huawei/hsm/permission/minimms/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/huawei/hsm/permission/minimms/EncodedStringValue;

    .line 534
    goto/16 :goto_12

    .line 496
    :pswitch_5
    invoke-static {p1}, Lcom/huawei/hsm/permission/minimms/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 500
    :try_start_2
    invoke-static {p1}, Lcom/huawei/hsm/permission/minimms/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3

    .line 503
    nop

    .line 507
    :try_start_3
    invoke-static {p1}, Lcom/huawei/hsm/permission/minimms/PduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v5

    .line 508
    .local v5, "perviouslySentDate":J
    const/16 v3, 0xa1

    invoke-virtual {v2, v5, v6, v3}, Lcom/huawei/hsm/permission/minimms/PduHeaders;->setLongInteger(JI)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    .line 512
    .end local v5    # "perviouslySentDate":J
    goto/16 :goto_12

    .line 510
    :catch_2
    move-exception v3

    .line 511
    .restart local v3    # "e":Ljava/lang/RuntimeException;
    return-object v0

    .line 501
    .end local v3    # "e":Ljava/lang/RuntimeException;
    :catch_3
    move-exception v3

    .line 502
    .restart local v3    # "e":Ljava/lang/RuntimeException;
    return-object v0

    .line 468
    .end local v3    # "e":Ljava/lang/RuntimeException;
    :pswitch_6
    invoke-static {p1}, Lcom/huawei/hsm/permission/minimms/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 472
    :try_start_4
    invoke-static {p1}, Lcom/huawei/hsm/permission/minimms/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_6

    .line 475
    nop

    .line 478
    nop

    .line 479
    invoke-static {p1}, Lcom/huawei/hsm/permission/minimms/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/huawei/hsm/permission/minimms/EncodedStringValue;

    move-result-object v3

    .line 480
    .local v3, "previouslySentBy":Lcom/huawei/hsm/permission/minimms/EncodedStringValue;
    if-eqz v3, :cond_12

    .line 482
    const/16 v5, 0xa0

    :try_start_5
    invoke-virtual {v2, v3, v5}, Lcom/huawei/hsm/permission/minimms/PduHeaders;->setEncodedStringValue(Lcom/huawei/hsm/permission/minimms/EncodedStringValue;I)V
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_4

    .line 487
    .end local v3    # "previouslySentBy":Lcom/huawei/hsm/permission/minimms/EncodedStringValue;
    .end local v4    # "headerField":I
    :goto_1
    goto/16 :goto_12

    .line 485
    .restart local v3    # "previouslySentBy":Lcom/huawei/hsm/permission/minimms/EncodedStringValue;
    .restart local v4    # "headerField":I
    :catch_4
    move-exception v5

    .line 486
    .local v5, "e":Ljava/lang/RuntimeException;
    return-object v0

    .line 484
    .end local v5    # "e":Ljava/lang/RuntimeException;
    :catch_5
    move-exception v5

    goto :goto_1

    .line 473
    .end local v3    # "previouslySentBy":Lcom/huawei/hsm/permission/minimms/EncodedStringValue;
    :catch_6
    move-exception v3

    .line 474
    .local v3, "e":Ljava/lang/RuntimeException;
    return-object v0

    .line 270
    .end local v3    # "e":Ljava/lang/RuntimeException;
    :pswitch_7
    const/16 v5, 0x96

    if-ne v5, v4, :cond_3

    .line 271
    invoke-virtual {p1, v3}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 272
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v3

    .line 273
    .local v3, "temp":I
    and-int/lit16 v5, v3, 0xff

    .line 274
    .local v5, "first":I
    if-nez v5, :cond_2

    .line 275
    goto/16 :goto_12

    .line 277
    :cond_2
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 280
    .end local v3    # "temp":I
    .end local v5    # "first":I
    :cond_3
    nop

    .line 281
    invoke-static {p1}, Lcom/huawei/hsm/permission/minimms/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/huawei/hsm/permission/minimms/EncodedStringValue;

    move-result-object v3

    .line 282
    .local v3, "value":Lcom/huawei/hsm/permission/minimms/EncodedStringValue;
    if-eqz v3, :cond_12

    .line 284
    :try_start_6
    invoke-virtual {v2, v3, v4}, Lcom/huawei/hsm/permission/minimms/PduHeaders;->setEncodedStringValue(Lcom/huawei/hsm/permission/minimms/EncodedStringValue;I)V
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_7

    .line 288
    .end local v3    # "value":Lcom/huawei/hsm/permission/minimms/EncodedStringValue;
    .end local v4    # "headerField":I
    :goto_2
    goto/16 :goto_12

    .line 286
    .restart local v3    # "value":Lcom/huawei/hsm/permission/minimms/EncodedStringValue;
    .restart local v4    # "headerField":I
    :catch_7
    move-exception v5

    .line 287
    .local v5, "e":Ljava/lang/RuntimeException;
    return-object v0

    .line 285
    .end local v5    # "e":Ljava/lang/RuntimeException;
    :catch_8
    move-exception v5

    goto :goto_2

    .line 452
    .end local v3    # "value":Lcom/huawei/hsm/permission/minimms/EncodedStringValue;
    :pswitch_8
    invoke-static {p1}, Lcom/huawei/hsm/permission/minimms/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v3

    .line 455
    .local v3, "version":I
    const/16 v5, 0x8d

    :try_start_7
    invoke-virtual {v2, v3, v5}, Lcom/huawei/hsm/permission/minimms/PduHeaders;->setOctet(II)V
    :try_end_7
    .catch Lcom/huawei/hsm/permission/minimms/InvalidHeaderValueException; {:try_start_7 .. :try_end_7} :catch_a
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_9

    .line 460
    goto/16 :goto_12

    .line 458
    :catch_9
    move-exception v5

    .line 459
    .restart local v5    # "e":Ljava/lang/RuntimeException;
    return-object v0

    .line 456
    .end local v5    # "e":Ljava/lang/RuntimeException;
    :catch_a
    move-exception v5

    .line 457
    .local v5, "e":Lcom/huawei/hsm/permission/minimms/InvalidHeaderValueException;
    return-object v0

    .line 127
    .end local v3    # "version":I
    .end local v5    # "e":Lcom/huawei/hsm/permission/minimms/InvalidHeaderValueException;
    :pswitch_9
    invoke-static {p1}, Lcom/huawei/hsm/permission/minimms/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v3

    .line 128
    .local v3, "messageType":I
    packed-switch v3, :pswitch_data_1

    .line 148
    :try_start_8
    invoke-virtual {v2, v3, v4}, Lcom/huawei/hsm/permission/minimms/PduHeaders;->setOctet(II)V
    :try_end_8
    .catch Lcom/huawei/hsm/permission/minimms/InvalidHeaderValueException; {:try_start_8 .. :try_end_8} :catch_c
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_b

    goto :goto_3

    .line 145
    :pswitch_a
    return-object v0

    .line 153
    :goto_3
    goto/16 :goto_12

    .line 151
    :catch_b
    move-exception v5

    .line 152
    .local v5, "e":Ljava/lang/RuntimeException;
    return-object v0

    .line 149
    .end local v5    # "e":Ljava/lang/RuntimeException;
    :catch_c
    move-exception v5

    .line 150
    .local v5, "e":Lcom/huawei/hsm/permission/minimms/InvalidHeaderValueException;
    return-object v0

    .line 408
    .end local v3    # "messageType":I
    .end local v5    # "e":Lcom/huawei/hsm/permission/minimms/InvalidHeaderValueException;
    :pswitch_b
    invoke-virtual {p1, v3}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 409
    invoke-static {p1}, Lcom/huawei/hsm/permission/minimms/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v3

    .line 411
    .local v3, "messageClass":I
    const/16 v8, 0x8a

    if-lt v3, v7, :cond_8

    .line 414
    if-ne v7, v3, :cond_4

    .line 415
    :try_start_9
    const-string v5, "personal"

    .line 416
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    .line 415
    invoke-virtual {v2, v5, v8}, Lcom/huawei/hsm/permission/minimms/PduHeaders;->setTextString([BI)V

    goto :goto_6

    .line 432
    :catch_d
    move-exception v5

    goto :goto_4

    .line 431
    :catch_e
    move-exception v5

    goto :goto_5

    .line 418
    :cond_4
    if-ne v5, v3, :cond_5

    .line 419
    const-string v5, "advertisement"

    .line 420
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    .line 419
    invoke-virtual {v2, v5, v8}, Lcom/huawei/hsm/permission/minimms/PduHeaders;->setTextString([BI)V

    goto :goto_6

    .line 422
    :cond_5
    const/16 v5, 0x82

    if-ne v5, v3, :cond_6

    .line 423
    const-string v5, "informational"

    .line 424
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    .line 423
    invoke-virtual {v2, v5, v8}, Lcom/huawei/hsm/permission/minimms/PduHeaders;->setTextString([BI)V

    goto :goto_6

    .line 426
    :cond_6
    const/16 v5, 0x83

    if-ne v5, v3, :cond_7

    .line 427
    const-string v5, "auto"

    .line 428
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    .line 427
    invoke-virtual {v2, v5, v8}, Lcom/huawei/hsm/permission/minimms/PduHeaders;->setTextString([BI)V
    :try_end_9
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_e
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_d

    goto :goto_6

    .line 432
    :goto_4
    nop

    .line 433
    .local v5, "e":Ljava/lang/RuntimeException;
    return-object v0

    .line 431
    .end local v5    # "e":Ljava/lang/RuntimeException;
    :goto_5
    nop

    .line 434
    .end local v3    # "messageClass":I
    .end local v4    # "headerField":I
    :cond_7
    :goto_6
    goto/16 :goto_12

    .line 437
    .restart local v3    # "messageClass":I
    .restart local v4    # "headerField":I
    :cond_8
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 438
    invoke-static {p1, v6}, Lcom/huawei/hsm/permission/minimms/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v5

    .line 439
    .local v5, "messageClassString":[B
    if-eqz v5, :cond_9

    .line 441
    :try_start_a
    invoke-virtual {v2, v5, v8}, Lcom/huawei/hsm/permission/minimms/PduHeaders;->setTextString([BI)V
    :try_end_a
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_10
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_f

    .line 445
    .end local v5    # "messageClassString":[B
    :goto_7
    goto :goto_8

    .line 443
    .restart local v5    # "messageClassString":[B
    :catch_f
    move-exception v6

    .line 444
    .local v6, "e":Ljava/lang/RuntimeException;
    return-object v0

    .line 442
    .end local v6    # "e":Ljava/lang/RuntimeException;
    :catch_10
    move-exception v6

    goto :goto_7

    .line 448
    .end local v5    # "messageClassString":[B
    :cond_9
    :goto_8
    goto/16 :goto_12

    .line 363
    .end local v3    # "messageClass":I
    :pswitch_c
    const/4 v3, 0x0

    .line 364
    .local v3, "from":Lcom/huawei/hsm/permission/minimms/EncodedStringValue;
    invoke-static {p1}, Lcom/huawei/hsm/permission/minimms/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 367
    invoke-static {p1}, Lcom/huawei/hsm/permission/minimms/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v5

    .line 370
    .local v5, "fromToken":I
    if-ne v7, v5, :cond_c

    .line 372
    invoke-static {p1}, Lcom/huawei/hsm/permission/minimms/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/huawei/hsm/permission/minimms/EncodedStringValue;

    move-result-object v3

    .line 373
    if-eqz v3, :cond_d

    .line 374
    invoke-virtual {v3}, Lcom/huawei/hsm/permission/minimms/EncodedStringValue;->getTextString()[B

    move-result-object v7

    .line 375
    .local v7, "address":[B
    if-eqz v7, :cond_b

    .line 376
    new-instance v8, Ljava/lang/String;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v9

    invoke-direct {v8, v7, v9}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 377
    .local v8, "str":Ljava/lang/String;
    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 378
    .local v9, "endIndex":I
    if-lez v9, :cond_a

    .line 379
    invoke-virtual {v8, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 382
    :cond_a
    :try_start_b
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/huawei/hsm/permission/minimms/EncodedStringValue;->setTextString([B)V
    :try_end_b
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_b} :catch_11

    .line 385
    goto :goto_9

    .line 383
    :catch_11
    move-exception v6

    .line 384
    .local v6, "e":Ljava/lang/NullPointerException;
    return-object v0

    .line 387
    .end local v6    # "e":Ljava/lang/NullPointerException;
    .end local v7    # "address":[B
    .end local v8    # "str":Ljava/lang/String;
    .end local v9    # "endIndex":I
    :cond_b
    :goto_9
    goto :goto_a

    .line 390
    :cond_c
    :try_start_c
    new-instance v6, Lcom/huawei/hsm/permission/minimms/EncodedStringValue;

    const-string v7, "insert-address-token"

    .line 391
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/huawei/hsm/permission/minimms/EncodedStringValue;-><init>([B)V
    :try_end_c
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_c} :catch_14

    move-object v3, v6

    .line 394
    nop

    .line 398
    :cond_d
    :goto_a
    const/16 v6, 0x89

    :try_start_d
    invoke-virtual {v2, v3, v6}, Lcom/huawei/hsm/permission/minimms/PduHeaders;->setEncodedStringValue(Lcom/huawei/hsm/permission/minimms/EncodedStringValue;I)V
    :try_end_d
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_d} :catch_13
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_12

    .line 402
    .end local v3    # "from":Lcom/huawei/hsm/permission/minimms/EncodedStringValue;
    .end local v4    # "headerField":I
    .end local v5    # "fromToken":I
    :goto_b
    goto/16 :goto_12

    .line 400
    .restart local v3    # "from":Lcom/huawei/hsm/permission/minimms/EncodedStringValue;
    .restart local v4    # "headerField":I
    .restart local v5    # "fromToken":I
    :catch_12
    move-exception v6

    .line 401
    .local v6, "e":Ljava/lang/RuntimeException;
    return-object v0

    .line 399
    .end local v6    # "e":Ljava/lang/RuntimeException;
    :catch_13
    move-exception v6

    goto :goto_b

    .line 392
    :catch_14
    move-exception v6

    .line 393
    .local v6, "e":Ljava/lang/NullPointerException;
    return-object v0

    .line 332
    .end local v3    # "from":Lcom/huawei/hsm/permission/minimms/EncodedStringValue;
    .end local v5    # "fromToken":I
    .end local v6    # "e":Ljava/lang/NullPointerException;
    :pswitch_d
    invoke-static {p1}, Lcom/huawei/hsm/permission/minimms/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 335
    invoke-static {p1}, Lcom/huawei/hsm/permission/minimms/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v3

    .line 340
    .local v3, "token":I
    :try_start_e
    invoke-static {p1}, Lcom/huawei/hsm/permission/minimms/PduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v6
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_16

    .line 343
    .local v6, "timeValue":J
    nop

    .line 342
    nop

    .line 344
    if-ne v5, v3, :cond_e

    .line 347
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    add-long/2addr v6, v8

    .line 351
    :cond_e
    :try_start_f
    invoke-virtual {v2, v6, v7, v4}, Lcom/huawei/hsm/permission/minimms/PduHeaders;->setLongInteger(JI)V
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_15

    .line 354
    goto/16 :goto_12

    .line 352
    :catch_15
    move-exception v5

    .line 353
    .local v5, "e":Ljava/lang/RuntimeException;
    return-object v0

    .line 341
    .end local v5    # "e":Ljava/lang/RuntimeException;
    .end local v6    # "timeValue":J
    :catch_16
    move-exception v5

    .line 342
    .restart local v5    # "e":Ljava/lang/RuntimeException;
    return-object v0

    .line 185
    .end local v3    # "token":I
    .end local v5    # "e":Ljava/lang/RuntimeException;
    :pswitch_e
    invoke-static {p1}, Lcom/huawei/hsm/permission/minimms/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v3

    .line 188
    .local v3, "value":I
    :try_start_10
    invoke-virtual {v2, v3, v4}, Lcom/huawei/hsm/permission/minimms/PduHeaders;->setOctet(II)V
    :try_end_10
    .catch Lcom/huawei/hsm/permission/minimms/InvalidHeaderValueException; {:try_start_10 .. :try_end_10} :catch_18
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_17

    .line 193
    goto/16 :goto_12

    .line 191
    :catch_17
    move-exception v5

    .line 192
    .restart local v5    # "e":Ljava/lang/RuntimeException;
    return-object v0

    .line 189
    .end local v5    # "e":Ljava/lang/RuntimeException;
    :catch_18
    move-exception v5

    .line 190
    .local v5, "e":Lcom/huawei/hsm/permission/minimms/InvalidHeaderValueException;
    return-object v0

    .line 203
    .end local v3    # "value":I
    .end local v5    # "e":Lcom/huawei/hsm/permission/minimms/InvalidHeaderValueException;
    :pswitch_f
    :try_start_11
    invoke-static {p1}, Lcom/huawei/hsm/permission/minimms/PduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v5

    .line 204
    .local v5, "value":J
    invoke-virtual {v2, v5, v6, v4}, Lcom/huawei/hsm/permission/minimms/PduHeaders;->setLongInteger(JI)V
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_19

    .line 207
    .end local v5    # "value":J
    goto :goto_12

    .line 205
    :catch_19
    move-exception v3

    .line 206
    .local v3, "e":Ljava/lang/RuntimeException;
    return-object v0

    .line 569
    .end local v3    # "e":Ljava/lang/RuntimeException;
    :pswitch_10
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 571
    .local v3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    nop

    .line 572
    invoke-static {p1, v3}, Lcom/huawei/hsm/permission/minimms/PduParser;->parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B

    move-result-object v5

    .line 574
    .local v5, "contentType":[B
    if-eqz v5, :cond_f

    .line 576
    const/16 v6, 0x84

    :try_start_12
    invoke-virtual {v2, v5, v6}, Lcom/huawei/hsm/permission/minimms/PduHeaders;->setTextString([BI)V
    :try_end_12
    .catch Ljava/lang/NullPointerException; {:try_start_12 .. :try_end_12} :catch_1b
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_1a

    .line 580
    :goto_c
    goto :goto_d

    .line 578
    :catch_1a
    move-exception v6

    .line 579
    .local v6, "e":Ljava/lang/RuntimeException;
    return-object v0

    .line 577
    .end local v6    # "e":Ljava/lang/RuntimeException;
    :catch_1b
    move-exception v6

    goto :goto_c

    .line 583
    :cond_f
    :goto_d
    const/4 v1, 0x0

    .line 584
    goto :goto_12

    .line 246
    .end local v3    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    .end local v5    # "contentType":[B
    :pswitch_11
    invoke-static {p1, v6}, Lcom/huawei/hsm/permission/minimms/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v3

    .line 247
    .local v3, "value":[B
    if-eqz v3, :cond_12

    .line 249
    :try_start_13
    invoke-virtual {v2, v3, v4}, Lcom/huawei/hsm/permission/minimms/PduHeaders;->setTextString([BI)V
    :try_end_13
    .catch Ljava/lang/NullPointerException; {:try_start_13 .. :try_end_13} :catch_1d
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_1c

    .line 253
    .end local v3    # "value":[B
    .end local v4    # "headerField":I
    :goto_e
    goto :goto_12

    .line 251
    .restart local v3    # "value":[B
    .restart local v4    # "headerField":I
    :catch_1c
    move-exception v5

    .line 252
    .local v5, "e":Ljava/lang/RuntimeException;
    return-object v0

    .line 250
    .end local v5    # "e":Ljava/lang/RuntimeException;
    :catch_1d
    move-exception v5

    goto :goto_e

    .line 298
    .end local v3    # "value":[B
    :pswitch_12
    nop

    .line 299
    invoke-static {p1}, Lcom/huawei/hsm/permission/minimms/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/huawei/hsm/permission/minimms/EncodedStringValue;

    move-result-object v3

    .line 300
    .local v3, "value":Lcom/huawei/hsm/permission/minimms/EncodedStringValue;
    if-eqz v3, :cond_12

    .line 301
    invoke-virtual {v3}, Lcom/huawei/hsm/permission/minimms/EncodedStringValue;->getTextString()[B

    move-result-object v5

    .line 302
    .local v5, "address":[B
    if-eqz v5, :cond_11

    .line 303
    new-instance v7, Ljava/lang/String;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v8

    invoke-direct {v7, v5, v8}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 304
    .local v7, "str":Ljava/lang/String;
    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 305
    .local v8, "endIndex":I
    if-lez v8, :cond_10

    .line 306
    invoke-virtual {v7, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 309
    :cond_10
    :try_start_14
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/huawei/hsm/permission/minimms/EncodedStringValue;->setTextString([B)V
    :try_end_14
    .catch Ljava/lang/NullPointerException; {:try_start_14 .. :try_end_14} :catch_1e

    .line 312
    goto :goto_f

    .line 310
    :catch_1e
    move-exception v6

    .line 311
    .local v6, "e":Ljava/lang/NullPointerException;
    return-object v0

    .line 316
    .end local v6    # "e":Ljava/lang/NullPointerException;
    .end local v7    # "str":Ljava/lang/String;
    .end local v8    # "endIndex":I
    :cond_11
    :goto_f
    :try_start_15
    invoke-virtual {v2, v3, v4}, Lcom/huawei/hsm/permission/minimms/PduHeaders;->appendEncodedStringValue(Lcom/huawei/hsm/permission/minimms/EncodedStringValue;I)V
    :try_end_15
    .catch Ljava/lang/NullPointerException; {:try_start_15 .. :try_end_15} :catch_20
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_1f

    .line 320
    .end local v5    # "address":[B
    :goto_10
    goto :goto_11

    .line 318
    .restart local v5    # "address":[B
    :catch_1f
    move-exception v6

    .line 319
    .local v6, "e":Ljava/lang/RuntimeException;
    return-object v0

    .line 317
    .end local v6    # "e":Ljava/lang/RuntimeException;
    :catch_20
    move-exception v6

    goto :goto_10

    .line 321
    .end local v5    # "address":[B
    :goto_11
    nop

    .line 596
    .end local v3    # "value":Lcom/huawei/hsm/permission/minimms/EncodedStringValue;
    .end local v4    # "headerField":I
    :cond_12
    :goto_12
    goto/16 :goto_0

    .line 598
    :cond_13
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x81
        :pswitch_12
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_11
        :pswitch_9
        :pswitch_8
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_7
        :pswitch_e
        :pswitch_e
        :pswitch_7
        :pswitch_12
        :pswitch_11
        :pswitch_e
        :pswitch_7
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_11
        :pswitch_f
        :pswitch_6
        :pswitch_5
        :pswitch_e
        :pswitch_e
        :pswitch_4
        :pswitch_e
        :pswitch_7
        :pswitch_e
        :pswitch_0
        :pswitch_e
        :pswitch_3
        :pswitch_e
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_e
        :pswitch_1
        :pswitch_2
        :pswitch_e
        :pswitch_7
        :pswitch_7
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_11
        :pswitch_11
        :pswitch_e
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x89
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
    .end packed-switch
.end method

.method private static parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    .locals 3
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    .line 948
    nop

    .line 949
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 950
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 951
    .local v0, "temp":I
    nop

    .line 952
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 953
    const/16 v1, 0x7f

    if-le v0, v1, :cond_0

    .line 954
    invoke-static {p0}, Lcom/huawei/hsm/permission/minimms/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v1

    int-to-long v1, v1

    return-wide v1

    .line 956
    :cond_0
    invoke-static {p0}, Lcom/huawei/hsm/permission/minimms/PduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v1

    return-wide v1
.end method

.method private static parseLongInteger(Ljava/io/ByteArrayInputStream;)J
    .locals 8
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    .line 916
    nop

    .line 917
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 918
    .local v0, "temp":I
    nop

    .line 919
    and-int/lit16 v1, v0, 0xff

    .line 921
    .local v1, "count":I
    const/16 v2, 0x8

    if-gt v1, v2, :cond_1

    .line 925
    const-wide/16 v3, 0x0

    .line 927
    .local v3, "result":J
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v1, :cond_0

    .line 928
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 929
    nop

    .line 930
    shl-long/2addr v3, v2

    .line 931
    and-int/lit16 v6, v0, 0xff

    int-to-long v6, v6

    add-long/2addr v3, v6

    .line 927
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 934
    .end local v5    # "i":I
    :cond_0
    return-wide v3

    .line 922
    .end local v3    # "result":J
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Octet count greater than 8 and I can\'t represent that!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static parseShortInteger(Ljava/io/ByteArrayInputStream;)I
    .locals 2
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    .line 893
    nop

    .line 894
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 895
    .local v0, "temp":I
    nop

    .line 896
    and-int/lit8 v1, v0, 0x7f

    return v1
.end method

.method private static parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I
    .locals 4
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    .line 613
    nop

    .line 614
    const/4 v0, 0x0

    .line 615
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 616
    .local v1, "temp":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 617
    return v1

    .line 620
    :cond_0
    and-int/lit16 v3, v1, 0x80

    if-eqz v3, :cond_1

    .line 621
    shl-int/lit8 v0, v0, 0x7

    .line 622
    and-int/lit8 v3, v1, 0x7f

    or-int/2addr v0, v3

    .line 623
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 624
    if-ne v1, v2, :cond_0

    .line 625
    return v1

    .line 629
    :cond_1
    shl-int/lit8 v0, v0, 0x7

    .line 630
    and-int/lit8 v2, v1, 0x7f

    or-int/2addr v0, v2

    .line 632
    return v0
.end method

.method private static parseValueLength(Ljava/io/ByteArrayInputStream;)I
    .locals 4
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    .line 650
    nop

    .line 651
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 652
    .local v0, "temp":I
    nop

    .line 653
    and-int/lit16 v1, v0, 0xff

    .line 655
    .local v1, "first":I
    const/16 v2, 0x1e

    if-gt v1, v2, :cond_0

    .line 656
    return v1

    .line 657
    :cond_0
    const/16 v2, 0x1f

    if-ne v1, v2, :cond_1

    .line 658
    invoke-static {p0}, Lcom/huawei/hsm/permission/minimms/PduParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    move-result v2

    return v2

    .line 661
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Value length > LENGTH_QUOTE!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static parseWapString(Ljava/io/ByteArrayInputStream;I)[B
    .locals 3
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;
    .param p1, "stringType"    # I

    .line 717
    nop

    .line 735
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 738
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 739
    .local v1, "temp":I
    nop

    .line 740
    if-ne v0, p1, :cond_0

    const/16 v2, 0x22

    if-ne v2, v1, :cond_0

    .line 743
    invoke-virtual {p0, v0}, Ljava/io/ByteArrayInputStream;->mark(I)V

    goto :goto_0

    .line 744
    :cond_0
    if-nez p1, :cond_1

    const/16 v2, 0x7f

    if-ne v2, v1, :cond_1

    .line 747
    invoke-virtual {p0, v0}, Ljava/io/ByteArrayInputStream;->mark(I)V

    goto :goto_0

    .line 750
    :cond_1
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 758
    :goto_0
    invoke-static {p0, p1}, Lcom/huawei/hsm/permission/minimms/PduParser;->getWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v0

    return-object v0
.end method

.method private static skipWapValue(Ljava/io/ByteArrayInputStream;I)I
    .locals 3
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;
    .param p1, "length"    # I

    .line 968
    nop

    .line 969
    new-array v0, p1, [B

    .line 970
    .local v0, "area":[B
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Ljava/io/ByteArrayInputStream;->read([BII)I

    move-result v1

    .line 971
    .local v1, "readLen":I
    if-ge v1, p1, :cond_0

    .line 972
    const/4 v2, -0x1

    return v2

    .line 974
    :cond_0
    return v1
.end method


# virtual methods
.method public getTargetCount()I
    .locals 3

    .line 81
    const/4 v0, 0x1

    .line 83
    .local v0, "sendToCount":I
    iget-object v1, p0, Lcom/huawei/hsm/permission/minimms/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    if-nez v1, :cond_0

    .line 84
    return v0

    .line 88
    :cond_0
    iget-object v1, p0, Lcom/huawei/hsm/permission/minimms/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    invoke-direct {p0, v1}, Lcom/huawei/hsm/permission/minimms/PduParser;->parseHeaders(Ljava/io/ByteArrayInputStream;)Lcom/huawei/hsm/permission/minimms/PduHeaders;

    move-result-object v1

    iput-object v1, p0, Lcom/huawei/hsm/permission/minimms/PduParser;->mHeaders:Lcom/huawei/hsm/permission/minimms/PduHeaders;

    .line 89
    iget-object v1, p0, Lcom/huawei/hsm/permission/minimms/PduParser;->mHeaders:Lcom/huawei/hsm/permission/minimms/PduHeaders;

    if-nez v1, :cond_1

    .line 91
    return v0

    .line 94
    :cond_1
    iget-object v1, p0, Lcom/huawei/hsm/permission/minimms/PduParser;->mHeaders:Lcom/huawei/hsm/permission/minimms/PduHeaders;

    const/16 v2, 0x97

    invoke-virtual {v1, v2}, Lcom/huawei/hsm/permission/minimms/PduHeaders;->getEncodedStringValues(I)[Lcom/huawei/hsm/permission/minimms/EncodedStringValue;

    move-result-object v1

    .line 95
    .local v1, "diTo":[Lcom/huawei/hsm/permission/minimms/EncodedStringValue;
    if-eqz v1, :cond_2

    .line 96
    array-length v0, v1

    .line 98
    :cond_2
    return v0
.end method
