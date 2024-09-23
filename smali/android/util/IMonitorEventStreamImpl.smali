.class final Landroid/util/IMonitorEventStreamImpl;
.super Landroid/util/IMonitor$EventStream;
.source "IMonitorEventStreamImpl.java"


# instance fields
.field private mEventHandle:J


# direct methods
.method protected constructor <init>(J)V
    .locals 2
    .param p1, "eventHandle"    # J

    .line 11
    invoke-direct {p0}, Landroid/util/IMonitor$EventStream;-><init>()V

    .line 9
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/util/IMonitorEventStreamImpl;->mEventHandle:J

    .line 12
    iput-wide p1, p0, Landroid/util/IMonitorEventStreamImpl;->mEventHandle:J

    .line 13
    return-void
.end method

.method private isHandleValid()Z
    .locals 4

    .line 381
    iget-wide v0, p0, Landroid/util/IMonitorEventStreamImpl;->mEventHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method


# virtual methods
.method public addAndDelDynamicPath(Ljava/lang/String;)Landroid/util/IMonitor$EventStream;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .line 355
    if-nez p1, :cond_0

    .line 356
    return-object p0

    .line 358
    :cond_0
    invoke-direct {p0}, Landroid/util/IMonitorEventStreamImpl;->isHandleValid()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 359
    iget-wide v0, p0, Landroid/util/IMonitorEventStreamImpl;->mEventHandle:J

    invoke-static {v0, v1, p1}, Landroid/util/IMonitorNative;->addAndDelDynamicPath(JLjava/lang/String;)Z

    .line 361
    :cond_1
    return-object p0
.end method

.method public addDynamicPath(Ljava/lang/String;)Landroid/util/IMonitor$EventStream;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .line 344
    if-nez p1, :cond_0

    .line 345
    return-object p0

    .line 347
    :cond_0
    invoke-direct {p0}, Landroid/util/IMonitorEventStreamImpl;->isHandleValid()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 348
    iget-wide v0, p0, Landroid/util/IMonitorEventStreamImpl;->mEventHandle:J

    invoke-static {v0, v1, p1}, Landroid/util/IMonitorNative;->addDynamicPath(JLjava/lang/String;)Z

    .line 350
    :cond_1
    return-object p0
.end method

.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 374
    iget-wide v0, p0, Landroid/util/IMonitorEventStreamImpl;->mEventHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 375
    iget-wide v0, p0, Landroid/util/IMonitorEventStreamImpl;->mEventHandle:J

    invoke-static {v0, v1}, Landroid/util/IMonitorNative;->destoryEvent(J)V

    .line 376
    iput-wide v2, p0, Landroid/util/IMonitorEventStreamImpl;->mEventHandle:J

    .line 378
    :cond_0
    return-void
.end method

.method public commit()Z
    .locals 2

    .line 366
    invoke-direct {p0}, Landroid/util/IMonitorEventStreamImpl;->isHandleValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    iget-wide v0, p0, Landroid/util/IMonitorEventStreamImpl;->mEventHandle:J

    invoke-static {v0, v1}, Landroid/util/IMonitorNative;->sendEvent(J)Z

    move-result v0

    return v0

    .line 369
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public fillArrayParam(Ljava/lang/String;B)Landroid/util/IMonitor$EventStream;
    .locals 2
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "value"    # B

    .line 253
    int-to-long v0, p2

    invoke-virtual {p0, p1, v0, v1}, Landroid/util/IMonitorEventStreamImpl;->fillArrayParam(Ljava/lang/String;J)Landroid/util/IMonitor$EventStream;

    .line 254
    return-object p0
.end method

.method public fillArrayParam(Ljava/lang/String;F)Landroid/util/IMonitor$EventStream;
    .locals 2
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "value"    # F

    .line 279
    invoke-direct {p0}, Landroid/util/IMonitorEventStreamImpl;->isHandleValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    iget-wide v0, p0, Landroid/util/IMonitorEventStreamImpl;->mEventHandle:J

    invoke-static {v0, v1, p1, p2}, Landroid/util/IMonitorNative;->fillArrayParamFloat(JLjava/lang/String;F)Z

    .line 282
    :cond_0
    return-object p0
