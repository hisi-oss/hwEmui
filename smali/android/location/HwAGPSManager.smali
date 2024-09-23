.class public Landroid/location/HwAGPSManager;
.super Ljava/lang/Object;
.source "HwAGPSManager.java"


# static fields
.field public static final AGPS_ENABLE_VALUE:I = 0x1

.field public static final AGPS_MODE_DEFAULT_VALUE:I = 0x1

.field public static final AGPS_ROAMING_DEFAULT_VALUE:I = 0x0

.field public static final AGPS_ROAMING_ENABLED:I = 0x1

.field public static final AGPS_ROAMING_UNENABLED:I = 0x0

.field public static final AGPS_SERVICE_ADDRESS_DEFAULT_VALUE:Ljava/lang/String; = "supl.platform.hicloud.com"

.field public static final AGPS_SERVICE_PORT_DEFAULT_VALUE:Ljava/lang/String; = "7275"

.field public static final AGPS_SETTINGS_DEFAULT_VALUE:I = 0x1

.field public static final AGPS_UNENABLE_VALUE:I = 0x0

.field private static final DBG:Z

.field public static final GPSNI_REQUEST_DEFAULT_VALUE:I = 0x1

.field public static final GPSNI_REQUEST_ENABLED:I = 0x1

.field public static final GPSNI_REQUEST_UNENABLED:I = 0x0

.field public static final GPSTIME_SYNC_DEFAULT_VALUE:I = 0x0

.field public static final GPSTIME_SYNC_ENABLED:I = 0x1

.field public static final GPSTIME_SYNC_UNENABLED:I = 0x0

.field private static final GPS_COLD_START_AIDINGDATA:I = 0xd

.field public static final GPS_COLD_START_MODE:I = 0x2

.field private static final GPS_DELETE_ALL:I = 0xffff

.field private static final GPS_DELETE_ALMANAC:I = 0x2

.field private static final GPS_DELETE_CELLDB_INFO:I = 0x8000

.field private static final GPS_DELETE_EPHEMERIS:I = 0x1

.field private static final GPS_DELETE_HEALTH:I = 0x40

.field private static final GPS_DELETE_IONO:I = 0x10

.field private static final GPS_DELETE_POSITION:I = 0x4

.field private static final GPS_DELETE_RTI:I = 0x400

.field private static final GPS_DELETE_SADATA:I = 0x200

.field private static final GPS_DELETE_SVDIR:I = 0x80

.field private static final GPS_DELETE_SVSTEER:I = 0x100

.field private static final GPS_DELETE_TIME:I = 0x8

.field private static final GPS_DELETE_UTC:I = 0x20

.field public static final GPS_HOT_START_MODE:I = 0x0

.field public static final GPS_POSITION_MODE_MS_ASSISTED:I = 0x2

.field public static final GPS_POSITION_MODE_MS_BASED:I = 0x1

.field public static final GPS_POSITION_MODE_STANDALONE:I = 0x0

.field public static final GPS_START_MODE_DEFAULT_VALUE:I = 0x0

.field private static final GPS_WARM_START_AIDINGDATA:I = 0x1

.field public static final GPS_WARM_START_MODE:I = 0x1

.field protected static final HWFLOW:Z

.field private static final KEY_AGPSMODE_SETTINGS:Ljava/lang/String; = "assisted_gps_mode"

.field private static final KEY_AGPS_ROAMING_USED:Ljava/lang/String; = "assisted_gps_roaming_enabled"

.field private static final KEY_AGPS_SERVICE_ADDRESS:Ljava/lang/String; = "assisted_gps_service_IP"

.field private static final KEY_AGPS_SERVICE_PORT:Ljava/lang/String; = "assisted_gps_service_port"

.field private static final KEY_AGPS_SWITCH_SETTINGS:Ljava/lang/String; = "assisted_gps_enabled"

.field private static final KEY_GPS_START_MODE:Ljava/lang/String; = "gps_start_mode"

.field private static final KEY_GPS_TIME_SYNC:Ljava/lang/String; = "time_synchronization"

.field private static final KEY_NI_REQUEST:Ljava/lang/String; = "gps_ni_request"

.field private static final KEY_QUICK_GPS:Ljava/lang/String; = "quick_gps_switch"

.field public static final QUICKGPS_DEFAULT_VALUE:I = 0x1

.field public static final QUICKGPS_ENABLED:I = 0x1

.field public static final QUICKGPS_UNENABLED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "HwAGPSManager"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    const/4 v0, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    if-eqz v0, :cond_0

    const-string v0, "HwAGPSManager"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

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
    sput-boolean v0, Landroid/location/HwAGPSManager;->HWFLOW:Z

    .line 22
    sget-boolean v0, Landroid/location/HwAGPSManager;->HWFLOW:Z

    sput-boolean v0, Landroid/location/HwAGPSManager;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p1, p0, Landroid/location/HwAGPSManager;->mContext:Landroid/content/Context;

    .line 108
    return-void
