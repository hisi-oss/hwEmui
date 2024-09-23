.class public final Landroid/content/res/ConfigurationEx;
.super Ljava/lang/Object;
.source "ConfigurationEx.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Landroid/content/res/IHwConfiguration;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Ljava/lang/Object;",
        ">;",
        "Landroid/content/res/IHwConfiguration;"
    }
.end annotation


# instance fields
.field public hwtheme:I

.field public isClearCache:I

.field public simpleuiMode:I

.field public userId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-virtual {p0}, Landroid/content/res/ConfigurationEx;->setToDefaults()V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/res/ConfigurationEx;)V
    .locals 0
    .param p1, "o"    # Landroid/content/res/ConfigurationEx;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-virtual {p0, p1}, Landroid/content/res/ConfigurationEx;->setTo(Landroid/content/res/IHwConfiguration;)V

    .line 60
    return-void
.end method

.method public static needNewResources(I)Z
    .locals 1
    .param p0, "configChanges"    # I

    .line 147
    const v0, 0x8000

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public compareTo(Landroid/content/res/IHwConfiguration;)I
    .locals 4
    .param p1, "obj"    # Landroid/content/res/IHwConfiguration;

    .line 174
    move-object v0, p1

    check-cast v0, Landroid/content/res/ConfigurationEx;

    .line 175
    .local v0, "that":Landroid/content/res/ConfigurationEx;
    iget v1, p0, Landroid/content/res/ConfigurationEx;->hwtheme:I

    iget v2, v0, Landroid/content/res/ConfigurationEx;->hwtheme:I

    sub-int/2addr v1, v2

    .line 177
    .local v1, "n":I
    if-eqz v1, :cond_0

    return v1

    .line 178
    :cond_0
    iget v2, p0, Landroid/content/res/ConfigurationEx;->simpleuiMode:I

    iget v3, v0, Landroid/content/res/ConfigurationEx;->simpleuiMode:I

    sub-int/2addr v2, v3

    .line 179
    .end local v1    # "n":I
    .local v2, "n":I
    if-eqz v2, :cond_1

    return v2

    .line 181
    :cond_1
    iget v1, p0, Landroid/content/res/ConfigurationEx;->userId:I

    iget v3, v0, Landroid/content/res/ConfigurationEx;->userId:I

    sub-int/2addr v1, v3

    .line 182
    .end local v2    # "n":I
    .restart local v1    # "n":I
    if-eqz v1, :cond_2

    return v1

    .line 184
    :cond_2
    iget v2, p0, Landroid/content/res/ConfigurationEx;->isClearCache:I

    iget v3, v0, Landroid/content/res/ConfigurationEx;->isClearCache:I

    sub-int/2addr v2, v3

    .line 186
    .end local v1    # "n":I
    .restart local v2    # "n":I
    return v2
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "that"    # Ljava/lang/Object;

    .line 165
    instance-of v0, p1, Landroid/content/res/ConfigurationEx;

    if-eqz v0, :cond_0

    .line 168
    move-object v0, p1

    check-cast v0, Landroid/content/res/ConfigurationEx;

    invoke-virtual {p0, v0}, Landroid/content/res/ConfigurationEx;->compareTo(Landroid/content/res/IHwConfiguration;)I

    move-result v0

    return v0

    .line 166
    :cond_0
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0
.end method

.method public diff(Landroid/content/res/IHwConfiguration;)I
    .locals 4
    .param p1, "obj"    # Landroid/content/res/IHwConfiguration;

    .line 126
    const/4 v0, 0x0

    .line 127
    .local v0, "changed":I
    move-object v1, p1

    check-cast v1, Landroid/content/res/ConfigurationEx;

    .line 128
    .local v1, "delta":Landroid/content/res/ConfigurationEx;
    iget v2, v1, Landroid/content/res/ConfigurationEx;->hwtheme:I

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/content/res/ConfigurationEx;->hwtheme:I

    iget v3, v1, Landroid/content/res/ConfigurationEx;->hwtheme:I

    if-eq v2, v3, :cond_0

    .line 129
    const v2, 0x8000

    or-int/2addr v0, v2

    .line 131
    :cond_0
    iget v2, v1, Landroid/content/res/ConfigurationEx;->simpleuiMode:I

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/content/res/ConfigurationEx;->simpleuiMode:I

    iget v3, v1, Landroid/content/res/ConfigurationEx;->simpleuiMode:I

    if-eq v2, v3, :cond_1

    .line 133
    const/high16 v2, 0x10000

    or-int/2addr v0, v2

    .line 135
    :cond_1
    return v0
.end method