.end method

.method public fillArrayParam(Ljava/lang/String;I)Landroid/util/IMonitor$EventStream;
    .locals 2
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 265
    int-to-long v0, p2

    invoke-virtual {p0, p1, v0, v1}, Landroid/util/IMonitorEventStreamImpl;->fillArrayParam(Ljava/lang/String;J)Landroid/util/IMonitor$EventStream;

    .line 266
    return-object p0
.end method

.method public fillArrayParam(Ljava/lang/String;J)Landroid/util/IMonitor$EventStream;
    .locals 2
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "value"    # J

    .line 271
    invoke-direct {p0}, Landroid/util/IMonitorEventStreamImpl;->isHandleValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    iget-wide v0, p0, Landroid/util/IMonitorEventStreamImpl;->mEventHandle:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/util/IMonitorNative;->fillArrayParam(JLjava/lang/String;J)Z

    .line 274
    :cond_0
    return-object p0
.end method

.method public fillArrayParam(Ljava/lang/String;Landroid/util/IMonitor$EventStream;)Landroid/util/IMonitor$EventStream;
    .locals 4
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/util/IMonitor$EventStream;

    .line 309
    if-nez p2, :cond_0

    .line 310
    return-object p0

    .line 312
    :cond_0
    invoke-direct {p0}, Landroid/util/IMonitorEventStreamImpl;->isHandleValid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 313
    iget-wide v0, p0, Landroid/util/IMonitorEventStreamImpl;->mEventHandle:J

    invoke-virtual {p2}, Landroid/util/IMonitor$EventStream;->getHandle()J

    move-result-wide v2

    invoke-static {v0, v1, p1, v2, v3}, Landroid/util/IMonitorNative;->fillArrayParamClass(JLjava/lang/String;J)Z

    .line 315
    :cond_1
    return-object p0
.end method

.method public fillArrayParam(Ljava/lang/String;Ljava/lang/Boolean;)Landroid/util/IMonitor$EventStream;
    .locals 1
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Boolean;

    .line 247
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/util/IMonitorEventStreamImpl;->fillArrayParam(Ljava/lang/String;I)Landroid/util/IMonitor$EventStream;

    .line 248
    return-object p0
.end method

.method public fillArrayParam(Ljava/lang/String;Ljava/lang/String;)Landroid/util/IMonitor$EventStream;
    .locals 2
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 287
    if-nez p2, :cond_0

    .line 288
    return-object p0

    .line 290
    :cond_0
    invoke-direct {p0}, Landroid/util/IMonitorEventStreamImpl;->isHandleValid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 291
    iget-wide v0, p0, Landroid/util/IMonitorEventStreamImpl;->mEventHandle:J

    invoke-static {v0, v1, p1, p2}, Landroid/util/IMonitorNative;->fillArrayParamString(JLjava/lang/String;Ljava/lang/String;)Z

    .line 293
    :cond_1
    return-object p0
.end method