.end method

.method private getDataBaseInt(Ljava/lang/String;I)I
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .line 292
    iget-object v0, p0, Landroid/location/HwAGPSManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 293
    .local v0, "dataValue":I
    sget-boolean v1, Landroid/location/HwAGPSManager;->DBG:Z

    if-eqz v1, :cond_0

    .line 294
    const-string v1, "HwAGPSManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", datavalue="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", defaultValue"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :cond_0
    return v0
.end method

.method private getDataBaseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .line 305
    iget-object v0, p0, Landroid/location/HwAGPSManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 306
    .local v0, "dataValue":Ljava/lang/String;
    sget-boolean v1, Landroid/location/HwAGPSManager;->DBG:Z

    if-eqz v1, :cond_0

    .line 307
    const-string v1, "HwAGPSManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", datavalue="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", defaultValue"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :cond_0
    if-eqz v0, :cond_1

    .line 309
    move-object p2, v0

    .line 311
    :cond_1
    return-object p2
.end method

.method private getSecureDataBaseInt(Ljava/lang/String;I)I
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .line 139
    iget-object v0, p0, Landroid/location/HwAGPSManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 140
    .local v0, "dataValue":I
    sget-boolean v1, Landroid/location/HwAGPSManager;->DBG:Z

    if-eqz v1, :cond_0

    .line 141
    const-string v1, "HwAGPSManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", datavalue="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", defaultValue"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_0
    return v0
.end method

.method private getSecureDataBaseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .line 178
    iget-object v0, p0, Landroid/location/HwAGPSManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, "dataValue":Ljava/lang/String;
    sget-boolean v1, Landroid/location/HwAGPSManager;->DBG:Z

    if-eqz v1, :cond_0

    .line 180
    const-string v1, "HwAGPSManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", datavalue="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", defaultValue"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_0
    if-eqz v0, :cond_1

    .line 182
    move-object p2, v0

    .line 184
    :cond_1
    return-object p2
.end method

.method private setDataBaseInt(Ljava/lang/String;I)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 286
    sget-boolean v0, Landroid/location/HwAGPSManager;->DBG:Z

    if-eqz v0, :cond_0

    .line 287
    const-string v0, "HwAGPSManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_0
    iget-object v0, p0, Landroid/location/HwAGPSManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 289
    return-void
.end method

.method private setDataBaseString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 301
    iget-object v0, p0, Landroid/location/HwAGPSManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 302
    return-void
.end method

.method private setSecureDataBaseInt(Ljava/lang/String;I)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 150
    sget-boolean v0, Landroid/location/HwAGPSManager;->DBG:Z

    if-eqz v0, :cond_0

    .line 151
    const-string v0, "HwAGPSManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_0
    iget-object v0, p0, Landroid/location/HwAGPSManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 153
    return-void
.end method

.method private setSecureDataBaseString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 192
    iget-object v0, p0, Landroid/location/HwAGPSManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 193
    return-void
.end method


# virtual methods
.method public bootCompleteInit()V
    .locals 0

    .line 318
    return-void
.end method

