.class public Landroid/media/HwMediaScannerImpl;
.super Ljava/lang/Object;
.source "HwMediaScannerImpl.java"

# interfaces
.implements Landroid/common/HwMediaScannerManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/HwMediaScannerImpl$SpecialOffsetImageInfo;,
        Landroid/media/HwMediaScannerImpl$HwVoiceOrRectifyImageInfo;,
        Landroid/media/HwMediaScannerImpl$FixedEndTagCustomImageInfo;,
        Landroid/media/HwMediaScannerImpl$CustomImageInfo;,
        Landroid/media/HwMediaScannerImpl$DataFlagMap;
    }
.end annotation


# static fields
.field private static final ALARMS:Ljava/lang/String; = "alarms"

.field private static final ALARMS_PATH:Ljava/lang/String; = "/system/media/audio/alarms/"

.field private static final AUDIO_FORMAT:Ljava/lang/String; = ".ogg"

.field private static final CONSTANT_VALUE:I = 0x3e8

.field private static final CONST_TEN:J = 0xaL

.field private static final DEBUG:Z

.field private static final DEFAULT_RINGTONE_PROPERTY_PREFIX:Ljava/lang/String; = "ro.config."

.field private static final DEFAULT_THRESHOLD_MAX_BYTES:I = 0x1f400000

.field private static final DEL_AUDIO_LIST_FILE:Ljava/lang/String; = "del_audio_list.xml"

.field private static final EXTERNAL_AUDIO_URI:Landroid/net/Uri;

.field private static final EXTERNAL_IMAGE_URI:Landroid/net/Uri;

.field private static final EXTERNAL_VIDEO_URI:Landroid/net/Uri;

.field private static final FLAG_ALBUM:I = 0x1

.field private static final FLAG_ARTIST:I = 0x2

.field private static final FLAG_TITLE:I = 0x3

.field private static final FUNCTION_BYTE:I = 0x1

.field private static final FUNCTION_LONG:I = 0x0

.field private static final HW_3D_MODEL_IMAGE_TAG:Ljava/lang/String; = "H W 3 D "

.field private static final HW_3D_MODEL_IMAGE_TYPE:I = 0x10

.field private static final HW_ALLFOCUS_IMAGE_COLUMN:Ljava/lang/String; = "hw_image_refocus"

.field private static final HW_ALLFOCUS_IMAGE_TYPE_DUAL_CAMERA:I = 0x2

.field private static final HW_ALLFOCUS_IMAGE_TYPE_DUAL_CAMERA_WESTALGO:I = 0x8

.field private static final HW_ALLFOCUS_IMAGE_TYPE_SINGLE_CAMERA:I = 0x1

.field private static final HW_AUTO_BEAUTY_BACK_IMAGE_TAG:Ljava/lang/String; = "sbcb\u0000\u0000\u0000\u0000"

.field private static final HW_AUTO_BEAUTY_FRONT_IMAGE_TAG:Ljava/lang/String; = "sbc\u0000\u0000\u0000\u0000\u0000"

.field private static final HW_AUTO_BEAUTY_IMAGE:I = 0x33

.field private static final HW_CUSTOM_IMAGE_TAG_LEN:I = 0x14

.field private static final HW_DUAL_CAMERA_ALLFOCUS_IMAGE_LEN:I = 0x8

.field private static final HW_DUAL_CAMERA_ALLFOCUS_IMAGE_TAG:Ljava/lang/String; = "DepthEn\u0000"

.field private static final HW_DUAL_CAMERA_ALLFOCUS_IMAGE_TAG_WESTALGO:Ljava/lang/String; = "DepthWn\u0000"

.field private static final HW_LIVE_PHOTO_IMAGE_TYPE:I = 0x32

.field private static final HW_LIVE_TAG:Ljava/lang/String; = "LIVE_"

.field private static final HW_MAKER_NOTE:Ljava/lang/String; = "HwMakerNote"

.field private static final HW_MNOTE_ISO:Ljava/lang/String; = "ISO-8859-1"

.field private static final HW_PANORAMA_3D_COMBINED_IMAGE_TYPE:I = 0x14

.field private static final HW_PANORAMA_3D_COMBINED_TAG:Ljava/lang/String; = "#FYUSEv3"

.field private static final HW_RECTIFY_IMAGE_COLUMN:Ljava/lang/String; = "hw_rectify_offset"

.field private static final HW_RECTIFY_IMAGE_TAG:Ljava/lang/String; = "RECTIFY_"

.field private static final HW_SINGLE_CAMERA_ALLFOCUS_IMAGE_LEN:I = 0x7

.field private static final HW_SINGLE_CAMERA_ALLFOCUS_IMAGE_TAG:Ljava/lang/String; = "Refocus"

.field private static final HW_SPECIAL_FILE_OFFSET_IMAGE_COLUMN:Ljava/lang/String; = "special_file_offset"

.field private static final HW_SPECIAL_FILE_TYPE_IMAGE_COLUMN:Ljava/lang/String; = "special_file_type"

.field private static final HW_VOICE_IMAGE_COLUMN:Ljava/lang/String; = "hw_voice_offset"

.field private static final HW_VOICE_TAG:Ljava/lang/String; = "HWVOICE_"

.field private static final INVALID_UTF8_TOKEN:Ljava/lang/String; = "??"

.field private static final KEY_TAG_BURST_NUMBER:Ljava/lang/String; = "101"

.field private static final KEY_TAG_CAPTURE_MODE:Ljava/lang/String; = "100"

.field private static final KEY_TAG_FACE_CONF:Ljava/lang/String; = "302"

.field private static final KEY_TAG_FACE_COUNT:Ljava/lang/String; = "301"

.field private static final KEY_TAG_FACE_LEYE_CENTER:Ljava/lang/String; = "305"

.field private static final KEY_TAG_FACE_MOUTH_CENTER:Ljava/lang/String; = "307"

.field private static final KEY_TAG_FACE_RECT:Ljava/lang/String; = "304"

.field private static final KEY_TAG_FACE_REYE_CENTER:Ljava/lang/String; = "306"

.field private static final KEY_TAG_FACE_SMILE_SCORE:Ljava/lang/String; = "303"

.field private static final KEY_TAG_FACE_VERSION:Ljava/lang/String; = "300"

.field private static final KEY_TAG_FRONT_CAMERA:Ljava/lang/String; = "102"

.field private static final KEY_TAG_SCENE_BEACH_CONF:Ljava/lang/String; = "205"

.field private static final KEY_TAG_SCENE_BLUESKY_CONF:Ljava/lang/String; = "203"

.field private static final KEY_TAG_SCENE_FLOWERS_CONF:Ljava/lang/String; = "208"

.field private static final KEY_TAG_SCENE_FOOD_CONF:Ljava/lang/String; = "201"

.field private static final KEY_TAG_SCENE_GREENPLANT_CONF:Ljava/lang/String; = "204"

.field private static final KEY_TAG_SCENE_NIGHT_CONF:Ljava/lang/String; = "209"

.field private static final KEY_TAG_SCENE_SNOW_CONF:Ljava/lang/String; = "206"

.field private static final KEY_TAG_SCENE_STAGE_CONF:Ljava/lang/String; = "202"

.field private static final KEY_TAG_SCENE_SUNSET_CONF:Ljava/lang/String; = "207"

.field private static final KEY_TAG_SCENE_TEXT_CONF:Ljava/lang/String; = "210"

.field private static final KEY_TAG_SCENE_VERSION:Ljava/lang/String; = "200"

.field private static final MAX_HW_CUSTOM_IMAGE_TAG_LEN:I = 0x14

.field private static final MAX_NOMEDIA_SIZE:J = 0x400L

.field private static final MEDIA_BUFFER_SIZE:I = 0x64

.field private static final NOTIFICATIONS:Ljava/lang/String; = "notifications"

.field private static final NOTIFICATIONS_PATH:Ljava/lang/String; = "/system/media/audio/notifications/"

.field private static final NO_MEDIA_FILE_PATH:[Ljava/lang/String;

.field private static final RINGTONES:Ljava/lang/String; = "ringtones"

.field private static final RINGTONES_PATH:Ljava/lang/String; = "/system/media/audio/ringtones/"

.field private static final SPLIT_LENGTH_MIN:I = 0x2

.field private static final TAG:Ljava/lang/String; = "HwMediaScannerImpl"

.field private static final UI:Ljava/lang/String; = "ui"

.field private static final UI_PATH:Ljava/lang/String; = "/system/media/audio/ui/"

.field private static mHwMediaScannerManager:Landroid/common/HwMediaScannerManager;

.field private static mTagsDataFlagMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/media/HwMediaScannerImpl$DataFlagMap;",
            ">;"
        }
    .end annotation
.end field

.field private static utils:Landroid/media/MediaScannerUtils;


