.class public Lcom/android/internal/telephony/HwCallerInfo;
.super Ljava/lang/Object;
.source "HwCallerInfo.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CallerInfo"

.field private static final VDBG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    const-string v0, "CallerInfo"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/HwCallerInfo;->VDBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCallerInfo(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfo;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contactRef"    # Landroid/net/Uri;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "compNum"    # Ljava/lang/String;

    .line 43
    const-string v0, "ro.config.hwft_MatchNum"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x7

    if-ge v0, v2, :cond_1

    const-string v0, "gsm.hw.matchnum"

    .line 44
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    .line 45
    invoke-static {p3}, Lcom/android/internal/telephony/HwCallerInfo;->isCaaSVoipNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 49
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    return-object v0

    .line 52
    :cond_1
    :goto_0
    const/4 v0, -0x1

    .line 53
    .local v0, "fixedIndex":I
    new-instance v2, Lcom/android/internal/telephony/CallerInfo;

    invoke-direct {v2}, Lcom/android/internal/telephony/CallerInfo;-><init>()V

    .line 55
    .local v2, "info":Lcom/android/internal/telephony/CallerInfo;
    iput v1, v2, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    .line 56
    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/internal/telephony/CallerInfo;->phoneLabel:Ljava/lang/String;

    .line 57
    iput v1, v2, Lcom/android/internal/telephony/CallerInfo;->numberType:I

    .line 58
    iput-object v3, v2, Lcom/android/internal/telephony/CallerInfo;->numberLabel:Ljava/lang/String;

    .line 59
    iput-object v3, v2, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    .line 60
    iput-boolean v1, v2, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    .line 61
    iput-boolean v1, v2, Lcom/android/internal/telephony/CallerInfo;->needUpdate:Z

    .line 62
    iput-object p1, v2, Lcom/android/internal/telephony/CallerInfo;->contactRefUri:Landroid/net/Uri;

    .line 64
    const-string v4, "CallerInfo"

    const-string v5, "construct callerInfo from cursor"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    if-nez p2, :cond_2

    .line 67
    return-object v2

    .line 74
    :cond_2
    :try_start_0
    const-string v4, "huawei.android.telephony.CallerInfoHW"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 79
    .local v4, "mCallerInfoHW":Ljava/lang/Class;
    nop

    .line 78
    nop

    .line 82
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lhuawei/android/telephony/TelephonyInterfacesHW;
    :try_end_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    .line 89
    .local v5, "mTelephonyInterfacesHW":Lhuawei/android/telephony/TelephonyInterfacesHW;
    nop

    .line 88
    nop

    .line 91
    invoke-interface {v5, p2, p3}, Lhuawei/android/telephony/TelephonyInterfacesHW;->getCallerIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 94
    const/4 v6, -0x1

    if-ne v6, v0, :cond_3

    .line 96
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 97
    return-object v2

    .line 100
    :cond_3
    invoke-interface {p2, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 105
    const-string v7, "display_name"

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 106
    .local v7, "columnIndex":I
    if-eq v7, v6, :cond_4

    .line 107
    invoke-interface {p2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 109
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "info.name: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v2, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/HwCallerInfo;->logd(Ljava/lang/String;)V

    .line 114
    :cond_4
    const-string v8, "number"

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 115
    if-eq v7, v6, :cond_5

    .line 116
    invoke-interface {p2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 118
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "info.phoneNumber: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v2, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/HwCallerInfo;->logd(Ljava/lang/String;)V

    .line 124
    :cond_5
    const-string v8, "normalized_number"

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 125
    if-eq v7, v6, :cond_6

    .line 126
    invoke-interface {p2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/android/internal/telephony/CallerInfo;->normalizedNumber:Ljava/lang/String;

    .line 131
    :cond_6
    const-string v8, "label"

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 132
    if-eq v7, v6, :cond_7

    .line 133
    const-string v8, "type"

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 134
    .local v8, "typeColumnIndex":I
    if-eq v8, v6, :cond_7

    .line 135
    invoke-interface {p2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    iput v9, v2, Lcom/android/internal/telephony/CallerInfo;->numberType:I

    .line 136
    invoke-interface {p2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v2, Lcom/android/internal/telephony/CallerInfo;->numberLabel:Ljava/lang/String;

    .line 137
    iget v9, v2, Lcom/android/internal/telephony/CallerInfo;->numberType:I

    iget-object v10, v2, Lcom/android/internal/telephony/CallerInfo;->numberLabel:Ljava/lang/String;

    invoke-static {p0, v9, v10}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getDisplayLabel(Landroid/content/Context;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 139
    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v2, Lcom/android/internal/telephony/CallerInfo;->phoneLabel:Ljava/lang/String;

    .line 152
    .end local v8    # "typeColumnIndex":I
    :cond_7
    const/4 v7, -0x1

    .line 153
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    .line 154
    .local v8, "url":Ljava/lang/String;
    const-string v9, "content://com.android.contacts/data/phones"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 155
    sget-boolean v9, Lcom/android/internal/telephony/HwCallerInfo;->VDBG:Z

    if-eqz v9, :cond_8

    const-string v9, "CallerInfo"

    const-string v10, "URL path starts with \'data/phones\' using RawContacts.CONTACT_ID"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_8
    const-string v9, "contact_id"

    invoke-interface {p2, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    goto :goto_1

    .line 158
    :cond_9
    const-string v9, "content://com.android.contacts/phone_lookup"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 159
    sget-boolean v9, Lcom/android/internal/telephony/HwCallerInfo;->VDBG:Z

    if-eqz v9, :cond_a

    const-string v9, "CallerInfo"

    const-string v10, "URL path starts with \'phone_lookup\' using PhoneLookup._ID"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_a
    const-string v9, "_id"

    invoke-interface {p2, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    goto :goto_1

    .line 164
    :cond_b
    const-string v9, "CallerInfo"

    const-string v10, "Bad contact URL \'XXXXXX\'"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :goto_1
    if-eq v7, v6, :cond_c

    .line 169
    invoke-interface {p2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    iput-wide v9, v2, Lcom/android/internal/telephony/CallerInfo;->contactIdOrZero:J

    goto :goto_2

    .line 171
    :cond_c
    const-string v9, "CallerInfo"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "person_id column missing for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :goto_2
    const-string v9, "custom_ringtone"

    invoke-interface {p2, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 177
    if-eq v7, v6, :cond_d

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_d

    .line 178
    invoke-interface {p2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    goto :goto_3

    .line 180
    :cond_d
    iput-object v3, v2, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    .line 185
    :goto_3
    const-string v3, "send_to_voicemail"

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 186
    .end local v7    # "columnIndex":I
    .local v3, "columnIndex":I
    const/4 v7, 0x1

    if-eq v3, v6, :cond_e

    .line 187
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    if-ne v9, v7, :cond_e

    move v9, v7

    goto :goto_4

    :cond_e
    move v9, v1

    :goto_4
    iput-boolean v9, v2, Lcom/android/internal/telephony/CallerInfo;->shouldSendToVoicemail:Z

    .line 188
    iput-boolean v7, v2, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    .line 191
    const-string v7, "data7"

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 192
    if-eq v3, v6, :cond_f

    .line 193
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v2, Lcom/android/internal/telephony/CallerInfo;->mVoipDeviceType:I

    .line 196
    .end local v3    # "columnIndex":I
    .end local v8    # "url":Ljava/lang/String;
    :cond_f
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 198
    iput-boolean v1, v2, Lcom/android/internal/telephony/CallerInfo;->needUpdate:Z

    .line 199
    iget-object v1, v2, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/telephony/HwCallerInfo;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 200
    iput-object p1, v2, Lcom/android/internal/telephony/CallerInfo;->contactRefUri:Landroid/net/Uri;

    .line 202
    return-object v2

    .line 86
    .end local v5    # "mTelephonyInterfacesHW":Lhuawei/android/telephony/TelephonyInterfacesHW;
    :catch_0
    move-exception v1

    .line 87
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string v3, "CallerInfo"

    const-string v5, "getCallerInfo IllegalAccessException"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v3

    return-object v3

    .line 83
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v1

    .line 84
    .local v1, "e":Ljava/lang/InstantiationException;
    const-string v3, "CallerInfo"

    const-string v5, "getCallerInfo InstantiationException"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v3

    return-object v3

    .line 76
    .end local v1    # "e":Ljava/lang/InstantiationException;
    .end local v4    # "mCallerInfoHW":Ljava/lang/Class;
    :catch_2
    move-exception v1

    .line 77
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    const-string v3, "CallerInfo"

    const-string v4, "getCallerInfo ClassNotFoundException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v3

    return-object v3
.end method

.method private static isCaaSVoipNumber(Ljava/lang/String;)Z
    .locals 6
    .param p0, "number"    # Ljava/lang/String;

    .line 223
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 224
    return v1

    .line 226
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 228
    .local v0, "voipNumberLength":[I
    const-string v2, "+887"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    const-string v2, "887"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v2, v3

    .line 229
    .local v2, "isRightHead":Z
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 230
    .local v4, "length":I
    aget v5, v0, v1

    if-eq v5, v4, :cond_4

    aget v5, v0, v3

    if-ne v5, v4, :cond_3

    goto :goto_2

    :cond_3
    move v5, v1

    goto :goto_3

    :cond_4
    :goto_2
    move v5, v3

    .line 231
    .local v5, "isRightLength":Z
    :goto_3
    if-eqz v2, :cond_5

    if-eqz v5, :cond_5

    move v1, v3

    nop

    :cond_5
    return v1

    :array_0
    .array-data 4
        0xe
        0xf
    .end array-data
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .line 216
    const-string v0, "CallerInfo"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    const-string v0, "CallerInfo"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_0
    return-void
.end method

.method private static normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 206
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    .line 209
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 207
    :cond_1
    :goto_0
    return-object p0
.end method
