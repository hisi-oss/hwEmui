.class public Landroid/zrhung/ZrHungImpl;
.super Ljava/lang/Object;
.source "ZrHungImpl.java"

# interfaces
.implements Landroid/zrhung/IZrHung;


# static fields
.field private static final TAG:Ljava/lang/String; = "ZrHungImpl"

.field protected static final ZRHUNG_PID_PARAM:Ljava/lang/String; = "pid"

.field protected static final ZRHUNG_PKGNAME_PARAM:Ljava/lang/String; = "packageName"

.field protected static final ZRHUNG_PROCNAME_PARAM:Ljava/lang/String; = "processName"

.field protected static final ZRHUNG_RECOVERRESULT_PARAM:Ljava/lang/String; = "recoverresult"

.field protected static final ZRHUNG_UID_PARAM:Ljava/lang/String; = "uid"


# instance fields
.field protected mWpId:S


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "wpName"    # Ljava/lang/String;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-direct {p0, p1}, Landroid/zrhung/ZrHungImpl;->getWatchponitId(Ljava/lang/String;)S

    move-result v0

    iput-short v0, p0, Landroid/zrhung/ZrHungImpl;->mWpId:S

    .line 65
    return-void
.end method

.method private getWatchponitId(Ljava/lang/String;)S
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 262
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xb

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "appeye_bootfail"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "appeye_backkey"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "appeye_uiprobe"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "zrhung_wp_vm_watchdog"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "appeye_frameworkblock"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "appeye_clearall"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "zrhung_wp_screenon_framework"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_7
    const-string v0, "appeye_observer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_8
    const-string v0, "appeye_transparentwindow"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_9
    const-string v0, "appeye_clear"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_a
    const-string v0, "appeye_xcollie"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    goto :goto_1

    :sswitch_b
    const-string v0, "appeye_ssbinderfull"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto :goto_1

    :sswitch_c
    const-string v0, "appeye_nofocuswindow"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto :goto_1

    :sswitch_d
    const-string v0, "appeye_receiver"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    :sswitch_e
    const-string v0, "appeye_homekey"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_f
    const-string v0, "appeye_anr"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 320
    return v1

    .line 317
    :pswitch_0
    const/16 v0, 0x401

    return v0

    .line 313
    :pswitch_1
    const/16 v0, 0x121

    return v0

    .line 309
    :pswitch_2
    const/16 v0, 0x108

    return v0

    .line 305
    :pswitch_3
    const/16 v0, 0x110

    return v0

    .line 301
    :pswitch_4
    const/16 v0, 0x111

    return v0

    .line 297
    :pswitch_5
    return v2

    .line 293
    :pswitch_6
    const/16 v0, 0x10f

    return v0

    .line 289
    :pswitch_7
    const/16 v0, 0x16

    return v0

    .line 285
    :pswitch_8
    const/16 v0, 0x10d

    return v0

    .line 281
    :pswitch_9
    const/16 v0, 0x203

    return v0

    .line 279
    :pswitch_a
    const/16 v0, 0x204

    return v0

    .line 275
    :pswitch_b
    const/16 v0, 0x10a

    return v0

    .line 273
    :pswitch_c
    const/16 v0, 0x109

    return v0

    .line 270
    :pswitch_d
    const/16 v0, 0x102

    return v0

    .line 267
    :pswitch_e
    const/16 v0, 0x115

    return v0

    .line 265
    :pswitch_f
    const/16 v0, 0x114

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6cac3e6a -> :sswitch_f
        -0x32496faf -> :sswitch_e
        -0x2a283722 -> :sswitch_d
        -0x15573328 -> :sswitch_c
        -0x6b246f8 -> :sswitch_b
        0x7bf7eb1 -> :sswitch_a
        0xd84d5be -> :sswitch_9
        0x116bf1b3 -> :sswitch_8
        0x1ad331c5 -> :sswitch_7
        0x1d1d5a6f -> :sswitch_6
        0x3526e323 -> :sswitch_5
        0x42a610fe -> :sswitch_4
        0x4adfa5d0 -> :sswitch_3
        0x735abccd -> :sswitch_2
        0x77e32349 -> :sswitch_1
        0x7e0f27ff -> :sswitch_0
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

