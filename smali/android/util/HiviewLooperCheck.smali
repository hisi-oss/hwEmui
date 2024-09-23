.class public Landroid/util/HiviewLooperCheck;
.super Ljava/lang/Object;
.source "HiviewLooperCheck.java"

# interfaces
.implements Landroid/util/Printer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/HiviewLooperCheck$ThreadMsgs;,
        Landroid/util/HiviewLooperCheck$LoopMsg;
    }
.end annotation


# static fields
.field private static final BEGIN_REGEX:Ljava/lang/String; = ">>>>> Dispatching to Handler (.{1,}) \\{.{1,}\\} null: \\d{1,}"

.field private static final DEBUG:Z

.field private static final END_REGEX:Ljava/lang/String; = "<<<<< Finished to Handler (.{1,}) \\{.{1,}\\} null"

.field private static final IS_ENABLE:Z

.field private static final TAG:Ljava/lang/String; = "HiviewLooperCheck"

.field private static final TARGET_REGEX:Ljava/lang/String; = "\\((.*?)\\)"

.field private static final VERSION_DOMESTIC_BETA:I = 0x3

.field private static final VERSION_DOMESTIC_COMMERCIAL:I = 0x1

.field private static final VERSION_OVERSEAS_BETA:I = 0x5

.field private static final WHAT_REGEX:Ljava/lang/String; = "[:](.*?)$"

.field private static sThreadLoopers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/HiviewLooperCheck$ThreadMsgs;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private curMsgToken:Ljava/lang/String;

.field private final mKey:Ljava/lang/String;

.field private mTMsgs:Landroid/util/HiviewLooperCheck$ThreadMsgs;

.field private startTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 21
    const-string v0, "hiview"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/util/HiviewLooperCheck;->DEBUG:Z

    .line 26
    const-string v0, "ro.logsystem.usertype"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v1, :cond_1

    const-string v0, "ro.logsystem.usertype"

    .line 27
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    nop

    :cond_1
    :goto_0
    sput-boolean v2, Landroid/util/HiviewLooperCheck;->IS_ENABLE:Z

    .line 34
    const/4 v0, 0x0

    sput-object v0, Landroid/util/HiviewLooperCheck;->sThreadLoopers:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 4
    .param p1, "threadName"    # Ljava/lang/String;
    .param p2, "hashCode"    # I

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/util/HiviewLooperCheck;->startTime:J

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/util/HiviewLooperCheck;->mTMsgs:Landroid/util/HiviewLooperCheck$ThreadMsgs;

    .line 137
    new-instance v0, Landroid/util/HiviewLooperCheck$ThreadMsgs;

    invoke-direct {v0, p1}, Landroid/util/HiviewLooperCheck$ThreadMsgs;-><init>(Ljava/lang/String;)V

    .line 138
    .local v0, "tMsgs":Landroid/util/HiviewLooperCheck$ThreadMsgs;
    const-class v1, Landroid/util/HiviewLooperCheck;

    monitor-enter v1

    .line 139
    :try_start_0
    sget-object v2, Landroid/util/HiviewLooperCheck;->sThreadLoopers:Ljava/util/Map;

    if-nez v2, :cond_0

    .line 140
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Landroid/util/HiviewLooperCheck;->sThreadLoopers:Ljava/util/Map;

    .line 142
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/util/HiviewLooperCheck;->mKey:Ljava/lang/String;

    .line 143
    sget-object v2, Landroid/util/HiviewLooperCheck;->sThreadLoopers:Ljava/util/Map;

    iget-object v3, p0, Landroid/util/HiviewLooperCheck;->mKey:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    iput-object v0, p0, Landroid/util/HiviewLooperCheck;->mTMsgs:Landroid/util/HiviewLooperCheck$ThreadMsgs;

    .line 145
    monitor-exit v1

    .line 146
    return-void

    .line 145
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static check(Landroid/os/HandlerThread;)V
    .locals 4
    .param p0, "thread"    # Landroid/os/HandlerThread;

    .line 123
    if-eqz p0, :cond_1

    sget-boolean v0, Landroid/util/HiviewLooperCheck;->IS_ENABLE:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 126
    :cond_0
    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Landroid/util/HiviewLooperCheck;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/util/HiviewLooperCheck;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Looper;->setMessageLogging(Landroid/util/Printer;)V

    .line 127
    return-void

    .line 124
    :cond_1
    :goto_0
    return-void
