.class public Landroid/mtp/HwMtpDatabaseImpl;
.super Ljava/lang/Object;
.source "HwMtpDatabaseImpl.java"

# interfaces
.implements Landroid/mtp/HwMtpDatabaseManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;
    }
.end annotation


# static fields
.field private static final COLUMN_NUM_ALBUM:I = 0x11

.field private static final COLUMN_NUM_ALBUM_ARTIST:I = 0x12

.field private static final COLUMN_NUM_ARTIST:I = 0x10

.field private static final COLUMN_NUM_COMPOSER:I = 0x16

.field private static final COLUMN_NUM_DATA:I = 0x4

.field private static final COLUMN_NUM_DATE_ADDED:I = 0x6

.field private static final COLUMN_NUM_DESCRIPTION:I = 0xf

.field private static final COLUMN_NUM_DISPLAYNAME:I = 0xa

.field private static final COLUMN_NUM_DURATION:I = 0x13

.field private static final COLUMN_NUM_FORMAT:I = 0x2

.field private static final COLUMN_NUM_HEIGHT:I = 0xe

.field private static final COLUMN_NUM_ISDRM:I = 0xc

.field private static final COLUMN_NUM_MEDIA_TYPE:I = 0xb

.field private static final COLUMN_NUM_MIME_TYPE:I = 0x8

.field private static final COLUMN_NUM_NAME:I = 0x17

.field private static final COLUMN_NUM_TITLE:I = 0x9

.field private static final COLUMN_NUM_TRACK:I = 0x14

.field private static final COLUMN_NUM_WIDTH:I = 0xd

.field private static final COLUMN_NUM_YEAR:I = 0x15

.field private static final COLUMN_TOTLE_NUM:I = 0x18

.field private static final CONST_KILO:I = 0x3e8

.field private static final DEBUG:Z

.field private static final EIGHT_BITS_MAX:I = 0xff

.field private static final FILE_SIZE_MAGNIFICATION:I = 0x3

.field private static final GROUP_4_PROP:I = 0x4

.field private static final GROUP_8_PROP:I = 0x8