.method public static getZrHung(Ljava/lang/String;)Landroid/zrhung/IZrHung;
    .locals 1
    .param p0, "wpName"    # Ljava/lang/String;

    .line 68
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "appeye_bootfail"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "appeye_backkey"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "appeye_uiprobe"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "zrhung_wp_vm_watchdog"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "appeye_frameworkblock"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "appeye_clearall"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "zrhung_wp_screenon_framework"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto :goto_1

    :sswitch_7
    const-string v0, "appeye_observer"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_8
    const-string v0, "appeye_transparentwindow"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto :goto_1

    :sswitch_9
    const-string v0, "appeye_clear"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_a
    const-string v0, "appeye_xcollie"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    goto :goto_1

    :sswitch_b
    const-string v0, "appeye_ssbinderfull"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto :goto_1

    :sswitch_c
    const-string v0, "appeye_nofocuswindow"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto :goto_1

    :sswitch_d
    const-string v0, "appeye_receiver"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_e
    const-string v0, "appeye_homekey"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_f
    const-string v0, "appeye_anr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 126
    const/4 v0, 0x0

    return-object v0

    .line 123
    :pswitch_0
    invoke-static {p0}, Landroid/zrhung/appeye/AppEyeXcollie;->getInstance(Ljava/lang/String;)Landroid/zrhung/appeye/AppEyeXcollie;

    move-result-object v0

    return-object v0

    .line 119
    :pswitch_1
    invoke-static {p0}, Landroid/zrhung/appeye/AppEyeBinderBlock;->getInstance(Ljava/lang/String;)Landroid/zrhung/appeye/AppEyeBinderBlock;

    move-result-object v0

    return-object v0

    .line 115
    :pswitch_2
    invoke-static {p0}, Landroid/zrhung/appeye/AppBootFail;->getInstance(Ljava/lang/String;)Landroid/zrhung/appeye/AppBootFail;

    move-result-object v0

    return-object v0

    .line 111
    :pswitch_3
    invoke-static {p0}, Landroid/zrhung/appeye/AppEyeFocusWindow;->getInstance(Ljava/lang/String;)Landroid/zrhung/appeye/AppEyeFocusWindow;

    move-result-object v0

    return-object v0

    .line 107
    :pswitch_4
    invoke-static {p0}, Landroid/zrhung/appeye/AppEyeTransparentWindow;->getInstance(Ljava/lang/String;)Landroid/zrhung/appeye/AppEyeTransparentWindow;

    move-result-object v0

    return-object v0

    .line 103
    :pswitch_5
    invoke-static {p0}, Landroid/zrhung/watchpoint/SysHungScreenOn;->getInstance(Ljava/lang/String;)Landroid/zrhung/watchpoint/SysHungScreenOn;

    move-result-object v0

    return-object v0

    .line 99
    :pswitch_6
    invoke-static {}, Landroid/zrhung/appeye/AppEyeFwkBlock;->getInstance()Landroid/zrhung/appeye/AppEyeFwkBlock;

    move-result-object v0

    return-object v0

    .line 95
    :pswitch_7
    new-instance v0, Landroid/zrhung/SysHungVmWTG;

    invoke-direct {v0, p0}, Landroid/zrhung/SysHungVmWTG;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 91
    :pswitch_8
    new-instance v0, Landroid/zrhung/appeye/AppEyeANR;

    invoke-direct {v0, p0}, Landroid/zrhung/appeye/AppEyeANR;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 87
    :pswitch_9
    new-instance v0, Landroid/zrhung/appeye/AppEyeHK;

    invoke-direct {v0, p0}, Landroid/zrhung/appeye/AppEyeHK;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 85
    :pswitch_a
    new-instance v0, Landroid/zrhung/appeye/AppEyeBK;

    invoke-direct {v0, p0}, Landroid/zrhung/appeye/AppEyeBK;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 81
    :pswitch_b
    invoke-static {p0}, Landroid/zrhung/appeye/AppEyeCLA;->getInstance(Ljava/lang/String;)Landroid/zrhung/appeye/AppEyeCLA;

    move-result-object v0

    return-object v0

    .line 79
    :pswitch_c
    invoke-static {p0}, Landroid/zrhung/appeye/AppEyeCL;->getInstance(Ljava/lang/String;)Landroid/zrhung/appeye/AppEyeCL;

    move-result-object v0

    return-object v0

    .line 76
    :pswitch_d
    invoke-static {}, Landroid/zrhung/appeye/AppEyeUiProbe;->get()Landroid/zrhung/appeye/AppEyeUiProbe;

    move-result-object v0

    return-object v0

    .line 73
    :pswitch_e
    invoke-static {p0}, Landroid/zrhung/appeye/AppEyeObs;->getInstance(Ljava/lang/String;)Landroid/zrhung/appeye/AppEyeObs;

    move-result-object v0

    return-object v0

    .line 71
    :pswitch_f
    invoke-static {p0}, Landroid/zrhung/appeye/AppEyeRcv;->getInstance(Ljava/lang/String;)Landroid/zrhung/appeye/AppEyeRcv;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6cac3e6a -> :sswitch_f
        -0x32496faf -> :sswitch_e
        -0x2a283722 -> :sswitch_d
        -0x15573328 -> :sswitch_c
        -0x6b246f8 -> :sswitch_b
        0x7bf7eb1 -> :sswitch_a
        0xd84d5be -> :sswitch_9
        0x116bf1b3 -> :sswitch_8
        0x1ad331c5 -> :sswitch_7
        0x1d1d5a6f -> :sswitch_6
        0x3526e323 -> :sswitch_5
        0x42a610fe -> :sswitch_4
        0x4adfa5d0 -> :sswitch_3
        0x735abccd -> :sswitch_2
        0x77e32349 -> :sswitch_1
        0x7e0f27ff -> :sswitch_0
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


