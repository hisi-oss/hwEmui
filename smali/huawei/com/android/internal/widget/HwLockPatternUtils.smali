.class public Lhuawei/com/android/internal/widget/HwLockPatternUtils;
.super Lcom/android/internal/widget/LockPatternUtils;
.source "HwLockPatternUtils.java"


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.widget.ILockSettings"

.field private static final PERMISSION:Ljava/lang/String; = "com.huawei.locksettings.permission.ACCESS_HWKEYGUARD_SECURE_STORAGE"

.field private static final TAG:Ljava/lang/String; = "HwLockPatternUtils"

.field private static final transaction_checkvisitorpassword:I = 0x3ea

.field public static final transaction_setActiveVisitorPasswordState:I = 0x3eb

.field private static final transaction_setlockvisitorpassword:I = 0x3e9


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 83
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 84
    iput-object p1, p0, Lhuawei/com/android/internal/widget/HwLockPatternUtils;->mContext:Landroid/content/Context;

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lhuawei/com/android/internal/widget/HwLockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    .line 88
    return-void
.end method

.method private final checkPermission()V
    .locals 3

    .line 251
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwLockPatternUtils;->mContext:Landroid/content/Context;

    const-string v1, "com.huawei.locksettings.permission.ACCESS_HWKEYGUARD_SECURE_STORAGE"

    const-string v2, "HwLockSettings Write"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    return-void
.end method


# virtual methods
.method public clearExtendLockScreenPassword(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .line 269
    :try_start_0
    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwLockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/ILockSettings;->clearExtendLockScreenPassword(Ljava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    .local v0, "isSuccesss":Z
    nop

    .line 271
    nop

    .line 273
    return v0

    .line 270
    .end local v0    # "isSuccesss":Z
    :catch_0
    move-exception v0

    .line 271
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public clearLockEx(ZI)V
    .locals 3
    .param p1, "isHwFallback"    # Z
    .param p2, "userHandle"    # I

    .line 101
    invoke-direct {p0}, Lhuawei/com/android/internal/widget/HwLockPatternUtils;->checkPermission()V

    .line 102
    if-nez p1, :cond_0

    .line 103
    const-string v0, "lockscreen.password_type"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2, p2}, Lhuawei/com/android/internal/widget/HwLockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 104
    const-string v0, "lockscreen.password_type_alternate"

    invoke-virtual {p0, v0, v1, v2, p2}, Lhuawei/com/android/internal/widget/HwLockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 106
    :cond_0
    return-void
.end method

.method public clearLockEx(ZZ)V
    .locals 1
    .param p1, "isFallback"    # Z
    .param p2, "isHwFallback"    # Z

    .line 92
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, p2, v0}, Lhuawei/com/android/internal/widget/HwLockPatternUtils;->clearLockEx(ZI)V

    .line 93
    return-void
.end method

