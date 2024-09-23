.class public Landroid/hishow/AlarmInfo;
.super Ljava/lang/Object;
.source "AlarmInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hishow/AlarmInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_ALARM_ID:I = -0x1

.field public static final EVERYDAY_CODE:I = 0x7f

.field public static final EVERYDAY_RING:I = 0x2

.field public static final JUSTONCE_RING:I = 0x0

.field public static final MONTOFRIDAY_CODE:I = 0x1f

.field public static final MONTOFRIDAY_RING:I = 0x1

.field public static final NODAY_CODE:I = 0x0

.field public static final USER_DEFINED_RING:I = 0x3

.field public static final WORKINGDAT_RING:I = 0x4


# instance fields
.field private alarmType:I

.field private alert:Ljava/lang/String;

.field private daysOfWeek:I

.field private daysOfWeekShow:Ljava/lang/String;

.field private daysOfWeekType:I

.field private enabled:Z

.field private hour:I

.field private id:I

.field private label:Ljava/lang/String;

.field private minutes:I

.field private time:J

.field private vibrate:Z

.field private volume:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    new-instance v0, Landroid/hishow/AlarmInfo$1;

    invoke-direct {v0}, Landroid/hishow/AlarmInfo$1;-><init>()V

    sput-object v0, Landroid/hishow/AlarmInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Landroid/hishow/AlarmInfo;->id:I

    .line 70
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 71
    .local v0, "c":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 72
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Landroid/hishow/AlarmInfo;->hour:I

    .line 73
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Landroid/hishow/AlarmInfo;->minutes:I

    .line 74
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/hishow/AlarmInfo;->vibrate:Z

    .line 75
    const/4 v1, 0x0

    iput v1, p0, Landroid/hishow/AlarmInfo;->daysOfWeek:I

    .line 77
    iput v1, p0, Landroid/hishow/AlarmInfo;->daysOfWeekType:I

    .line 79
    const/4 v1, 0x4

    invoke-static {v1}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v1

    .line 80
    .local v1, "alertUri":Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 81
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/hishow/AlarmInfo;->alert:Ljava/lang/String;

    goto :goto_0

    .line 83
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/hishow/AlarmInfo;->alert:Ljava/lang/String;

    .line 85
    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "source"    # Landroid/os/Parcel;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hishow/AlarmInfo;->id:I

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/hishow/AlarmInfo;->enabled:Z

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hishow/AlarmInfo;->hour:I

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hishow/AlarmInfo;->minutes:I

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hishow/AlarmInfo;->daysOfWeek:I

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hishow/AlarmInfo;->daysOfWeekType:I

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hishow/AlarmInfo;->daysOfWeekShow:Ljava/lang/String;

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hishow/AlarmInfo;->alarmType:I

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/hishow/AlarmInfo;->time:J

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_1

    move v1, v2

    nop

    :cond_1
    iput-boolean v1, p0, Landroid/hishow/AlarmInfo;->vibrate:Z

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hishow/AlarmInfo;->volume:I

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hishow/AlarmInfo;->label:Ljava/lang/String;

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hishow/AlarmInfo;->alert:Ljava/lang/String;

    .line 103
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public getAlarmType()I
    .locals 1

    .line 223
    iget v0, p0, Landroid/hishow/AlarmInfo;->alarmType:I

    return v0
.end method

.method public getAlert()Ljava/lang/String;
    .locals 1

    .line 215
    iget-object v0, p0, Landroid/hishow/AlarmInfo;->alert:Ljava/lang/String;

    return-object v0
.end method

.method public getDaysOfWeek()I
    .locals 1

    .line 159
    iget v0, p0, Landroid/hishow/AlarmInfo;->daysOfWeek:I

    return v0
.end method

.method public getDaysOfWeekShow()Ljava/lang/String;
    .locals 1

    .line 183
    iget-object v0, p0, Landroid/hishow/AlarmInfo;->daysOfWeekShow:Ljava/lang/String;

    return-object v0
.end method

.method public getDaysOfWeekType()I
    .locals 1

    .line 167
    iget v0, p0, Landroid/hishow/AlarmInfo;->daysOfWeekType:I

    return v0
.end method

.method public getHour()I
    .locals 1

    .line 143
    iget v0, p0, Landroid/hishow/AlarmInfo;->hour:I

    return v0
.end method

.method public getId()I
    .locals 1

    .line 127
    iget v0, p0, Landroid/hishow/AlarmInfo;->id:I

    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 199
    iget-object v0, p0, Landroid/hishow/AlarmInfo;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getMinutes()I
    .locals 1

    .line 151
    iget v0, p0, Landroid/hishow/AlarmInfo;->minutes:I

    return v0
