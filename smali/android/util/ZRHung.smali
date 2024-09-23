.class public Landroid/util/ZRHung;
.super Ljava/lang/Object;
.source "ZRHung.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/ZRHung$HungConfig;
    }
.end annotation


# static fields
.field public static final APPEYE_ANR:S = 0x10bs

.field public static final APPEYE_BASE:S = 0x100s

.field public static final APPEYE_BF:S = 0x108s

.field public static final APPEYE_BINDER_TIMEOUT:S = 0x119s

.field public static final APPEYE_CANR:S = 0x10ds

.field public static final APPEYE_CL:S = 0x109s

.field public static final APPEYE_CLA:S = 0x10as

.field public static final APPEYE_CRASH:S = 0x11fs

.field public static final APPEYE_FWB_FREEZE:S = 0x10fs

.field public static final APPEYE_FWB_RECOVER:S = 0x120s

.field public static final APPEYE_FWB_WARNING:S = 0x10es

.field public static final APPEYE_FWE:S = 0x112s

.field public static final APPEYE_MANR:S = 0x10cs

.field public static final APPEYE_MT:S = 0x117s

.field public static final APPEYE_MTO_FREEZE:S = 0x105s

.field public static final APPEYE_MTO_INPUT:S = 0x107s

.field public static final APPEYE_MTO_SLOW:S = 0x106s

.field public static final APPEYE_NFW:S = 0x110s

.field public static final APPEYE_NONE:S = 0x100s

.field public static final APPEYE_OBS:S = 0x115s

.field public static final APPEYE_RCV:S = 0x114s

.field public static final APPEYE_RECOVER_RESULT:S = 0x116s

.field public static final APPEYE_SBF:S = 0x113s

.field public static final APPEYE_SBF_FREEZE:S = 0x11as

.field public static final APPEYE_SBF_RECOVER:S = 0x11bs

.field public static final APPEYE_SUIP_FREEZE:S = 0x11ds

.field public static final APPEYE_SUIP_INPUT:S = 0x11es

.field public static final APPEYE_SUIP_WARNING:S = 0x11cs

.field public static final APPEYE_TEMP1:S = 0x121s

.field public static final APPEYE_TEMP2:S = 0x122s

.field public static final APPEYE_TEMP3:S = 0x123s

.field public static final APPEYE_TWIN:S = 0x111s

.field public static final APPEYE_UIP_FREEZE:S = 0x102s

.field public static final APPEYE_UIP_INPUT:S = 0x104s

.field public static final APPEYE_UIP_RECOVER:S = 0x118s

.field public static final APPEYE_UIP_SLOW:S = 0x103s

.field public static final APPEYE_UIP_WARNING:S = 0x101s

.field public static final CONFIG_OK:I = 0x0

.field public static final NOT_READY:I = 0x1

.field public static final NOT_SUPPORT:I = -0x1

.field public static final NO_CONFIG:I = -0x2

.field public static final TAG:Ljava/lang/String; = "ZRHung"

.field public static final XCOLLIE_BASE:S = 0x400s

.field public static final XCOLLIE_FWK_SERVICE:S = 0x401s

.field public static final XCOLLIE_NONE:S = 0x400s

.field public static final ZRHUNG_CAT_APPEYE:S = 0x1s

.field public static final ZRHUNG_CAT_EVENT:S = 0x2s

.field public static final ZRHUNG_CAT_NUM_MAX:S = 0x3s

.field public static final ZRHUNG_CAT_SYS:S = 0x0s

.field public static final ZRHUNG_CAT_XCOLLIE:S = 0x4s

.field public static final ZRHUNG_EVENT_BACKKEY:S = 0x204s

.field public static final ZRHUNG_EVENT_BASE:S = 0x200s

.field public static final ZRHUNG_EVENT_HOMEKEY:S = 0x203s

.field public static final ZRHUNG_EVENT_LONGPRESS:S = 0x201s

.field public static final ZRHUNG_EVENT_MULTIPRESS:S = 0x205s

.field public static final ZRHUNG_EVENT_NONE:S = 0x200s

.field public static final ZRHUNG_EVENT_POWERKEY:S = 0x202s

.field public static final ZRHUNG_EVENT_TEMP1:S = 0x206s

.field public static final ZRHUNG_EVENT_TEMP2:S = 0x207s

.field public static final ZRHUNG_EVENT_TEMP3:S = 0x208s

.field public static final ZRHUNG_WP_APPFREEZE:S = 0x17s

.field public static final ZRHUNG_WP_APPFRZ_WARNING:S = 0x18s