.method public equals(Landroid/content/res/IHwConfiguration;)Z
    .locals 4
    .param p1, "obj"    # Landroid/content/res/IHwConfiguration;

    .line 267
    move-object v0, p1

    check-cast v0, Landroid/content/res/ConfigurationEx;

    .line 268
    .local v0, "that":Landroid/content/res/ConfigurationEx;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 269
    :cond_0
    const/4 v2, 0x1

    if-ne v0, p0, :cond_1

    return v2

    .line 270
    :cond_1
    invoke-virtual {p0, v0}, Landroid/content/res/ConfigurationEx;->compareTo(Landroid/content/res/IHwConfiguration;)I

    move-result v3

    if-nez v3, :cond_2

    move v1, v2

    nop

    :cond_2
    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "that"    # Ljava/lang/Object;

    .line 274
    instance-of v0, p1, Landroid/content/res/ConfigurationEx;

    if-eqz v0, :cond_0

    .line 275
    move-object v0, p1

    check-cast v0, Landroid/content/res/ConfigurationEx;

    invoke-virtual {p0, v0}, Landroid/content/res/ConfigurationEx;->equals(Landroid/content/res/IHwConfiguration;)Z

    move-result v0

    return v0

    .line 277
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getConfigItem(I)I
    .locals 1
    .param p1, "mode"    # I

    .line 210
    const/4 v0, 0x0

    .line 211
    .local v0, "val":I
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 222
    :pswitch_0
    iget v0, p0, Landroid/content/res/ConfigurationEx;->isClearCache:I

    .line 223
    goto :goto_0

    .line 219
    :pswitch_1
    iget v0, p0, Landroid/content/res/ConfigurationEx;->userId:I

    .line 220
    goto :goto_0

    .line 216
    :pswitch_2
    iget v0, p0, Landroid/content/res/ConfigurationEx;->simpleuiMode:I

    .line 217
    goto :goto_0

    .line 213
    :pswitch_3
    iget v0, p0, Landroid/content/res/ConfigurationEx;->hwtheme:I

    .line 214
    nop

    .line 227
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public hashCode()I
    .locals 4

    .line 281
    const/16 v0, 0x11

    .line 282
    .local v0, "result":I
    const/16 v1, 0x1f

    mul-int v2, v1, v0

    iget v3, p0, Landroid/content/res/ConfigurationEx;->simpleuiMode:I

    add-int/2addr v2, v3

    .line 283
    .end local v0    # "result":I
    .local v2, "result":I
    mul-int v0, v1, v2

    iget v3, p0, Landroid/content/res/ConfigurationEx;->hwtheme:I

    add-int/2addr v0, v3

    .line 284
    .end local v2    # "result":I
    .restart local v0    # "result":I
    mul-int v2, v1, v0

    iget v3, p0, Landroid/content/res/ConfigurationEx;->userId:I

    add-int/2addr v2, v3

    .line 285
    .end local v0    # "result":I
    .restart local v2    # "result":I
    mul-int/2addr v1, v2

    iget v0, p0, Landroid/content/res/ConfigurationEx;->isClearCache:I

    add-int/2addr v1, v0

    .line 287
    .end local v2    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public makeDefault()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 83
    invoke-virtual {p0}, Landroid/content/res/ConfigurationEx;->setToDefaults()V

    .line 84
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/ConfigurationEx;->hwtheme:I

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/ConfigurationEx;->simpleuiMode:I

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/ConfigurationEx;->userId:I

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/ConfigurationEx;->isClearCache:I

    .line 162
    return-void
.end method

.method public setConfigItem(II)V
    .locals 0
    .param p1, "mode"    # I
    .param p2, "val"    # I

    .line 191
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 202
    :pswitch_0
    iput p2, p0, Landroid/content/res/ConfigurationEx;->isClearCache:I

    .line 203
    goto :goto_0

    .line 199
    :pswitch_1
    iput p2, p0, Landroid/content/res/ConfigurationEx;->userId:I

    .line 200
    goto :goto_0

    .line 196
    :pswitch_2
    iput p2, p0, Landroid/content/res/ConfigurationEx;->simpleuiMode:I

    .line 197
    goto :goto_0

    .line 193
    :pswitch_3
    iput p2, p0, Landroid/content/res/ConfigurationEx;->hwtheme:I

    .line 194
    nop

    .line 207
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setDensityDPI(I)V
    .locals 6
    .param p1, "dpi"    # I

    .line 233
    const-string v0, "ro.sf.real_lcd_density"

    const-string v1, "ro.sf.lcd_density"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 235
    .local v0, "lcdDpi":I
    const-string v1, "persist.sys.dpi"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 236
    .local v1, "oldDisplayDpi":I
    const-string v2, "persist.sys.realdpi"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 237
    .local v2, "oldRealDpi":I
    const-string v3, "persist.sys.dpi"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const-string v3, "persist.sys.realdpi"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    mul-int v5, p1, v2

    div-int/2addr v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    return-void
.end method