.end method

.method public static check(Landroid/os/Looper;Ljava/lang/String;)V
    .locals 2
    .param p0, "looper"    # Landroid/os/Looper;
    .param p1, "threadName"    # Ljava/lang/String;

    .line 130
    if-eqz p0, :cond_1

    sget-boolean v0, Landroid/util/HiviewLooperCheck;->IS_ENABLE:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 133
    :cond_0
    new-instance v0, Landroid/util/HiviewLooperCheck;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-direct {v0, p1, v1}, Landroid/util/HiviewLooperCheck;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Landroid/os/Looper;->setMessageLogging(Landroid/util/Printer;)V

    .line 134
    return-void

    .line 131
    :cond_1
    :goto_0
    return-void
.end method

.method public static dumpJson()Lorg/json/JSONArray;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 158
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 159
    .local v0, "jsonThreadArray":Lorg/json/JSONArray;
    const-class v1, Landroid/util/HiviewLooperCheck;

    monitor-enter v1

    .line 160
    :try_start_0
    sget-object v2, Landroid/util/HiviewLooperCheck;->sThreadLoopers:Ljava/util/Map;

    if-eqz v2, :cond_0

    .line 161
    sget-object v2, Landroid/util/HiviewLooperCheck;->sThreadLoopers:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 162
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/HiviewLooperCheck$ThreadMsgs;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/HiviewLooperCheck$ThreadMsgs;

    .line 163
    .local v4, "trd":Landroid/util/HiviewLooperCheck$ThreadMsgs;
    invoke-virtual {v4}, Landroid/util/HiviewLooperCheck$ThreadMsgs;->dumpJson()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 164
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/HiviewLooperCheck$ThreadMsgs;>;"
    .end local v4    # "trd":Landroid/util/HiviewLooperCheck$ThreadMsgs;
    goto :goto_0

    .line 166
    :cond_0
    monitor-exit v1

    .line 167
    return-object v0

    .line 166
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static dumpString()Ljava/lang/String;
    .locals 5

    .line 171
    const/4 v0, 0x0

    .line 173
    .local v0, "result":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/util/HiviewLooperCheck;->dumpJson()Lorg/json/JSONArray;

    move-result-object v1

    .line 174
    .local v1, "jsonArray":Lorg/json/JSONArray;
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->toString(I)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 177
    .end local v1    # "jsonArray":Lorg/json/JSONArray;
    goto :goto_0

    .line 175
    :catch_0
    move-exception v1

    .line 176
    .local v1, "e":Lorg/json/JSONException;
    const-string v2, "HiviewLooperCheck"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dumpString , JSONException :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    return-object v0
.end method

