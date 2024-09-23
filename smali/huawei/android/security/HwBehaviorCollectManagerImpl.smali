.class public Lhuawei/android/security/HwBehaviorCollectManagerImpl;
.super Ljava/lang/Object;
.source "HwBehaviorCollectManagerImpl.java"

# interfaces
.implements Lhuawei/android/security/IHwBehaviorCollectManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhuawei/android/security/HwBehaviorCollectManagerImpl$InnerAppObserver;
    }
.end annotation


# static fields
.field private static final CONNECT_TIME:I = 0x5

.field private static final EXTRA_PARAM_NUM_ADDWINDOW:I = 0x1

.field private static final EXTRA_PARAM_NUM_BROADCASTINTENT:I = 0x1

.field private static final EXTRA_PARAM_NUM_DELETE:I = 0x1

.field private static final EXTRA_PARAM_NUM_FINISHRECEIVERLOCKED:I = 0x1

.field private static final EXTRA_PARAM_NUM_INSERT:I = 0x1

.field private static final EXTRA_PARAM_NUM_PERFORMRECEIVELOCKED:I = 0x1

.field private static final EXTRA_PARAM_NUM_PROCESSCURBROADCASTLOCKED:I = 0x1

.field private static final EXTRA_PARAM_NUM_QUERY:I = 0x1

.field private static final EXTRA_PARAM_NUM_REGISTERCONTENTOBSERVER:I = 0x1

.field private static final EXTRA_PARAM_NUM_SETCOMPONENTENABLEDSETTING:I = 0x1

.field private static final EXTRA_PARAM_NUM_STARTACTIVITYMAYWAIT:I = 0x2

.field private static final EXTRA_PARAM_NUM_UPDATE:I = 0x1

.field private static final HW_BEHAVIOR_ACTION_INSTALL_SHORTCUT:Ljava/lang/String; = "android.launcher.action.INSTALL_SHORTCUT"

.field private static final HW_BEHAVIOR_ACTION_SMS_RECEIVED:Ljava/lang/String; = "com.android.vociemailomtp.sms.sms_received"

.field private static final HW_BEHAVIOR_AUTHORITY_BROWSER:Ljava/lang/String; = "browser"

.field private static final HW_BEHAVIOR_AUTHORITY_CONTACTS:Ljava/lang/String; = "contacts"

.field private static final HW_BEHAVIOR_AUTHORITY_SMS:Ljava/lang/String; = "sms"

.field private static final HW_BEHAVIOR_AUTHORITY_TELEPHONY:Ljava/lang/String; = "telephony"

.field private static final HW_BEHAVIOR_PACKAGE_BROWSER:Ljava/lang/String; = "com.android.browser"

.field private static final HW_BEHAVIOR_PACKAGE_CALENDAR:Ljava/lang/String; = "com.android.calendar"

.field private static final HW_BEHAVIOR_PACKAGE_CALENDAR2:Ljava/lang/String; = "com.android.calendar2"

.field private static final HW_BEHAVIOR_PACKAGE_CHROME:Ljava/lang/String; = "com.android.chrome"

.field private static final HW_BEHAVIOR_PACKAGE_CONTACTS:Ljava/lang/String; = "com.android.contacts"

.field private static final HW_BEHAVIOR_PACKAGE_DIALER:Ljava/lang/String; = "com.android.dialer"

.field private static final HW_BEHAVIOR_PACKAGE_GALLERY:Ljava/lang/String; = "com.android.gallery"

.field private static final HW_BEHAVIOR_PACKAGE_GALLERY3D:Ljava/lang/String; = "com.android.gallery3d"

.field private static final HW_BEHAVIOR_PACKAGE_HTMLVIEWER:Ljava/lang/String; = "com.android.htmlviewer"

.field private static final HW_BEHAVIOR_PACKAGE_INSTALLER:Ljava/lang/String; = "com.android.packageinstaller"

.field private static final HW_BEHAVIOR_PACKAGE_MARKET:Ljava/lang/String; = "com.android.market"

.field private static final HW_BEHAVIOR_PACKAGE_MMS:Ljava/lang/String; = "com.android.mms"

.field private static final HW_BEHAVIOR_PACKAGE_MUSIC:Ljava/lang/String; = "com.android.music"

.field private static final HW_BEHAVIOR_PACKAGE_PHONE:Ljava/lang/String; = "com.android.phone"

.field private static final HW_BEHAVIOR_PACKAGE_SETTINGS:Ljava/lang/String; = "com.android.settings"

.field private static final HW_BEHAVIOR_PACKAGE_VENDING:Ljava/lang/String; = "com.android.vending"

.field private static final PARAM_SEQ_0:I = 0x0

.field private static final PARAM_SEQ_1:I = 0x1

.field private static final PARAM_SEQ_10:I = 0xa

.field private static final PARAM_SEQ_11:I = 0xb

.field private static final PARAM_SEQ_12:I = 0xc

.field private static final PARAM_SEQ_13:I = 0xd

.field private static final PARAM_SEQ_14:I = 0xe

.field private static final PARAM_SEQ_15:I = 0xf

.field private static final PARAM_SEQ_16:I = 0x10

.field private static final PARAM_SEQ_17:I = 0x11

.field private static final PARAM_SEQ_18:I = 0x12

.field private static final PARAM_SEQ_19:I = 0x13

.field private static final PARAM_SEQ_2:I = 0x2

.field private static final PARAM_SEQ_20:I = 0x14

.field private static final PARAM_SEQ_21:I = 0x15

.field private static final PARAM_SEQ_22:I = 0x16

.field private static final PARAM_SEQ_23:I = 0x17

.field private static final PARAM_SEQ_24:I = 0x18

.field private static final PARAM_SEQ_25:I = 0x19

.field private static final PARAM_SEQ_26:I = 0x1a

.field private static final PARAM_SEQ_27:I = 0x1b

.field private static final PARAM_SEQ_28:I = 0x1c

.field private static final PARAM_SEQ_29:I = 0x1d

.field private static final PARAM_SEQ_3:I = 0x3

.field private static final PARAM_SEQ_32:I = 0x20

.field private static final PARAM_SEQ_4:I = 0x4

.field private static final PARAM_SEQ_5:I = 0x5

.field private static final PARAM_SEQ_6:I = 0x6

.field private static final PARAM_SEQ_7:I = 0x7

.field private static final PARAM_SEQ_8:I = 0x8

.field private static final PARAM_SEQ_9:I = 0x9

.field private static final PARAM_SEQ_BASE:I = 0x0

.field private static final SUPPORTED_PLATFORM:Ljava/lang/String; = "kirin980"

.field private static TAG:Ljava/lang/String; = null

.field private static inst:Lhuawei/android/security/IHwBehaviorCollectManager; = null

.field private static traceFlag:Z = false

.field private static final version:Ljava/lang/String; = "1.0.0"


# instance fields
.field private dataAnalyzerService:Lhuawei/android/security/IAppBehaviorDataAnalyzer;

.field private inspectAppObserver:Lhuawei/android/security/IInspectAppObserver;

.field private inspectUidMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 89
    const-string v0, "BehaviorCollectManager"

    sput-object v0, Lhuawei/android/security/HwBehaviorCollectManagerImpl;->TAG:Ljava/lang/String;

    .line 94
    const/4 v0, 0x0

    sput-boolean v0, Lhuawei/android/security/HwBehaviorCollectManagerImpl;->traceFlag:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Lhuawei/android/security/HwBehaviorCollectManagerImpl$InnerAppObserver;

    invoke-direct {v0, p0}, Lhuawei/android/security/HwBehaviorCollectManagerImpl$InnerAppObserver;-><init>(Lhuawei/android/security/HwBehaviorCollectManagerImpl;)V

    iput-object v0, p0, Lhuawei/android/security/HwBehaviorCollectManagerImpl;->inspectAppObserver:Lhuawei/android/security/IInspectAppObserver;

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lhuawei/android/security/HwBehaviorCollectManagerImpl;->inspectUidMap:Ljava/util/Map;

    .line 173
    const-string v0, "kirin980"

    const-string v1, "ro.board.platform"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 174
    .local v0, "support":Z
    if-eqz v0, :cond_0

    .line 175
    invoke-direct {p0}, Lhuawei/android/security/HwBehaviorCollectManagerImpl;->timerDiscoverService()V

    .line 177
    :cond_0
    const-string v1, "ro.config.aiprotection.debug"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lhuawei/android/security/HwBehaviorCollectManagerImpl;->traceFlag:Z

    .line 178
    return-void