.method public fillArrayParam(Ljava/lang/String;Ljava/util/Date;)Landroid/util/IMonitor$EventStream;
    .locals 3
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/util/Date;

    .line 298
    if-nez p2, :cond_0

    .line 299
    return-object p0

    .line 301
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 302
    .local v0, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v0, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 303
    invoke-virtual {v0, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Landroid/util/IMonitorEventStreamImpl;->fillArrayParam(Ljava/lang/String;Ljava/lang/String;)Landroid/util/IMonitor$EventStream;

    .line 304
    return-object p0
.end method

.method public fillArrayParam(Ljava/lang/String;S)Landroid/util/IMonitor$EventStream;
    .locals 2
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "value"    # S

    .line 259
    int-to-long v0, p2

    invoke-virtual {p0, p1, v0, v1}, Landroid/util/IMonitorEventStreamImpl;->fillArrayParam(Ljava/lang/String;J)Landroid/util/IMonitor$EventStream;

    .line 260
    return-object p0
.end method

.method public fillArrayParam(SB)Landroid/util/IMonitor$EventStream;
    .locals 2
    .param p1, "paramID"    # S
    .param p2, "value"    # B

    .line 107
    int-to-long v0, p2

    invoke-virtual {p0, p1, v0, v1}, Landroid/util/IMonitorEventStreamImpl;->fillArrayParam(SJ)Landroid/util/IMonitor$EventStream;

    .line 108
    return-object p0
.end method

.method public fillArrayParam(SF)Landroid/util/IMonitor$EventStream;
    .locals 2
    .param p1, "paramID"    # S
    .param p2, "value"    # F

    .line 133
    invoke-direct {p0}, Landroid/util/IMonitorEventStreamImpl;->isHandleValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget-wide v0, p0, Landroid/util/IMonitorEventStreamImpl;->mEventHandle:J

    invoke-static {v0, v1, p1, p2}, Landroid/util/IMonitorNative;->fillArrayParamFloat(JSF)Z

    .line 136
    :cond_0
    return-object p0
.end method

.method public fillArrayParam(SI)Landroid/util/IMonitor$EventStream;
    .locals 2
    .param p1, "paramID"    # S
    .param p2, "value"    # I

    .line 119
    int-to-long v0, p2

    invoke-virtual {p0, p1, v0, v1}, Landroid/util/IMonitorEventStreamImpl;->fillArrayParam(SJ)Landroid/util/IMonitor$EventStream;

    .line 120
    return-object p0
.end method

.method public fillArrayParam(SJ)Landroid/util/IMonitor$EventStream;
    .locals 2
    .param p1, "paramID"    # S
    .param p2, "value"    # J

    .line 125
    invoke-direct {p0}, Landroid/util/IMonitorEventStreamImpl;->isHandleValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    iget-wide v0, p0, Landroid/util/IMonitorEventStreamImpl;->mEventHandle:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/util/IMonitorNative;->fillArrayParam(JSJ)Z

    .line 128
    :cond_0
    return-object p0
.end method

.method public fillArrayParam(SLandroid/util/IMonitor$EventStream;)Landroid/util/IMonitor$EventStream;
    .locals 4
    .param p1, "paramID"    # S
    .param p2, "value"    # Landroid/util/IMonitor$EventStream;

    .line 163
    if-nez p2, :cond_0

    .line 164
    return-object p0

    .line 166
    :cond_0
    invoke-direct {p0}, Landroid/util/IMonitorEventStreamImpl;->isHandleValid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 167
    iget-wide v0, p0, Landroid/util/IMonitorEventStreamImpl;->mEventHandle:J

    invoke-virtual {p2}, Landroid/util/IMonitor$EventStream;->getHandle()J

    move-result-wide v2

    invoke-static {v0, v1, p1, v2, v3}, Landroid/util/IMonitorNative;->fillArrayParamClass(JSJ)Z

    .line 169
    :cond_1
    return-object p0
.end method

.method public fillArrayParam(SLjava/lang/Boolean;)Landroid/util/IMonitor$EventStream;
    .locals 1
    .param p1, "paramID"    # S
    .param p2, "value"    # Ljava/lang/Boolean;

    .line 101
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/util/IMonitorEventStreamImpl;->fillArrayParam(SI)Landroid/util/IMonitor$EventStream;

    .line 102
    return-object p0
.end method

.method public fillArrayParam(SLjava/lang/String;)Landroid/util/IMonitor$EventStream;
    .locals 2
    .param p1, "paramID"    # S
    .param p2, "value"    # Ljava/lang/String;

    .line 141
    if-nez p2, :cond_0

    .line 142
    return-object p0

    .line 144
    :cond_0
    invoke-direct {p0}, Landroid/util/IMonitorEventStreamImpl;->isHandleValid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    iget-wide v0, p0, Landroid/util/IMonitorEventStreamImpl;->mEventHandle:J

    invoke-static {v0, v1, p1, p2}, Landroid/util/IMonitorNative;->fillArrayParamString(JSLjava/lang/String;)Z

    .line 147
    :cond_1
    return-object p0
.end method

.method public fillArrayParam(SLjava/util/Date;)Landroid/util/IMonitor$EventStream;
    .locals 3
    .param p1, "paramID"    # S
    .param p2, "value"    # Ljava/util/Date;

    .line 152
    if-nez p2, :cond_0

    .line 153
    return-object p0

    .line 155
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 156
    .local v0, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v0, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 157
    invoke-virtual {v0, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Landroid/util/IMonitorEventStreamImpl;->fillArrayParam(SLjava/lang/String;)Landroid/util/IMonitor$EventStream;

    .line 158
    return-object p0
.end method

.method public fillArrayParam(SS)Landroid/util/IMonitor$EventStream;
    .locals 2
    .param p1, "paramID"    # S
    .param p2, "value"    # S

    .line 113
    int-to-long v0, p2

    invoke-virtual {p0, p1, v0, v1}, Landroid/util/IMonitorEventStreamImpl;->fillArrayParam(SJ)Landroid/util/IMonitor$EventStream;

    .line 114
    return-object p0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 17
    invoke-virtual {p0}, Landroid/util/IMonitorEventStreamImpl;->close()V

    .line 18
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 19
    return-void
.end method

.method protected getHandle()J
    .locals 2

    .line 23
    iget-wide v0, p0, Landroid/util/IMonitorEventStreamImpl;->mEventHandle:J

    return-wide v0
.end method

.method public setParam(Ljava/lang/String;B)Landroid/util/IMonitor$EventStream;
    .locals 2
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "value"    # B

    .line 180
    int-to-long v0, p2

    invoke-virtual {p0, p1, v0, v1}, Landroid/util/IMonitorEventStreamImpl;->setParam(Ljava/lang/String;J)Landroid/util/IMonitor$EventStream;

    .line 181
    return-object p0
.end method

.method public setParam(Ljava/lang/String;F)Landroid/util/IMonitor$EventStream;
    .locals 2
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "value"    # F

    .line 206
    invoke-direct {p0}, Landroid/util/IMonitorEventStreamImpl;->isHandleValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    iget-wide v0, p0, Landroid/util/IMonitorEventStreamImpl;->mEventHandle:J

    invoke-static {v0, v1, p1, p2}, Landroid/util/IMonitorNative;->setParamFloat(JLjava/lang/String;F)Z

    .line 209
    :cond_0
    return-object p0
.end method

.method public setParam(Ljava/lang/String;I)Landroid/util/IMonitor$EventStream;
    .locals 2
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 192
    int-to-long v0, p2

    invoke-virtual {p0, p1, v0, v1}, Landroid/util/IMonitorEventStreamImpl;->setParam(Ljava/lang/String;J)Landroid/util/IMonitor$EventStream;

    .line 193
    return-object p0
.end method

.method public setParam(Ljava/lang/String;J)Landroid/util/IMonitor$EventStream;
    .locals 2
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "value"    # J

    .line 198
    invoke-direct {p0}, Landroid/util/IMonitorEventStreamImpl;->isHandleValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    iget-wide v0, p0, Landroid/util/IMonitorEventStreamImpl;->mEventHandle:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/util/IMonitorNative;->setParam(JLjava/lang/String;J)Z

    .line 201
    :cond_0
    return-object p0
.end method

.method public setParam(Ljava/lang/String;Landroid/util/IMonitor$EventStream;)Landroid/util/IMonitor$EventStream;
    .locals 4
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/util/IMonitor$EventStream;

    .line 236
    if-nez p2, :cond_0

    .line 237
    return-object p0

    .line 239
    :cond_0
    invoke-direct {p0}, Landroid/util/IMonitorEventStreamImpl;->isHandleValid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 240
    iget-wide v0, p0, Landroid/util/IMonitorEventStreamImpl;->mEventHandle:J

    invoke-virtual {p2}, Landroid/util/IMonitor$EventStream;->getHandle()J

    move-result-wide v2

    invoke-static {v0, v1, p1, v2, v3}, Landroid/util/IMonitorNative;->setParamClass(JLjava/lang/String;J)Z

    .line 242
    :cond_1
    return-object p0
.end method

.method public setParam(Ljava/lang/String;Ljava/lang/Boolean;)Landroid/util/IMonitor$EventStream;
    .locals 1
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Boolean;

    .line 174
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/util/IMonitorEventStreamImpl;->setParam(Ljava/lang/String;I)Landroid/util/IMonitor$EventStream;

    .line 175
    return-object p0
.end method

.method public setParam(Ljava/lang/String;Ljava/lang/String;)Landroid/util/IMonitor$EventStream;
    .locals 2
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 214
    if-nez p2, :cond_0

    .line 215
    return-object p0

    .line 217
    :cond_0
    invoke-direct {p0}, Landroid/util/IMonitorEventStreamImpl;->isHandleValid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 218
    iget-wide v0, p0, Landroid/util/IMonitorEventStreamImpl;->mEventHandle:J

    invoke-static {v0, v1, p1, p2}, Landroid/util/IMonitorNative;->setParamString(JLjava/lang/String;Ljava/lang/String;)Z

    .line 220
    :cond_1
    return-object p0
.end method

.method public setParam(Ljava/lang/String;Ljava/util/Date;)Landroid/util/IMonitor$EventStream;
    .locals 3
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/util/Date;

    .line 225
    if-nez p2, :cond_0

    .line 226
    return-object p0

    .line 228
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 229
    .local v0, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v0, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 230
    invoke-virtual {v0, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Landroid/util/IMonitorEventStreamImpl;->setParam(Ljava/lang/String;Ljava/lang/String;)Landroid/util/IMonitor$EventStream;

    .line 231
    return-object p0
.end method

.method public setParam(Ljava/lang/String;S)Landroid/util/IMonitor$EventStream;
    .locals 2
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "value"    # S

    .line 186
    int-to-long v0, p2

    invoke-virtual {p0, p1, v0, v1}, Landroid/util/IMonitorEventStreamImpl;->setParam(Ljava/lang/String;J)Landroid/util/IMonitor$EventStream;

    .line 187
    return-object p0
.end method

.method public setParam(SB)Landroid/util/IMonitor$EventStream;
    .locals 2
    .param p1, "paramID"    # S
    .param p2, "value"    # B

    .line 34
    int-to-long v0, p2

    invoke-virtual {p0, p1, v0, v1}, Landroid/util/IMonitorEventStreamImpl;->setParam(SJ)Landroid/util/IMonitor$EventStream;

    .line 35
    return-object p0
.end method

.method public setParam(SF)Landroid/util/IMonitor$EventStream;
    .locals 2
    .param p1, "paramID"    # S
    .param p2, "value"    # F

    .line 60
    invoke-direct {p0}, Landroid/util/IMonitorEventStreamImpl;->isHandleValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    iget-wide v0, p0, Landroid/util/IMonitorEventStreamImpl;->mEventHandle:J

    invoke-static {v0, v1, p1, p2}, Landroid/util/IMonitorNative;->setParamFloat(JSF)Z

    .line 63
    :cond_0
    return-object p0
.end method

.method public setParam(SI)Landroid/util/IMonitor$EventStream;
    .locals 2
    .param p1, "paramID"    # S
    .param p2, "value"    # I

    .line 46
    int-to-long v0, p2

    invoke-virtual {p0, p1, v0, v1}, Landroid/util/IMonitorEventStreamImpl;->setParam(SJ)Landroid/util/IMonitor$EventStream;

    .line 47
    return-object p0
.end method

.method public setParam(SJ)Landroid/util/IMonitor$EventStream;
    .locals 2
    .param p1, "paramID"    # S
    .param p2, "value"    # J

    .line 52
    invoke-direct {p0}, Landroid/util/IMonitorEventStreamImpl;->isHandleValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    iget-wide v0, p0, Landroid/util/IMonitorEventStreamImpl;->mEventHandle:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/util/IMonitorNative;->setParam(JSJ)Z

    .line 55
    :cond_0
    return-object p0
.end method

.method public setParam(SLandroid/util/IMonitor$EventStream;)Landroid/util/IMonitor$EventStream;
    .locals 4
    .param p1, "paramID"    # S
    .param p2, "value"    # Landroid/util/IMonitor$EventStream;

    .line 90
    if-nez p2, :cond_0

    .line 91
    return-object p0

    .line 93
    :cond_0
    invoke-direct {p0}, Landroid/util/IMonitorEventStreamImpl;->isHandleValid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    iget-wide v0, p0, Landroid/util/IMonitorEventStreamImpl;->mEventHandle:J

    invoke-virtual {p2}, Landroid/util/IMonitor$EventStream;->getHandle()J

    move-result-wide v2

    invoke-static {v0, v1, p1, v2, v3}, Landroid/util/IMonitorNative;->setParamClass(JSJ)Z

    .line 96
    :cond_1
    return-object p0
.end method

.method public setParam(SLjava/lang/Boolean;)Landroid/util/IMonitor$EventStream;
    .locals 1
    .param p1, "paramID"    # S
    .param p2, "value"    # Ljava/lang/Boolean;

    .line 28
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/util/IMonitorEventStreamImpl;->setParam(SI)Landroid/util/IMonitor$EventStream;

    .line 29
    return-object p0
.end method

.method public setParam(SLjava/lang/String;)Landroid/util/IMonitor$EventStream;
    .locals 2
    .param p1, "paramID"    # S
    .param p2, "value"    # Ljava/lang/String;

    .line 68
    if-nez p2, :cond_0

    .line 69
    return-object p0

    .line 71
    :cond_0
    invoke-direct {p0}, Landroid/util/IMonitorEventStreamImpl;->isHandleValid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    iget-wide v0, p0, Landroid/util/IMonitorEventStreamImpl;->mEventHandle:J

    invoke-static {v0, v1, p1, p2}, Landroid/util/IMonitorNative;->setParamString(JSLjava/lang/String;)Z

    .line 74
    :cond_1
    return-object p0
.end method

.method public setParam(SLjava/util/Date;)Landroid/util/IMonitor$EventStream;
    .locals 3
    .param p1, "paramID"    # S
    .param p2, "value"    # Ljava/util/Date;

    .line 79
    if-nez p2, :cond_0

    .line 80
    return-object p0

    .line 82
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 83
    .local v0, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v0, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 84
    invoke-virtual {v0, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Landroid/util/IMonitorEventStreamImpl;->setParam(SLjava/lang/String;)Landroid/util/IMonitor$EventStream;

    .line 85
    return-object p0
.end method

.method public setParam(SS)Landroid/util/IMonitor$EventStream;
    .locals 2
    .param p1, "paramID"    # S
    .param p2, "value"    # S

    .line 40
    int-to-long v0, p2

    invoke-virtual {p0, p1, v0, v1}, Landroid/util/IMonitorEventStreamImpl;->setParam(SJ)Landroid/util/IMonitor$EventStream;

    .line 41
    return-object p0
.end method

.method public setTime(J)Landroid/util/IMonitor$EventStream;
    .locals 4
    .param p1, "milliSeconds"    # J

    .line 336
    invoke-direct {p0}, Landroid/util/IMonitorEventStreamImpl;->isHandleValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    iget-wide v0, p0, Landroid/util/IMonitorEventStreamImpl;->mEventHandle:J

    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    invoke-static {v0, v1, v2, v3}, Landroid/util/IMonitorNative;->setTime(JJ)Z

    .line 339
    :cond_0
    return-object p0
.end method

.method public unsetParam(Ljava/lang/String;)Landroid/util/IMonitor$EventStream;
    .locals 2
    .param p1, "param"    # Ljava/lang/String;

    .line 328
    invoke-direct {p0}, Landroid/util/IMonitorEventStreamImpl;->isHandleValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    iget-wide v0, p0, Landroid/util/IMonitorEventStreamImpl;->mEventHandle:J

    invoke-static {v0, v1, p1}, Landroid/util/IMonitorNative;->unsetParam(JLjava/lang/String;)Z

    .line 331
    :cond_0
    return-object p0
.end method

.method public unsetParam(S)Landroid/util/IMonitor$EventStream;
    .locals 2
    .param p1, "paramID"    # S

    .line 320
    invoke-direct {p0}, Landroid/util/IMonitorEventStreamImpl;->isHandleValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    iget-wide v0, p0, Landroid/util/IMonitorEventStreamImpl;->mEventHandle:J

    invoke-static {v0, v1, p1}, Landroid/util/IMonitorNative;->unsetParam(JS)Z

    .line 323
    :cond_0
    return-object p0
.end method