.method public getAGPSModeSettings()I
    .locals 2

    .line 135
    const-string v0, "assisted_gps_mode"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/location/HwAGPSManager;->getSecureDataBaseInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getAGPSRoamingEnable()I
    .locals 2

    .line 160
    const-string v0, "assisted_gps_roaming_enabled"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/location/HwAGPSManager;->getSecureDataBaseInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getAGPSServiceAddress()Ljava/lang/String;
    .locals 2

    .line 174
    const-string v0, "assisted_gps_service_IP"

    const-string v1, "supl.platform.hicloud.com"

    invoke-direct {p0, v0, v1}, Landroid/location/HwAGPSManager;->getSecureDataBaseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAGPSServicePort()Ljava/lang/String;
    .locals 2

    .line 196
    const-string v0, "assisted_gps_service_port"

    const-string v1, "7275"

    invoke-direct {p0, v0, v1}, Landroid/location/HwAGPSManager;->getSecureDataBaseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAGPSSwitchSettings()I
    .locals 3

    .line 115
    iget-object v0, p0, Landroid/location/HwAGPSManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "assisted_gps_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getAidingDataByStartMode()I
    .locals 4

    .line 265
    const/4 v0, 0x0

    .line 267
    .local v0, "flag":I
    invoke-virtual {p0}, Landroid/location/HwAGPSManager;->getGpsStartModeSettings()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 272
    :pswitch_0
    const/16 v0, 0xd

    .line 273
    goto :goto_0

    .line 269
    :pswitch_1
    const/4 v0, 0x1

    .line 270
    nop

    .line 280
    :goto_0
    sget-boolean v1, Landroid/location/HwAGPSManager;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "HwAGPSManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " aidingdata = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :cond_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getGpsStartModeSettings()I
    .locals 2

    .line 257
    const-string v0, "gps_start_mode"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/location/HwAGPSManager;->getSecureDataBaseInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getGpsTimeSyncSettings()I
    .locals 2

    .line 224
    const-string v0, "time_synchronization"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/location/HwAGPSManager;->getSecureDataBaseInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getNiRequestSettings()I
    .locals 2

    .line 240
    const-string v0, "gps_ni_request"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/location/HwAGPSManager;->getDataBaseInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getQuickGpsSettings()I
    .locals 2

    .line 208
    const-string v0, "quick_gps_switch"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/location/HwAGPSManager;->getDataBaseInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public isAgpsEnable()Z
    .locals 1

    .line 125
    invoke-virtual {p0}, Landroid/location/HwAGPSManager;->getAGPSSwitchSettings()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAgpsRoamingEnable()Z
    .locals 2

    .line 168
    invoke-virtual {p0}, Landroid/location/HwAGPSManager;->getAGPSRoamingEnable()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isGpsTimeSyncEnable()Z
    .locals 2

    .line 232
    invoke-virtual {p0}, Landroid/location/HwAGPSManager;->getGpsTimeSyncSettings()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isNiRequestEnable()Z
    .locals 2

    .line 248
    const-string v0, "gps_ni_request"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/location/HwAGPSManager;->getDataBaseInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isQuickGpsEnable()Z
    .locals 2

    .line 216
    const-string v0, "quick_gps_switch"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/location/HwAGPSManager;->getDataBaseInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public setAGPSModeSettings(I)V
    .locals 1
    .param p1, "AGPSModeSettings"    # I

    .line 146
    const-string v0, "assisted_gps_mode"

    invoke-direct {p0, v0, p1}, Landroid/location/HwAGPSManager;->setSecureDataBaseInt(Ljava/lang/String;I)V

    .line 147
    return-void
.end method

.method public setAGPSRoamingEnable(I)V
    .locals 1
    .param p1, "AGPSRoamingEnable"    # I

    .line 164
    const-string v0, "assisted_gps_roaming_enabled"

    invoke-direct {p0, v0, p1}, Landroid/location/HwAGPSManager;->setSecureDataBaseInt(Ljava/lang/String;I)V

    .line 165
    return-void
.end method

.method public setAGPSServiceAddress(Ljava/lang/String;)V
    .locals 1
    .param p1, "AGPSServiceAddress"    # Ljava/lang/String;

    .line 188
    const-string v0, "assisted_gps_service_IP"

    invoke-direct {p0, v0, p1}, Landroid/location/HwAGPSManager;->setSecureDataBaseString(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    return-void
.end method

.method public setAGPSServicePort(Ljava/lang/String;)V
    .locals 1
    .param p1, "AGPSServicePort"    # Ljava/lang/String;

    .line 200
    const-string v0, "assisted_gps_service_port"

    invoke-direct {p0, v0, p1}, Landroid/location/HwAGPSManager;->setSecureDataBaseString(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    return-void
.end method

.method public setAGPSSwitchSettings(I)V
    .locals 2
    .param p1, "AGPSSettings"    # I

    .line 120
    iget-object v0, p0, Landroid/location/HwAGPSManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "assisted_gps_enabled"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 122
    return-void
.end method

.method public setAgpsServer(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .line 326
    return-void
.end method

.method public setGpsStartModeSettings(I)V
    .locals 1
    .param p1, "GpsStartSettings"    # I

    .line 261
    const-string v0, "gps_start_mode"

    invoke-direct {p0, v0, p1}, Landroid/location/HwAGPSManager;->setSecureDataBaseInt(Ljava/lang/String;I)V

    .line 262
    return-void
.end method

.method public setGpsTimeSyncSettings(I)V
    .locals 1
    .param p1, "GpsTimeSyncSettings"    # I

    .line 228
    const-string v0, "time_synchronization"

    invoke-direct {p0, v0, p1}, Landroid/location/HwAGPSManager;->setSecureDataBaseInt(Ljava/lang/String;I)V

    .line 229
    return-void
.end method

.method public setNiRequestSettings(I)V
    .locals 1
    .param p1, "NiRequestSettings"    # I

    .line 244
    const-string v0, "gps_ni_request"

    invoke-direct {p0, v0, p1}, Landroid/location/HwAGPSManager;->setDataBaseInt(Ljava/lang/String;I)V

    .line 245
    return-void
.end method

.method public setQuickGpsSettings(I)V
    .locals 1
    .param p1, "QuickGpsSettings"    # I

    .line 212
    const-string v0, "quick_gps_switch"

    invoke-direct {p0, v0, p1}, Landroid/location/HwAGPSManager;->setDataBaseInt(Ljava/lang/String;I)V

    .line 213
    return-void
.end method
