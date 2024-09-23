.class synthetic Lhuawei/android/security/HwBehaviorCollectManagerImpl$3;
.super Ljava/lang/Object;
.source "HwBehaviorCollectManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhuawei/android/security/HwBehaviorCollectManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$huawei$android$security$IHwBehaviorCollectManager$BehaviorId:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 414
    invoke-static {}, Lhuawei/android/security/IHwBehaviorCollectManager$BehaviorId;->values()[Lhuawei/android/security/IHwBehaviorCollectManager$BehaviorId;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lhuawei/android/security/HwBehaviorCollectManagerImpl$3;->$SwitchMap$huawei$android$security$IHwBehaviorCollectManager$BehaviorId:[I

    :try_start_0
    sget-object v0, Lhuawei/android/security/HwBehaviorCollectManagerImpl$3;->$SwitchMap$huawei$android$security$IHwBehaviorCollectManager$BehaviorId:[I

    sget-object v1, Lhuawei/android/security/IHwBehaviorCollectManager$BehaviorId;->WINDOWNMANAGER_ADDWINDOW:Lhuawei/android/security/IHwBehaviorCollectManager$BehaviorId;

    invoke-virtual {v1}, Lhuawei/android/security/IHwBehaviorCollectManager$BehaviorId;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    :try_start_1
    sget-object v0, Lhuawei/android/security/HwBehaviorCollectManagerImpl$3;->$SwitchMap$huawei$android$security$IHwBehaviorCollectManager$BehaviorId:[I

    sget-object v1, Lhuawei/android/security/IHwBehaviorCollectManager$BehaviorId;->PACKAGEMANAGER_SETCOMPONENTENABLEDSETTING:Lhuawei/android/security/IHwBehaviorCollectManager$BehaviorId;

    invoke-virtual {v1}, Lhuawei/android/security/IHwBehaviorCollectManager$BehaviorId;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    :try_start_2
    sget-object v0, Lhuawei/android/security/HwBehaviorCollectManagerImpl$3;->$SwitchMap$huawei$android$security$IHwBehaviorCollectManager$BehaviorId:[I

    sget-object v1, Lhuawei/android/security/IHwBehaviorCollectManager$BehaviorId;->CONTENT_REGISTERCONTENTOBSERVER:Lhuawei/android/security/IHwBehaviorCollectManager$BehaviorId;

    invoke-virtual {v1}, Lhuawei/android/security/IHwBehaviorCollectManager$BehaviorId;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    :goto_2
    :try_start_3
    sget-object v0, Lhuawei/android/security/HwBehaviorCollectManagerImpl$3;->$SwitchMap$huawei$android$security$IHwBehaviorCollectManager$BehaviorId:[I

    sget-object v1, Lhuawei/android/security/IHwBehaviorCollectManager$BehaviorId;->ACTIVITYSTARTER_STARTACTIVITYMAYWAIT:Lhuawei/android/security/IHwBehaviorCollectManager$BehaviorId;

    invoke-virtual {v1}, Lhuawei/android/security/IHwBehaviorCollectManager$BehaviorId;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    :goto_3
    :try_start_4
    sget-object v0, Lhuawei/android/security/HwBehaviorCollectManagerImpl$3;->$SwitchMap$huawei$android$security$IHwBehaviorCollectManager$BehaviorId:[I

    sget-object v1, Lhuawei/android/security/IHwBehaviorCollectManager$BehaviorId;->ACTIVITYMANAGER_BROADCASTINTENT:Lhuawei/android/security/IHwBehaviorCollectManager$BehaviorId;

    invoke-virtual {v1}, Lhuawei/android/security/IHwBehaviorCollectManager$BehaviorId;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    :goto_4
    :try_start_5
    sget-object v0, Lhuawei/android/security/HwBehaviorCollectManagerImpl$3;->$SwitchMap$huawei$android$security$IHwBehaviorCollectManager$BehaviorId:[I

    sget-object v1, Lhuawei/android/security/IHwBehaviorCollectManager$BehaviorId;->BROADCASTQUEUE_PROCESSCURBROADCASTLOCKED:Lhuawei/android/security/IHwBehaviorCollectManager$BehaviorId;

    invoke-virtual {v1}, Lhuawei/android/security/IHwBehaviorCollectManager$BehaviorId;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception v0

    :goto_5
    :try_start_6
    sget-object v0, Lhuawei/android/security/HwBehaviorCollectManagerImpl$3;->$SwitchMap$huawei$android$security$IHwBehaviorCollectManager$BehaviorId:[I

    sget-object v1, Lhuawei/android/security/IHwBehaviorCollectManager$BehaviorId;->BROADCASTQUEUE_PERFORMRECEIVELOCKED:Lhuawei/android/security/IHwBehaviorCollectManager$BehaviorId;

    invoke-virtual {v1}, Lhuawei/android/security/IHwBehaviorCollectManager$BehaviorId;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_6

    :catch_6
    move-exception v0

    :goto_6
    :try_start_7
    sget-object v0, Lhuawei/android/security/HwBehaviorCollectManagerImpl$3;->$SwitchMap$huawei$android$security$IHwBehaviorCollectManager$BehaviorId:[I

    sget-object v1, Lhuawei/android/security/IHwBehaviorCollectManager$BehaviorId;->BROADCASTQUEUE_FINISHRECEIVERLOCKED:Lhuawei/android/security/IHwBehaviorCollectManager$BehaviorId;

    invoke-virtual {v1}, Lhuawei/android/security/IHwBehaviorCollectManager$BehaviorId;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_7

    :catch_7
    move-exception v0

    :goto_7
    :try_start_8
    sget-object v0, Lhuawei/android/security/HwBehaviorCollectManagerImpl$3;->$SwitchMap$huawei$android$security$IHwBehaviorCollectManager$BehaviorId:[I

    sget-object v1, Lhuawei/android/security/IHwBehaviorCollectManager$BehaviorId;->CONTENTPROVIDER_UPDATE:Lhuawei/android/security/IHwBehaviorCollectManager$BehaviorId;

    invoke-virtual {v1}, Lhuawei/android/security/IHwBehaviorCollectManager$BehaviorId;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_8

    :catch_8
    move-exception v0

    :goto_8
    :try_start_9
    sget-object v0, Lhuawei/android/security/HwBehaviorCollectManagerImpl$3;->$SwitchMap$huawei$android$security$IHwBehaviorCollectManager$BehaviorId:[I

    sget-object v1, Lhuawei/android/security/IHwBehaviorCollectManager$BehaviorId;->CONTENTPROVIDER_QUERY:Lhuawei/android/security/IHwBehaviorCollectManager$BehaviorId;

    invoke-virtual {v1}, Lhuawei/android/security/IHwBehaviorCollectManager$BehaviorId;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_9

    :catch_9
    move-exception v0

    :goto_9
    :try_start_a
    sget-object v0, Lhuawei/android/security/HwBehaviorCollectManagerImpl$3;->$SwitchMap$huawei$android$security$IHwBehaviorCollectManager$BehaviorId:[I

    sget-object v1, Lhuawei/android/security/IHwBehaviorCollectManager$BehaviorId;->CONTENTPROVIDER_INSERT:Lhuawei/android/security/IHwBehaviorCollectManager$BehaviorId;

    invoke-virtual {v1}, Lhuawei/android/security/IHwBehaviorCollectManager$BehaviorId;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    goto :goto_a

    :catch_a
    move-exception v0

    :goto_a
    :try_start_b
    sget-object v0, Lhuawei/android/security/HwBehaviorCollectManagerImpl$3;->$SwitchMap$huawei$android$security$IHwBehaviorCollectManager$BehaviorId:[I

    sget-object v1, Lhuawei/android/security/IHwBehaviorCollectManager$BehaviorId;->CONTENTPROVIDER_DELETE:Lhuawei/android/security/IHwBehaviorCollectManager$BehaviorId;

    invoke-virtual {v1}, Lhuawei/android/security/IHwBehaviorCollectManager$BehaviorId;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    goto :goto_b

    :catch_b
    move-exception v0

    :goto_b
    return-void
.end method