.method public static getSubUtil(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "target"    # Ljava/lang/String;
    .param p1, "rgex"    # Ljava/lang/String;

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 221
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 222
    .local v1, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 223
    .local v2, "m":Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 224
    const/4 v3, 0x1

    .line 225
    .local v3, "i":I
    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    nop

    .line 227
    .end local v3    # "i":I
    goto :goto_0

    .line 228
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 229
    .local v3, "result":Ljava/lang/String;
    sget-boolean v4, Landroid/util/HiviewLooperCheck;->DEBUG:Z

    if-eqz v4, :cond_1

    .line 230
    const-string v4, "HiviewLooperCheck"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSubUtil() , result is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_1
    return-object v3
.end method


# virtual methods
.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 149
    const-class v0, Landroid/util/HiviewLooperCheck;

    monitor-enter v0

    .line 150
    :try_start_0
    sget-object v1, Landroid/util/HiviewLooperCheck;->sThreadLoopers:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 151
    sget-object v1, Landroid/util/HiviewLooperCheck;->sThreadLoopers:Ljava/util/Map;

    iget-object v2, p0, Landroid/util/HiviewLooperCheck;->mKey:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 155
    return-void

    .line 153
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public println(Ljava/lang/String;)V
    .locals 7
    .param p1, "x"    # Ljava/lang/String;

    .line 182
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 186
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 189
    .local v0, "now":J
    const-string v2, ">>>>> Dispatching to Handler (.{1,}) \\{.{1,}\\} null: \\d{1,}"

    invoke-virtual {p1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 190
    const-string v2, "\\((.*?)\\)"

    invoke-static {p1, v2}, Landroid/util/HiviewLooperCheck;->getSubUtil(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 191
    .local v2, "target":Ljava/lang/String;
    const-string v3, "[:](.*?)$"

    invoke-static {p1, v3}, Landroid/util/HiviewLooperCheck;->getSubUtil(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 192
    .local v3, "what":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/util/HiviewLooperCheck;->curMsgToken:Ljava/lang/String;

    .line 193
    iput-wide v0, p0, Landroid/util/HiviewLooperCheck;->startTime:J

    goto/16 :goto_0

    .line 194
    .end local v2    # "target":Ljava/lang/String;
    .end local v3    # "what":I
    :cond_1
    const-string v2, "<<<<< Finished to Handler (.{1,}) \\{.{1,}\\} null"

    invoke-virtual {p1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 195
    iget-object v2, p0, Landroid/util/HiviewLooperCheck;->curMsgToken:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 196
    iget-object v2, p0, Landroid/util/HiviewLooperCheck;->mTMsgs:Landroid/util/HiviewLooperCheck$ThreadMsgs;

    iget-object v3, p0, Landroid/util/HiviewLooperCheck;->curMsgToken:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/util/HiviewLooperCheck$ThreadMsgs;->get(Ljava/lang/String;)Landroid/util/HiviewLooperCheck$LoopMsg;

    move-result-object v2

    .line 197
    .local v2, "curMsg":Landroid/util/HiviewLooperCheck$LoopMsg;
    if-nez v2, :cond_2

    .line 198
    new-instance v3, Landroid/util/HiviewLooperCheck$LoopMsg;

    iget-object v4, p0, Landroid/util/HiviewLooperCheck;->curMsgToken:Ljava/lang/String;

    invoke-direct {v3, v4}, Landroid/util/HiviewLooperCheck$LoopMsg;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 199
    iget-object v3, p0, Landroid/util/HiviewLooperCheck;->mTMsgs:Landroid/util/HiviewLooperCheck$ThreadMsgs;

    iget-object v4, p0, Landroid/util/HiviewLooperCheck;->curMsgToken:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Landroid/util/HiviewLooperCheck$ThreadMsgs;->put(Ljava/lang/String;Landroid/util/HiviewLooperCheck$LoopMsg;)V

    .line 201
    :cond_2
    sget-boolean v3, Landroid/util/HiviewLooperCheck;->DEBUG:Z

    if-eqz v3, :cond_3

    .line 202
    const-string v3, "HiviewLooperCheck"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Landroid/util/HiviewLooperCheck;->curMsgToken:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Landroid/util/HiviewLooperCheck;->startTime:J

    sub-long v5, v0, v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_3
    iget-wide v3, p0, Landroid/util/HiviewLooperCheck;->startTime:J

    sub-long v3, v0, v3

    invoke-virtual {v2, v3, v4}, Landroid/util/HiviewLooperCheck$LoopMsg;->add(J)V

    .line 205
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/util/HiviewLooperCheck;->curMsgToken:Ljava/lang/String;

    .line 206
    .end local v2    # "curMsg":Landroid/util/HiviewLooperCheck$LoopMsg;
    goto :goto_0

    .line 208
    :cond_4
    sget-boolean v2, Landroid/util/HiviewLooperCheck;->DEBUG:Z

    if-eqz v2, :cond_5

    .line 209
    const-string v2, "HiviewLooperCheck"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "now":J
    goto :goto_0

    .line 214
    :catch_0
    move-exception v0

    .line 215
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "HiviewLooperCheck"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RuntimeException :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/RuntimeException;
    goto :goto_1

    .line 212
    :catch_1
    move-exception v0

    .line 213
    .local v0, "e":Ljava/util/regex/PatternSyntaxException;
    const-string v1, "HiviewLooperCheck"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PatternSyntaxException :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/regex/PatternSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    .end local v0    # "e":Ljava/util/regex/PatternSyntaxException;
    :cond_5
    :goto_0
    nop

    .line 217
    :goto_1
    return-void

    .line 183
    :cond_6
    :goto_2
    return-void
.end method