# virtual methods
.method public addInfo(Landroid/zrhung/ZrHungData;)Z
    .locals 1
    .param p1, "args"    # Landroid/zrhung/ZrHungData;

    .line 231
    const/4 v0, 0x0

    return v0
.end method

.method public cancelCheck(Landroid/zrhung/ZrHungData;)Z
    .locals 1
    .param p1, "args"    # Landroid/zrhung/ZrHungData;

    .line 179
    const/4 v0, 0x0

    return v0
.end method

.method public check(Landroid/zrhung/ZrHungData;)Z
    .locals 1
    .param p1, "args"    # Landroid/zrhung/ZrHungData;

    .line 166
    const/4 v0, 0x0

    return v0
.end method

.method protected getConfig()Landroid/util/ZRHung$HungConfig;
    .locals 3

    .line 243
    iget-short v0, p0, Landroid/zrhung/ZrHungImpl;->mWpId:S

    invoke-static {v0}, Landroid/util/ZRHung;->getHungConfig(S)Landroid/util/ZRHung$HungConfig;

    move-result-object v0

    .line 244
    .local v0, "cfg":Landroid/util/ZRHung$HungConfig;
    if-eqz v0, :cond_1

    iget v1, v0, Landroid/util/ZRHung$HungConfig;->status:I

    if-eqz v1, :cond_0

    goto :goto_0

    .line 248
    :cond_0
    const-string v1, "ZrHungImpl"

    const-string v2, "ZRHung.getConfig success!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    return-object v0

    .line 245
    :cond_1
    :goto_0
    const-string v1, "ZrHungImpl"

    const-string v2, "ZRHung.getConfig failed!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    const/4 v1, 0x0

    return-object v1