.end method

.method static synthetic access$000(Lhuawei/android/security/HwBehaviorCollectManagerImpl;)V
    .locals 0
    .param p0, "x0"    # Lhuawei/android/security/HwBehaviorCollectManagerImpl;

    .line 87
    invoke-direct {p0}, Lhuawei/android/security/HwBehaviorCollectManagerImpl;->bindAnalyzerService()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 87
    sget-object v0, Lhuawei/android/security/HwBehaviorCollectManagerImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lhuawei/android/security/HwBehaviorCollectManagerImpl;Lhuawei/android/security/IAppBehaviorDataAnalyzer;)Lhuawei/android/security/IAppBehaviorDataAnalyzer;
    .locals 0
    .param p0, "x0"    # Lhuawei/android/security/HwBehaviorCollectManagerImpl;
    .param p1, "x1"    # Lhuawei/android/security/IAppBehaviorDataAnalyzer;

    .line 87
    iput-object p1, p0, Lhuawei/android/security/HwBehaviorCollectManagerImpl;->dataAnalyzerService:Lhuawei/android/security/IAppBehaviorDataAnalyzer;

    return-object p1
.end method

.method static synthetic access$300(Lhuawei/android/security/HwBehaviorCollectManagerImpl;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lhuawei/android/security/HwBehaviorCollectManagerImpl;

    .line 87
    iget-object v0, p0, Lhuawei/android/security/HwBehaviorCollectManagerImpl;->inspectUidMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$400(Lhuawei/android/security/HwBehaviorCollectManagerImpl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lhuawei/android/security/HwBehaviorCollectManagerImpl;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .line 87
    invoke-direct {p0, p1, p2}, Lhuawei/android/security/HwBehaviorCollectManagerImpl;->trace(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lhuawei/android/security/HwBehaviorCollectManagerImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lhuawei/android/security/HwBehaviorCollectManagerImpl;

    .line 87
    invoke-direct {p0}, Lhuawei/android/security/HwBehaviorCollectManagerImpl;->getVersionInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private bindAnalyzerService()V
    .locals 5

    .line 210
    iget-object v0, p0, Lhuawei/android/security/HwBehaviorCollectManagerImpl;->dataAnalyzerService:Lhuawei/android/security/IAppBehaviorDataAnalyzer;

    if-eqz v0, :cond_0

    .line 211
    return-void

    .line 214
    :cond_0
    const-class v0, Lhuawei/android/security/IAppBehaviorDataAnalyzer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 215
    .local v0, "binder":Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 216
    invoke-static {v0}, Lhuawei/android/security/IAppBehaviorDataAnalyzer$Stub;->asInterface(Landroid/os/IBinder;)Lhuawei/android/security/IAppBehaviorDataAnalyzer;

    move-result-object v1

    iput-object v1, p0, Lhuawei/android/security/HwBehaviorCollectManagerImpl;->dataAnalyzerService:Lhuawei/android/security/IAppBehaviorDataAnalyzer;

    .line 217
    sget-object v1, Lhuawei/android/security/HwBehaviorCollectManagerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bindAnalyzerService: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lhuawei/android/security/HwBehaviorCollectManagerImpl;->dataAnalyzerService:Lhuawei/android/security/IAppBehaviorDataAnalyzer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " pid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :try_start_0
    new-instance v1, Lhuawei/android/security/HwBehaviorCollectManagerImpl$2;

    invoke-direct {v1, p0}, Lhuawei/android/security/HwBehaviorCollectManagerImpl$2;-><init>(Lhuawei/android/security/HwBehaviorCollectManagerImpl;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    goto :goto_0

    .line 228
    :catch_0
    move-exception v1

    .line 229
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "E"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "linkToDeath error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lhuawei/android/security/HwBehaviorCollectManagerImpl;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v1, p0, Lhuawei/android/security/HwBehaviorCollectManagerImpl;->dataAnalyzerService:Lhuawei/android/security/IAppBehaviorDataAnalyzer;

    invoke-direct {p0, v1}, Lhuawei/android/security/HwBehaviorCollectManagerImpl;->registerCallBack(Lhuawei/android/security/IAppBehaviorDataAnalyzer;)V

    .line 234
    :cond_1
    return-void
.end method

.method private checkActiveUid(I)Z
    .locals 5
    .param p1, "uid"    # I

    .line 307
    const/4 v0, 0x0

    const/16 v1, 0x2710

    if-ge p1, v1, :cond_0

    .line 308
    return v0

    .line 312
    :cond_0
    :try_start_0
    iget-object v1, p0, Lhuawei/android/security/HwBehaviorCollectManagerImpl;->inspectUidMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    .line 313
    const/4 v0, 0x1

    return v0

    .line 317
    :cond_1
    goto :goto_0

    .line 315
    :catch_0
    move-exception v1

    .line 316
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "E"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed checkActiveUid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lhuawei/android/security/HwBehaviorCollectManagerImpl;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method private getActivityStartActionSeq(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 17
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "callingPackage"    # Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 693
    move-object/from16 v2, p2

    const/4 v3, 0x0

    .line 694
    .local v3, "paramSeq":Ljava/lang/Integer;
    if-eqz v1, :cond_2

    if-nez v2, :cond_0

    goto/16 :goto_3

    .line 698
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x5

    const/16 v7, 0xc

    const/16 v9, 0xd

    const/16 v10, 0x8

    const/16 v12, 0xf

    const/16 v13, 0xb

    const/16 v14, 0x9

    const/4 v15, 0x6

    const/16 v4, 0xe

    const/4 v8, 0x7

    const/16 v11, 0xa

    sparse-switch v5, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v5, "android.intent.action.SENDTO"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v11

    goto/16 :goto_1

    :sswitch_1
    const-string v5, "android.intent.action.SEARCH"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v8

    goto/16 :goto_1

    :sswitch_2
    const-string v5, "android.intent.action.ATTACH_DATA"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x4

    goto/16 :goto_1

    :sswitch_3
    const-string v5, "android.intent.action.WEB_SEARCH"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    goto/16 :goto_1

    :sswitch_4
    const-string v5, "android.intent.action.INSERT"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v4

    goto/16 :goto_1

    :sswitch_5
    const-string v5, "android.intent.action.DELETE"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v15

    goto/16 :goto_1

    :sswitch_6
    const-string v5, "android.intent.action.PICK_ACTIVITY"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v14

    goto/16 :goto_1

    :sswitch_7
    const-string v5, "android.intent.action.GET_CONTENT"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v13

    goto :goto_1

    :sswitch_8
    const-string v5, "android.intent.action.VIEW"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v12

    goto :goto_1

    :sswitch_9
    const-string v5, "android.intent.action.SEND"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x0

    goto :goto_1

    :sswitch_a
    const-string v5, "android.intent.action.PICK"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v10

    goto :goto_1

    :sswitch_b
    const-string v5, "android.intent.action.MAIN"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v9

    goto :goto_1

    :sswitch_c
    const-string v5, "android.intent.action.EDIT"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x2

    goto :goto_1

    :sswitch_d
    const-string v5, "android.intent.action.DIAL"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v7

    goto :goto_1

    :sswitch_e
    const-string v5, "android.intent.action.CALL"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v6

    goto :goto_1

    :sswitch_f
    const-string v5, "android.app.action.ADD_DEVICE_ADMIN"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x3

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v5, -0x1

    :goto_1
    packed-switch v5, :pswitch_data_0

    .line 748
    const/16 v4, 0x20

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_2

    .line 745
    :pswitch_0
    invoke-direct {v0, v2}, Lhuawei/android/security/HwBehaviorCollectManagerImpl;->getActivityStartPackageSeq(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v12, v4

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 746
    goto :goto_2

    .line 742
    :pswitch_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 743
    goto :goto_2

    .line 739
    :pswitch_2
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 740
    goto :goto_2

    .line 736
    :pswitch_3
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 737
    goto :goto_2

    .line 733
    :pswitch_4
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 734
    goto :goto_2

    .line 730
    :pswitch_5
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 731
    goto :goto_2

    .line 727
    :pswitch_6
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 728
    goto :goto_2

    .line 724
    :pswitch_7
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 725
    goto :goto_2

    .line 721
    :pswitch_8
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 722
    goto :goto_2

    .line 718
    :pswitch_9
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 719
    goto :goto_2

    .line 715
    :pswitch_a
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 716
    goto :goto_2

    .line 712
    :pswitch_b
    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 713
    goto :goto_2

    .line 709
    :pswitch_c
    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 710
    goto :goto_2

    .line 706
    :pswitch_d
    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 707
    goto :goto_2

    .line 703
    :pswitch_e
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 704
    goto :goto_2

    .line 700
    :pswitch_f
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 701
    nop

    .line 751
    :goto_2
    const-string v4, "I"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getActivityStartActionSeq:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Lhuawei/android/security/HwBehaviorCollectManagerImpl;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    return-object v3

    .line 695
    :cond_2
    :goto_3
    const/4 v4, 0x0

    return-object v4

    :sswitch_data_0
    .sparse-switch
        -0x53c90810 -> :sswitch_f
        -0x45f5ef5d -> :sswitch_e
        -0x45f55e4b -> :sswitch_d
        -0x45f4fbb1 -> :sswitch_c
        -0x45f16402 -> :sswitch_b
        -0x45efe99a -> :sswitch_a
        -0x45ee9a33 -> :sswitch_9
        -0x45ed2f16 -> :sswitch_8
        -0x22076195 -> :sswitch_7
        0xe42d0c8 -> :sswitch_6
        0x61b59ab0 -> :sswitch_5
        0x6abfd7be -> :sswitch_4
        0x737c5b98 -> :sswitch_3
        0x797d1b7f -> :sswitch_2
        0x7b497aad -> :sswitch_1
        0x7b4f3108 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getActivityStartPackageSeq(Ljava/lang/String;)I
    .locals 4
    .param p1, "callingPackage"    # Ljava/lang/String;

    .line 757
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "com.android.phone"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "com.android.music"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "com.android.settings"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "com.android.market"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "com.android.packageinstaller"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "com.android.gallery3d"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "com.android.dialer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_7
    const-string v0, "com.android.chrome"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto :goto_1

    :sswitch_8
    const-string v0, "com.android.calendar"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_9
    const-string v0, "com.android.mms"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_a
    const-string v0, "com.android.contacts"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_b
    const-string v0, "com.android.vending"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_c
    const-string v0, "com.android.browser"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_d
    const-string v0, "com.android.calendar2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto :goto_1

    :sswitch_e
    const-string v0, "com.android.htmlviewer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_f
    const-string v0, "com.android.gallery"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 807
    const/16 v0, 0x10

    goto :goto_2

    .line 804
    :pswitch_0
    const/16 v0, 0xf

    .line 805
    .local v0, "paramSeq":I
    goto :goto_2

    .line 801
    .end local v0    # "paramSeq":I
    :pswitch_1
    const/16 v0, 0xe

    .line 802
    .restart local v0    # "paramSeq":I
    goto :goto_2

    .line 798
    .end local v0    # "paramSeq":I
    :pswitch_2
    const/16 v0, 0xd

    .line 799
    .restart local v0    # "paramSeq":I
    goto :goto_2

    .line 795
    .end local v0    # "paramSeq":I
    :pswitch_3
    const/16 v0, 0xc

    .line 796
    .restart local v0    # "paramSeq":I
    goto :goto_2

    .line 792
    .end local v0    # "paramSeq":I
    :pswitch_4
    const/16 v0, 0xb

    .line 793
    .restart local v0    # "paramSeq":I
    goto :goto_2

    .line 789
    .end local v0    # "paramSeq":I
    :pswitch_5
    const/16 v0, 0xa

    .line 790
    .restart local v0    # "paramSeq":I
    goto :goto_2

    .line 786
    .end local v0    # "paramSeq":I
    :pswitch_6
    const/16 v0, 0x9

    .line 787
    .restart local v0    # "paramSeq":I
    goto :goto_2

    .line 783
    .end local v0    # "paramSeq":I
    :pswitch_7
    const/16 v0, 0x8

    .line 784
    .restart local v0    # "paramSeq":I
    goto :goto_2

    .line 780
    .end local v0    # "paramSeq":I
    :pswitch_8
    const/4 v0, 0x7

    .line 781
    .restart local v0    # "paramSeq":I
    goto :goto_2

    .line 777
    .end local v0    # "paramSeq":I
    :pswitch_9
    const/4 v0, 0x6

    .line 778
    .restart local v0    # "paramSeq":I
    goto :goto_2

    .line 774
    .end local v0    # "paramSeq":I
    :pswitch_a
    const/4 v0, 0x5

    .line 775
    .restart local v0    # "paramSeq":I
    goto :goto_2

    .line 771
    .end local v0    # "paramSeq":I
    :pswitch_b
    const/4 v0, 0x4

    .line 772
    .restart local v0    # "paramSeq":I
    goto :goto_2

    .line 768
    .end local v0    # "paramSeq":I
    :pswitch_c
    const/4 v0, 0x3

    .line 769
    .restart local v0    # "paramSeq":I
    goto :goto_2

    .line 765
    .end local v0    # "paramSeq":I
    :pswitch_d
    const/4 v0, 0x2

    .line 766
    .restart local v0    # "paramSeq":I
    goto :goto_2

    .line 762
    .end local v0    # "paramSeq":I
    :pswitch_e
    const/4 v0, 0x1

    .line 763
    .restart local v0    # "paramSeq":I
    goto :goto_2

    .line 759
    .end local v0    # "paramSeq":I
    :pswitch_f
    const/4 v0, 0x0

    .line 760
    .restart local v0    # "paramSeq":I
    nop

    .line 807
    :goto_2
    nop

    .line 810
    const-string v1, "I"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getActivityStartPackageSeq:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lhuawei/android/security/HwBehaviorCollectManagerImpl;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    return v0

    :sswitch_data_0
    .sparse-switch
        -0x5ed0e39a -> :sswitch_f
        -0x5ceb2017 -> :sswitch_e
        -0x4ab1e338 -> :sswitch_d
        -0x4a1e2fc4 -> :sswitch_c
        -0x3e676dcf -> :sswitch_b
        -0x3260a241 -> :sswitch_a
        -0x29760a19 -> :sswitch_9
        -0x1b2f0756 -> :sswitch_8
        0xf493ae6 -> :sswitch_7
        0x11046489 -> :sswitch_6
        0x11d9a177 -> :sswitch_5
        0x1789436e -> :sswitch_4
        0x1ff6fca8 -> :sswitch_3
        0x44f4b98f -> :sswitch_2
        0x5be7c839 -> :sswitch_1
        0x5c0c1782 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getAddWindowTypeSeq(I)Ljava/lang/Integer;
    .locals 4
    .param p1, "type"    # I

    .line 504
    const/4 v0, 0x0

    .line 505
    .local v0, "paramSeq":Ljava/lang/Integer;
    const/16 v1, 0x63

    if-eq p1, v1, :cond_3

    const/16 v1, 0x7ee

    if-eq p1, v1, :cond_2

    const/16 v1, 0x7f0

    if-eq p1, v1, :cond_1

    const/16 v1, 0x7f6

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    goto/16 :goto_0

    .line 582
    :pswitch_0
    const/16 v1, 0x19

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 583
    goto/16 :goto_0

    .line 579
    :pswitch_1
    const/16 v1, 0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 580
    goto/16 :goto_0

    .line 576
    :pswitch_2
    const/16 v1, 0x17

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 577
    goto/16 :goto_0

    .line 573
    :pswitch_3
    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 574
    goto/16 :goto_0

    .line 570
    :pswitch_4
    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 571
    goto/16 :goto_0

    .line 567
    :pswitch_5
    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 568
    goto/16 :goto_0

    .line 564
    :pswitch_6
    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 565
    goto/16 :goto_0

    .line 561
    :pswitch_7
    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 562
    goto/16 :goto_0

    .line 558
    :pswitch_8
    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 559
    goto/16 :goto_0

    .line 555
    :pswitch_9
    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 556
    goto/16 :goto_0

    .line 552
    :pswitch_a
    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 553
    goto/16 :goto_0

    .line 549
    :pswitch_b
    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 550
    goto/16 :goto_0

    .line 546
    :pswitch_c
    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 547
    goto/16 :goto_0

    .line 543
    :pswitch_d
    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 544
    goto/16 :goto_0

    .line 540
    :pswitch_e
    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 541
    goto :goto_0

    .line 537
    :pswitch_f
    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 538
    goto :goto_0

    .line 534
    :pswitch_10
    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 535
    goto :goto_0

    .line 531
    :pswitch_11
    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 532
    goto :goto_0

    .line 528
    :pswitch_12
    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 529
    goto :goto_0

    .line 525
    :pswitch_13
    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 526
    goto :goto_0

    .line 522
    :pswitch_14
    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 523
    goto :goto_0

    .line 516
    :pswitch_15
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 517
    goto :goto_0

    .line 513
    :pswitch_16
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 514
    goto :goto_0

    .line 510
    :pswitch_17
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 511
    goto :goto_0

    .line 507
    :pswitch_18
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 508
    goto :goto_0

    .line 591
    :cond_0
    const/16 v1, 0x1c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 592
    goto :goto_0

    .line 588
    :cond_1
    const/16 v1, 0x1b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 589
    goto :goto_0

    .line 585
    :cond_2
    const/16 v1, 0x1a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 586
    goto :goto_0

    .line 519
    :cond_3
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 520
    nop

    .line 596
    :goto_0
    const-string v1, "I"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAddWindowTypeSeq:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lhuawei/android/security/HwBehaviorCollectManagerImpl;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3e8
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x7d0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getContentObserverUriSeq(Landroid/net/Uri;)Ljava/lang/Integer;
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;

    .line 646
    const/4 v0, 0x0

    .line 647
    .local v0, "paramSeq":Ljava/lang/Integer;
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x5

    const/4 v7, 0x1

    const/4 v8, 0x4

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "telephony"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v8

    goto :goto_1

    :sswitch_1
    const-string v2, "browser"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v7

    goto :goto_1

    :sswitch_2
    const-string v2, "sms"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v6

    goto :goto_1

    :sswitch_3
    const-string v2, "call_log"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v5

    goto :goto_1

    :sswitch_4
    const-string v2, "com.android.calendar"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v4

    goto :goto_1

    :sswitch_5
    const-string v2, "com.android.contacts"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 669
    const-string v1, "I"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getContentObserverUriSeq:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lhuawei/android/security/HwBehaviorCollectManagerImpl;->trace(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 666
    :pswitch_0
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 667
    goto :goto_2

    .line 661
    :pswitch_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "carriers"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 662
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_2

    .line 658
    :pswitch_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 659
    goto :goto_2

    .line 655
    :pswitch_3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 656
    goto :goto_2

    .line 652
    :pswitch_4
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 653
    goto :goto_2

    .line 649
    :pswitch_5
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 650
    nop

    .line 673
    :cond_1
    :goto_2
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3260a241 -> :sswitch_5
        -0x1b2f0756 -> :sswitch_4
        -0xa45121d -> :sswitch_3
        0x1bd59 -> :sswitch_2
        0x8ff2b28 -> :sswitch_1
        0x2eaeb418 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getContentProviderUriSeq(Landroid/net/Uri;)Ljava/lang/Integer;
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;

    .line 1030
    const/4 v0, 0x0

    .line 1031
    .local v0, "paramSeq":Ljava/lang/Integer;
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x5

    const/4 v8, 0x4

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "telephony"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v8

    goto :goto_1

    :sswitch_1
    const-string v2, "sms"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v7

    goto :goto_1

    :sswitch_2
    const-string v2, "call_log"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v6

    goto :goto_1

    :sswitch_3
    const-string v2, "com.android.calendar"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v5

    goto :goto_1

    :sswitch_4
    const-string v2, "contacts"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v4

    goto :goto_1

    :sswitch_5
    const-string v2, "com.android.contacts"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 1051
    const-string v1, "I"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getContentProviderUriSeq:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lhuawei/android/security/HwBehaviorCollectManagerImpl;->trace(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1048
    :pswitch_0
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1049
    goto :goto_2

    .line 1045
    :pswitch_1
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1046
    goto :goto_2

    .line 1042
    :pswitch_2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1043
    goto :goto_2

    .line 1039
    :pswitch_3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1040
    goto :goto_2

    .line 1036
    :pswitch_4
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1037
    goto :goto_2

    .line 1033
    :pswitch_5
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1034
    nop

    .line 1055
    :goto_2
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3260a241 -> :sswitch_5
        -0x21d29fad -> :sswitch_4
        -0x1b2f0756 -> :sswitch_3
        -0xa45121d -> :sswitch_2
        0x1bd59 -> :sswitch_1
        0x2eaeb418 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getDefault()Lhuawei/android/security/IHwBehaviorCollectManager;
    .locals 1

    .line 181
    sget-object v0, Lhuawei/android/security/HwBehaviorCollectManagerImpl;->inst:Lhuawei/android/security/IHwBehaviorCollectManager;

    if-eqz v0, :cond_0

    .line 182
    sget-object v0, Lhuawei/android/security/HwBehaviorCollectManagerImpl;->inst:Lhuawei/android/security/IHwBehaviorCollectManager;

    return-object v0

    .line 185
    :cond_0
    new-instance v0, Lhuawei/android/security/HwBehaviorCollectManagerImpl;

    invoke-direct {v0}, Lhuawei/android/security/HwBehaviorCollectManagerImpl;-><init>()V

    sput-object v0, Lhuawei/android/security/HwBehaviorCollectManagerImpl;->inst:Lhuawei/android/security/IHwBehaviorCollectManager;

    .line 186
    sget-object v0, Lhuawei/android/security/HwBehaviorCollectManagerImpl;->inst:Lhuawei/android/security/IHwBehaviorCollectManager;

    return-object v0
.end method

.method private varargs getParamSeqWithTransportdelete([Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Object;

    .line 1015
    const/4 v0, 0x0

    .line 1016
    .local v0, "paramSeq":Ljava/lang/Integer;
    array-length v1, p1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 1017
    const-string v1, "E"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getParamSeqWithTransportdelete length:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "Err!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lhuawei/android/security/HwBehaviorCollectManagerImpl;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 1018
    const/4 v1, 0x0

    return-object v1

    .line 1021
    :cond_0
    const/4 v1, 0x0

    aget-object v2, p1, v1

    instance-of v2, v2, Landroid/net/Uri;

    if-eqz v2, :cond_1

    .line 1022
    aget-object v1, p1, v1

    check-cast v1, Landroid/net/Uri;

    .line 1023
    .local v1, "uri":Landroid/net/Uri;
    invoke-direct {p0, v1}, Lhuawei/android/security/HwBehaviorCollectManagerImpl;->getContentProviderUriSeq(Landroid/net/Uri;)Ljava/lang/Integer;

    move-result-object v0

    .line 1026
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_1
    return-object v0
.end method

.method private varargs getParamSeqWithTransportinsert([Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Object;

    .line 1000
    const/4 v0, 0x0

    .line 1001
    .local v0, "paramSeq":Ljava/lang/Integer;
    array-length v1, p1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 1002
    const-string v1, "E"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getParamSeqWithTransportinsert length:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "Err!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lhuawei/android/security/HwBehaviorCollectManagerImpl;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    const/4 v1, 0x0

    return-object v1

    .line 1006
    :cond_0
    const/4 v1, 0x0

    aget-object v2, p1, v1

    instance-of v2, v2, Landroid/net/Uri;

    if-eqz v2, :cond_1

    .line 1007
    aget-object v1, p1, v1

    check-cast v1, Landroid/net/Uri;

    .line 1008
    .local v1, "uri":Landroid/net/Uri;
    invoke-direct {p0, v1}, Lhuawei/android/security/HwBehaviorCollectManagerImpl;->getContentProviderUriSeq(Landroid/net/Uri;)Ljava/lang/Integer;

    move-result-object v0

    .line 1011
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_1
    return-object v0
.end method

.method private varargs getParamSeqWithTransportquery([Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Object;

    .line 970
    const/4 v0, 0x0

    .line 971
    .local v0, "paramSeq":Ljava/lang/Integer;
    array-length v1, p1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 972
    const-string v1, "E"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getParamSeqWithTransportquery length:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "Err!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lhuawei/android/security/HwBehaviorCollectManagerImpl;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 973
    const/4 v1, 0x0

    return-object v1

    .line 976
    :cond_0
    const/4 v1, 0x0

    aget-object v2, p1, v1

    instance-of v2, v2, Landroid/net/Uri;

    if-eqz v2, :cond_1

    .line 977
    aget-object v1, p1, v1

    check-cast v1, Landroid/net/Uri;

    .line 978
    .local v1, "uri":Landroid/net/Uri;
    invoke-direct {p0, v1}, Lhuawei/android/security/HwBehaviorCollectManagerImpl;->getContentProviderUriSeq(Landroid/net/Uri;)Ljava/lang/Integer;

    move-result-object v0

    .line 981
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_1
    return-object v0
.end method

.method private varargs getParamSeqWithTransportupdate([Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Object;

    .line 985
    const/4 v0, 0x0

    .line 986
    .local v0, "paramSeq":Ljava/lang/Integer;
    array-length v1, p1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 987
    const-string v1, "E"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getParamSeqWithTransportupdate length:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "Err!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lhuawei/android/security/HwBehaviorCollectManagerImpl;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 988
    const/4 v1, 0x0

    return-object v1

    .line 991
    :cond_0
    const/4 v1, 0x0

    aget-object v2, p1, v1

    instance-of v2, v2, Landroid/net/Uri;

    if-eqz v2, :cond_1

    .line 992
    aget-object v1, p1, v1

    check-cast v1, Landroid/net/Uri;

    .line 993
    .local v1, "uri":Landroid/net/Uri;
    invoke-direct {p0, v1}, Lhuawei/android/security/HwBehaviorCollectManagerImpl;->getContentProviderUriSeq(Landroid/net/Uri;)Ljava/lang/Integer;

    move-result-object v0

    .line 996
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_1
    return-object v0
.end method

.method private varargs getParamSeqWithaddWindow([Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Object;

    .line 479
    const/4 v0, 0x0

    .line 480
    .local v0, "paramSeq":Ljava/lang/Integer;
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    .line 481
    const-string v1, "E"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getParamSeqWithAddWindow length:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "Err!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lhuawei/android/security/HwBehaviorCollectManagerImpl;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    return-object v2

    .line 485
    :cond_0
    const/4 v1, 0x0

    aget-object v3, p1, v1

    instance-of v3, v3, Landroid/view/WindowManager$LayoutParams;

    if-eqz v3, :cond_3

    .line 486
    aget-object v1, p1, v1

    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    .line 487
    .local v1, "LayoutParams":Landroid/view/WindowManager$LayoutParams;
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-direct {p0, v3}, Lhuawei/android/security/HwBehaviorCollectManagerImpl;->getAddWindowTypeSeq(I)Ljava/lang/Integer;

    move-result-object v0

    .line 489
    if-nez v0, :cond_1

    .line 490
    return-object v2

    .line 493
    :cond_1
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 494
    .local v2, "width":I
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 495
    .local v3, "height":I
    const/4 v4, -0x1

    if-ne v2, v4, :cond_2

    if-eq v3, v4, :cond_3

    .line 496
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x1d

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 500
    .end local v1    # "LayoutParams":Landroid/view/WindowManager$LayoutParams;
    .end local v2    # "width":I
    .end local v3    # "height":I
    :cond_3
    return-object v0
.end method

.method private varargs getParamSeqWithbroadcastIntent([Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 12
    .param p1, "params"    # [Ljava/lang/Object;

    .line 815
    const/4 v0, 0x0

    .line 816
    .local v0, "paramSeq":Ljava/lang/Integer;
    array-length v1, p1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 817
    const-string v1, "E"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getParamSeqWithbroadcastIntent length:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "Err!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lhuawei/android/security/HwBehaviorCollectManagerImpl;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    const/4 v1, 0x0

    return-object v1

    .line 821
    :cond_0
    const/4 v1, 0x0

    aget-object v3, p1, v1

    instance-of v3, v3, Landroid/content/Intent;

    if-eqz v3, :cond_2

    .line 822
    aget-object v3, p1, v1

    check-cast v3, Landroid/content/Intent;

    .line 823
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 824
    .local v4, "action":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 825
    const/4 v5, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, 0x4

    const/4 v8, 0x2

    const/4 v9, 0x6

    const/4 v10, 0x3

    const/4 v11, 0x5

    sparse-switch v6, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v6, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v5, v11

    goto :goto_0

    :sswitch_1
    const-string v6, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v5, v2

    goto :goto_0

    :sswitch_2
    const-string v6, "android.intent.action.TIME_SET"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v5, v10

    goto :goto_0

    :sswitch_3
    const-string v6, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v5, v1

    goto :goto_0

    :sswitch_4
    const-string v6, "android.launcher.action.INSTALL_SHORTCUT"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v5, v9

    goto :goto_0

    :sswitch_5
    const-string v6, "android.intent.action.TIME_TICK"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v5, v8

    goto :goto_0

    :sswitch_6
    const-string v6, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v5, v7

    :cond_1
    :goto_0
    packed-switch v5, :pswitch_data_0

    .line 848
    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    .line 845
    :pswitch_0
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 846
    goto :goto_1

    .line 842
    :pswitch_1
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 843
    goto :goto_1

    .line 839
    :pswitch_2
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 840
    goto :goto_1

    .line 836
    :pswitch_3
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 837
    goto :goto_1

    .line 833
    :pswitch_4
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 834
    goto :goto_1

    .line 830
    :pswitch_5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 831
    goto :goto_1

    .line 827
    :pswitch_6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 828
    nop

    .line 851
    :goto_1
    const-string v1, "I"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getParamSeqWithbroadcastIntent:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lhuawei/android/security/HwBehaviorCollectManagerImpl;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "action":Ljava/lang/String;
    :cond_2
    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x5bb23923 -> :sswitch_6
        -0x5a2f0b56 -> :sswitch_5
        -0x1296296d -> :sswitch_4
        0xa480416 -> :sswitch_3
        0x1e1f7f95 -> :sswitch_2
        0x1f50b9c2 -> :sswitch_1
        0x5c1076e2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private varargs getParamSeqWithfinishReceiverLocked([Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 6
    .param p1, "params"    # [Ljava/lang/Object;

    .line 951
    const/4 v0, 0x0

    .line 952
    .local v0, "paramSeq":Ljava/lang/Integer;
    array-length v1, p1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 953
    const-string v1, "E"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getParamSeqWithfinishReceiverLocked length:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "Err!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lhuawei/android/security/HwBehaviorCollectManagerImpl;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 954
    const/4 v1, 0x0

    return-object v1

    .line 957
    :cond_0
    const/4 v1, 0x0

    aget-object v3, p1, v1

    instance-of v3, v3, Landroid/content/Intent;

    if-eqz v3, :cond_2

    .line 958
    aget-object v3, p1, v1

    check-cast v3, Landroid/content/Intent;

    .line 959
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v4

    const/high16 v5, 0x8000000

    if-ne v4, v5, :cond_1

    .line 960
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 962
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 966
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_2
    :goto_0
    return-object v0
.end method

.method private varargs getParamSeqWithperformReceiveLocked([Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 13
    .param p1, "params"    # [Ljava/lang/Object;

    .line 905
    const/4 v0, 0x0

    .line 906
    .local v0, "paramSeq":Ljava/lang/Integer;
    array-length v1, p1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 907
    const-string v1, "E"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getParamSeqWithperformReceiveLocked length:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "Err!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lhuawei/android/security/HwBehaviorCollectManagerImpl;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 908
    const/4 v1, 0x0

    return-object v1

    .line 911
    :cond_0
    const/4 v1, 0x0

    aget-object v3, p1, v1

    instance-of v3, v3, Landroid/content/Intent;

    if-eqz v3, :cond_2

    .line 912
    aget-object v3, p1, v1

    check-cast v3, Landroid/content/Intent;

    .line 913
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 914
    .local v4, "action":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 915
    const/4 v5, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, 0x5

    const/4 v8, 0x6

    const/4 v9, 0x2

    const/4 v10, 0x7

    const/4 v11, 0x4

    const/4 v12, 0x3

    sparse-switch v6, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v6, "android.intent.action.CREATE_SHORTCUT"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v5, v12

    goto :goto_0

    :sswitch_1
    const-string v6, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v5, v11

    goto :goto_0

    :sswitch_2
    const-string v6, "com.android.vociemailomtp.sms.sms_received"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v5, v10

    goto :goto_0

    :sswitch_3
    const-string v6, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v5, v1

    goto :goto_0

    :sswitch_4
    const-string v6, "android.intent.action.DIAL"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v5, v9

    goto :goto_0

    :sswitch_5
    const-string v6, "android.intent.action.CALL"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v5, v2

    goto :goto_0

    :sswitch_6
    const-string v6, "android.intent.action.SCREEN_ON"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v5, v8

    goto :goto_0

    :sswitch_7
    const-string v6, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v5, v7

    :cond_1
    :goto_0
    packed-switch v5, :pswitch_data_0

    goto :goto_1

    .line 938
    :pswitch_0
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 939
    goto :goto_1

    .line 935
    :pswitch_1
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 936
    goto :goto_1

    .line 932
    :pswitch_2
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 933
    goto :goto_1

    .line 929
    :pswitch_3
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 930
    goto :goto_1

    .line 926
    :pswitch_4
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 927
    goto :goto_1

    .line 923
    :pswitch_5
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 924
    goto :goto_1

    .line 920
    :pswitch_6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 921
    goto :goto_1

    .line 917
    :pswitch_7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 918
    nop

    .line 943
    :goto_1
    const-string v1, "I"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getParamSeqWithperformReceiveLocked:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lhuawei/android/security/HwBehaviorCollectManagerImpl;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 947
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "action":Ljava/lang/String;
    :cond_2
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7ed8ea7f -> :sswitch_7
        -0x56ac2893 -> :sswitch_6
        -0x45f5ef5d -> :sswitch_5
        -0x45f55e4b -> :sswitch_4
        0x2f94f923 -> :sswitch_3
        0x4c4fe97f -> :sswitch_2
        0x714f24ad -> :sswitch_1
        0x742278c4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private varargs getParamSeqWithprocessCurBroadcastLocked([Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 13
    .param p1, "params"    # [Ljava/lang/Object;

    .line 859
    const/4 v0, 0x0

    .line 860
    .local v0, "paramSeq":Ljava/lang/Integer;
    array-length v1, p1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 861
    const-string v1, "E"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getParamSeqWithprocessCurBroadcastLocked length:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "Err!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lhuawei/android/security/HwBehaviorCollectManagerImpl;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    const/4 v1, 0x0

    return-object v1

    .line 865
    :cond_0
    const/4 v1, 0x0

    aget-object v3, p1, v1

    instance-of v3, v3, Landroid/content/Intent;

    if-eqz v3, :cond_2

    .line 866
    aget-object v3, p1, v1

    check-cast v3, Landroid/content/Intent;

    .line 867
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 868
    .local v4, "action":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 869
    const/4 v5, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, 0x5

    const/4 v8, 0x6

    const/4 v9, 0x2

    const/4 v10, 0x7

    const/4 v11, 0x4

    const/4 v12, 0x3

    sparse-switch v6, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v6, "android.intent.action.CREATE_SHORTCUT"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v5, v12

    goto :goto_0

    :sswitch_1
    const-string v6, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v5, v11

    goto :goto_0

    :sswitch_2
    const-string v6, "com.android.vociemailomtp.sms.sms_received"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v5, v10

    goto :goto_0

    :sswitch_3
    const-string v6, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v5, v1

    goto :goto_0

    :sswitch_4
    const-string v6, "android.intent.action.DIAL"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v5, v9

    goto :goto_0

    :sswitch_5
    const-string v6, "android.intent.action.CALL"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v5, v2

    goto :goto_0

    :sswitch_6
    const-string v6, "android.intent.action.SCREEN_ON"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v5, v8

    goto :goto_0

    :sswitch_7
    const-string v6, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v5, v7

    :cond_1
    :goto_0
    packed-switch v5, :pswitch_data_0

    goto :goto_1

    .line 892
    :pswitch_0
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 893
    goto :goto_1

    .line 889
    :pswitch_1
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 890
    goto :goto_1

    .line 886
    :pswitch_2
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 887
    goto :goto_1

    .line 883
    :pswitch_3
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 884
    goto :goto_1

    .line 880
    :pswitch_4
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 881
    goto :goto_1

    .line 877
    :pswitch_5
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 878
    goto :goto_1

    .line 874
    :pswitch_6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 875
    goto :goto_1

    .line 871
    :pswitch_7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 872
    nop

    .line 897
    :goto_1
    const-string v1, "I"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getParamSeqWithprocessCurBroadcastLocked:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lhuawei/android/security/HwBehaviorCollectManagerImpl;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 901
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "action":Ljava/lang/String;
    :cond_2
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7ed8ea7f -> :sswitch_7
        -0x56ac2893 -> :sswitch_6
        -0x45f5ef5d -> :sswitch_5
        -0x45f55e4b -> :sswitch_4
        0x2f94f923 -> :sswitch_3
        0x4c4fe97f -> :sswitch_2
        0x714f24ad -> :sswitch_1
        0x742278c4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private varargs getParamSeqWithregisterContentObserver([Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Object;

    .line 631
    const/4 v0, 0x0

    .line 632
    .local v0, "paramSeq":Ljava/lang/Integer;
    array-length v1, p1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 633
    const-string v1, "E"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getParamSeqWithregisterContentObserver length:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "Err!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lhuawei/android/security/HwBehaviorCollectManagerImpl;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    const/4 v1, 0x0

    return-object v1

    .line 637
    :cond_0
    const/4 v1, 0x0

    aget-object v2, p1, v1

    instance-of v2, v2, Landroid/net/Uri;

    if-eqz v2, :cond_1

    .line 638
    aget-object v1, p1, v1

    check-cast v1, Landroid/net/Uri;

    .line 639
    .local v1, "uri":Landroid/net/Uri;
    invoke-direct {p0, v1}, Lhuawei/android/security/HwBehaviorCollectManagerImpl;->getContentObserverUriSeq(Landroid/net/Uri;)Ljava/lang/Integer;

    move-result-object v0

    .line 642
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_1
    return-object v0
.end method

.method private varargs getParamSeqWithsetComponentEnabledSetting([Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Object;

    .line 601
    const/4 v0, 0x0

    .line 602
    .local v0, "paramSeq":Ljava/lang/Integer;
    array-length v1, p1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 603
    const-string v1, "E"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getParamSeqWithsetComponentEnabledSetting length:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "Err!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lhuawei/android/security/HwBehaviorCollectManagerImpl;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    const/4 v1, 0x0

    return-object v1

    .line 607
    :cond_0
    const/4 v1, 0x0

    aget-object v3, p1, v1

    instance-of v3, v3, Ljava/lang/Integer;

    if-eqz v3, :cond_1

    .line 608
    aget-object v3, p1, v1

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 609
    .local v3, "state":I
    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 620
    :pswitch_0
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 621
    goto :goto_0

    .line 617
    :pswitch_1
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 618
    goto :goto_0

    .line 614
    :pswitch_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 615
    goto :goto_0

    .line 611
    :pswitch_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 612
    nop

    .line 625
    :goto_0
    const-string v1, "I"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getParamSeqWithsetComponentEnabledSetting:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lhuawei/android/security/HwBehaviorCollectManagerImpl;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    .end local v3    # "state":I
    :cond_1
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private varargs getParamSeqWithstartActivityMayWait([Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Object;

    .line 677
    const/4 v0, 0x0

    .line 678
    .local v0, "paramSeq":Ljava/lang/Integer;
    array-length v1, p1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 679
    const-string v1, "E"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getParamSeqWithstartActivityMayWait length:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "Err!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lhuawei/android/security/HwBehaviorCollectManagerImpl;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    const/4 v1, 0x0

    return-object v1

    .line 683
    :cond_0
    const/4 v1, 0x0

    aget-object v2, p1, v1

    instance-of v2, v2, Landroid/content/Intent;

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    aget-object v3, p1, v2

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 684
    aget-object v1, p1, v1

    check-cast v1, Landroid/content/Intent;

    .line 685
    .local v1, "intent":Landroid/content/Intent;
    aget-object v2, p1, v2

    check-cast v2, Ljava/lang/String;

    .line 686
    .local v2, "callingPackage":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lhuawei/android/security/HwBehaviorCollectManagerImpl;->getActivityStartActionSeq(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 689
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "callingPackage":Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method private getService()Lhuawei/android/security/IAppBehaviorDataAnalyzer;
    .locals 1

    .line 190
    iget-object v0, p0, Lhuawei/android/security/HwBehaviorCollectManagerImpl;->dataAnalyzerService:Lhuawei/android/security/IAppBehaviorDataAnalyzer;

    return-object v0
.end method

.method private getVersionInfo()Ljava/lang/String;
    .locals 1

    .line 296
    const-string v0, "1.0.0"

    return-object v0
.end method

.method private registerCallBack(Lhuawei/android/security/IAppBehaviorDataAnalyzer;)V
    .locals 4
    .param p1, "service"    # Lhuawei/android/security/IAppBehaviorDataAnalyzer;

    .line 238
    if-nez p1, :cond_0

    .line 239
    sget-object v0, Lhuawei/android/security/HwBehaviorCollectManagerImpl;->TAG:Ljava/lang/String;

    const-string v1, "registerCallBack with null service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    return-void

    .line 244
    :cond_0
    :try_start_0
    const-class v0, Lhuawei/android/security/HwBehaviorCollectManagerImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lhuawei/android/security/HwBehaviorCollectManagerImpl;->inspectAppObserver:Lhuawei/android/security/IInspectAppObserver;

    invoke-interface {p1, v0, v1}, Lhuawei/android/security/IAppBehaviorDataAnalyzer;->regObservInspectUid(Ljava/lang/String;Lhuawei/android/security/IInspectAppObserver;)V

    .line 247
    invoke-interface {p1}, Lhuawei/android/security/IAppBehaviorDataAnalyzer;->getInspectAppMap()Ljava/util/Map;

    move-result-object v0

    .line 248
    .local v0, "uidMap":Ljava/util/Map;
    iget-object v1, p0, Lhuawei/android/security/HwBehaviorCollectManagerImpl;->inspectAppObserver:Lhuawei/android/security/IInspectAppObserver;

    invoke-interface {v1, v0}, Lhuawei/android/security/IInspectAppObserver;->updateInspectUid(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    .end local v0    # "uidMap":Ljava/util/Map;
    goto :goto_0

    .line 249
    :catch_0
    move-exception v0

    .line 250
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "E"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed registerCallBack:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lhuawei/android/security/HwBehaviorCollectManagerImpl;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private sendBehaviorDataToAnalyzer(III)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "finalBid"    # I

    .line 467
    iget-object v0, p0, Lhuawei/android/security/HwBehaviorCollectManagerImpl;->dataAnalyzerService:Lhuawei/android/security/IAppBehaviorDataAnalyzer;

    if-eqz v0, :cond_0

    .line 469
    :try_start_0
    const-string v0, "I"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBehaviorEvent: uid("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") pid("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") bid("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lhuawei/android/security/HwBehaviorCollectManagerImpl;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    iget-object v0, p0, Lhuawei/android/security/HwBehaviorCollectManagerImpl;->dataAnalyzerService:Lhuawei/android/security/IAppBehaviorDataAnalyzer;

    invoke-interface {v0, p1, p2, p3}, Lhuawei/android/security/IAppBehaviorDataAnalyzer;->onBehaviorEvent(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 474
    goto :goto_0

    .line 471
    :catch_0
    move-exception v0

    .line 472
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "E"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendBehaviorDataToAnalyzer error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lhuawei/android/security/HwBehaviorCollectManagerImpl;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    const/4 v1, 0x0

    iput-object v1, p0, Lhuawei/android/security/HwBehaviorCollectManagerImpl;->dataAnalyzerService:Lhuawei/android/security/IAppBehaviorDataAnalyzer;

    .line 476
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method private varargs sendBehaviorParamParse(IILhuawei/android/security/IHwBehaviorCollectManager$BehaviorId;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "bid"    # Lhuawei/android/security/IHwBehaviorCollectManager$BehaviorId;
    .param p4, "params"    # [Ljava/lang/Object;

    .line 413
    const/4 v0, 0x0

    .line 414
    .local v0, "paramSeq":Ljava/lang/Integer;
    sget-object v1, Lhuawei/android/security/HwBehaviorCollectManagerImpl$3;->$SwitchMap$huawei$android$security$IHwBehaviorCollectManager$BehaviorId:[I

    invoke-virtual {p3}, Lhuawei/android/security/IHwBehaviorCollectManager$BehaviorId;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 452
    const-string v1, "E"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendBehaviorParamParse Err Bid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lhuawei/android/security/IHwBehaviorCollectManager$BehaviorId;->getValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "with extra param!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lhuawei/android/security/HwBehaviorCollectManagerImpl;->trace(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 449
    :pswitch_0
    invoke-direct {p0, p4}, Lhuawei/android/security/HwBehaviorCollectManagerImpl;->getParamSeqWithTransportdelete([Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    .line 450
    goto :goto_0

    .line 446
    :pswitch_1
    invoke-direct {p0, p4}, Lhuawei/android/security/HwBehaviorCollectManagerImpl;->getParamSeqWithTransportinsert([Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    .line 447
    goto :goto_0

    .line 443
    :pswitch_2
    invoke-direct {p0, p4}, Lhuawei/android/security/HwBehaviorCollectManagerImpl;->getParamSeqWithTransportupdate([Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    .line 444
    goto :goto_0

    .line 440
    :pswitch_3
    invoke-direct {p0, p4}, Lhuawei/android/security/HwBehaviorCollectManagerImpl;->getParamSeqWithTransportquery([Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    .line 441
    goto :goto_0

    .line 437
    :pswitch_4
    invoke-direct {p0, p4}, Lhuawei/android/security/HwBehaviorCollectManagerImpl;->getParamSeqWithfinishReceiverLocked([Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    .line 438
    goto :goto_0

    .line 434
    :pswitch_5
    invoke-direct {p0, p4}, Lhuawei/android/security/HwBehaviorCollectManagerImpl;->getParamSeqWithperformReceiveLocked([Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    .line 435
    goto :goto_0

    .line 431
    :pswitch_6
    invoke-direct {p0, p4}, Lhuawei/android/security/HwBehaviorCollectManagerImpl;->getParamSeqWithprocessCurBroadcastLocked([Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    .line 432
    goto :goto_0

    .line 428
    :pswitch_7
    invoke-direct {p0, p4}, Lhuawei/android/security/HwBehaviorCollectManagerImpl;->getParamSeqWithbroadcastIntent([Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    .line 429
    goto :goto_0

    .line 425
    :pswitch_8
    invoke-direct {p0, p4}, Lhuawei/android/security/HwBehaviorCollectManagerImpl;->getParamSeqWithstartActivityMayWait([Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    .line 426
    goto :goto_0

    .line 422
    :pswitch_9
    invoke-direct {p0, p4}, Lhuawei/android/security/HwBehaviorCollectManagerImpl;->getParamSeqWithregisterContentObserver([Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    .line 423
    goto :goto_0

    .line 419
    :pswitch_a
    invoke-direct {p0, p4}, Lhuawei/android/security/HwBehaviorCollectManagerImpl;->getParamSeqWithsetComponentEnabledSetting([Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    .line 420
    goto :goto_0

    .line 416
    :pswitch_b
    invoke-direct {p0, p4}, Lhuawei/android/security/HwBehaviorCollectManagerImpl;->getParamSeqWithaddWindow([Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    .line 417
    nop

    .line 457
    :goto_0
    if-nez v0, :cond_0

    .line 458
    return-void

    .line 461
    :cond_0
    invoke-virtual {p3}, Lhuawei/android/security/IHwBehaviorCollectManager$BehaviorId;->getValue()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v1, v2

    .line 462
    .local v1, "finalBid":I
    invoke-direct {p0, p1, p2, v1}, Lhuawei/android/security/HwBehaviorCollectManagerImpl;->sendBehaviorDataToAnalyzer(III)V

    .line 463
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private timerDiscoverService()V
    .locals 6

    .line 194
    new-instance v1, Lhuawei/android/security/HwBehaviorCollectManagerImpl$1;

    invoke-direct {v1, p0}, Lhuawei/android/security/HwBehaviorCollectManagerImpl$1;-><init>(Lhuawei/android/security/HwBehaviorCollectManagerImpl;)V

    .line 205
    .local v1, "timerTask":Ljava/util/TimerTask;
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 206
    .local v0, "timer":Ljava/util/Timer;
    const-wide/16 v2, 0x3e8

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 207
    return-void
.end method

.method private trace(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "level"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 1059
    sget-boolean v0, Lhuawei/android/security/HwBehaviorCollectManagerImpl;->traceFlag:Z

    if-eqz v0, :cond_2

    .line 1060
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x49

    if-eq v1, v2, :cond_0

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v1, "E"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    const-string v1, "D"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "I"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x2

    :cond_1
    :goto_0
    packed-switch v0, :pswitch_data_1

    goto :goto_1

    .line 1068
    :pswitch_2
    sget-object v0, Lhuawei/android/security/HwBehaviorCollectManagerImpl;->TAG:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    goto :goto_1

    .line 1065
    :pswitch_3
    sget-object v0, Lhuawei/android/security/HwBehaviorCollectManagerImpl;->TAG:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    goto :goto_1

    .line 1062
    :pswitch_4
    sget-object v0, Lhuawei/android/security/HwBehaviorCollectManagerImpl;->TAG:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    nop

    .line 1074
    :cond_2
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x44
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public sendBehavior(IILhuawei/android/security/IHwBehaviorCollectManager$BehaviorId;)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "bid"    # Lhuawei/android/security/IHwBehaviorCollectManager$BehaviorId;

    .line 362
    :try_start_0
    invoke-direct {p0}, Lhuawei/android/security/HwBehaviorCollectManagerImpl;->getService()Lhuawei/android/security/IAppBehaviorDataAnalyzer;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lhuawei/android/security/HwBehaviorCollectManagerImpl;->inspectUidMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 366
    :cond_0
    invoke-direct {p0, p1}, Lhuawei/android/security/HwBehaviorCollectManagerImpl;->checkActiveUid(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 367
    return-void

    .line 370
    :cond_1
    invoke-virtual {p3}, Lhuawei/android/security/IHwBehaviorCollectManager$BehaviorId;->getValue()I

    move-result v0

    .line 371
    .local v0, "finalBid":I
    invoke-direct {p0, p1, p2, v0}, Lhuawei/android/security/HwBehaviorCollectManagerImpl;->sendBehaviorDataToAnalyzer(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    .end local v0    # "finalBid":I
    goto :goto_1

    .line 363
    :cond_2
    :goto_0
    return-void

    .line 372
    :catch_0
    move-exception v0

    .line 373
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "E"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed sendBehavior uid["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lhuawei/android/security/HwBehaviorCollectManagerImpl;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public varargs sendBehavior(IILhuawei/android/security/IHwBehaviorCollectManager$BehaviorId;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "bid"    # Lhuawei/android/security/IHwBehaviorCollectManager$BehaviorId;
    .param p4, "params"    # [Ljava/lang/Object;

    .line 380
    :try_start_0
    invoke-direct {p0}, Lhuawei/android/security/HwBehaviorCollectManagerImpl;->getService()Lhuawei/android/security/IAppBehaviorDataAnalyzer;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lhuawei/android/security/HwBehaviorCollectManagerImpl;->inspectUidMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 384
    :cond_0
    invoke-direct {p0, p1}, Lhuawei/android/security/HwBehaviorCollectManagerImpl;->checkActiveUid(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 385
    return-void

    .line 388
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lhuawei/android/security/HwBehaviorCollectManagerImpl;->sendBehaviorParamParse(IILhuawei/android/security/IHwBehaviorCollectManager$BehaviorId;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 391
    goto :goto_1

    .line 381
    :cond_2
    :goto_0
    return-void

    .line 389
    :catch_0
    move-exception v0

    .line 390
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "E"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed sendBehavior uid["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] with params:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lhuawei/android/security/HwBehaviorCollectManagerImpl;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public sendBehavior(Lhuawei/android/security/IHwBehaviorCollectManager$BehaviorId;)V
    .locals 4
    .param p1, "bid"    # Lhuawei/android/security/IHwBehaviorCollectManager$BehaviorId;

    .line 325
    :try_start_0
    invoke-direct {p0}, Lhuawei/android/security/HwBehaviorCollectManagerImpl;->getService()Lhuawei/android/security/IAppBehaviorDataAnalyzer;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lhuawei/android/security/HwBehaviorCollectManagerImpl;->inspectUidMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 329
    :cond_0
    invoke-virtual {p1}, Lhuawei/android/security/IHwBehaviorCollectManager$BehaviorId;->getValue()I

    move-result v0

    .line 330
    .local v0, "finalBid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 331
    .local v1, "uid":I
    invoke-direct {p0, v1}, Lhuawei/android/security/HwBehaviorCollectManagerImpl;->checkActiveUid(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 332
    return-void

    .line 335
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-direct {p0, v1, v2, v0}, Lhuawei/android/security/HwBehaviorCollectManagerImpl;->sendBehaviorDataToAnalyzer(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    .end local v0    # "finalBid":I
    .end local v1    # "uid":I
    goto :goto_1

    .line 326
    :cond_2
    :goto_0
    return-void

    .line 336
    :catch_0
    move-exception v0

    .line 337
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "E"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed sendBehavior:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lhuawei/android/security/HwBehaviorCollectManagerImpl;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public varargs sendBehavior(Lhuawei/android/security/IHwBehaviorCollectManager$BehaviorId;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "bid"    # Lhuawei/android/security/IHwBehaviorCollectManager$BehaviorId;
    .param p2, "params"    # [Ljava/lang/Object;

    .line 344
    :try_start_0
    invoke-direct {p0}, Lhuawei/android/security/HwBehaviorCollectManagerImpl;->getService()Lhuawei/android/security/IAppBehaviorDataAnalyzer;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lhuawei/android/security/HwBehaviorCollectManagerImpl;->inspectUidMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 348
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 349
    .local v0, "uid":I
    invoke-direct {p0, v0}, Lhuawei/android/security/HwBehaviorCollectManagerImpl;->checkActiveUid(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 350
    return-void

    .line 353
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-direct {p0, v0, v1, p1, p2}, Lhuawei/android/security/HwBehaviorCollectManagerImpl;->sendBehaviorParamParse(IILhuawei/android/security/IHwBehaviorCollectManager$BehaviorId;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    .end local v0    # "uid":I
    goto :goto_1

    .line 345
    :cond_2
    :goto_0
    return-void

    .line 354
    :catch_0
    move-exception v0

    .line 355
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "E"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed sendBehavior with params:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lhuawei/android/security/HwBehaviorCollectManagerImpl;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public sendEvent(IIILjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "event"    # I
    .param p2, "uid"    # I
    .param p3, "pid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "installer"    # Ljava/lang/String;

    .line 396
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 397
    const/16 v0, 0x2710

    if-ge p2, v0, :cond_0

    .line 398
    return-void

    .line 403
    :cond_0
    :try_start_0
    iget-object v0, p0, Lhuawei/android/security/HwBehaviorCollectManagerImpl;->dataAnalyzerService:Lhuawei/android/security/IAppBehaviorDataAnalyzer;

    if-eqz v0, :cond_1

    .line 404
    iget-object v1, p0, Lhuawei/android/security/HwBehaviorCollectManagerImpl;->dataAnalyzerService:Lhuawei/android/security/IAppBehaviorDataAnalyzer;

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lhuawei/android/security/IAppBehaviorDataAnalyzer;->onAppEvent(IIILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 409
    :cond_1
    goto :goto_0

    .line 406
    :catch_0
    move-exception v0

    .line 407
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "E"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendEvent error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lhuawei/android/security/HwBehaviorCollectManagerImpl;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    const/4 v1, 0x0

    iput-object v1, p0, Lhuawei/android/security/HwBehaviorCollectManagerImpl;->dataAnalyzerService:Lhuawei/android/security/IAppBehaviorDataAnalyzer;

    .line 410
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