.field private static final OBJECT_ALL_COLUMNS_PROJECTION:[Ljava/lang/String;

.field private static final PREFIX_LENGTH:I = 0x20

.field private static final ROOT_DIR_PARENT_ID:I = 0x0

.field private static final STORAGE_INDEX_FORMAT:I = 0x1

.field private static final STORAGE_INDEX_ID:I = 0x0

.field private static final STORAGE_INDEX_PARENT:I = 0x2

.field private static final SUFFIX_JPG_FILE:Ljava/lang/String; = ".jpg"

.field private static final TAG:Ljava/lang/String; = "HwMtpDatabaseImpl"

.field private static mHwMtpDatabaseManager:Landroid/mtp/HwMtpDatabaseManager;


# instance fields
.field private mGroup4Props:[I

.field private mGroup8Props:[I

.field private mLockObject:Ljava/lang/Object;

.field private mObjectColumnInfo:Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 25

    .line 42
    const-string v0, "HwMtpDatabaseImpl"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/mtp/HwMtpDatabaseImpl;->DEBUG:Z

    .line 106
    const-string v1, "_id"

    const-string v2, "storage_id"

    const-string v3, "format"

    const-string v4, "parent"

    const-string v5, "_data"

    const-string v6, "_size"

    const-string v7, "date_added"

    const-string v8, "date_modified"

    const-string v9, "mime_type"

    const-string v10, "title"

    const-string v11, "_display_name"

    const-string v12, "media_type"

    const-string v13, "is_drm"

    const-string v14, "width"

    const-string v15, "height"

    const-string v16, "description"

    const-string v17, "artist"

    const-string v18, "album"

    const-string v19, "album_artist"

    const-string v20, "duration"

    const-string v21, "track"

    const-string v22, "composer"

    const-string v23, "year"

    const-string v24, "name"

    filled-new-array/range {v1 .. v24}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/mtp/HwMtpDatabaseImpl;->OBJECT_ALL_COLUMNS_PROJECTION:[Ljava/lang/String;

    .line 145
    new-instance v0, Landroid/mtp/HwMtpDatabaseImpl;

    invoke-direct {v0}, Landroid/mtp/HwMtpDatabaseImpl;-><init>()V

    sput-object v0, Landroid/mtp/HwMtpDatabaseImpl;->mHwMtpDatabaseManager:Landroid/mtp/HwMtpDatabaseManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Landroid/mtp/HwMtpDatabaseImpl;->mGroup4Props:[I

    .line 135
    const/16 v0, 0x17

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Landroid/mtp/HwMtpDatabaseImpl;->mGroup8Props:[I

    .line 147
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/mtp/HwMtpDatabaseImpl;->mLockObject:Ljava/lang/Object;

    .line 149
    new-instance v0, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;

    invoke-direct {v0}, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;-><init>()V

    iput-object v0, p0, Landroid/mtp/HwMtpDatabaseImpl;->mObjectColumnInfo:Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;

    .line 152
    return-void

    nop

    :array_0
    .array-data 4
        0xdc02
        0xdc04
    .end array-data

    :array_1
    .array-data 4
        0xdc03
        0xdc07
        0xdc44
        0xdc09
        0xdc4e
        0xdc99
        0xdc41
        0xdc8b
        0xdc46
        0xdc9a
        0xdc8c
        0xde99
        0xde9a
        0xde93
        0xde92
        0xde94
        0xdc01
        0xdc0b
        0xdc89
        0xdce0
        0xdc9b
        0xdc96
        0xdc48
    .end array-data
.end method

.method private composeObjectInfoParemeters([C[JLjava/lang/String;JJ)V
    .locals 7
    .param p1, "outName"    # [C
    .param p2, "outSizeModified"    # [J
    .param p3, "data"    # Ljava/lang/String;
    .param p4, "size"    # J
    .param p6, "dateModified"    # J

    .line 937
    move-object v0, p3

    .line 938
    .local v0, "path":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 939
    return-void

    .line 941
    :cond_0
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 942
    .local v1, "lastSlash":I
    const/4 v2, 0x0

    if-ltz v1, :cond_1

    add-int/lit8 v3, v1, 0x1

    goto :goto_0

    :cond_1
    move v3, v2

    .line 943
    .local v3, "start":I
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    .line 944
    .local v4, "end":I
    sub-int v5, v4, v3

    const/16 v6, 0xff

    if-le v5, v6, :cond_2

    .line 945
    add-int/lit16 v4, v3, 0xff

    .line 947
    :cond_2
    invoke-virtual {v0, v3, v4, p1, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 948
    sub-int v5, v4, v3

    aput-char v2, p1, v5

    .line 950
    aput-wide p4, p2, v2

    .line 951
    const/4 v2, 0x1

    aput-wide p6, p2, v2

    .line 952
    return-void
.end method

.method private static formatDateTime(J)Ljava/lang/String;
    .locals 1
    .param p0, "seconds"    # J

    .line 1128
    invoke-static {p0, p1}, Landroid/mtp/MtpPropertyGroup;->formatDateTime(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getCurrentPropertyList(I[I)Landroid/mtp/MtpPropertyListEx;
    .locals 17
    .param p1, "handle"    # I
    .param p2, "proplist"    # [I

    move-object/from16 v0, p0

    move/from16 v7, p1

    .line 965
    move-object/from16 v8, p2

    iget-object v1, v0, Landroid/mtp/HwMtpDatabaseImpl;->mObjectColumnInfo:Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;

    invoke-static {v1}, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->access$100(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;)I

    move-result v1

    if-lez v1, :cond_d

    iget-object v1, v0, Landroid/mtp/HwMtpDatabaseImpl;->mObjectColumnInfo:Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;

    invoke-static {v1}, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->access$100(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;)I

    move-result v1

    if-eq v7, v1, :cond_0

    goto/16 :goto_2

    .line 968
    :cond_0
    new-instance v1, Landroid/mtp/MtpPropertyListEx;

    const/16 v2, 0x2001

    invoke-direct {v1, v2}, Landroid/mtp/MtpPropertyListEx;-><init>(I)V

    move-object v9, v1

    .line 970
    .local v9, "result":Landroid/mtp/MtpPropertyListEx;
    array-length v10, v8

    const/4 v11, 0x0

    move v12, v11

    :goto_0
    if-ge v12, v10, :cond_c

    aget v13, v8, v12

    .line 971
    .local v13, "item":I
    move v14, v13

    .line 972
    .local v14, "propertyCode":I
    const/16 v1, 0x2009

    const/4 v2, 0x4

    const/16 v3, 0x2e

    const/4 v4, 0x2

    sparse-switch v14, :sswitch_data_0

    .line 1106
    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v1, v9

    move v2, v7

    move v3, v14

    invoke-virtual/range {v1 .. v6}, Landroid/mtp/MtpPropertyListEx;->append(IIIJ)V

    .end local v13    # "item":I
    .end local v14    # "propertyCode":I
    goto/16 :goto_1

    .line 1055
    .restart local v13    # "item":I
    .restart local v14    # "propertyCode":I
    :sswitch_0
    const/4 v4, 0x6

    const-wide/16 v5, 0x0

    move-object v1, v9

    move v2, v7

    move v3, v14

    invoke-virtual/range {v1 .. v6}, Landroid/mtp/MtpPropertyListEx;->append(IIIJ)V

    .line 1056
    goto/16 :goto_1

    .line 1084
    :sswitch_1
    iget-object v1, v0, Landroid/mtp/HwMtpDatabaseImpl;->mObjectColumnInfo:Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;

    invoke-static {v1}, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->access$1100(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1085
    iget-object v1, v0, Landroid/mtp/HwMtpDatabaseImpl;->mObjectColumnInfo:Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;

    invoke-static {v1}, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->access$1100(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;)Ljava/lang/String;

    move-result-object v1

    .line 1087
    .local v1, "displayName":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Landroid/mtp/HwMtpDatabaseImpl;->needConvertHeifToJPG()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1088
    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 1089
    .local v2, "suffixIndex":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1090
    invoke-virtual {v9, v7, v14, v1}, Landroid/mtp/MtpPropertyListEx;->append(IILjava/lang/String;)V

    .line 1091
    goto/16 :goto_1

    .line 1094
    .end local v1    # "displayName":Ljava/lang/String;
    .end local v2    # "suffixIndex":I
    :cond_1
    iget-object v1, v0, Landroid/mtp/HwMtpDatabaseImpl;->mObjectColumnInfo:Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;

    invoke-static {v1}, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->access$1100(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v7, v14, v1}, Landroid/mtp/MtpPropertyListEx;->append(IILjava/lang/String;)V

    .line 1095
    goto/16 :goto_1

    .line 1097
    :sswitch_2
    iget-object v1, v0, Landroid/mtp/HwMtpDatabaseImpl;->mObjectColumnInfo:Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;

    invoke-static {v1}, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->access$1900(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v7, v14, v1}, Landroid/mtp/MtpPropertyListEx;->append(IILjava/lang/String;)V

    .line 1098
    goto/16 :goto_1

    .line 1037
    :sswitch_3
    const-string v1, ""

    .line 1038
    .local v1, "album":Ljava/lang/String;
    iget-object v2, v0, Landroid/mtp/HwMtpDatabaseImpl;->mObjectColumnInfo:Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;

    invoke-static {v2}, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->access$1200(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;)I

    move-result v2

    if-ne v2, v4, :cond_2

    .line 1039
    iget-object v2, v0, Landroid/mtp/HwMtpDatabaseImpl;->mObjectColumnInfo:Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;

    invoke-static {v2}, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->access$1800(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;)Ljava/lang/String;

    move-result-object v1

    .line 1041
    :cond_2
    invoke-virtual {v9, v7, v14, v1}, Landroid/mtp/MtpPropertyListEx;->append(IILjava/lang/String;)V

    .line 1042
    goto/16 :goto_1

    .line 1013
    .end local v1    # "album":Ljava/lang/String;
    :sswitch_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Landroid/mtp/HwMtpDatabaseImpl;->mObjectColumnInfo:Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;

    invoke-static {v2}, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->access$2200(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "0101T000000"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1014
    .local v1, "dateTime":Ljava/lang/String;
    invoke-virtual {v9, v7, v14, v1}, Landroid/mtp/MtpPropertyListEx;->append(IILjava/lang/String;)V

    .line 1015
    goto/16 :goto_1

    .line 1100
    .end local v1    # "dateTime":Ljava/lang/String;
    :sswitch_5
    iget-object v1, v0, Landroid/mtp/HwMtpDatabaseImpl;->mObjectColumnInfo:Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;

    invoke-static {v1}, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->access$2300(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v7, v14, v1}, Landroid/mtp/MtpPropertyListEx;->append(IILjava/lang/String;)V

    .line 1101
    goto/16 :goto_1

    .line 1045
    :sswitch_6
    iget-object v1, v0, Landroid/mtp/HwMtpDatabaseImpl;->mObjectColumnInfo:Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;

    invoke-static {v1}, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->access$1200(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;)I

    move-result v1

    if-ne v1, v4, :cond_3

    .line 1046
    iget-object v1, v0, Landroid/mtp/HwMtpDatabaseImpl;->mObjectColumnInfo:Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;

    invoke-static {v1}, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->access$2400(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v7, v14, v1}, Landroid/mtp/MtpPropertyListEx;->append(IILjava/lang/String;)V

    goto/16 :goto_1

    .line 1048
    :cond_3
    const-string v1, ""

    invoke-virtual {v9, v7, v14, v1}, Landroid/mtp/MtpPropertyListEx;->append(IILjava/lang/String;)V

    .line 1050
    goto/16 :goto_1

    .line 1024
    :sswitch_7
    const/4 v4, 0x4

    iget-object v1, v0, Landroid/mtp/HwMtpDatabaseImpl;->mObjectColumnInfo:Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;

    .line 1025
    invoke-static {v1}, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->access$2100(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;)I

    move-result v1

    rem-int/lit16 v1, v1, 0x3e8

    int-to-long v5, v1

    .line 1024
    move-object v1, v9

    move v2, v7

    move v3, v14

    invoke-virtual/range {v1 .. v6}, Landroid/mtp/MtpPropertyListEx;->append(IIIJ)V

    .line 1026
    goto/16 :goto_1

    .line 1081
    :sswitch_8
    const/4 v4, 0x6

    iget-object v1, v0, Landroid/mtp/HwMtpDatabaseImpl;->mObjectColumnInfo:Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;

    invoke-static {v1}, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->access$2000(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;)I

    move-result v1

    int-to-long v5, v1

    move-object v1, v9

    move v2, v7

    move v3, v14

    invoke-virtual/range {v1 .. v6}, Landroid/mtp/MtpPropertyListEx;->append(IIIJ)V

    .line 1082
    goto/16 :goto_1

    .line 1009
    :sswitch_9
    iget-object v1, v0, Landroid/mtp/HwMtpDatabaseImpl;->mObjectColumnInfo:Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;

    invoke-static {v1}, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->access$700(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;)J

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/mtp/HwMtpDatabaseImpl;->formatDateTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v7, v14, v1}, Landroid/mtp/MtpPropertyListEx;->append(IILjava/lang/String;)V

    .line 1010
    goto/16 :goto_1

    .line 1103
    :sswitch_a
    iget-object v1, v0, Landroid/mtp/HwMtpDatabaseImpl;->mObjectColumnInfo:Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;

    invoke-static {v1}, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->access$1600(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v7, v14, v1}, Landroid/mtp/MtpPropertyListEx;->append(IILjava/lang/String;)V

    .line 1104
    goto/16 :goto_1

    .line 1029
    :sswitch_b
    const-string v1, ""

    .line 1030
    .local v1, "artist":Ljava/lang/String;
    iget-object v2, v0, Landroid/mtp/HwMtpDatabaseImpl;->mObjectColumnInfo:Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;

    invoke-static {v2}, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->access$1200(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;)I

    move-result v2

    if-ne v2, v4, :cond_4

    .line 1031
    iget-object v2, v0, Landroid/mtp/HwMtpDatabaseImpl;->mObjectColumnInfo:Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;

    invoke-static {v2}, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->access$1700(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;)Ljava/lang/String;

    move-result-object v1

    .line 1033
    :cond_4
    invoke-virtual {v9, v7, v14, v1}, Landroid/mtp/MtpPropertyListEx;->append(IILjava/lang/String;)V

    .line 1034
    goto/16 :goto_1

    .line 993
    .end local v1    # "artist":Ljava/lang/String;
    :sswitch_c
    iget-object v3, v0, Landroid/mtp/HwMtpDatabaseImpl;->mObjectColumnInfo:Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;

    invoke-static {v3}, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->access$000(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;)[I

    move-result-object v3

    const/16 v4, 0x9

    aget v3, v3, v4

    if-eqz v3, :cond_5

    .line 994
    iget-object v1, v0, Landroid/mtp/HwMtpDatabaseImpl;->mObjectColumnInfo:Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;

    invoke-static {v1}, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->access$1000(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v7, v14, v1}, Landroid/mtp/MtpPropertyListEx;->append(IILjava/lang/String;)V

    goto/16 :goto_1

    .line 995
    :cond_5
    iget-object v3, v0, Landroid/mtp/HwMtpDatabaseImpl;->mObjectColumnInfo:Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;

    invoke-static {v3}, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->access$000(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;)[I

    move-result-object v3

    const/16 v4, 0x17

    aget v3, v3, v4

    if-eqz v3, :cond_6

    .line 997
    iget-object v1, v0, Landroid/mtp/HwMtpDatabaseImpl;->mObjectColumnInfo:Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;

    invoke-static {v1}, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->access$2400(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v7, v14, v1}, Landroid/mtp/MtpPropertyListEx;->append(IILjava/lang/String;)V

    goto/16 :goto_1

    .line 998
    :cond_6
    iget-object v3, v0, Landroid/mtp/HwMtpDatabaseImpl;->mObjectColumnInfo:Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;

    invoke-static {v3}, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->access$000(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;)[I

    move-result-object v3

    aget v2, v3, v2

    if-eqz v2, :cond_7

    .line 1000
    iget-object v1, v0, Landroid/mtp/HwMtpDatabaseImpl;->mObjectColumnInfo:Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;

    invoke-static {v1}, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->access$500(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/mtp/HwMtpDatabaseImpl;->nameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v7, v14, v1}, Landroid/mtp/MtpPropertyListEx;->append(IILjava/lang/String;)V

    goto/16 :goto_1

    .line 1002
    :cond_7
    invoke-virtual {v9, v1}, Landroid/mtp/MtpPropertyListEx;->setResult(I)V

    .line 1004
    goto/16 :goto_1

    .line 1018
    :sswitch_d
    iget-object v1, v0, Landroid/mtp/HwMtpDatabaseImpl;->mObjectColumnInfo:Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;

    invoke-static {v1}, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->access$200(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;)I

    move-result v1

    int-to-long v1, v1

    .line 1019
    .local v1, "puid":J
    const/16 v3, 0x20

    shl-long/2addr v1, v3

    .line 1020
    int-to-long v3, v7

    add-long v15, v1, v3

    .line 1021
    .end local v1    # "puid":J
    .local v15, "puid":J
    const/16 v4, 0xa

    move-object v1, v9

    move v2, v7

    move v3, v14

    move-wide v5, v15

    invoke-virtual/range {v1 .. v6}, Landroid/mtp/MtpPropertyListEx;->append(IIIJ)V

    .line 1022
    goto/16 :goto_1

    .line 1078
    .end local v15    # "puid":J
    :sswitch_e
    const/4 v4, 0x6

    iget-object v1, v0, Landroid/mtp/HwMtpDatabaseImpl;->mObjectColumnInfo:Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;

    invoke-static {v1}, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->access$400(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;)I

    move-result v1

    int-to-long v5, v1

    move-object v1, v9

    move v2, v7

    move v3, v14

    invoke-virtual/range {v1 .. v6}, Landroid/mtp/MtpPropertyListEx;->append(IIIJ)V

    .line 1079
    goto/16 :goto_1

    .line 1006
    :sswitch_f
    iget-object v1, v0, Landroid/mtp/HwMtpDatabaseImpl;->mObjectColumnInfo:Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;

    invoke-static {v1}, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->access$800(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;)J

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/mtp/HwMtpDatabaseImpl;->formatDateTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v7, v14, v1}, Landroid/mtp/MtpPropertyListEx;->append(IILjava/lang/String;)V

    .line 1007
    goto/16 :goto_1

    .line 975
    :sswitch_10
    iget-object v4, v0, Landroid/mtp/HwMtpDatabaseImpl;->mObjectColumnInfo:Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;

    invoke-static {v4}, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->access$000(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;)[I

    move-result-object v4

    aget v2, v4, v2

    if-eqz v2, :cond_9

    .line 976
    iget-object v1, v0, Landroid/mtp/HwMtpDatabaseImpl;->mObjectColumnInfo:Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;

    invoke-static {v1}, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->access$500(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 977
    iget-object v1, v0, Landroid/mtp/HwMtpDatabaseImpl;->mObjectColumnInfo:Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;

    invoke-static {v1}, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->access$500(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;)Ljava/lang/String;

    move-result-object v1

    .line 979
    .local v1, "filePath":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Landroid/mtp/HwMtpDatabaseImpl;->needConvertHeifToJPG()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 980
    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 981
    .restart local v2    # "suffixIndex":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 982
    invoke-static {v1}, Landroid/mtp/HwMtpDatabaseImpl;->nameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v7, v14, v3}, Landroid/mtp/MtpPropertyListEx;->append(IILjava/lang/String;)V

    .line 983
    goto/16 :goto_1

    .line 985
    .end local v2    # "suffixIndex":I
    :cond_8
    iget-object v2, v0, Landroid/mtp/HwMtpDatabaseImpl;->mObjectColumnInfo:Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;

    invoke-static {v2}, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->access$500(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/mtp/HwMtpDatabaseImpl;->nameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v7, v14, v2}, Landroid/mtp/MtpPropertyListEx;->append(IILjava/lang/String;)V

    .line 986
    .end local v1    # "filePath":Ljava/lang/String;
    goto :goto_1

    .line 988
    :cond_9
    invoke-virtual {v9, v1}, Landroid/mtp/MtpPropertyListEx;->setResult(I)V

    .line 990
    goto :goto_1

    .line 1072
    :sswitch_11
    invoke-direct/range {p0 .. p0}, Landroid/mtp/HwMtpDatabaseImpl;->needConvertHeifToJPG()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1073
    iget-object v1, v0, Landroid/mtp/HwMtpDatabaseImpl;->mObjectColumnInfo:Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;

    iget-object v2, v0, Landroid/mtp/HwMtpDatabaseImpl;->mObjectColumnInfo:Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;

    invoke-static {v2}, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->access$600(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;)J

    move-result-wide v2

    const-wide/16 v4, 0x3

    mul-long/2addr v2, v4

    invoke-static {v1, v2, v3}, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->access$602(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;J)J

    .line 1075
    :cond_a
    const/16 v4, 0x8

    iget-object v1, v0, Landroid/mtp/HwMtpDatabaseImpl;->mObjectColumnInfo:Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;

    invoke-static {v1}, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->access$600(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;)J

    move-result-wide v5

    move-object v1, v9

    move v2, v7

    move v3, v14

    invoke-virtual/range {v1 .. v6}, Landroid/mtp/MtpPropertyListEx;->append(IIIJ)V

    .line 1076
    goto :goto_1

    .line 1062
    :sswitch_12
    const/4 v4, 0x4

    const-wide/16 v5, 0x0

    move-object v1, v9

    move v2, v7

    move v3, v14

    invoke-virtual/range {v1 .. v6}, Landroid/mtp/MtpPropertyListEx;->append(IIIJ)V

    .line 1063
    goto :goto_1

    .line 1068
    :sswitch_13
    const/4 v4, 0x4

    iget-object v1, v0, Landroid/mtp/HwMtpDatabaseImpl;->mObjectColumnInfo:Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;

    invoke-static {v1}, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->access$300(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;)I

    move-result v1

    int-to-long v5, v1

    move-object v1, v9

    move v2, v7

    move v3, v14

    invoke-virtual/range {v1 .. v6}, Landroid/mtp/MtpPropertyListEx;->append(IIIJ)V

    .line 1069
    goto :goto_1

    .line 1065
    :sswitch_14
    const/4 v4, 0x6

    iget-object v1, v0, Landroid/mtp/HwMtpDatabaseImpl;->mObjectColumnInfo:Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;

    invoke-static {v1}, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->access$200(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;)I

    move-result v1

    int-to-long v5, v1

    move-object v1, v9

    move v2, v7

    move v3, v14

    invoke-virtual/range {v1 .. v6}, Landroid/mtp/MtpPropertyListEx;->append(IIIJ)V

    .line 1066
    nop

    .line 970
    .end local v13    # "item":I
    .end local v14    # "propertyCode":I
    :cond_b
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 1110
    :cond_c
    return-object v9

    .line 966
    .end local v9    # "result":Landroid/mtp/MtpPropertyListEx;
    :cond_d
    :goto_2
    const/4 v1, 0x0

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        0xdc01 -> :sswitch_14
        0xdc02 -> :sswitch_13
        0xdc03 -> :sswitch_12
        0xdc04 -> :sswitch_11
        0xdc07 -> :sswitch_10
        0xdc09 -> :sswitch_f
        0xdc0b -> :sswitch_e
        0xdc41 -> :sswitch_d
        0xdc44 -> :sswitch_c
        0xdc46 -> :sswitch_b
        0xdc48 -> :sswitch_a
        0xdc4e -> :sswitch_9
        0xdc89 -> :sswitch_8
        0xdc8b -> :sswitch_7
        0xdc8c -> :sswitch_6
        0xdc96 -> :sswitch_5
        0xdc99 -> :sswitch_4
        0xdc9a -> :sswitch_3
        0xdc9b -> :sswitch_2
        0xdce0 -> :sswitch_1
        0xde92 -> :sswitch_12
        0xde93 -> :sswitch_0
        0xde94 -> :sswitch_12
        0xde99 -> :sswitch_0
        0xde9a -> :sswitch_0
    .end sparse-switch
.end method

.method public static getDefault()Landroid/mtp/HwMtpDatabaseManager;
    .locals 1

    .line 160
    sget-object v0, Landroid/mtp/HwMtpDatabaseImpl;->mHwMtpDatabaseManager:Landroid/mtp/HwMtpDatabaseManager;

    return-object v0
.end method

.method private getGroupObjectProperties(I)[I
    .locals 1
    .param p1, "groupCode"    # I

    .line 955
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 956
    iget-object v0, p0, Landroid/mtp/HwMtpDatabaseImpl;->mGroup4Props:[I

    return-object v0

    .line 957
    :cond_0
    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    .line 958
    iget-object v0, p0, Landroid/mtp/HwMtpDatabaseImpl;->mGroup8Props:[I

    return-object v0

    .line 960
    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0
.end method

.method private static nameFromPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "path"    # Ljava/lang/String;

    .line 1115
    const/4 v0, 0x0

    .line 1116
    .local v0, "start":I
    const/16 v1, 0x2f

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 1117
    .local v1, "lastSlash":I
    if-ltz v1, :cond_0

    .line 1118
    add-int/lit8 v0, v1, 0x1

    .line 1120
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 1121
    .local v2, "end":I
    sub-int v3, v2, v0

    const/16 v4, 0xff

    if-le v3, v4, :cond_1

    .line 1122
    add-int/lit16 v2, v0, 0xff

    .line 1124
    :cond_1
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private needConvertHeifToJPG()Z
    .locals 5

    .line 1134
    invoke-static {}, Landroid/mtp/MtpDatabase;->issIsHeifSettingAutomaticMode()Z

    move-result v0

    .line 1135
    .local v0, "isAutomaticMode":Z
    iget-object v1, p0, Landroid/mtp/HwMtpDatabaseImpl;->mObjectColumnInfo:Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;

    invoke-static {v1}, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->access$300(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x3812

    if-ne v1, v4, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 1136
    .local v1, "isHeifFile":Z
    :goto_0
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    move v2, v3

    nop

    :cond_1
    return v2
.end method


# virtual methods
.method public getObjectPropertyList(II)Landroid/mtp/MtpPropertyListEx;
    .locals 3
    .param p1, "property"    # I
    .param p2, "handle"    # I

    .line 289
    iget-object v0, p0, Landroid/mtp/HwMtpDatabaseImpl;->mLockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 290
    :try_start_0
    iget-object v1, p0, Landroid/mtp/HwMtpDatabaseImpl;->mObjectColumnInfo:Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;

    invoke-static {v1}, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->access$100(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;)I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Landroid/mtp/HwMtpDatabaseImpl;->mObjectColumnInfo:Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;

    invoke-static {v1}, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->access$100(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;)I

    move-result v1

    if-eq p2, v1, :cond_0

    goto :goto_0

    .line 293
    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-direct {p0, p2, v1}, Landroid/mtp/HwMtpDatabaseImpl;->getCurrentPropertyList(I[I)Landroid/mtp/MtpPropertyListEx;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 291
    :cond_1
    :goto_0
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 294
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getObjectPropertyList(II[I)Landroid/mtp/MtpPropertyListEx;
    .locals 3
    .param p1, "handle"    # I
    .param p2, "format"    # I
    .param p3, "proplist"    # [I

    .line 306
    iget-object v0, p0, Landroid/mtp/HwMtpDatabaseImpl;->mLockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 307
    :try_start_0
    iget-object v1, p0, Landroid/mtp/HwMtpDatabaseImpl;->mObjectColumnInfo:Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;

    invoke-static {v1}, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->access$100(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;)I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Landroid/mtp/HwMtpDatabaseImpl;->mObjectColumnInfo:Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;

    invoke-static {v1}, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->access$100(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;)I

    move-result v1

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 310
    :cond_0
    if-eqz p2, :cond_1

    iget-object v1, p0, Landroid/mtp/HwMtpDatabaseImpl;->mObjectColumnInfo:Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;

    invoke-static {v1}, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->access$300(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;)I

    move-result v1

    if-eq v1, p2, :cond_1

    .line 311
    new-instance v1, Landroid/mtp/MtpPropertyListEx;

    const/16 v2, 0x2009

    invoke-direct {v1, v2}, Landroid/mtp/MtpPropertyListEx;-><init>(I)V

    monitor-exit v0

    return-object v1

    .line 313
    :cond_1
    invoke-direct {p0, p1, p3}, Landroid/mtp/HwMtpDatabaseImpl;->getCurrentPropertyList(I[I)Landroid/mtp/MtpPropertyListEx;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 308
    :cond_2
    :goto_0
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 314
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getObjectPropertyList(Landroid/mtp/MtpDatabase;IIII)Landroid/mtp/MtpPropertyListEx;
    .locals 3
    .param p1, "database"    # Landroid/mtp/MtpDatabase;
    .param p2, "handle"    # I
    .param p3, "format"    # I
    .param p4, "property"    # I
    .param p5, "groupCode"    # I

    .line 269
    iget-object v0, p0, Landroid/mtp/HwMtpDatabaseImpl;->mLockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 270
    if-eqz p5, :cond_1

    .line 271
    const/4 v1, 0x4

    if-eq p5, v1, :cond_0

    const/16 v1, 0x8

    if-eq p5, v1, :cond_0

    .line 272
    :try_start_0
    new-instance v1, Landroid/mtp/MtpPropertyListEx;

    const v2, 0xa805

    invoke-direct {v1, v2}, Landroid/mtp/MtpPropertyListEx;-><init>(I)V

    monitor-exit v0

    return-object v1

    .line 274
    :cond_0
    invoke-direct {p0, p5}, Landroid/mtp/HwMtpDatabaseImpl;->getGroupObjectProperties(I)[I

    move-result-object v1

    invoke-direct {p0, p2, v1}, Landroid/mtp/HwMtpDatabaseImpl;->getCurrentPropertyList(I[I)Landroid/mtp/MtpPropertyListEx;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 276
    :cond_1
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 278
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hwBeginSendObject(Ljava/lang/String;Landroid/database/Cursor;)I
    .locals 5
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "c"    # Landroid/database/Cursor;

    .line 175
    new-instance v0, Landroid/os/storage/ExternalStorageFileImpl;

    invoke-direct {v0, p1}, Landroid/os/storage/ExternalStorageFileImpl;-><init>(Ljava/lang/String;)V

    .line 176
    .local v0, "tempFile":Landroid/os/storage/ExternalStorageFileImpl;
    invoke-virtual {v0}, Landroid/os/storage/ExternalStorageFileImpl;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 177
    sget-boolean v1, Landroid/mtp/HwMtpDatabaseImpl;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 178
    const-string v1, "HwMtpDatabaseImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " exist, delete it"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_0
    invoke-virtual {v0}, Landroid/os/storage/ExternalStorageFileImpl;->delete()Z

    move-result v1

    if-nez v1, :cond_1

    .line 181
    const-string v1, "HwMtpDatabaseImpl"

    const-string v2, "delete fail."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_1
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    .line 187
    const-string v1, "_id"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 188
    .local v1, "handleExist":I
    sget-boolean v2, Landroid/mtp/HwMtpDatabaseImpl;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 189
    const-string v2, "HwMtpDatabaseImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file already exists in beginSendObject: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", ID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_2
    return v1
.end method

.method public hwClearSavedObject()V
    .locals 3

    .line 241
    iget-object v0, p0, Landroid/mtp/HwMtpDatabaseImpl;->mLockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 242
    :try_start_0
    iget-object v1, p0, Landroid/mtp/HwMtpDatabaseImpl;->mObjectColumnInfo:Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;

    const/4 v2, -0x1

    invoke-static {v1, v2}, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->access$102(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;I)I

    .line 243
    monitor-exit v0

    .line 244
    return-void

    .line 243
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hwGetObjectFilePath(I[C[J)I
    .locals 6
    .param p1, "handle"    # I
    .param p2, "outFilePath"    # [C
    .param p3, "outFileLengthFormat"    # [J

    .line 327
    iget-object v0, p0, Landroid/mtp/HwMtpDatabaseImpl;->mLockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 328
    :try_start_0
    iget-object v1, p0, Landroid/mtp/HwMtpDatabaseImpl;->mObjectColumnInfo:Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;

    invoke-static {v1}, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->access$100(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;)I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Landroid/mtp/HwMtpDatabaseImpl;->mObjectColumnInfo:Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;

    invoke-static {v1}, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->access$100(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;)I

    move-result v1

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 331
    :cond_0
    iget-object v1, p0, Landroid/mtp/HwMtpDatabaseImpl;->mObjectColumnInfo:Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;

    invoke-static {v1}, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->access$500(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;)Ljava/lang/String;

    move-result-object v1

    .line 332
    .local v1, "path":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2, p2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 333
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    aput-char v3, p2, v2

    .line 334
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    aput-wide v4, p3, v3

    .line 335
    const/4 v2, 0x1

    iget-object v4, p0, Landroid/mtp/HwMtpDatabaseImpl;->mObjectColumnInfo:Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;

    invoke-static {v4}, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->access$300(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;)I

    move-result v4

    int-to-long v4, v4

    aput-wide v4, p3, v2

    .line 336
    monitor-exit v0

    return v3

    .line 329
    .end local v1    # "path":Ljava/lang/String;
    :cond_1
    :goto_0
    const/4 v1, -0x1

    monitor-exit v0

    return v1

    .line 337
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hwGetObjectFormat(I)I
    .locals 2
    .param p1, "handle"    # I

    .line 347
    iget-object v0, p0, Landroid/mtp/HwMtpDatabaseImpl;->mLockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 348
    :try_start_0
    iget-object v1, p0, Landroid/mtp/HwMtpDatabaseImpl;->mObjectColumnInfo:Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;

    invoke-static {v1}, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->access$100(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;)I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Landroid/mtp/HwMtpDatabaseImpl;->mObjectColumnInfo:Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;

    invoke-static {v1}, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->access$100(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;)I

    move-result v1

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 351
    :cond_0
    iget-object v1, p0, Landroid/mtp/HwMtpDatabaseImpl;->mObjectColumnInfo:Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;

    invoke-static {v1}, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->access$300(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;)I

    move-result v1

    monitor-exit v0

    return v1

    .line 349
    :cond_1
    :goto_0
    const/4 v1, -0x1

    monitor-exit v0

    return v1

    .line 352
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hwGetObjectInfo(I[I[C[J)Z
    .locals 11
    .param p1, "handle"    # I
    .param p2, "outStorageFormatParent"    # [I
    .param p3, "outName"    # [C
    .param p4, "outModified"    # [J

    .line 921
    iget-object v0, p0, Landroid/mtp/HwMtpDatabaseImpl;->mLockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 922
    :try_start_0
    iget-object v1, p0, Landroid/mtp/HwMtpDatabaseImpl;->mObjectColumnInfo:Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;

    invoke-static {v1}, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->access$100(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;)I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_0

    iget-object v1, p0, Landroid/mtp/HwMtpDatabaseImpl;->mObjectColumnInfo:Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;

    invoke-static {v1}, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->access$100(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;)I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 923
    iget-object v1, p0, Landroid/mtp/HwMtpDatabaseImpl;->mObjectColumnInfo:Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;

    invoke-static {v1}, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->access$200(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;)I

    move-result v1

    aput v1, p2, v2

    .line 924
    iget-object v1, p0, Landroid/mtp/HwMtpDatabaseImpl;->mObjectColumnInfo:Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;

    invoke-static {v1}, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->access$300(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;)I

    move-result v1

    const/4 v2, 0x1

    aput v1, p2, v2

    .line 925
    const/4 v1, 0x2

    iget-object v3, p0, Landroid/mtp/HwMtpDatabaseImpl;->mObjectColumnInfo:Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;

    invoke-static {v3}, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->access$400(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;)I

    move-result v3

    aput v3, p2, v1

    .line 926
    iget-object v1, p0, Landroid/mtp/HwMtpDatabaseImpl;->mObjectColumnInfo:Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;

    invoke-static {v1}, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->access$500(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;)Ljava/lang/String;

    move-result-object v6

    iget-object v1, p0, Landroid/mtp/HwMtpDatabaseImpl;->mObjectColumnInfo:Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;

    invoke-static {v1}, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->access$600(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;)J

    move-result-wide v7

    iget-object v1, p0, Landroid/mtp/HwMtpDatabaseImpl;->mObjectColumnInfo:Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;

    .line 927
    invoke-static {v1}, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->access$800(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;)J

    move-result-wide v9

    .line 926
    move-object v3, p0

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v3 .. v10}, Landroid/mtp/HwMtpDatabaseImpl;->composeObjectInfoParemeters([C[JLjava/lang/String;JJ)V

    .line 928
    monitor-exit v0

    return v2

    .line 930
    :cond_0
    monitor-exit v0

    .line 931
    return v2

    .line 930
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hwGetObjectReferences(I)Z
    .locals 4
    .param p1, "handle"    # I

    .line 364
    iget-object v0, p0, Landroid/mtp/HwMtpDatabaseImpl;->mLockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 365
    :try_start_0
    iget-object v1, p0, Landroid/mtp/HwMtpDatabaseImpl;->mObjectColumnInfo:Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;

    invoke-static {v1}, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->access$100(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;)I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_2

    iget-object v1, p0, Landroid/mtp/HwMtpDatabaseImpl;->mObjectColumnInfo:Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;

    invoke-static {v1}, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->access$100(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;)I

    move-result v1

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 368
    :cond_0
    iget-object v1, p0, Landroid/mtp/HwMtpDatabaseImpl;->mObjectColumnInfo:Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;

    invoke-static {v1}, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->access$000(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;)[I

    move-result-object v1

    const/16 v3, 0xb

    aget v1, v1, v3

    if-eqz v1, :cond_1

    .line 369
    const/4 v1, 0x4

    iget-object v3, p0, Landroid/mtp/HwMtpDatabaseImpl;->mObjectColumnInfo:Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;

    invoke-static {v3}, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->access$1200(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;)I

    move-result v3

    if-eq v1, v3, :cond_1

    .line 370
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 373
    :cond_1
    monitor-exit v0

    .line 374
    return v2

    .line 366
    :cond_2
    :goto_0
    monitor-exit v0

    return v2

    .line 373
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hwGetSavedObjectHandle()I
    .locals 2

    .line 252
    iget-object v0, p0, Landroid/mtp/HwMtpDatabaseImpl;->mLockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 253
    :try_start_0
    iget-object v1, p0, Landroid/mtp/HwMtpDatabaseImpl;->mObjectColumnInfo:Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;

    invoke-static {v1}, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->access$100(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;)I

    move-result v1

    monitor-exit v0

    return v1

    .line 254
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hwSaveCurrentObject(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/database/Cursor;)V
    .locals 5
    .param p1, "mtpObject"    # Landroid/mtp/MtpStorageManager$MtpObject;
    .param p2, "c"    # Landroid/database/Cursor;

    .line 202
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 203
    iget-object v0, p0, Landroid/mtp/HwMtpDatabaseImpl;->mLockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 204
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    const/16 v3, 0x18

    if-ge v2, v3, :cond_0

    .line 205
    :try_start_0
    iget-object v3, p0, Landroid/mtp/HwMtpDatabaseImpl;->mObjectColumnInfo:Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;

    invoke-static {v3}, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->access$000(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;)[I

    move-result-object v3

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getType(I)I

    move-result v4

    aput v4, v3, v2

    .line 204
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 234
    .end local v2    # "i":I
    :catchall_0
    move-exception v1

    goto/16 :goto_2

    .line 207
    :cond_0
    iget-object v2, p0, Landroid/mtp/HwMtpDatabaseImpl;->mObjectColumnInfo:Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;

    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getId()I

    move-result v3

    invoke-static {v2, v3}, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->access$102(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;I)I

    .line 208
    iget-object v2, p0, Landroid/mtp/HwMtpDatabaseImpl;->mObjectColumnInfo:Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;

    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getStorageId()I

    move-result v3

    invoke-static {v2, v3}, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->access$202(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;I)I

    .line 209
    iget-object v2, p0, Landroid/mtp/HwMtpDatabaseImpl;->mObjectColumnInfo:Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;

    const/4 v3, 0x2

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v2, v3}, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->access$302(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;I)I

    .line 210
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 211
    iget-object v2, p0, Landroid/mtp/HwMtpDatabaseImpl;->mObjectColumnInfo:Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;

    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v3

    invoke-virtual {v3}, Landroid/mtp/MtpStorageManager$MtpObject;->isRoot()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 212
    :cond_1
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v1

    invoke-virtual {v1}, Landroid/mtp/MtpStorageManager$MtpObject;->getId()I

    move-result v1

    .line 211
    :goto_1
    invoke-static {v2, v1}, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->access$402(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;I)I

    .line 214
    :cond_2
    iget-object v1, p0, Landroid/mtp/HwMtpDatabaseImpl;->mObjectColumnInfo:Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;

    const/4 v2, 0x4

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->access$502(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 215
    iget-object v1, p0, Landroid/mtp/HwMtpDatabaseImpl;->mObjectColumnInfo:Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;

    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getSize()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->access$602(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;J)J

    .line 216
    iget-object v1, p0, Landroid/mtp/HwMtpDatabaseImpl;->mObjectColumnInfo:Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;

    const/4 v2, 0x6

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->access$702(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;J)J

    .line 217
    iget-object v1, p0, Landroid/mtp/HwMtpDatabaseImpl;->mObjectColumnInfo:Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;

    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getModifiedTime()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->access$802(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;J)J

    .line 218
    iget-object v1, p0, Landroid/mtp/HwMtpDatabaseImpl;->mObjectColumnInfo:Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;

    const/16 v2, 0x8

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v1, v2}, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->access$902(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;I)I

    .line 219
    iget-object v1, p0, Landroid/mtp/HwMtpDatabaseImpl;->mObjectColumnInfo:Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;

    const/16 v2, 0x9

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->access$1002(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 220
    iget-object v1, p0, Landroid/mtp/HwMtpDatabaseImpl;->mObjectColumnInfo:Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;

    const/16 v2, 0xa

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->access$1102(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 221
    iget-object v1, p0, Landroid/mtp/HwMtpDatabaseImpl;->mObjectColumnInfo:Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;

    const/16 v2, 0xb

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v1, v2}, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->access$1202(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;I)I

    .line 222
    iget-object v1, p0, Landroid/mtp/HwMtpDatabaseImpl;->mObjectColumnInfo:Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;

    const/16 v2, 0xc

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v1, v2}, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->access$1302(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;I)I

    .line 223
    iget-object v1, p0, Landroid/mtp/HwMtpDatabaseImpl;->mObjectColumnInfo:Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;

    const/16 v2, 0xd

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v1, v2}, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->access$1402(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;I)I

    .line 224
    iget-object v1, p0, Landroid/mtp/HwMtpDatabaseImpl;->mObjectColumnInfo:Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;

    const/16 v2, 0xe

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v1, v2}, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->access$1502(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;I)I

    .line 225
    iget-object v1, p0, Landroid/mtp/HwMtpDatabaseImpl;->mObjectColumnInfo:Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;

    const/16 v2, 0xf

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->access$1602(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 226
    iget-object v1, p0, Landroid/mtp/HwMtpDatabaseImpl;->mObjectColumnInfo:Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;

    const/16 v2, 0x10

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->access$1702(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 227
    iget-object v1, p0, Landroid/mtp/HwMtpDatabaseImpl;->mObjectColumnInfo:Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;

    const/16 v2, 0x11

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->access$1802(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 228
    iget-object v1, p0, Landroid/mtp/HwMtpDatabaseImpl;->mObjectColumnInfo:Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;

    const/16 v2, 0x12

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->access$1902(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 229
    iget-object v1, p0, Landroid/mtp/HwMtpDatabaseImpl;->mObjectColumnInfo:Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;

    const/16 v2, 0x13

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v1, v2}, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->access$2002(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;I)I

    .line 230
    iget-object v1, p0, Landroid/mtp/HwMtpDatabaseImpl;->mObjectColumnInfo:Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;

    const/16 v2, 0x14

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v1, v2}, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->access$2102(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;I)I

    .line 231
    iget-object v1, p0, Landroid/mtp/HwMtpDatabaseImpl;->mObjectColumnInfo:Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;

    const/16 v2, 0x15

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v1, v2}, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->access$2202(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;I)I

    .line 232
    iget-object v1, p0, Landroid/mtp/HwMtpDatabaseImpl;->mObjectColumnInfo:Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;

    const/16 v2, 0x16

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->access$2302(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 233
    iget-object v1, p0, Landroid/mtp/HwMtpDatabaseImpl;->mObjectColumnInfo:Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;

    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->access$2402(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 234
    monitor-exit v0

    .line 235
    return-void

    .line 234
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