# instance fields
.field private mCustomImageInfos:[Landroid/media/HwMediaScannerImpl$CustomImageInfo;

.field private mDefaultRingtoneFilename2:Ljava/lang/String;

.field private mDefaultRingtoneSet2:Z

.field private mDelRingtonesList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mExternalStoragePath:Ljava/lang/String;

.field private mIsAudioFilterLoad:Z

.field private mMediaInserter:Landroid/media/MediaInserter;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 80
    const-string v0, "HwMediaScannerImpl"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/media/HwMediaScannerImpl;->DEBUG:Z

    .line 84
    new-instance v0, Landroid/media/HwMediaScannerImpl;

    invoke-direct {v0}, Landroid/media/HwMediaScannerImpl;-><init>()V

    sput-object v0, Landroid/media/HwMediaScannerImpl;->mHwMediaScannerManager:Landroid/common/HwMediaScannerManager;

    .line 87
    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Video$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/media/HwMediaScannerImpl;->EXTERNAL_VIDEO_URI:Landroid/net/Uri;

    .line 89
    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/media/HwMediaScannerImpl;->EXTERNAL_IMAGE_URI:Landroid/net/Uri;

    .line 91
    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/media/HwMediaScannerImpl;->EXTERNAL_AUDIO_URI:Landroid/net/Uri;

    .line 239
    const-string v1, "/.nomedia"

    const-string v2, "/DCIM/.nomedia"

    const-string v3, "/DCIM/Camera/.nomedia"

    const-string v4, "/Pictures/.nomedia"

    const-string v5, "/Pictures/Screenshots/.nomedia"

    const-string v6, "/tencent/.nomedia"

    const-string v7, "/tencent/MicroMsg/.nomedia"

    const-string v8, "/tencent/MicroMsg/Weixin/.nomedia"

    const-string v9, "/tencent/QQ_Images/.nomedia"

    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/HwMediaScannerImpl;->NO_MEDIA_FILE_PATH:[Ljava/lang/String;

    .line 251
    const-class v0, Landroid/media/MediaScannerUtils;

    invoke-static {v0}, Lcom/huawei/utils/reflect/EasyInvokeFactory;->getInvokeUtils(Ljava/lang/Class;)Lcom/huawei/utils/reflect/EasyInvokeUtils;

    move-result-object v0

    check-cast v0, Landroid/media/MediaScannerUtils;

    sput-object v0, Landroid/media/HwMediaScannerImpl;->utils:Landroid/media/MediaScannerUtils;

    .line 253
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Landroid/media/HwMediaScannerImpl;->mTagsDataFlagMap:Ljava/util/HashMap;

    .line 315
    sget v0, Landroid/media/hwmnote/HwMnoteInterfaceUtils;->HW_MNOTE_TAG_CAPTURE_MODE:I

    const-string v1, "100"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/media/HwMediaScannerImpl;->addTagsType(ILjava/lang/String;I)V

    .line 316
    sget v0, Landroid/media/hwmnote/HwMnoteInterfaceUtils;->HW_MNOTE_TAG_BURST_NUMBER:I

    const-string v1, "101"

    invoke-static {v0, v1, v2}, Landroid/media/HwMediaScannerImpl;->addTagsType(ILjava/lang/String;I)V

    .line 317
    sget v0, Landroid/media/hwmnote/HwMnoteInterfaceUtils;->HW_MNOTE_TAG_FRONT_CAMERA:I

    const-string v1, "102"

    invoke-static {v0, v1, v2}, Landroid/media/HwMediaScannerImpl;->addTagsType(ILjava/lang/String;I)V

    .line 318
    sget v0, Landroid/media/hwmnote/HwMnoteInterfaceUtils;->HW_MNOTE_TAG_SCENE_VERSION:I

    const-string v1, "200"

    invoke-static {v0, v1, v2}, Landroid/media/HwMediaScannerImpl;->addTagsType(ILjava/lang/String;I)V

    .line 319
    sget v0, Landroid/media/hwmnote/HwMnoteInterfaceUtils;->HW_MNOTE_TAG_SCENE_FOOD_CONF:I

    const-string v1, "201"

    invoke-static {v0, v1, v2}, Landroid/media/HwMediaScannerImpl;->addTagsType(ILjava/lang/String;I)V

    .line 320
    sget v0, Landroid/media/hwmnote/HwMnoteInterfaceUtils;->HW_MNOTE_TAG_SCENE_STAGE_CONF:I

    const-string v1, "202"

    invoke-static {v0, v1, v2}, Landroid/media/HwMediaScannerImpl;->addTagsType(ILjava/lang/String;I)V

    .line 321
    sget v0, Landroid/media/hwmnote/HwMnoteInterfaceUtils;->HW_MNOTE_TAG_SCENE_BLUESKY_CONF:I

    const-string v1, "203"

    invoke-static {v0, v1, v2}, Landroid/media/HwMediaScannerImpl;->addTagsType(ILjava/lang/String;I)V

    .line 322
    sget v0, Landroid/media/hwmnote/HwMnoteInterfaceUtils;->HW_MNOTE_TAG_SCENE_GREENPLANT_CONF:I

    const-string v1, "204"

    invoke-static {v0, v1, v2}, Landroid/media/HwMediaScannerImpl;->addTagsType(ILjava/lang/String;I)V

    .line 324
    sget v0, Landroid/media/hwmnote/HwMnoteInterfaceUtils;->HW_MNOTE_TAG_SCENE_BEACH_CONF:I

    const-string v1, "205"

    invoke-static {v0, v1, v2}, Landroid/media/HwMediaScannerImpl;->addTagsType(ILjava/lang/String;I)V

    .line 325
    sget v0, Landroid/media/hwmnote/HwMnoteInterfaceUtils;->HW_MNOTE_TAG_SCENE_SNOW_CONF:I

    const-string v1, "206"

    invoke-static {v0, v1, v2}, Landroid/media/HwMediaScannerImpl;->addTagsType(ILjava/lang/String;I)V

    .line 326
    sget v0, Landroid/media/hwmnote/HwMnoteInterfaceUtils;->HW_MNOTE_TAG_SCENE_SUNSET_CONF:I

    const-string v1, "207"

    invoke-static {v0, v1, v2}, Landroid/media/HwMediaScannerImpl;->addTagsType(ILjava/lang/String;I)V

    .line 327
    sget v0, Landroid/media/hwmnote/HwMnoteInterfaceUtils;->HW_MNOTE_TAG_SCENE_FLOWERS_CONF:I

    const-string v1, "208"

    invoke-static {v0, v1, v2}, Landroid/media/HwMediaScannerImpl;->addTagsType(ILjava/lang/String;I)V

    .line 328
    sget v0, Landroid/media/hwmnote/HwMnoteInterfaceUtils;->HW_MNOTE_TAG_SCENE_NIGHT_CONF:I

    const-string v1, "209"

    invoke-static {v0, v1, v2}, Landroid/media/HwMediaScannerImpl;->addTagsType(ILjava/lang/String;I)V

    .line 329
    sget v0, Landroid/media/hwmnote/HwMnoteInterfaceUtils;->HW_MNOTE_TAG_SCENE_TEXT_CONF:I

    const-string v1, "210"

    invoke-static {v0, v1, v2}, Landroid/media/HwMediaScannerImpl;->addTagsType(ILjava/lang/String;I)V

    .line 330
    sget v0, Landroid/media/hwmnote/HwMnoteInterfaceUtils;->HW_MNOTE_TAG_FACE_VERSION:I

    const-string v1, "300"

    invoke-static {v0, v1, v2}, Landroid/media/HwMediaScannerImpl;->addTagsType(ILjava/lang/String;I)V

    .line 331
    sget v0, Landroid/media/hwmnote/HwMnoteInterfaceUtils;->HW_MNOTE_TAG_FACE_COUNT:I

    const-string v1, "301"

    invoke-static {v0, v1, v2}, Landroid/media/HwMediaScannerImpl;->addTagsType(ILjava/lang/String;I)V

    .line 332
    sget v0, Landroid/media/hwmnote/HwMnoteInterfaceUtils;->HW_MNOTE_TAG_FACE_CONF:I

    const-string v1, "302"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/media/HwMediaScannerImpl;->addTagsType(ILjava/lang/String;I)V

    .line 333
    sget v0, Landroid/media/hwmnote/HwMnoteInterfaceUtils;->HW_MNOTE_TAG_FACE_SMILE_SCORE:I

    const-string v1, "303"

    invoke-static {v0, v1, v2}, Landroid/media/HwMediaScannerImpl;->addTagsType(ILjava/lang/String;I)V

    .line 334
    sget v0, Landroid/media/hwmnote/HwMnoteInterfaceUtils;->HW_MNOTE_TAG_FACE_RECT:I

    const-string v1, "304"

    invoke-static {v0, v1, v2}, Landroid/media/HwMediaScannerImpl;->addTagsType(ILjava/lang/String;I)V

    .line 335
    sget v0, Landroid/media/hwmnote/HwMnoteInterfaceUtils;->HW_MNOTE_TAG_FACE_LEYE_CENTER:I

    const-string v1, "305"

    invoke-static {v0, v1, v2}, Landroid/media/HwMediaScannerImpl;->addTagsType(ILjava/lang/String;I)V

    .line 336
    sget v0, Landroid/media/hwmnote/HwMnoteInterfaceUtils;->HW_MNOTE_TAG_FACE_REYE_CENTER:I

    const-string v1, "306"

    invoke-static {v0, v1, v2}, Landroid/media/HwMediaScannerImpl;->addTagsType(ILjava/lang/String;I)V

    .line 337
    sget v0, Landroid/media/hwmnote/HwMnoteInterfaceUtils;->HW_MNOTE_TAG_FACE_MOUTH_CENTER:I

    const-string v1, "307"

    invoke-static {v0, v1, v2}, Landroid/media/HwMediaScannerImpl;->addTagsType(ILjava/lang/String;I)V

    .line 338
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 293
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/media/HwMediaScannerImpl;->mDelRingtonesList:Ljava/util/HashSet;

    .line 295
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/HwMediaScannerImpl;->mIsAudioFilterLoad:Z

    .line 306
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/HwMediaScannerImpl;->mExternalStoragePath:Ljava/lang/String;

    .line 307
    invoke-direct {p0}, Landroid/media/HwMediaScannerImpl;->initCustomImageInfos()V

    .line 308
    return-void
.end method

.method private static addTagsType(ILjava/lang/String;I)V
    .locals 3
    .param p0, "tag"    # I
    .param p1, "tagData"    # Ljava/lang/String;
    .param p2, "tagFlag"    # I

    .line 311
    sget-object v0, Landroid/media/HwMediaScannerImpl;->mTagsDataFlagMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/media/HwMediaScannerImpl$DataFlagMap;

    invoke-direct {v2, p1, p2}, Landroid/media/HwMediaScannerImpl$DataFlagMap;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    return-void
.end method

.method private deleteFile(Ljava/io/File;)Z
    .locals 6
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1474
    const/4 v0, 0x1

    .line 1475
    .local v0, "result":Z
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1476
    const/4 v1, 0x1

    return v1

    .line 1478
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1479
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_6

    .line 1480
    const/4 v0, 0x0

    goto :goto_1

    .line 1482
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1483
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 1484
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_3

    .line 1485
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    .line 1486
    .local v4, "item":Ljava/io/File;
    invoke-direct {p0, v4}, Landroid/media/HwMediaScannerImpl;->deleteFile(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1487
    const/4 v0, 0x0

    .line 1485
    .end local v4    # "item":Ljava/io/File;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1491
    :cond_3
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1492
    const/4 v0, 0x0

    .line 1494
    .end local v1    # "files":[Ljava/io/File;
    :cond_4
    goto :goto_1

    .line 1495
    :cond_5
    sget-boolean v1, Landroid/media/HwMediaScannerImpl;->DEBUG:Z

    if-eqz v1, :cond_6

    .line 1496
    const-string v1, "HwMediaScannerImpl"

    const-string v2, "the file is neither file or directory, delete fail"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1499
    :cond_6
    :goto_1
    return v0
.end method

.method private doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;

    .line 625
    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 626
    .local v0, "pathFilenameStart":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 627
    .local v2, "filenameLength":I
    add-int v3, v0, v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    if-ne v3, v4, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v5

    .line 628
    .local v3, "pathLengthEnough":Z
    :goto_0
    invoke-virtual {p1, v0, p2, v5, v2}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v5

    :goto_1
    return v1
.end method

.method private finalCheck(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "flag"    # I

    .line 1010
    invoke-direct {p0, p1}, Landroid/media/HwMediaScannerImpl;->isInvalidString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1011
    const/4 v0, 0x1

    if-eq p3, v0, :cond_1

    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    goto :goto_0

    .line 1014
    :cond_0
    invoke-direct {p0, p2}, Landroid/media/HwMediaScannerImpl;->getDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 1012
    :cond_1
    :goto_0
    const-string v0, "<unknown>"

    return-object v0

    .line 1016
    :cond_2
    :goto_1
    return-object p1
.end method

.method private getCorrectEncodedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "input"    # Ljava/lang/String;

    .line 979
    invoke-direct {p0, p1}, Landroid/media/HwMediaScannerImpl;->isStringMessy(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 981
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "ISO-8859-1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 982
    .local v0, "utf8":Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/media/HwMediaScannerImpl;->isAcceptableString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 983
    return-object v0

    .line 985
    :cond_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "ISO-8859-1"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const-string v3, "GBK"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 986
    .local v1, "gbk":Ljava/lang/String;
    invoke-direct {p0, v1}, Landroid/media/HwMediaScannerImpl;->isAcceptableString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 987
    return-object v1

    .line 990
    :cond_1
    new-instance v2, Ljava/lang/String;

    const-string v3, "ISO-8859-1"

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    const-string v4, "BIG5"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 991
    .local v2, "big5":Ljava/lang/String;
    invoke-direct {p0, v2}, Landroid/media/HwMediaScannerImpl;->isAcceptableString(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_2

    .line 992
    return-object v2

    .line 996
    .end local v0    # "utf8":Ljava/lang/String;
    .end local v1    # "gbk":Ljava/lang/String;
    .end local v2    # "big5":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 994
    :catch_0
    move-exception v0

    .line 995
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v1, "HwMediaScannerImpl"

    const-string v2, "unsupported encoding error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_3
    :goto_0
    return-object p1
.end method

.method public static getDefault()Landroid/common/HwMediaScannerManager;
    .locals 1

    .line 346
    sget-object v0, Landroid/media/HwMediaScannerImpl;->mHwMediaScannerManager:Landroid/common/HwMediaScannerManager;

    return-object v0
.end method

.method private getDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .line 1020
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 1021
    .local v0, "lastdotIndex":I
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 1022
    .local v1, "lastSlashIndex":I
    if-lez v0, :cond_1

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 1023
    .local v2, "indexInvalid":Z
    :goto_1
    if-nez v2, :cond_3

    if-le v1, v0, :cond_2

    goto :goto_2

    .line 1026
    :cond_2
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1024
    :cond_3
    :goto_2
    const-string v3, ""

    return-object v3
.end method

.method private getJsonDatas(Landroid/media/hwmnote/HwMnoteInterface;)Lorg/json/JSONObject;
    .locals 8
    .param p1, "hwMnoteInterface"    # Landroid/media/hwmnote/HwMnoteInterface;

    .line 1540
    if-nez p1, :cond_0

    .line 1541
    const-string v0, "HwMediaScannerImpl"

    const-string v1, "HwMediaScannerImpl getJsonDatas parameter hwMnoteInterface == null !"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1542
    const/4 v0, 0x0

    return-object v0

    .line 1545
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1546
    .local v0, "jsonObject":Lorg/json/JSONObject;
    sget-object v1, Landroid/media/HwMediaScannerImpl;->mTagsDataFlagMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1547
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/media/HwMediaScannerImpl$DataFlagMap;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1548
    .local v3, "key":I
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/HwMediaScannerImpl$DataFlagMap;

    .line 1549
    .local v4, "dataFlagMap":Landroid/media/HwMediaScannerImpl$DataFlagMap;
    invoke-static {v4}, Landroid/media/HwMediaScannerImpl$DataFlagMap;->access$000(Landroid/media/HwMediaScannerImpl$DataFlagMap;)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 1573
    const-string v5, "HwMediaScannerImpl"

    const-string v6, "Other Function Type !"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/media/HwMediaScannerImpl$DataFlagMap;>;"
    .end local v3    # "key":I
    .end local v4    # "dataFlagMap":Landroid/media/HwMediaScannerImpl$DataFlagMap;
    goto :goto_1

    .line 1560
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/media/HwMediaScannerImpl$DataFlagMap;>;"
    .restart local v3    # "key":I
    .restart local v4    # "dataFlagMap":Landroid/media/HwMediaScannerImpl$DataFlagMap;
    :pswitch_0
    :try_start_0
    invoke-virtual {p1, v3}, Landroid/media/hwmnote/HwMnoteInterface;->getTagByteValues(I)[B

    move-result-object v5

    .line 1561
    .local v5, "bytes":[B
    if-nez v5, :cond_1

    .line 1562
    goto :goto_1

    .line 1564
    :cond_1
    new-instance v6, Ljava/lang/String;

    const-string v7, "ISO-8859-1"

    invoke-static {v7}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v7

    invoke-direct {v6, v5, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 1565
    .local v6, "tmpStr":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    .line 1566
    invoke-static {v4}, Landroid/media/HwMediaScannerImpl$DataFlagMap;->access$100(Landroid/media/HwMediaScannerImpl$DataFlagMap;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1570
    .end local v5    # "bytes":[B
    .end local v6    # "tmpStr":Ljava/lang/String;
    :cond_2
    goto :goto_1

    .line 1568
    :catch_0
    move-exception v5

    .line 1569
    .local v5, "e":Lorg/json/JSONException;
    const-string v6, "HwMediaScannerImpl"

    const-string v7, "HwMediaScannerImpl getJsonDatas FUNCTION_BYTE jsonObject.put has JSONException"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1571
    .end local v5    # "e":Lorg/json/JSONException;
    goto :goto_1

    .line 1552
    :pswitch_1
    :try_start_1
    invoke-virtual {p1, v3}, Landroid/media/hwmnote/HwMnoteInterface;->getTagLongValue(I)Ljava/lang/Long;

    move-result-object v5

    .line 1553
    .local v5, "value":Ljava/lang/Long;
    invoke-static {v4}, Landroid/media/HwMediaScannerImpl$DataFlagMap;->access$100(Landroid/media/HwMediaScannerImpl$DataFlagMap;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1556
    .end local v5    # "value":Ljava/lang/Long;
    goto :goto_1

    .line 1554
    :catch_1
    move-exception v5

    .line 1555
    .local v5, "e":Lorg/json/JSONException;
    const-string v6, "HwMediaScannerImpl"

    const-string v7, "HwMediaScannerImpl getJsonDatas FUNCTION_LONG jsonObject.put has JSONException !"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1557
    .end local v5    # "e":Lorg/json/JSONException;
    nop

    .line 1576
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/media/HwMediaScannerImpl$DataFlagMap;>;"
    .end local v3    # "key":I
    .end local v4    # "dataFlagMap":Landroid/media/HwMediaScannerImpl$DataFlagMap;
    :goto_1
    goto :goto_0

    .line 1577
    :cond_3
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getSkipCustomDirectory([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/StringBuffer;)I
    .locals 6
    .param p1, "whiteList"    # [Ljava/lang/String;
    .param p2, "blackList"    # [Ljava/lang/String;
    .param p3, "sb"    # Ljava/lang/StringBuffer;

    .line 448
    const/4 v0, 0x0

    .line 450
    .local v0, "size":I
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v0

    move v0, v2

    .end local v0    # "size":I
    .local v3, "size":I
    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v4, p1, v0

    .line 451
    .local v4, "dir":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 452
    goto :goto_1

    .line 454
    :cond_0
    invoke-virtual {p3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 455
    const-string v5, ","

    invoke-virtual {p3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 456
    add-int/lit8 v3, v3, 0x1

    .line 450
    .end local v4    # "dir":Ljava/lang/String;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 459
    :cond_1
    array-length v0, p2

    :goto_2
    if-ge v2, v0, :cond_3

    aget-object v1, p2, v2

    .line 460
    .local v1, "dir":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 461
    goto :goto_3

    .line 463
    :cond_2
    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 464
    const-string v4, ","

    invoke-virtual {p3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 465
    add-int/lit8 v3, v3, 0x1

    .line 459
    .end local v1    # "dir":Ljava/lang/String;
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 468
    :cond_3
    return v3
.end method

.method private initCustomImageInfos()V
    .locals 9

    .line 1115
    const/16 v0, 0xa

    new-array v0, v0, [Landroid/media/HwMediaScannerImpl$CustomImageInfo;

    new-instance v1, Landroid/media/HwMediaScannerImpl$HwVoiceOrRectifyImageInfo;

    const-string v2, "HWVOICE_"

    const-string v3, "ISO-8859-1"

    const-string v4, "hw_voice_offset"

    const/16 v5, 0x14

    invoke-direct {v1, v2, v5, v3, v4}, Landroid/media/HwMediaScannerImpl$HwVoiceOrRectifyImageInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Landroid/media/HwMediaScannerImpl$HwVoiceOrRectifyImageInfo;

    const-string v2, "RECTIFY_"

    const-string v3, "ISO-8859-1"

    const-string v4, "hw_rectify_offset"

    invoke-direct {v1, v2, v5, v3, v4}, Landroid/media/HwMediaScannerImpl$HwVoiceOrRectifyImageInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Landroid/media/HwMediaScannerImpl$SpecialOffsetImageInfo;

    const-string v4, "LIVE_"

    const-string v6, "UTF-8"

    const-string v7, "special_file_type"

    const/16 v8, 0x32

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Landroid/media/HwMediaScannerImpl$SpecialOffsetImageInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Landroid/media/HwMediaScannerImpl$FixedEndTagCustomImageInfo;

    const-string v4, "Refocus"

    const-string v6, "UTF-8"

    const-string v7, "hw_image_refocus"

    const/4 v5, 0x7

    const/4 v8, 0x1

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Landroid/media/HwMediaScannerImpl$FixedEndTagCustomImageInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Landroid/media/HwMediaScannerImpl$FixedEndTagCustomImageInfo;

    const-string v4, "DepthEn\u0000"

    const-string v6, "UTF-8"

    const-string v7, "hw_image_refocus"

    const/16 v5, 0x8

    const/4 v8, 0x2

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Landroid/media/HwMediaScannerImpl$FixedEndTagCustomImageInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Landroid/media/HwMediaScannerImpl$FixedEndTagCustomImageInfo;

    const-string v4, "DepthWn\u0000"

    const-string v6, "UTF-8"

    const-string v7, "hw_image_refocus"

    const/16 v8, 0x8

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Landroid/media/HwMediaScannerImpl$FixedEndTagCustomImageInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Landroid/media/HwMediaScannerImpl$FixedEndTagCustomImageInfo;

    const-string v4, "#FYUSEv3"

    const-string v2, "#FYUSEv3"

    .line 1129
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const-string v6, "UTF-8"

    const-string v7, "special_file_type"

    const/16 v8, 0x14

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Landroid/media/HwMediaScannerImpl$FixedEndTagCustomImageInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Landroid/media/HwMediaScannerImpl$FixedEndTagCustomImageInfo;

    const-string v4, "H W 3 D "

    const-string v2, "H W 3 D "

    .line 1131
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const-string v6, "UTF-8"

    const-string v7, "special_file_type"

    const/16 v8, 0x10

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Landroid/media/HwMediaScannerImpl$FixedEndTagCustomImageInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-instance v1, Landroid/media/HwMediaScannerImpl$FixedEndTagCustomImageInfo;

    const-string v4, "sbc\u0000\u0000\u0000\u0000\u0000"

    const-string v2, "sbc\u0000\u0000\u0000\u0000\u0000"

    .line 1133
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const-string v6, "UTF-8"

    const-string v7, "special_file_type"

    const/16 v8, 0x33

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Landroid/media/HwMediaScannerImpl$FixedEndTagCustomImageInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    const/16 v2, 0x8

    aput-object v1, v0, v2

    new-instance v1, Landroid/media/HwMediaScannerImpl$FixedEndTagCustomImageInfo;

    const-string v4, "sbcb\u0000\u0000\u0000\u0000"

    const-string v2, "sbc\u0000\u0000\u0000\u0000\u0000"

    .line 1135
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const-string v6, "UTF-8"

    const-string v7, "special_file_type"

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Landroid/media/HwMediaScannerImpl$FixedEndTagCustomImageInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iput-object v0, p0, Landroid/media/HwMediaScannerImpl;->mCustomImageInfos:[Landroid/media/HwMediaScannerImpl$CustomImageInfo;

    .line 1138
    return-void
.end method

.method private insertDirectory(Landroid/media/MediaScannerClient;Ljava/lang/String;)V
    .locals 13
    .param p1, "client"    # Landroid/media/MediaScannerClient;
    .param p2, "path"    # Ljava/lang/String;

    .line 565
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 566
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 567
    return-void

    .line 570
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    .line 573
    .local v1, "lastModifiedSeconds":J
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x2f

    if-ne v3, v5, :cond_1

    .line 574
    const/4 v3, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-virtual {p2, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 576
    .local v3, "filePath":Ljava/lang/String;
    move-object v6, v3

    goto :goto_0

    .end local v3    # "filePath":Ljava/lang/String;
    :cond_1
    move-object v6, p2

    .line 579
    .local v6, "filePath":Ljava/lang/String;
    :goto_0
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object v5, p1

    move-wide v7, v1

    invoke-interface/range {v5 .. v12}, Landroid/media/MediaScannerClient;->scanFile(Ljava/lang/String;JJZZ)V

    .line 580
    return-void
.end method

.method private isAcceptableCharacter(C)Z
    .locals 2
    .param p1, "input"    # C

    .line 925
    invoke-static {p1}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v0

    .line 926
    .local v0, "unicodeBlock":Ljava/lang/Character$UnicodeBlock;
    invoke-direct {p0, v0}, Landroid/media/HwMediaScannerImpl;->isCJKCharacter(Ljava/lang/Character$UnicodeBlock;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->BASIC_LATIN:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_1

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->GENERAL_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_1

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->HALFWIDTH_AND_FULLWIDTH_FORMS:Ljava/lang/Character$UnicodeBlock;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method private isAcceptableString(Ljava/lang/String;)Z
    .locals 7
    .param p1, "input"    # Ljava/lang/String;

    .line 946
    invoke-direct {p0, p1}, Landroid/media/HwMediaScannerImpl;->trimIncorrectPunctuation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 947
    .local v0, "str":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 948
    .local v1, "arrayChar":[C
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-char v5, v1, v4

    .line 949
    .local v5, "item":C
    invoke-direct {p0, v5}, Landroid/media/HwMediaScannerImpl;->isAcceptableCharacter(C)Z

    move-result v6

    if-nez v6, :cond_0

    .line 950
    return v3

    .line 948
    .end local v5    # "item":C
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 953
    :cond_1
    const/4 v2, 0x1

    return v2
.end method

.method private isCJKCharacter(Ljava/lang/Character$UnicodeBlock;)Z
    .locals 1
    .param p1, "unicodeBlock"    # Ljava/lang/Character$UnicodeBlock;

    .line 932
    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq p1, v0, :cond_1

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq p1, v0, :cond_1

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A:Ljava/lang/Character$UnicodeBlock;

    if-eq p1, v0, :cond_1

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_SYMBOLS_AND_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isInvalidString(Ljava/lang/String;)Z
    .locals 1
    .param p1, "input"    # Ljava/lang/String;

    .line 1006
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Landroid/media/HwMediaScannerImpl;->isInvalidUtf8(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Landroid/media/HwMediaScannerImpl;->isStringMessy(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isInvalidUtf8(Ljava/lang/String;)Z
    .locals 1
    .param p1, "input"    # Ljava/lang/String;

    .line 1002
    if-eqz p1, :cond_0

    const-string v0, "??"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isMessyCharacter(C)Z
    .locals 2
    .param p1, "input"    # C

    .line 875
    invoke-static {p1}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v0

    .line 876
    .local v0, "unicodeBlock":Ljava/lang/Character$UnicodeBlock;
    invoke-direct {p0, v0}, Landroid/media/HwMediaScannerImpl;->isMessyCharacter1(Ljava/lang/Character$UnicodeBlock;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, v0}, Landroid/media/HwMediaScannerImpl;->isMessyCharacter2(Ljava/lang/Character$UnicodeBlock;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, v0}, Landroid/media/HwMediaScannerImpl;->isMessyCharacter3(Ljava/lang/Character$UnicodeBlock;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method private isMessyCharacter1(Ljava/lang/Character$UnicodeBlock;)Z
    .locals 1
    .param p1, "unicodeBlock"    # Ljava/lang/Character$UnicodeBlock;

    .line 880
    sget-object v0, Ljava/lang/Character$UnicodeBlock;->LATIN_1_SUPPLEMENT:Ljava/lang/Character$UnicodeBlock;

    if-eq p1, v0, :cond_1

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->SPECIALS:Ljava/lang/Character$UnicodeBlock;

    if-eq p1, v0, :cond_1

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->HEBREW:Ljava/lang/Character$UnicodeBlock;

    if-eq p1, v0, :cond_1

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->GREEK:Ljava/lang/Character$UnicodeBlock;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isMessyCharacter2(Ljava/lang/Character$UnicodeBlock;)Z
    .locals 1
    .param p1, "unicodeBlock"    # Ljava/lang/Character$UnicodeBlock;

    .line 886
    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CYRILLIC_SUPPLEMENTARY:Ljava/lang/Character$UnicodeBlock;

    if-eq p1, v0, :cond_1

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->LATIN_EXTENDED_A:Ljava/lang/Character$UnicodeBlock;

    if-eq p1, v0, :cond_1

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->LATIN_EXTENDED_B:Ljava/lang/Character$UnicodeBlock;

    if-eq p1, v0, :cond_1

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->COMBINING_DIACRITICAL_MARKS:Ljava/lang/Character$UnicodeBlock;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isMessyCharacter3(Ljava/lang/Character$UnicodeBlock;)Z
    .locals 1
    .param p1, "unicodeBlock"    # Ljava/lang/Character$UnicodeBlock;

    .line 893
    sget-object v0, Ljava/lang/Character$UnicodeBlock;->PRIVATE_USE_AREA:Ljava/lang/Character$UnicodeBlock;

    if-eq p1, v0, :cond_1

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->ARMENIAN:Ljava/lang/Character$UnicodeBlock;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isMessyCharacterOrigin(C)Z
    .locals 2
    .param p1, "input"    # C

    .line 898
    invoke-static {p1}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v0

    .line 900
    .local v0, "unicodeBlock":Ljava/lang/Character$UnicodeBlock;
    invoke-direct {p0, v0}, Landroid/media/HwMediaScannerImpl;->isMessyCharacterOrigin1(Ljava/lang/Character$UnicodeBlock;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, v0}, Landroid/media/HwMediaScannerImpl;->isMessyCharacterOrigin2(Ljava/lang/Character$UnicodeBlock;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 901
    invoke-direct {p0, p1}, Landroid/media/HwMediaScannerImpl;->isMessyCharacterOrigin3(C)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 900
    :goto_1
    return v1
.end method

.method private isMessyCharacterOrigin1(Ljava/lang/Character$UnicodeBlock;)Z
    .locals 1
    .param p1, "unicodeBlock"    # Ljava/lang/Character$UnicodeBlock;

    .line 905
    sget-object v0, Ljava/lang/Character$UnicodeBlock;->SPECIALS:Ljava/lang/Character$UnicodeBlock;

    if-eq p1, v0, :cond_1

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->GREEK:Ljava/lang/Character$UnicodeBlock;

    if-eq p1, v0, :cond_1

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CYRILLIC_SUPPLEMENTARY:Ljava/lang/Character$UnicodeBlock;

    if-eq p1, v0, :cond_1

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->LATIN_EXTENDED_A:Ljava/lang/Character$UnicodeBlock;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isMessyCharacterOrigin2(Ljava/lang/Character$UnicodeBlock;)Z
    .locals 1
    .param p1, "unicodeBlock"    # Ljava/lang/Character$UnicodeBlock;

    .line 911
    sget-object v0, Ljava/lang/Character$UnicodeBlock;->LATIN_EXTENDED_B:Ljava/lang/Character$UnicodeBlock;

    if-eq p1, v0, :cond_1

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->COMBINING_DIACRITICAL_MARKS:Ljava/lang/Character$UnicodeBlock;

    if-eq p1, v0, :cond_1

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->PRIVATE_USE_AREA:Ljava/lang/Character$UnicodeBlock;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isMessyCharacterOrigin3(C)Z
    .locals 2
    .param p1, "input"    # C

    .line 917
    invoke-static {p1}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v0

    .line 918
    .local v0, "unicodeBlock":Ljava/lang/Character$UnicodeBlock;
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Landroid/media/CharacterTables;->isFrequentHan(C)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->BOX_DRAWING:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_2

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->HANGUL_SYLLABLES:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_2

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->ARMENIAN:Ljava/lang/Character$UnicodeBlock;

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method private static isMultiSimEnabled()Z
    .locals 1

    .line 871
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    return v0
.end method

.method private isStringMessy(Ljava/lang/String;)Z
    .locals 7
    .param p1, "input"    # Ljava/lang/String;

    .line 957
    invoke-direct {p0, p1}, Landroid/media/HwMediaScannerImpl;->trimIncorrectPunctuation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 958
    .local v0, "str":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 959
    .local v1, "arrayChar":[C
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-char v5, v1, v4

    .line 960
    .local v5, "intent":C
    invoke-direct {p0, v5}, Landroid/media/HwMediaScannerImpl;->isMessyCharacter(C)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 961
    const/4 v2, 0x1

    return v2

    .line 959
    .end local v5    # "intent":C
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 964
    :cond_1
    return v3
.end method

.method private isStringMessyOrigin(Ljava/lang/String;)Z
    .locals 7
    .param p1, "input"    # Ljava/lang/String;

    .line 968
    invoke-direct {p0, p1}, Landroid/media/HwMediaScannerImpl;->trimIncorrectPunctuation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 969
    .local v0, "str":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 970
    .local v1, "arrayChar":[C
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-char v5, v1, v4

    .line 971
    .local v5, "intent":C
    invoke-direct {p0, v5}, Landroid/media/HwMediaScannerImpl;->isMessyCharacterOrigin(C)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 972
    const/4 v2, 0x1

    return v2

    .line 970
    .end local v5    # "intent":C
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 975
    :cond_1
    return v3
.end method

.method private loadAudioFilterConfigFromCache(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .line 413
    const/4 v0, 0x0

    .line 414
    .local v0, "inputStream":Ljava/io/FileInputStream;
    const/4 v1, 0x0

    move-object v2, v1

    .line 416
    .local v2, "reader":Ljava/io/BufferedReader;
    :try_start_0
    const-string v3, "del_audio_list.xml"

    invoke-virtual {p1, v3}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v3

    move-object v0, v3

    .line 417
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    const-string v5, "UTF-8"

    invoke-direct {v4, v0, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v3

    .line 418
    nop

    .line 419
    .local v1, "line":Ljava/lang/String;
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    if-eqz v3, :cond_0

    .line 420
    iget-object v3, p0, Landroid/media/HwMediaScannerImpl;->mDelRingtonesList:Ljava/util/HashSet;

    invoke-virtual {v3, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 427
    .end local v1    # "line":Ljava/lang/String;
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 424
    :catch_0
    move-exception v1

    .line 425
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    const-string v3, "HwMediaScannerImpl"

    const-string v4, "failed to load audio filter config from cache, io exception"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 422
    :catch_1
    move-exception v1

    .line 423
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string v3, "HwMediaScannerImpl"

    const-string v4, "failed to load audio filter config from cache, file not found exception"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 427
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :cond_0
    :goto_1
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 428
    nop

    .line 429
    return-void

    .line 427
    :goto_2
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v1
.end method

.method private loadAudioFilterConfigFromCust()V
    .locals 12

    .line 367
    const-string v0, "xml/del_audio_list.xml"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lhuawei/cust/HwCfgFilePolicy;->getCfgFileList(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0

    .line 368
    .local v0, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "filesLen":I
    :goto_0
    if-ge v1, v2, :cond_9

    .line 369
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 370
    .local v3, "file":Ljava/io/File;
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 371
    goto/16 :goto_5

    .line 373
    :cond_0
    const/4 v4, 0x0

    .line 374
    .local v4, "in":Ljava/io/FileInputStream;
    const/4 v5, 0x0

    move-object v6, v5

    .line 376
    .local v6, "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v4, v7

    .line 377
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v7

    .line 378
    .local v7, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 379
    invoke-virtual {v7}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v9

    move-object v6, v9

    .line 380
    invoke-interface {v6, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 381
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    .line 382
    .local v5, "eventType":I
    :goto_1
    if-eq v5, v8, :cond_7

    .line 383
    const/4 v9, 0x2

    if-eq v5, v9, :cond_1

    .line 384
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    move v5, v9

    .line 385
    goto :goto_1

    .line 387
    :cond_1
    const-string v9, "alarms"

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 388
    iget-object v9, p0, Landroid/media/HwMediaScannerImpl;->mDelRingtonesList:Ljava/util/HashSet;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "/system/media/audio/alarms/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ".ogg"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 389
    :cond_2
    const-string v9, "notifications"

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 390
    iget-object v9, p0, Landroid/media/HwMediaScannerImpl;->mDelRingtonesList:Ljava/util/HashSet;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "/system/media/audio/notifications/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ".ogg"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 391
    :cond_3
    const-string v9, "ringtones"

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 392
    iget-object v9, p0, Landroid/media/HwMediaScannerImpl;->mDelRingtonesList:Ljava/util/HashSet;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "/system/media/audio/ringtones/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ".ogg"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 393
    :cond_4
    const-string v9, "ui"

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 394
    iget-object v9, p0, Landroid/media/HwMediaScannerImpl;->mDelRingtonesList:Ljava/util/HashSet;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "/system/media/audio/ui/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ".ogg"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 396
    :cond_5
    sget-boolean v9, Landroid/media/HwMediaScannerImpl;->DEBUG:Z

    if-eqz v9, :cond_6

    .line 397
    const-string v9, "HwMediaScannerImpl"

    const-string v10, "No event type could be met."

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    :cond_6
    :goto_2
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v5, v9

    goto/16 :goto_1

    .line 407
    .end local v5    # "eventType":I
    .end local v7    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    :catchall_0
    move-exception v5

    goto :goto_4

    .line 404
    :catch_0
    move-exception v5

    .line 405
    .local v5, "e":Ljava/io/IOException;
    :try_start_1
    const-string v7, "HwMediaScannerImpl"

    const-string v8, "failed to load audio filter config from cust, io exception"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v5    # "e":Ljava/io/IOException;
    goto :goto_3

    .line 402
    :catch_1
    move-exception v5

    .line 403
    .local v5, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v7, "HwMediaScannerImpl"

    const-string v8, "failed to load audio filter config from cust, parser exception"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 407
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "in":Ljava/io/FileInputStream;
    .end local v5    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v6    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :cond_7
    :goto_3
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 408
    goto :goto_5

    .line 407
    .restart local v3    # "file":Ljava/io/File;
    .restart local v4    # "in":Ljava/io/FileInputStream;
    .restart local v6    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :goto_4
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v5

    .line 368
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "in":Ljava/io/FileInputStream;
    .end local v6    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :cond_8
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 410
    .end local v1    # "i":I
    .end local v2    # "filesLen":I
    :cond_9
    return-void
.end method

.method private printDeleteLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;

    .line 1462
    sget-boolean v0, Landroid/media/HwMediaScannerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1463
    const-string v0, "HwMediaScannerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete nomedia file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1465
    :cond_0
    return-void
.end method

.method private printLog(Ljava/lang/String;J)V
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "size"    # J

    .line 1468
    sget-boolean v0, Landroid/media/HwMediaScannerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1469
    const-string v0, "HwMediaScannerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "skip nomedia file ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]  size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1471
    :cond_0
    return-void
.end method

.method private readFileEndBytes(Ljava/lang/String;)[B
    .locals 9
    .param p1, "path"    # Ljava/lang/String;

    .line 786
    const/4 v0, 0x0

    .line 787
    .local v0, "randomFile":Ljava/io/RandomAccessFile;
    const/4 v1, 0x0

    new-array v1, v1, [B

    .line 789
    .local v1, "buffer":[B
    if-nez p1, :cond_0

    .line 790
    return-object v1

    .line 794
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "r"

    invoke-direct {v2, p1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    .line 795
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 796
    .local v2, "fileLength":J
    const-wide/16 v4, 0x14

    cmp-long v6, v2, v4

    if-gez v6, :cond_1

    .line 797
    nop

    .line 813
    nop

    .line 815
    :try_start_1
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 818
    goto :goto_0

    .line 816
    :catch_0
    move-exception v4

    .line 817
    .local v4, "e1":Ljava/io/IOException;
    const-string v5, "HwMediaScannerImpl"

    const-string v6, "fail to process custom image, readFileEndBytes close file fail"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    .end local v4    # "e1":Ljava/io/IOException;
    :goto_0
    return-object v1

    .line 799
    :cond_1
    const/16 v6, 0x14

    :try_start_2
    new-array v7, v6, [B

    .line 800
    .local v7, "tmp":[B
    sub-long v4, v2, v4

    invoke-virtual {v0, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 801
    invoke-virtual {v0, v7}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v4
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 802
    .local v4, "byteread":I
    if-eq v4, v6, :cond_2

    .line 803
    nop

    .line 813
    nop

    .line 815
    :try_start_3
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 818
    goto :goto_1

    .line 816
    :catch_1
    move-exception v5

    .line 817
    .local v5, "e1":Ljava/io/IOException;
    const-string v6, "HwMediaScannerImpl"

    const-string v8, "fail to process custom image, readFileEndBytes close file fail"

    invoke-static {v6, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    .end local v5    # "e1":Ljava/io/IOException;
    :goto_1
    return-object v1

    .line 805
    :cond_2
    move-object v1, v7

    .line 813
    .end local v2    # "fileLength":J
    .end local v4    # "byteread":I
    .end local v7    # "tmp":[B
    nop

    .line 815
    :try_start_4
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 818
    :goto_2
    goto :goto_3

    .line 816
    :catch_2
    move-exception v2

    .line 817
    .local v2, "e1":Ljava/io/IOException;
    const-string v3, "HwMediaScannerImpl"

    const-string v4, "fail to process custom image, readFileEndBytes close file fail"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e1":Ljava/io/IOException;
    goto :goto_2

    .line 813
    :catchall_0
    move-exception v2

    goto :goto_4

    .line 810
    :catch_3
    move-exception v2

    .line 811
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    :try_start_5
    const-string v3, "HwMediaScannerImpl"

    const-string v4, "fail to process custom image, readFileEndBytes throws IllegalArgumentException"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 813
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    if-eqz v0, :cond_3

    .line 815
    :try_start_6
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    .line 808
    :catch_4
    move-exception v2

    .line 809
    .local v2, "e":Ljava/lang/SecurityException;
    :try_start_7
    const-string v3, "HwMediaScannerImpl"

    const-string v4, "fail to process custom image, readFileEndBytes throws SecurityException"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 813
    .end local v2    # "e":Ljava/lang/SecurityException;
    if-eqz v0, :cond_3

    .line 815
    :try_start_8
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_2

    .line 806
    :catch_5
    move-exception v2

    .line 807
    .local v2, "ex":Ljava/io/IOException;
    :try_start_9
    const-string v3, "HwMediaScannerImpl"

    const-string v4, "fail to process custom image, readFileEndBytes throws IOException"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 813
    .end local v2    # "ex":Ljava/io/IOException;
    if-eqz v0, :cond_3

    .line 815
    :try_start_a
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_2

    .line 821
    :cond_3
    :goto_3
    return-object v1

    .line 813
    :goto_4
    if-eqz v0, :cond_4

    .line 815
    :try_start_b
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    .line 818
    goto :goto_5

    .line 816
    :catch_6
    move-exception v3

    .line 817
    .local v3, "e1":Ljava/io/IOException;
    const-string v4, "HwMediaScannerImpl"

    const-string v5, "fail to process custom image, readFileEndBytes close file fail"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    .end local v3    # "e1":Ljava/io/IOException;
    :cond_4
    :goto_5
    throw v2
.end method

.method private setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;JLandroid/content/Context;)V
    .locals 5
    .param p1, "settingName"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "rowId"    # J
    .param p5, "context"    # Landroid/content/Context;

    .line 671
    invoke-virtual {p5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 672
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-direct {p0, v0, p1}, Landroid/media/HwMediaScannerImpl;->wasRingtoneAlreadySet(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 673
    return-void

    .line 676
    :cond_0
    invoke-static {v0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 678
    .local v1, "existingSettingValue":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 680
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 681
    .local v2, "settingUri":Landroid/net/Uri;
    invoke-static {p2, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 682
    .local v3, "ringtoneUri":Landroid/net/Uri;
    invoke-static {v2}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    move-result v4

    .line 683
    .local v4, "type":I
    invoke-static {p5, v4, v3}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 686
    .end local v2    # "settingUri":Landroid/net/Uri;
    .end local v3    # "ringtoneUri":Landroid/net/Uri;
    .end local v4    # "type":I
    :cond_1
    invoke-direct {p0, p1}, Landroid/media/HwMediaScannerImpl;->settingSetIndicatorName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 687
    return-void
.end method

.method private settingSetIndicatorName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "base"    # Ljava/lang/String;

    .line 649
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_set"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static shouldSkipDirectory(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 6
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "whiteList"    # [Ljava/lang/String;
    .param p2, "blackList"    # [Ljava/lang/String;

    .line 549
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_1

    aget-object v4, p1, v2

    .line 550
    .local v4, "dir":Ljava/lang/String;
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 551
    return v3

    .line 549
    .end local v4    # "dir":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 555
    :cond_1
    array-length v0, p2

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_3

    aget-object v4, p2, v2

    .line 556
    .restart local v4    # "dir":Ljava/lang/String;
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 557
    return v3

    .line 555
    .end local v4    # "dir":Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 561
    :cond_3
    return v1
.end method

.method private trimIncorrectPunctuation(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "input"    # Ljava/lang/String;

    .line 939
    const-string v0, "\\s*|\t*|\r*|\n*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\p{P}"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 940
    .local v0, "str":Ljava/lang/String;
    const-string v1, "[`~!@#$%^&*()+=|{}\':;\',\\[\\].<>/?~\uff01@#\uffe5%\u2026\u2026&*\uff08\uff09\u2014\u2014+|{}\u3010\u3011\u2018\uff1b\uff1a\u201d\u201c\u2019\u3002\uff0c\u3001\uff1f]"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 941
    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const-string v2, ""

    .line 942
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 940
    return-object v1
.end method

.method private wasRingtoneAlreadySet(Landroid/content/ContentResolver;Ljava/lang/String;)Z
    .locals 3
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "name"    # Ljava/lang/String;

    .line 653
    invoke-direct {p0, p2}, Landroid/media/HwMediaScannerImpl;->settingSetIndicatorName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 655
    .local v0, "indicatorName":Ljava/lang/String;
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1

    .line 656
    :catch_0
    move-exception v2

    .line 657
    .local v2, "e":Landroid/provider/Settings$SettingNotFoundException;
    return v1
.end method


# virtual methods
.method public deleteNomediaFile()V
    .locals 18

    .line 1434
    move-object/from16 v1, p0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const/16 v2, 0x100

    invoke-static {v0, v2}, Landroid/os/storage/StorageManager;->getVolumeList(II)[Landroid/os/storage/StorageVolume;

    move-result-object v2

    .line 1436
    .local v2, "volumes":[Landroid/os/storage/StorageVolume;
    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_4

    aget-object v6, v2, v5

    .line 1437
    .local v6, "storageVolume":Landroid/os/storage/StorageVolume;
    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v7

    .line 1438
    .local v7, "rootPath":Ljava/lang/String;
    sget-object v8, Landroid/media/HwMediaScannerImpl;->NO_MEDIA_FILE_PATH:[Ljava/lang/String;

    array-length v9, v8

    move v10, v4

    :goto_1
    if-ge v10, v9, :cond_3

    aget-object v11, v8, v10

    .line 1439
    .local v11, "nomedia":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1440
    .local v12, "nomediaPath":Ljava/lang/String;
    new-instance v0, Landroid/os/storage/ExternalStorageFileImpl;

    invoke-direct {v0, v12}, Landroid/os/storage/ExternalStorageFileImpl;-><init>(Ljava/lang/String;)V

    move-object v13, v0

    .line 1442
    .local v13, "nomediaFile":Landroid/os/storage/ExternalStorageFileImpl;
    :try_start_0
    invoke-virtual {v13}, Landroid/os/storage/ExternalStorageFileImpl;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1443
    goto :goto_3

    .line 1445
    :cond_0
    invoke-virtual {v13}, Landroid/os/storage/ExternalStorageFileImpl;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v13}, Landroid/os/storage/ExternalStorageFileImpl;->length()J

    move-result-wide v14

    const-wide/16 v16, 0x400

    cmp-long v0, v14, v16

    if-lez v0, :cond_1

    .line 1446
    invoke-virtual {v13}, Landroid/os/storage/ExternalStorageFileImpl;->length()J

    move-result-wide v14

    invoke-direct {v1, v12, v14, v15}, Landroid/media/HwMediaScannerImpl;->printLog(Ljava/lang/String;J)V

    .line 1447
    goto :goto_3

    .line 1449
    :cond_1
    invoke-direct {v1, v13}, Landroid/media/HwMediaScannerImpl;->deleteFile(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1450
    const-string v0, "Success"

    invoke-direct {v1, v0, v12}, Landroid/media/HwMediaScannerImpl;->printDeleteLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1452
    :cond_2
    const-string v0, "Fail"

    invoke-direct {v1, v0, v12}, Landroid/media/HwMediaScannerImpl;->printDeleteLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1456
    :goto_2
    goto :goto_3

    .line 1454
    :catch_0
    move-exception v0

    .line 1455
    .local v0, "e":Ljava/io/IOException;
    const-string v14, "ex"

    invoke-direct {v1, v14, v12}, Landroid/media/HwMediaScannerImpl;->printDeleteLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1438
    .end local v0    # "e":Ljava/io/IOException;
    .end local v11    # "nomedia":Ljava/lang/String;
    .end local v12    # "nomediaPath":Ljava/lang/String;
    .end local v13    # "nomediaFile":Landroid/os/storage/ExternalStorageFileImpl;
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1436
    .end local v6    # "storageVolume":Landroid/os/storage/StorageVolume;
    .end local v7    # "rootPath":Ljava/lang/String;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1459
    :cond_4
    return-void
.end method

.method public getBufferSize(Landroid/net/Uri;I)I
    .locals 4
    .param p1, "tableUri"    # Landroid/net/Uri;
    .param p2, "bufferSizePerUri"    # I

    .line 590
    sget-object v0, Landroid/media/HwMediaScannerImpl;->EXTERNAL_IMAGE_URI:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 591
    .local v0, "isImage":Z
    sget-object v1, Landroid/media/HwMediaScannerImpl;->EXTERNAL_VIDEO_URI:Landroid/net/Uri;

    invoke-virtual {v1, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 592
    .local v1, "isVideo":Z
    sget-object v2, Landroid/media/HwMediaScannerImpl;->EXTERNAL_AUDIO_URI:Landroid/net/Uri;

    invoke-virtual {v2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 593
    .local v2, "isAudio":Z
    if-nez v0, :cond_1

    if-nez v1, :cond_1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v3, p2

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v3, 0x64

    .line 594
    .local v3, "bufferSize":I
    :goto_1
    return v3
.end method

.method public getExtSdcardVolumePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .line 696
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 697
    return-object v0

    .line 699
    :cond_0
    const-string v1, "storage"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    .line 700
    .local v1, "storageManager":Landroid/os/storage/StorageManager;
    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v2

    .line 701
    .local v2, "storageVolumes":[Landroid/os/storage/StorageVolume;
    if-nez v2, :cond_1

    .line 702
    return-object v0

    .line 704
    :cond_1
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v2, v4

    .line 705
    .local v5, "storageVolume":Landroid/os/storage/StorageVolume;
    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 706
    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v6

    const-string v7, "usb"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 707
    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 704
    .end local v5    # "storageVolume":Landroid/os/storage/StorageVolume;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 711
    :cond_3
    return-object v0
.end method

.method public hwNeedSetSettings(Ljava/lang/String;)Z
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .line 615
    invoke-static {}, Landroid/media/HwMediaScannerImpl;->isMultiSimEnabled()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/media/HwMediaScannerImpl;->mDefaultRingtoneSet2:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/media/HwMediaScannerImpl;->mDefaultRingtoneFilename2:Ljava/lang/String;

    .line 616
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/media/HwMediaScannerImpl;->mDefaultRingtoneFilename2:Ljava/lang/String;

    .line 617
    invoke-direct {p0, p1, v0}, Landroid/media/HwMediaScannerImpl;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 618
    .local v0, "settingEnabled":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 619
    return v2

    .line 621
    :cond_2
    return v1
.end method

.method public hwSetRingtone2Settings(ZZLandroid/net/Uri;JLandroid/content/Context;)V
    .locals 7
    .param p1, "needToSetSettings2"    # Z
    .param p2, "ringtones"    # Z
    .param p3, "tableUri"    # Landroid/net/Uri;
    .param p4, "rowId"    # J
    .param p6, "context"    # Landroid/content/Context;

    .line 642
    invoke-static {}, Landroid/media/HwMediaScannerImpl;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 643
    const-string v2, "ringtone2"

    move-object v1, p0

    move-object v3, p3

    move-wide v4, p4

    move-object v6, p6

    invoke-direct/range {v1 .. v6}, Landroid/media/HwMediaScannerImpl;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;JLandroid/content/Context;)V

    .line 644
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/HwMediaScannerImpl;->mDefaultRingtoneSet2:Z

    .line 646
    :cond_0
    return-void
.end method

.method public initializeHwVoiceAndFocus(Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 6
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;

    .line 776
    invoke-direct {p0, p1}, Landroid/media/HwMediaScannerImpl;->readFileEndBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 778
    .local v0, "fileEndBytes":[B
    iget-object v1, p0, Landroid/media/HwMediaScannerImpl;->mCustomImageInfos:[Landroid/media/HwMediaScannerImpl$CustomImageInfo;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 779
    .local v4, "item":Landroid/media/HwMediaScannerImpl$CustomImageInfo;
    invoke-virtual {v4, v0, p2}, Landroid/media/HwMediaScannerImpl$CustomImageInfo;->checkTag([BLandroid/content/ContentValues;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 780
    goto :goto_1

    .line 778
    .end local v4    # "item":Landroid/media/HwMediaScannerImpl$CustomImageInfo;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 783
    :cond_1
    :goto_1
    return-void
.end method

.method public initializeSniffer(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .line 1078
    return-void
.end method

.method public isAudioFilterFile(Ljava/lang/String;)Z
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .line 438
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 439
    const/4 v0, 0x0

    return v0

    .line 441
    :cond_0
    monitor-enter p0

    .line 442
    :try_start_0
    iget-object v0, p0, Landroid/media/HwMediaScannerImpl;->mDelRingtonesList:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit p0

    return v0

    .line 443
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isBitmapSizeTooLarge(Ljava/lang/String;)Z
    .locals 10
    .param p1, "path"    # Ljava/lang/String;

    .line 760
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 761
    .local v0, "imageFile":Ljava/io/File;
    const-string v1, "ro.config.hw_pic_limit_size"

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 762
    .local v4, "limitSize":J
    const-wide/16 v6, 0x400

    mul-long v8, v4, v6

    mul-long/2addr v8, v6

    .line 763
    .local v8, "newSize":J
    cmp-long v1, v4, v2

    if-lez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    cmp-long v1, v1, v8

    if-lez v1, :cond_0

    .line 764
    const/4 v1, 0x1

    return v1

    .line 766
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public isMp3(Ljava/lang/String;)Z
    .locals 2
    .param p1, "mimetype"    # Ljava/lang/String;

    .line 1046
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1047
    return v0

    .line 1049
    :cond_0
    const-string v1, "audio/mpeg"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "audio/x-mp3"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "audio/x-mpeg"

    .line 1050
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "audio/mp3"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 1051
    .local v0, "mimeIsValid":Z
    :goto_1
    return v0
.end method

.method public isSkipExtSdcard(Landroid/content/ContentProviderClient;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Z
    .locals 11
    .param p1, "mMediaProvider"    # Landroid/content/ContentProviderClient;
    .param p2, "mExtStroagePath"    # Ljava/lang/String;
    .param p3, "mPackageName"    # Ljava/lang/String;
    .param p4, "mFilesUriNoNotify"    # Landroid/net/Uri;

    .line 725
    const/4 v0, 0x0

    .line 726
    .local v0, "skip":Z
    if-nez p2, :cond_0

    .line 727
    return v0

    .line 729
    :cond_0
    const/4 v1, -0x1

    .line 730
    .local v1, "externelNum":I
    const-string v2, "COUNT(*)"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v5

    .line 731
    .local v5, "projectionIn":[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_data LIKE \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "%\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 732
    .local v2, "selection":Ljava/lang/String;
    const/4 v3, 0x0

    move-object v10, v3

    .line 734
    .local v10, "cursor":Landroid/database/Cursor;
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p1

    move-object v4, p4

    move-object v6, v2

    :try_start_0
    invoke-virtual/range {v3 .. v9}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v3

    move-object v10, v3

    .line 735
    if-eqz v10, :cond_1

    .line 736
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 737
    const/4 v3, 0x0

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v3

    .line 743
    :cond_1
    if-eqz v10, :cond_2

    .line 744
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 743
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 740
    :catch_0
    move-exception v3

    .line 741
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v4, "HwMediaScannerImpl"

    const-string v6, "isSkipExtSdcard query error"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 743
    .end local v3    # "e":Landroid/os/RemoteException;
    if-eqz v10, :cond_2

    goto :goto_0

    .line 747
    :cond_2
    :goto_1
    if-nez v1, :cond_3

    .line 748
    const/4 v0, 0x1

    .line 750
    :cond_3
    return v0

    .line 743
    :goto_2
    if-eqz v10, :cond_4

    .line 744
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v3
.end method

.method public loadAudioFilterConfig(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 356
    monitor-enter p0

    .line 357
    :try_start_0
    iget-boolean v0, p0, Landroid/media/HwMediaScannerImpl;->mIsAudioFilterLoad:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 358
    invoke-direct {p0}, Landroid/media/HwMediaScannerImpl;->loadAudioFilterConfigFromCust()V

    .line 359
    invoke-direct {p0, p1}, Landroid/media/HwMediaScannerImpl;->loadAudioFilterConfigFromCache(Landroid/content/Context;)V

    .line 360
    iput-boolean v1, p0, Landroid/media/HwMediaScannerImpl;->mIsAudioFilterLoad:Z

    .line 362
    :cond_0
    iget-object v0, p0, Landroid/media/HwMediaScannerImpl;->mDelRingtonesList:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    monitor-exit p0

    return v1

    .line 363
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public postHandleStringTag(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "flag"    # I

    .line 1098
    packed-switch p3, :pswitch_data_0

    .line 1111
    return-object p1

    .line 1106
    :pswitch_0
    invoke-direct {p0, p1}, Landroid/media/HwMediaScannerImpl;->getCorrectEncodedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1107
    .local v0, "tmpValue":Ljava/lang/String;
    invoke-direct {p0, v0, p2, p3}, Landroid/media/HwMediaScannerImpl;->finalCheck(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1103
    .end local v0    # "tmpValue":Ljava/lang/String;
    :pswitch_1
    invoke-direct {p0, p1}, Landroid/media/HwMediaScannerImpl;->getCorrectEncodedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1104
    .restart local v0    # "tmpValue":Ljava/lang/String;
    invoke-direct {p0, v0, p2, p3}, Landroid/media/HwMediaScannerImpl;->finalCheck(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1100
    .end local v0    # "tmpValue":Ljava/lang/String;
    :pswitch_2
    invoke-direct {p0, p1}, Landroid/media/HwMediaScannerImpl;->getCorrectEncodedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1101
    .restart local v0    # "tmpValue":Ljava/lang/String;
    invoke-direct {p0, v0, p2, p3}, Landroid/media/HwMediaScannerImpl;->finalCheck(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public preHandleStringTag(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "mimetype"    # Ljava/lang/String;

    .line 1062
    invoke-virtual {p0}, Landroid/media/HwMediaScannerImpl;->useMessyOptimize()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Landroid/media/HwMediaScannerImpl;->isMp3(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1063
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Landroid/media/HwMediaScannerImpl;->isStringMessyOrigin(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1064
    const-string v0, "HwMediaScannerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    const/4 v0, 0x1

    return v0

    .line 1068
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public pruneDeadThumbnailsFolder()V
    .locals 12

    .line 828
    const/4 v0, 0x0

    move v1, v0

    .line 830
    .local v1, "isDelete":Z
    :try_start_0
    new-instance v2, Landroid/os/StatFs;

    iget-object v3, p0, Landroid/media/HwMediaScannerImpl;->mExternalStoragePath:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 838
    .local v2, "sdcardFileStats":Landroid/os/StatFs;
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v5

    int-to-long v5, v5

    mul-long/2addr v3, v5

    .line 839
    .local v3, "freeMem":J
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockCount()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v7

    int-to-long v7, v7

    mul-long/2addr v5, v7

    const-wide/16 v7, 0xa

    div-long/2addr v5, v7

    .line 840
    .local v5, "totalMem":J
    const-wide/32 v7, 0x1f400000

    cmp-long v9, v5, v7

    if-lez v9, :cond_0

    goto :goto_0

    :cond_0
    move-wide v7, v5

    .line 841
    .local v7, "thresholdMem":J
    :goto_0
    cmp-long v9, v3, v7

    if-lez v9, :cond_1

    move v9, v0

    goto :goto_1

    :cond_1
    const/4 v9, 0x1

    :goto_1
    move v1, v9

    .line 842
    const-string v9, "HwMediaScannerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "freeMem["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, "] 10%totalMem["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, "] under "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Landroid/media/HwMediaScannerImpl;->mExternalStoragePath:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 845
    .end local v2    # "sdcardFileStats":Landroid/os/StatFs;
    .end local v3    # "freeMem":J
    .end local v5    # "totalMem":J
    .end local v7    # "thresholdMem":J
    goto :goto_2

    .line 843
    :catch_0
    move-exception v2

    .line 844
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "HwMediaScannerImpl"

    const-string v4, "IllegalArgumentException in pruneDeadThumbnailsFolder error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :goto_2
    if-eqz v1, :cond_5

    .line 848
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/media/HwMediaScannerImpl;->mExternalStoragePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/DCIM/.thumbnails"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 849
    .local v2, "directory":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 851
    .local v3, "thumbFolder":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_4

    .line 856
    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 857
    .local v4, "files":[Ljava/io/File;
    if-nez v4, :cond_3

    .line 858
    return-void

    .line 860
    :cond_3
    const-string v5, "HwMediaScannerImpl"

    const-string v6, "delete .thumbnails"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    array-length v5, v4

    :goto_3
    if-ge v0, v5, :cond_5

    aget-object v6, v4, v0

    .line 862
    .local v6, "file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v7

    .line 863
    .local v7, "result":Z
    if-nez v7, :cond_4

    .line 864
    const-string v8, "HwMediaScannerImpl"

    const-string v9, "Failed to delete file!"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    .end local v6    # "file":Ljava/io/File;
    .end local v7    # "result":Z
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 852
    .end local v4    # "files":[Ljava/io/File;
    :goto_4
    const-string v0, "HwMediaScannerImpl"

    const-string v4, ".thumbnails folder not exists. "

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    return-void

    .line 868
    .end local v2    # "directory":Ljava/lang/String;
    .end local v3    # "thumbFolder":Ljava/io/File;
    :cond_5
    return-void
.end method

.method public resetSniffer()V
    .locals 0

    .line 1086
    return-void
.end method

.method public scanCustomDirectories(Landroid/media/MediaScanner;Landroid/media/MediaScanner$MyMediaScannerClient;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8
    .param p1, "scanner"    # Landroid/media/MediaScanner;
    .param p2, "mClient"    # Landroid/media/MediaScanner$MyMediaScannerClient;
    .param p3, "directories"    # [Ljava/lang/String;
    .param p4, "whiteList"    # [Ljava/lang/String;
    .param p5, "blackList"    # [Ljava/lang/String;

    .line 492
    :try_start_0
    sget-object v0, Landroid/media/HwMediaScannerImpl;->utils:Landroid/media/MediaScannerUtils;

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/media/MediaScanner;->getIsPrescanFiles()Z

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/media/MediaScannerUtils;->prescan(Landroid/media/MediaScanner;Ljava/lang/String;Z)V

    .line 494
    array-length v0, p4

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p4, v2

    .line 495
    .local v3, "item":Ljava/lang/String;
    sput-object v3, Landroid/media/MediaScanner;->sCurScanDIR:Ljava/lang/String;

    .line 496
    invoke-virtual {p1, v3}, Landroid/media/MediaScanner;->setStorageIdForCurScanDIR(Ljava/lang/String;)V

    .line 497
    invoke-direct {p0, p2, v3}, Landroid/media/HwMediaScannerImpl;->insertDirectory(Landroid/media/MediaScannerClient;Ljava/lang/String;)V

    .line 498
    invoke-virtual {p1, v3}, Landroid/media/MediaScanner;->getRootDirLength(Ljava/lang/String;)I

    move-result v4

    .line 499
    .local v4, "len":I
    invoke-virtual {p1, v4}, Landroid/media/MediaScanner;->setExteLen(I)V

    .line 500
    sget-object v5, Landroid/media/HwMediaScannerImpl;->utils:Landroid/media/MediaScannerUtils;

    invoke-virtual {v5, p1, v3, p2}, Landroid/media/MediaScannerUtils;->processDirectory(Landroid/media/MediaScanner;Ljava/lang/String;Landroid/media/MediaScannerClient;)V

    .line 494
    .end local v3    # "item":Ljava/lang/String;
    .end local v4    # "len":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 503
    :cond_0
    iget-object v0, p0, Landroid/media/HwMediaScannerImpl;->mMediaInserter:Landroid/media/MediaInserter;

    if-eqz v0, :cond_1

    .line 504
    iget-object v0, p0, Landroid/media/HwMediaScannerImpl;->mMediaInserter:Landroid/media/MediaInserter;

    invoke-virtual {v0}, Landroid/media/MediaInserter;->flushAll()V

    .line 507
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 508
    .local v0, "sb":Ljava/lang/StringBuffer;
    invoke-direct {p0, p4, p5, v0}, Landroid/media/HwMediaScannerImpl;->getSkipCustomDirectory([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/StringBuffer;)I

    move-result v2

    .line 509
    .local v2, "size":I
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, v2}, Landroid/media/MediaScanner;->addSkipCustomDirectory(Ljava/lang/String;I)V

    .line 510
    array-length v3, p3

    move v4, v1

    :goto_1
    if-ge v4, v3, :cond_3

    aget-object v5, p3, v4

    .line 511
    .local v5, "item":Ljava/lang/String;
    sput-object v5, Landroid/media/MediaScanner;->sCurScanDIR:Ljava/lang/String;

    .line 512
    invoke-virtual {p1, v5}, Landroid/media/MediaScanner;->setStorageIdForCurScanDIR(Ljava/lang/String;)V

    .line 513
    invoke-static {v5, p4, p5}, Landroid/media/HwMediaScannerImpl;->shouldSkipDirectory(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 514
    invoke-direct {p0, p2, v5}, Landroid/media/HwMediaScannerImpl;->insertDirectory(Landroid/media/MediaScannerClient;Ljava/lang/String;)V

    .line 516
    :cond_2
    invoke-virtual {p1, v5}, Landroid/media/MediaScanner;->getRootDirLength(Ljava/lang/String;)I

    move-result v6

    .line 517
    .local v6, "len":I
    invoke-virtual {p1, v6}, Landroid/media/MediaScanner;->setExteLen(I)V

    .line 518
    sget-object v7, Landroid/media/HwMediaScannerImpl;->utils:Landroid/media/MediaScannerUtils;

    invoke-virtual {v7, p1, v5, p2}, Landroid/media/MediaScannerUtils;->processDirectory(Landroid/media/MediaScanner;Ljava/lang/String;Landroid/media/MediaScannerClient;)V

    .line 510
    .end local v5    # "item":Ljava/lang/String;
    .end local v6    # "len":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 520
    :cond_3
    invoke-virtual {p1}, Landroid/media/MediaScanner;->clearSkipCustomDirectory()V

    .line 522
    iget-object v3, p0, Landroid/media/HwMediaScannerImpl;->mMediaInserter:Landroid/media/MediaInserter;

    if-eqz v3, :cond_4

    .line 523
    iget-object v3, p0, Landroid/media/HwMediaScannerImpl;->mMediaInserter:Landroid/media/MediaInserter;

    invoke-virtual {v3}, Landroid/media/MediaInserter;->flushAll()V

    .line 526
    :cond_4
    array-length v3, p5

    :goto_2
    if-ge v1, v3, :cond_5

    aget-object v4, p5, v1

    .line 527
    .local v4, "item":Ljava/lang/String;
    sput-object v4, Landroid/media/MediaScanner;->sCurScanDIR:Ljava/lang/String;

    .line 528
    invoke-virtual {p1, v4}, Landroid/media/MediaScanner;->setStorageIdForCurScanDIR(Ljava/lang/String;)V

    .line 529
    invoke-direct {p0, p2, v4}, Landroid/media/HwMediaScannerImpl;->insertDirectory(Landroid/media/MediaScannerClient;Ljava/lang/String;)V

    .line 530
    invoke-virtual {p1, v4}, Landroid/media/MediaScanner;->getRootDirLength(Ljava/lang/String;)I

    move-result v5

    .line 531
    .local v5, "len":I
    invoke-virtual {p1, v5}, Landroid/media/MediaScanner;->setExteLen(I)V

    .line 532
    sget-object v6, Landroid/media/HwMediaScannerImpl;->utils:Landroid/media/MediaScannerUtils;

    invoke-virtual {v6, p1, v4, p2}, Landroid/media/MediaScannerUtils;->processDirectory(Landroid/media/MediaScanner;Ljava/lang/String;Landroid/media/MediaScannerClient;)V

    .line 526
    .end local v4    # "item":Ljava/lang/String;
    .end local v5    # "len":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 535
    :cond_5
    iget-object v1, p0, Landroid/media/HwMediaScannerImpl;->mMediaInserter:Landroid/media/MediaInserter;

    if-eqz v1, :cond_6

    .line 536
    iget-object v1, p0, Landroid/media/HwMediaScannerImpl;->mMediaInserter:Landroid/media/MediaInserter;

    invoke-virtual {v1}, Landroid/media/MediaInserter;->flushAll()V

    .line 539
    :cond_6
    invoke-virtual {p1, p3}, Landroid/media/MediaScanner;->postscan([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "sb":Ljava/lang/StringBuffer;
    .end local v2    # "size":I
    goto :goto_3

    .line 543
    :catch_0
    move-exception v0

    .line 544
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "HwMediaScannerImpl"

    const-string v2, "RemoteException in MediaScanner.scan() error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_4

    .line 540
    :catch_1
    move-exception v0

    .line 542
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    const-string v1, "HwMediaScannerImpl"

    const-string v2, "UnsupportedOperationException in MediaScanner.scan() error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    .end local v0    # "e":Ljava/lang/UnsupportedOperationException;
    :goto_3
    nop

    .line 546
    :goto_4
    return-void
.end method

.method public scanHwMakerNote(Landroid/content/ContentValues;Landroid/media/ExifInterface;)V
    .locals 6
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "exif"    # Landroid/media/ExifInterface;

    .line 1510
    if-eqz p2, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    .line 1515
    :cond_0
    const-string v0, "HwMakerNote"

    invoke-virtual {p2, v0}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1516
    .local v0, "hwMakerNoteStr":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 1517
    return-void

    .line 1520
    :cond_1
    const-string v1, "ISO-8859-1"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 1521
    .local v1, "hwMakerNote":[B
    new-instance v2, Landroid/media/hwmnote/HwMnoteInterface;

    invoke-direct {v2}, Landroid/media/hwmnote/HwMnoteInterface;-><init>()V

    .line 1524
    .local v2, "hwMnoteInterface":Landroid/media/hwmnote/HwMnoteInterface;
    :try_start_0
    invoke-virtual {v2, v1}, Landroid/media/hwmnote/HwMnoteInterface;->readHwMnote([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1528
    nop

    .line 1530
    invoke-direct {p0, v2}, Landroid/media/HwMediaScannerImpl;->getJsonDatas(Landroid/media/hwmnote/HwMnoteInterface;)Lorg/json/JSONObject;

    move-result-object v3

    .line 1531
    .local v3, "jsonObject":Lorg/json/JSONObject;
    if-nez v3, :cond_2

    .line 1532
    const-string v4, "HwMediaScannerImpl"

    const-string v5, "HwMediaScannerImpl scanhwMnote jsonObject == null !"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1533
    return-void

    .line 1536
    :cond_2
    const-string v4, "cam_perception"

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1537
    return-void

    .line 1525
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v3

    .line 1526
    .local v3, "e":Ljava/io/IOException;
    const-string v4, "HwMediaScannerImpl"

    const-string v5, "HwMediaScannerImpl scanHwMnote readHwMnote() failed !!!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1527
    return-void

    .line 1511
    .end local v0    # "hwMakerNoteStr":Ljava/lang/String;
    .end local v1    # "hwMakerNote":[B
    .end local v2    # "hwMnoteInterface":Landroid/media/hwmnote/HwMnoteInterface;
    .end local v3    # "e":Ljava/io/IOException;
    :cond_3
    :goto_0
    const-string v0, "HwMediaScannerImpl"

    const-string v1, "HwMediaScannerImpl scanhwMnote arguments error !"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1512
    return-void
.end method

.method public setHwDefaultRingtoneFileNames()V
    .locals 1

    .line 602
    invoke-static {}, Landroid/media/HwMediaScannerImpl;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 603
    const-string v0, "ro.config.ringtone2"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/HwMediaScannerImpl;->mDefaultRingtoneFilename2:Ljava/lang/String;

    .line 606
    :cond_0
    return-void
.end method

.method public setMediaInserter(Landroid/media/MediaInserter;)V
    .locals 0
    .param p1, "mediaInserter"    # Landroid/media/MediaInserter;

    .line 477
    iput-object p1, p0, Landroid/media/HwMediaScannerImpl;->mMediaInserter:Landroid/media/MediaInserter;

    .line 478
    return-void
.end method

.method public useMessyOptimize()Z
    .locals 2

    .line 1035
    const-string v0, "ro.product.locale.region"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1036
    .local v0, "debug":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "CN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