.method public resetLockoutDeadline()J
    .locals 2

    .line 235
    invoke-direct {p0}, Lhuawei/com/android/internal/widget/HwLockPatternUtils;->checkPermission()V

    .line 236
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Lhuawei/com/android/internal/widget/HwLockPatternUtils;->resetLockoutDeadline(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public resetLockoutDeadline(I)J
    .locals 3
    .param p1, "userHandle"    # I

    .line 240
    invoke-direct {p0}, Lhuawei/com/android/internal/widget/HwLockPatternUtils;->checkPermission()V

    .line 242
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwLockPatternUtils;->mLockoutDeadlines:Landroid/util/SparseLongArray;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 244
    return-wide v1
.end method

.method public saveLockPassword(Ljava/lang/String;Ljava/lang/String;IZI)V
    .locals 22
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "savedPassword"    # Ljava/lang/String;
    .param p3, "quality"    # I
    .param p4, "isHwFallback"    # Z
    .param p5, "userHandle"    # I

    move-object/from16 v1, p0

    move-object/from16 v8, p1

    move/from16 v9, p3

    .line 121
    move/from16 v10, p5

    invoke-direct/range {p0 .. p0}, Lhuawei/com/android/internal/widget/HwLockPatternUtils;->checkPermission()V

    .line 124
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lhuawei/com/android/internal/widget/HwLockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    .line 125
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v8, :cond_11

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-lt v2, v3, :cond_11

    .line 129
    invoke-virtual/range {p0 .. p0}, Lhuawei/com/android/internal/widget/HwLockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    const/4 v4, 0x2

    move-object v3, v8

    move-object/from16 v5, p2

    move v6, v9

    move v7, v10

    invoke-interface/range {v2 .. v7}, Lcom/android/internal/widget/ILockSettings;->setLockCredential(Ljava/lang/String;ILjava/lang/String;II)V

    .line 130
    invoke-static/range {p1 .. p1}, Landroid/app/admin/PasswordMetrics;->computeForPassword(Ljava/lang/String;)Landroid/app/admin/PasswordMetrics;

    move-result-object v2

    .line 131
    .local v2, "metrics":Landroid/app/admin/PasswordMetrics;
    iget v3, v2, Landroid/app/admin/PasswordMetrics;->quality:I

    .line 134
    .local v3, "computedQuality":I
    const/4 v5, 0x1

    if-nez v10, :cond_5

    .line 135
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncryptionEnabled()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 136
    invoke-virtual {v1, v5}, Lhuawei/com/android/internal/widget/HwLockPatternUtils;->shouldEncryptWithCredentials(Z)Z

    move-result v6

    if-nez v6, :cond_0

    .line 137
    invoke-virtual/range {p0 .. p0}, Lhuawei/com/android/internal/widget/HwLockPatternUtils;->clearEncryptionPassword()V

    goto :goto_4

    .line 139
    :cond_0
    const/high16 v6, 0x20000

    if-ne v3, v6, :cond_1

    move v6, v5

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    .line 141
    .local v6, "numeric":Z
    :goto_0
    const/high16 v7, 0x30000

    if-ne v3, v7, :cond_2

    move v7, v5

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    .line 143
    .local v7, "numericComplex":Z
    :goto_1
    if-nez v6, :cond_4

    if-eqz v7, :cond_3

    goto :goto_2

    .line 144
    :cond_3
    const/4 v11, 0x0

    goto :goto_3

    .line 143
    :cond_4
    :goto_2
    const/4 v11, 0x2

    .line 144
    :goto_3
    nop

    .line 145
    .local v11, "type":I
    invoke-virtual {v1, v11, v8}, Lhuawei/com/android/internal/widget/HwLockPatternUtils;->updateEncryptionPassword(ILjava/lang/String;)V

    .line 148
    .end local v6    # "numeric":Z
    .end local v7    # "numericComplex":Z
    .end local v11    # "type":I
    :cond_5
    :goto_4
    if-nez p4, :cond_d

    .line 150
    if-le v9, v3, :cond_6

    move v7, v9

    goto :goto_5

    :cond_6
    move v7, v3

    .line 151
    .local v7, "qual":I
    :goto_5
    const-string v11, "lockscreen.password_type"

    int-to-long v12, v7

    invoke-virtual {v1, v11, v12, v13, v10}, Lhuawei/com/android/internal/widget/HwLockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 153
    if-eqz v3, :cond_c

    .line 154
    const/4 v11, 0x0

    .line 155
    .local v11, "letters":I
    const/4 v12, 0x0

    .line 156
    .local v12, "uppercase":I
    const/4 v13, 0x0

    .line 157
    .local v13, "lowercase":I
    const/4 v14, 0x0

    .line 158
    .local v14, "numbers":I
    const/4 v15, 0x0

    .line 159
    .local v15, "symbols":I
    const/16 v16, 0x0

    .line 161
    .local v16, "nonletter":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v18, v17

    .line 162
    .local v18, "leng":I
    move v4, v14

    move/from16 v5, v16

    move v14, v13

    move v13, v12

    move v12, v11

    const/4 v11, 0x0

    .end local v16    # "nonletter":I
    .local v4, "numbers":I
    .local v5, "nonletter":I
    .local v11, "i":I
    .local v12, "letters":I
    .local v13, "uppercase":I
    .local v14, "lowercase":I
    :goto_6
    move/from16 v6, v18

    if-ge v11, v6, :cond_a

    .line 164
    .end local v18    # "leng":I
    .local v6, "leng":I
    invoke-virtual {v8, v11}, Ljava/lang/String;->charAt(I)C

    move-result v16

    move/from16 v19, v16

    .line 165
    .local v19, "c":C
    move/from16 v20, v6

    const/16 v6, 0x41

    .end local v6    # "leng":I
    .local v20, "leng":I
    move/from16 v21, v7

    move/from16 v7, v19

    if-lt v7, v6, :cond_7

    .end local v19    # "c":C
    .local v7, "c":C
    .local v21, "qual":I
    const/16 v6, 0x5a

    if-gt v7, v6, :cond_7

    .line 166
    add-int/lit8 v12, v12, 0x1

    .line 167
    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    .line 168
    :cond_7
    const/16 v6, 0x61

    if-lt v7, v6, :cond_8

    const/16 v6, 0x7a

    if-gt v7, v6, :cond_8

    .line 169
    add-int/lit8 v12, v12, 0x1

    .line 170
    add-int/lit8 v14, v14, 0x1

    goto :goto_7

    .line 171
    :cond_8
    const/16 v6, 0x30

    if-lt v7, v6, :cond_9

    const/16 v6, 0x39

    if-gt v7, v6, :cond_9

    .line 172
    add-int/lit8 v4, v4, 0x1

    .line 173
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 175
    :cond_9
    add-int/lit8 v15, v15, 0x1

    .line 176
    add-int/lit8 v5, v5, 0x1

    .line 162
    .end local v7    # "c":C
    :goto_7
    add-int/lit8 v11, v11, 0x1

    move/from16 v18, v20

    move/from16 v7, v21

    goto :goto_6

    .line 180
    .end local v11    # "i":I
    .end local v20    # "leng":I
    .end local v21    # "qual":I
    .restart local v6    # "leng":I
    .local v7, "qual":I
    :cond_a
    move/from16 v20, v6

    move/from16 v21, v7

    .end local v6    # "leng":I
    .end local v7    # "qual":I
    .restart local v20    # "leng":I
    .restart local v21    # "qual":I
    if-le v9, v3, :cond_b

    move v6, v9

    goto :goto_8

    :cond_b
    move v6, v3

    :goto_8
    iput v6, v2, Landroid/app/admin/PasswordMetrics;->quality:I

    .line 182
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v6

    iput v6, v2, Landroid/app/admin/PasswordMetrics;->length:I

    .line 183
    iput v12, v2, Landroid/app/admin/PasswordMetrics;->letters:I

    .line 184
    iput v13, v2, Landroid/app/admin/PasswordMetrics;->upperCase:I

    .line 185
    iput v14, v2, Landroid/app/admin/PasswordMetrics;->lowerCase:I

    .line 186
    iput v4, v2, Landroid/app/admin/PasswordMetrics;->numeric:I

    .line 187
    iput v15, v2, Landroid/app/admin/PasswordMetrics;->symbols:I

    .line 188
    iput v5, v2, Landroid/app/admin/PasswordMetrics;->nonLetter:I

    .line 189
    invoke-virtual {v0, v2, v10}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(Landroid/app/admin/PasswordMetrics;I)V

    .line 190
    .end local v4    # "numbers":I
    .end local v5    # "nonletter":I
    .end local v12    # "letters":I
    .end local v13    # "uppercase":I
    .end local v14    # "lowercase":I
    .end local v15    # "symbols":I
    .end local v20    # "leng":I
    goto :goto_9

    .line 192
    .end local v21    # "qual":I
    .restart local v7    # "qual":I
    :cond_c
    move/from16 v21, v7

    .end local v7    # "qual":I
    .restart local v21    # "qual":I
    new-instance v4, Landroid/app/admin/PasswordMetrics;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v5}, Landroid/app/admin/PasswordMetrics;-><init>(II)V

    invoke-virtual {v0, v4, v10}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(Landroid/app/admin/PasswordMetrics;I)V

    .line 195
    .end local v21    # "qual":I
    :goto_9
    goto :goto_a

    .line 197
    :cond_d
    const-string v4, "lockscreen.password_type"

    const-wide/32 v5, 0x10000

    invoke-virtual {v1, v4, v5, v6, v10}, Lhuawei/com/android/internal/widget/HwLockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 199
    new-instance v4, Landroid/app/admin/PasswordMetrics;

    const/high16 v5, 0x10000

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Landroid/app/admin/PasswordMetrics;-><init>(II)V

    invoke-virtual {v0, v4, v10}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(Landroid/app/admin/PasswordMetrics;I)V

    .line 205
    :goto_a
    const-string v4, "lockscreen.passwordhistory"

    invoke-virtual {v1, v4, v10}, Lhuawei/com/android/internal/widget/HwLockPatternUtils;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 206
    .local v4, "passwordHistory":Ljava/lang/String;
    if-nez v4, :cond_e

    .line 207
    const-string v5, ""

    move-object v4, v5

    .line 209
    :cond_e
    invoke-virtual {v1, v10}, Lhuawei/com/android/internal/widget/HwLockPatternUtils;->getRequestedPasswordHistoryLength(I)I

    move-result v5

    .line 210
    .local v5, "passwordHistoryLength":I
    if-nez v5, :cond_f

    .line 211
    const-string v6, ""

    move-object v4, v6

    goto :goto_c

    .line 213
    :cond_f
    invoke-virtual {v1, v8, v10}, Lhuawei/com/android/internal/widget/HwLockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v6

    .line 214
    .local v6, "hash":[B
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v11, Ljava/lang/String;

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v11, v6, v12}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ","

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v4, v7

    .line 218
    array-length v7, v6

    mul-int/2addr v7, v5

    add-int/2addr v7, v5

    const/4 v11, 0x1

    sub-int/2addr v7, v11

    .line 219
    .local v7, "currentLength":I
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v7, v11, :cond_10

    move v11, v7

    goto :goto_b

    :cond_10
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v11

    .line 220
    .local v11, "finalLength":I
    :goto_b
    const/4 v12, 0x0

    invoke-virtual {v4, v12, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    move-object v4, v12

    .line 223
    .end local v6    # "hash":[B
    .end local v7    # "currentLength":I
    .end local v11    # "finalLength":I
    :goto_c
    const-string v6, "lockscreen.passwordhistory"

    invoke-virtual {v1, v6, v4, v10}, Lhuawei/com/android/internal/widget/HwLockPatternUtils;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 224
    invoke-virtual {v1, v10}, Lhuawei/com/android/internal/widget/HwLockPatternUtils;->onAfterChangingPassword(I)V

    .line 228
    .end local v0    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v2    # "metrics":Landroid/app/admin/PasswordMetrics;
    .end local v3    # "computedQuality":I
    .end local v4    # "passwordHistory":Ljava/lang/String;
    .end local v5    # "passwordHistoryLength":I
    goto :goto_d

    .line 126
    .restart local v0    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :cond_11
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "password must not be null and at least of length 4"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    .end local v0    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :catch_0
    move-exception v0

    .line 227
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "HwLockPatternUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to save lock password "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_d
    return-void
.end method

.method public setExtendLockScreenPassword(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 2
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "phoneNumber"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .line 259
    :try_start_0
    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwLockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->setExtendLockScreenPassword(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    .local v0, "isSuccesss":Z
    nop

    .line 261
    nop

    .line 263
    return v0

    .line 260
    .end local v0    # "isSuccesss":Z
    :catch_0
    move-exception v0

    .line 261
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method