.method public setTo(Landroid/content/res/IHwConfiguration;)V
    .locals 2
    .param p1, "obj"    # Landroid/content/res/IHwConfiguration;

    .line 63
    move-object v0, p1

    check-cast v0, Landroid/content/res/ConfigurationEx;

    .line 64
    .local v0, "o":Landroid/content/res/ConfigurationEx;
    iget v1, v0, Landroid/content/res/ConfigurationEx;->hwtheme:I

    iput v1, p0, Landroid/content/res/ConfigurationEx;->hwtheme:I

    .line 65
    iget v1, v0, Landroid/content/res/ConfigurationEx;->simpleuiMode:I

    iput v1, p0, Landroid/content/res/ConfigurationEx;->simpleuiMode:I

    .line 67
    iget v1, v0, Landroid/content/res/ConfigurationEx;->userId:I

    iput v1, p0, Landroid/content/res/ConfigurationEx;->userId:I

    .line 68
    iget v1, v0, Landroid/content/res/ConfigurationEx;->isClearCache:I

    iput v1, p0, Landroid/content/res/ConfigurationEx;->isClearCache:I

    .line 69
    return-void
.end method

.method public setToDefaults()V
    .locals 1

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/res/ConfigurationEx;->hwtheme:I

    .line 76
    iput v0, p0, Landroid/content/res/ConfigurationEx;->simpleuiMode:I

    .line 77
    iput v0, p0, Landroid/content/res/ConfigurationEx;->userId:I

    .line 78
    iput v0, p0, Landroid/content/res/ConfigurationEx;->isClearCache:I

    .line 79
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 246
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget v1, p0, Landroid/content/res/ConfigurationEx;->hwtheme:I

    if-eqz v1, :cond_0

    .line 247
    const-string v1, " hwt:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    iget v1, p0, Landroid/content/res/ConfigurationEx;->hwtheme:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 250
    :cond_0
    iget v1, p0, Landroid/content/res/ConfigurationEx;->simpleuiMode:I

    if-eqz v1, :cond_1

    .line 251
    const-string v1, " suim:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    iget v1, p0, Landroid/content/res/ConfigurationEx;->simpleuiMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 255
    :cond_1
    iget v1, p0, Landroid/content/res/ConfigurationEx;->userId:I

    if-eqz v1, :cond_2

    .line 256
    const-string v1, " userId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    iget v1, p0, Landroid/content/res/ConfigurationEx;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 260
    :cond_2
    iget v1, p0, Landroid/content/res/ConfigurationEx;->isClearCache:I

    if-eqz v1, :cond_3

    .line 261
    const-string v1, " isClearCache:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    iget v1, p0, Landroid/content/res/ConfigurationEx;->isClearCache:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 264
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public updateFrom(Landroid/content/res/IHwConfiguration;)I
    .locals 4
    .param p1, "obj"    # Landroid/content/res/IHwConfiguration;

    .line 95
    const/4 v0, 0x0

    .line 96
    .local v0, "changed":I
    move-object v1, p1

    check-cast v1, Landroid/content/res/ConfigurationEx;

    .line 97
    .local v1, "delta":Landroid/content/res/ConfigurationEx;
    iget v2, v1, Landroid/content/res/ConfigurationEx;->hwtheme:I

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/content/res/ConfigurationEx;->hwtheme:I

    iget v3, v1, Landroid/content/res/ConfigurationEx;->hwtheme:I

    if-eq v2, v3, :cond_0

    .line 98
    const v2, 0x8000

    or-int/2addr v0, v2

    .line 99
    iget v2, v1, Landroid/content/res/ConfigurationEx;->hwtheme:I

    iput v2, p0, Landroid/content/res/ConfigurationEx;->hwtheme:I

    .line 101
    :cond_0
    iget v2, v1, Landroid/content/res/ConfigurationEx;->simpleuiMode:I

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/content/res/ConfigurationEx;->simpleuiMode:I

    iget v3, v1, Landroid/content/res/ConfigurationEx;->simpleuiMode:I

    if-eq v2, v3, :cond_1

    .line 103
    const/high16 v2, 0x10000

    or-int/2addr v0, v2

    .line 104
    iget v2, v1, Landroid/content/res/ConfigurationEx;->simpleuiMode:I

    iput v2, p0, Landroid/content/res/ConfigurationEx;->simpleuiMode:I

    .line 107
    :cond_1
    iget v2, p0, Landroid/content/res/ConfigurationEx;->userId:I

    iget v3, v1, Landroid/content/res/ConfigurationEx;->userId:I

    if-eq v2, v3, :cond_2

    .line 108
    iget v2, v1, Landroid/content/res/ConfigurationEx;->userId:I

    iput v2, p0, Landroid/content/res/ConfigurationEx;->userId:I

    .line 111
    :cond_2
    iget v2, p0, Landroid/content/res/ConfigurationEx;->isClearCache:I

    iget v3, v1, Landroid/content/res/ConfigurationEx;->isClearCache:I

    if-eq v2, v3, :cond_3

    .line 112
    iget v2, v1, Landroid/content/res/ConfigurationEx;->isClearCache:I

    iput v2, p0, Landroid/content/res/ConfigurationEx;->isClearCache:I

    .line 115
    :cond_3
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 151
    iget v0, p0, Landroid/content/res/ConfigurationEx;->hwtheme:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    iget v0, p0, Landroid/content/res/ConfigurationEx;->simpleuiMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    iget v0, p0, Landroid/content/res/ConfigurationEx;->userId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    iget v0, p0, Landroid/content/res/ConfigurationEx;->isClearCache:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    return-void
.end method