.field public static final ZRHUNG_WP_BASE:S = 0x0s

.field public static final ZRHUNG_WP_CAMERA:S = 0x1bs

.field public static final ZRHUNG_WP_CPU:S = 0x7s

.field public static final ZRHUNG_WP_FDLEAK:S = 0x1as

.field public static final ZRHUNG_WP_FENCE:S = 0xas

.field public static final ZRHUNG_WP_FOCUS_WIN:S = 0xfs

.field public static final ZRHUNG_WP_GC:S = 0x8s

.field public static final ZRHUNG_WP_GPU:S = 0xds

.field public static final ZRHUNG_WP_HTSK_WARNING:S = 0x19s

.field public static final ZRHUNG_WP_HUNGTASK:S = 0x1s

.field public static final ZRHUNG_WP_INIT:S = 0x15s

.field public static final ZRHUNG_WP_IO:S = 0x6s

.field public static final ZRHUNG_WP_IPC_OBJECT:S = 0x13s

.field public static final ZRHUNG_WP_IPC_THREAD:S = 0x12s

.field public static final ZRHUNG_WP_LCD:S = 0x10s

.field public static final ZRHUNG_WP_LMKD:S = 0x5s

.field public static final ZRHUNG_WP_NONE:S = 0x0s

.field public static final ZRHUNG_WP_RES_LEAK:S = 0x11s

.field public static final ZRHUNG_WP_SCREENOFF:S = 0x3s

.field public static final ZRHUNG_WP_SCREENON:S = 0x2s

.field public static final ZRHUNG_WP_SCRNONFWK:S = 0xbs

.field public static final ZRHUNG_WP_SERVICE:S = 0xcs

.field public static final ZRHUNG_WP_SR:S = 0x4s

.field public static final ZRHUNG_WP_TEMP1:S = 0x1ds

.field public static final ZRHUNG_WP_TEMP2:S = 0x1es

.field public static final ZRHUNG_WP_TEMP3:S = 0x1fs

.field public static final ZRHUNG_WP_TP:S = 0x9s

.field public static final ZRHUNG_WP_TRANS_WIN:S = 0xes

.field public static final ZRHUNG_WP_UFS:S = 0x14s

.field public static final ZRHUNG_WP_UPLOAD_BIGDATA:S = 0x1cs

.field public static final ZRHUNG_WP_VMWATCHDOG:S = 0x16s


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static bytesToString([B)Ljava/lang/String;
    .locals 8
    .param p0, "bs"    # [B

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    .local v0, "s":Ljava/lang/StringBuilder;
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-byte v4, p0, v3

    .line 164
    .local v4, "b":B
    if-nez v4, :cond_0

    .line 165
    goto :goto_1

    .line 167
    :cond_0
    const-string v5, "%c"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .end local v4    # "b":B
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 169
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getHungConfig(S)Landroid/util/ZRHung$HungConfig;
    .locals 5
    .param p0, "wp"    # S

    .line 148
    const/16 v0, 0x200

    const/4 v1, 0x0

    :try_start_0
    new-array v0, v0, [B

    .line 150
    .local v0, "data":[B
    invoke-static {p0, v0}, Landroid/util/IMonitorNative;->getHungConfig(S[B)I

    move-result v2

    .line 151
    .local v2, "status":I
    if-gez v2, :cond_0

    .line 152
    return-object v1

    .line 154
    :cond_0
    new-instance v3, Landroid/util/ZRHung$HungConfig;

    invoke-static {v0}, Landroid/util/ZRHung;->bytesToString([B)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4, v1}, Landroid/util/ZRHung$HungConfig;-><init>(ILjava/lang/String;Landroid/util/ZRHung$1;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 155
    .end local v0    # "data":[B
    .end local v2    # "status":I
    :catch_0
    move-exception v0

    .line 156
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v2, "ZRHung"

    const-string v3, "getHungConfig failed for no implementation of native"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    return-object v1
.end method

.method public static sendHungEvent(SLjava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "wp"    # S
    .param p1, "cmdBuf"    # Ljava/lang/String;
    .param p2, "Buf"    # Ljava/lang/String;

    .line 132
    if-nez p1, :cond_0

    .line 133
    const-string p1, ""

    .line 135
    :cond_0
    if-nez p2, :cond_1

    .line 136
    const-string p2, ""

    .line 139
    :cond_1
    :try_start_0
    invoke-static {p0, p1, p2}, Landroid/util/IMonitorNative;->sendHungEvent(SLjava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "ZRHung"

    const-string v2, "sendHungEvent failed for no implementation of native"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const/4 v1, 0x0

    return v1
.end method