.end method

.method public getTime()J
    .locals 2

    .line 175
    iget-wide v0, p0, Landroid/hishow/AlarmInfo;->time:J

    return-wide v0
.end method

.method public getVolume()I
    .locals 1

    .line 207
    iget v0, p0, Landroid/hishow/AlarmInfo;->volume:I

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 135
    iget-boolean v0, p0, Landroid/hishow/AlarmInfo;->enabled:Z

    return v0
.end method

.method public isVibrate()Z
    .locals 1

    .line 191
    iget-boolean v0, p0, Landroid/hishow/AlarmInfo;->vibrate:Z

    return v0
.end method

.method public setAlarmType(I)V
    .locals 0
    .param p1, "alarmtype"    # I

    .line 227
    iput p1, p0, Landroid/hishow/AlarmInfo;->alarmType:I

    .line 228
    return-void
.end method

.method public setAlert(Ljava/lang/String;)V
    .locals 0
    .param p1, "alert"    # Ljava/lang/String;

    .line 219
    iput-object p1, p0, Landroid/hishow/AlarmInfo;->alert:Ljava/lang/String;

    .line 220
    return-void
.end method

.method public setDaysOfWeek(I)V
    .locals 0
    .param p1, "daysOfWeek"    # I

    .line 163
    iput p1, p0, Landroid/hishow/AlarmInfo;->daysOfWeek:I

    .line 164
    return-void
.end method

.method public setDaysOfWeekShow(Ljava/lang/String;)V
    .locals 0
    .param p1, "daysOfWeekShow"    # Ljava/lang/String;

    .line 187
    iput-object p1, p0, Landroid/hishow/AlarmInfo;->daysOfWeekShow:Ljava/lang/String;

    .line 188
    return-void
.end method

.method public setDaysOfWeekType(I)V
    .locals 0
    .param p1, "daysOfWeekType"    # I

    .line 171
    iput p1, p0, Landroid/hishow/AlarmInfo;->daysOfWeekType:I

    .line 172
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 139
    iput-boolean p1, p0, Landroid/hishow/AlarmInfo;->enabled:Z

    .line 140
    return-void
.end method

.method public setHour(I)V
    .locals 0
    .param p1, "hour"    # I

    .line 147
    iput p1, p0, Landroid/hishow/AlarmInfo;->hour:I

    .line 148
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .line 131
    iput p1, p0, Landroid/hishow/AlarmInfo;->id:I

    .line 132
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;

    .line 203
    iput-object p1, p0, Landroid/hishow/AlarmInfo;->label:Ljava/lang/String;

    .line 204
    return-void
.end method

.method public setMinutes(I)V
    .locals 0
    .param p1, "minutes"    # I

    .line 155
    iput p1, p0, Landroid/hishow/AlarmInfo;->minutes:I

    .line 156
    return-void
.end method

.method public setTime(J)V
    .locals 0
    .param p1, "time"    # J

    .line 179
    iput-wide p1, p0, Landroid/hishow/AlarmInfo;->time:J

    .line 180
    return-void
.end method

.method public setVibrate(Z)V
    .locals 0
    .param p1, "vibrate"    # Z

    .line 195
    iput-boolean p1, p0, Landroid/hishow/AlarmInfo;->vibrate:Z

    .line 196
    return-void
.end method

.method public setVolume(I)V
    .locals 0
    .param p1, "volume"    # I

    .line 211
    iput p1, p0, Landroid/hishow/AlarmInfo;->volume:I

    .line 212
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 110
    iget v0, p0, Landroid/hishow/AlarmInfo;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    iget-boolean v0, p0, Landroid/hishow/AlarmInfo;->enabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    iget v0, p0, Landroid/hishow/AlarmInfo;->hour:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    iget v0, p0, Landroid/hishow/AlarmInfo;->minutes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    iget v0, p0, Landroid/hishow/AlarmInfo;->daysOfWeek:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    iget v0, p0, Landroid/hishow/AlarmInfo;->daysOfWeekType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    iget-object v0, p0, Landroid/hishow/AlarmInfo;->daysOfWeekShow:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 118
    iget v0, p0, Landroid/hishow/AlarmInfo;->alarmType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    iget-wide v0, p0, Landroid/hishow/AlarmInfo;->time:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 120
    iget-boolean v0, p0, Landroid/hishow/AlarmInfo;->vibrate:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    iget v0, p0, Landroid/hishow/AlarmInfo;->volume:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    iget-object v0, p0, Landroid/hishow/AlarmInfo;->label:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Landroid/hishow/AlarmInfo;->alert:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 124
    return-void
.end method