.end method

.method public init(Landroid/zrhung/ZrHungData;)I
    .locals 1
    .param p1, "args"    # Landroid/zrhung/ZrHungData;

    .line 140
    const/4 v0, 0x0

    return v0
.end method

.method public query()Landroid/zrhung/ZrHungData;
    .locals 1

    .line 218
    const/4 v0, 0x0

    return-object v0
.end method

.method protected sendAppEyeEvent(SLandroid/zrhung/ZrHungData;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "wpId"    # S
    .param p2, "args"    # Landroid/zrhung/ZrHungData;
    .param p3, "cmdBuf"    # Ljava/lang/String;
    .param p4, "buffer"    # Ljava/lang/String;

    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 338
    .local v0, "sb":Ljava/lang/StringBuilder;
    if-eqz p2, :cond_4

    .line 339
    :try_start_0
    const-string v1, "uid"

    invoke-virtual {p2, v1}, Landroid/zrhung/ZrHungData;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 340
    .local v1, "uid":I
    const/16 v2, 0xa

    if-lez v1, :cond_0

    .line 341
    const-string v3, "uid = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 346
    :cond_0
    const-string v3, "pid"

    invoke-virtual {p2, v3}, Landroid/zrhung/ZrHungData;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 347
    .local v3, "pid":I
    if-lez v3, :cond_1

    .line 348
    const-string v4, "pid = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 353
    :cond_1
    const-string v4, "packageName"

    invoke-virtual {p2, v4}, Landroid/zrhung/ZrHungData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 354
    .local v4, "pkgName":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 355
    const-string v5, "packageName = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 360
    :cond_2
    const-string v5, "processName"

    invoke-virtual {p2, v5}, Landroid/zrhung/ZrHungData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 361
    .local v5, "procName":Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 362
    const-string v6, "processName = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 367
    :cond_3
    const-string v6, "recoverresult"

    invoke-virtual {p2, v6}, Landroid/zrhung/ZrHungData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 368
    .local v6, "recoverresult":Ljava/lang/String;
    if-eqz v6, :cond_4

    .line 369
    const-string v7, "result = "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .end local v1    # "uid":I
    .end local v3    # "pid":I
    .end local v4    # "pkgName":Ljava/lang/String;
    .end local v5    # "procName":Ljava/lang/String;
    .end local v6    # "recoverresult":Ljava/lang/String;
    goto :goto_0

    .line 384
    :catch_0
    move-exception v1

    goto :goto_1

    .line 375
    :cond_4
    :goto_0
    if-eqz p4, :cond_5

    .line 376
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p3, v1}, Landroid/util/ZRHung;->sendHungEvent(SLjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 380
    .local v1, "result":Z
    if-nez v1, :cond_6

    .line 381
    const-string v2, "ZrHungImpl"

    const-string v3, " sendAppFreezeEvent failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 383
    :cond_6
    const/4 v2, 0x1

    return v2

    .line 384
    .end local v1    # "result":Z
    :goto_1
    nop

    .line 385
    .local v1, "ex":Ljava/lang/Exception;
    const-string v2, "ZrHungImpl"

    const-string v3, "exception info ex"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    const/4 v2, 0x0

    return v2
.end method

.method public sendEvent(Landroid/zrhung/ZrHungData;)Z
    .locals 1
    .param p1, "args"    # Landroid/zrhung/ZrHungData;

    .line 205
    const/4 v0, 0x0

    return v0
.end method

.method public start(Landroid/zrhung/ZrHungData;)Z
    .locals 1
    .param p1, "args"    # Landroid/zrhung/ZrHungData;

    .line 153
    const/4 v0, 0x0

    return v0
.end method

.method public stop(Landroid/zrhung/ZrHungData;)Z
    .locals 1
    .param p1, "args"    # Landroid/zrhung/ZrHungData;

    .line 192
    const/4 v0, 0x0

    return v0
.end method
