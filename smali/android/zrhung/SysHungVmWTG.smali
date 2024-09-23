.class public Landroid/zrhung/SysHungVmWTG;
.super Landroid/zrhung/ZrHungImpl;
.source "SysHungVmWTG.java"


# static fields
.field private static final BINDER_TRANS_PATH:Ljava/lang/String; = "/sys/kernel/debug/binder/transactions"

.field private static final BINDER_TRANS_PATH_TRACING:Ljava/lang/String; = "/sys/kernel/tracing/binder/transactions"

.field static final COMPLETED:I = 0x0

.field static final OVERDUE:I = 0x3

.field static final TAG:Ljava/lang/String; = "ZrHung.SysHungVmWTG"

.field private static final VMWTG_COLDBOOT_ERECOVERYID:J = 0x17e6ddb0L

.field private static final VMWTG_COLDBOOT_FAULTID:J = 0x35b43ae0L

.field static final WAITED_HALF:I = 0x2

.field static final WAITING:I = 0x1


# instance fields
.field private configReady:Z

.field private daemonsToCheck:[Ljava/lang/String;

.field private enable:Z

.field private waitedHalf:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "wpName"    # Ljava/lang/String;

    .line 47
    invoke-direct {p0, p1}, Landroid/zrhung/ZrHungImpl;-><init>(Ljava/lang/String;)V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/zrhung/SysHungVmWTG;->waitedHalf:Z

    .line 39
    iput-boolean v0, p0, Landroid/zrhung/SysHungVmWTG;->configReady:Z

    .line 40
    iput-boolean v0, p0, Landroid/zrhung/SysHungVmWTG;->enable:Z

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/zrhung/SysHungVmWTG;->daemonsToCheck:[Ljava/lang/String;

    .line 48
    const-string v0, "ZrHung.SysHungVmWTG"

    const-string v1, "Init.."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    return-void
.end method

.method private findBadProcess(I)Z
    .locals 12
    .param p1, "pid"    # I

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 203
    .local v0, "transLines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, -0x1

    .line 205
    .local v1, "ret":I
    invoke-direct {p0, v0}, Landroid/zrhung/SysHungVmWTG;->readTransactionLines(Ljava/util/ArrayList;)I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_1

    .line 207
    const-string v2, "outgoing transaction .+ from (\\d+):(\\d+) to (\\d+):(\\d+) code ([0-9a-f]+)"

    .line 208
    .local v2, "regEx":Ljava/lang/String;
    const-string v4, "outgoing transaction .+ from (\\d+):(\\d+) to (\\d+):(\\d+) code ([0-9a-f]+)"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 210
    .local v4, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 211
    .local v5, "size":I
    move v6, v3

    .local v6, "i":I
    :goto_0
    if-ge v6, v5, :cond_1

    .line 212
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 213
    .local v7, "tl":Ljava/lang/String;
    invoke-virtual {v4, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 214
    .local v8, "matcher":Ljava/util/regex/Matcher;
    const-string v9, "ZrHung.SysHungVmWTG"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "search blocked process: pid = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 216
    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Landroid/zrhung/SysHungVmWTG;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 217
    .local v9, "pid_outgoing":I
    if-ne p1, v9, :cond_0

    .line 218
    const/4 v3, 0x1

    return v3

    .line 211
    .end local v7    # "tl":Ljava/lang/String;
    .end local v8    # "matcher":Ljava/util/regex/Matcher;
    .end local v9    # "pid_outgoing":I
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 223
    .end local v2    # "regEx":Ljava/lang/String;
    .end local v4    # "pattern":Ljava/util/regex/Pattern;
    .end local v5    # "size":I
    .end local v6    # "i":I
    :cond_1
    return v3
.end method

.method private lowLevelReboot(Ljava/lang/String;)V
    .locals 3
    .param p1, "reason"    # Ljava/lang/String;

    .line 249
    const-string v0, "ZrHung.SysHungVmWTG"

    const-string v1, "Low level reboot!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    const-string v0, "sys.powerctl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reboot,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    return-void
.end method

.method private parseInt(Ljava/lang/String;)I
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    .line 228
    const/4 v0, -0x1

    .line 230
    .local v0, "value":I
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 233
    goto :goto_0

    .line 231
    :catch_0
    move-exception v1

    .line 232
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v2, "ZrHung.SysHungVmWTG"

    const-string v3, "parseInt NumberFormatException"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :goto_0
    return v0
.end method

.method private readTransactionLines(Ljava/util/ArrayList;)I
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 133
    .local p1, "transLines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 134
    .local v0, "lineCount":I
    const/4 v1, 0x0

    .line 135
    .local v1, "buff":Ljava/io/BufferedReader;
    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/kernel/debug/binder/transactions"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 136
    .local v2, "file":Ljava/io/File;
    const/4 v3, 0x0

    .line 137
    .local v3, "in":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 138
    .local v4, "out":Ljava/io/FileOutputStream;
    const/4 v5, 0x0

    .line 140
    .local v5, "reader":Ljava/io/Reader;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 141
    const-string v6, "ZrHung.SysHungVmWTG"

    const-string v7, "file not exists : /sys/kernel/debug/binder/transactions"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    new-instance v6, Ljava/io/File;

    const-string v7, "/sys/kernel/tracing/binder/transactions"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v2, v6

    .line 143
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 144
    const-string v6, "ZrHung.SysHungVmWTG"

    const-string v7, "file not exists : /sys/kernel/tracing/binder/transactions"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const/4 v6, -0x1

    return v6

    .line 150
    :cond_0
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v3, v6

    .line 151
    new-instance v6, Ljava/io/InputStreamReader;

    const-string v7, "UTF-8"

    invoke-direct {v6, v3, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object v5, v6

    .line 152
    new-instance v6, Ljava/io/BufferedReader;

    invoke-direct {v6, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v1, v6

    .line 154
    const-string v6, "outgoing transaction"

    .line 155
    .local v6, "regEx":Ljava/lang/String;
    const-string v7, "outgoing transaction"

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    .line 156
    .local v7, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .line 157
    .local v8, "readLine":Ljava/lang/String;
    :goto_0
    if-eqz v8, :cond_2

    .line 158
    invoke-virtual {v7, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    .line 159
    .local v9, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 160
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    add-int/lit8 v0, v0, 0x1

    .line 163
    :cond_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v8, v10

    .line 164
    .end local v9    # "matcher":Ljava/util/regex/Matcher;
    goto :goto_0

    .line 171
    .end local v6    # "regEx":Ljava/lang/String;
    .end local v7    # "pattern":Ljava/util/regex/Pattern;
    .end local v8    # "readLine":Ljava/lang/String;
    :cond_2
    nop

    .line 172
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 173
    const/4 v3, 0x0

    .line 175
    nop

    .line 176
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 177
    const/4 v1, 0x0

    .line 179
    nop

    .line 180
    invoke-virtual {v5}, Ljava/io/Reader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    .line 170
    :catchall_0
    move-exception v6

    goto :goto_6

    .line 167
    :catch_0
    move-exception v6

    .line 168
    .local v6, "e":Ljava/io/IOException;
    :try_start_2
    const-string v7, "ZrHung.SysHungVmWTG"

    const-string v8, "IOException"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 171
    .end local v6    # "e":Ljava/io/IOException;
    if-eqz v3, :cond_3

    .line 172
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 173
    const/4 v3, 0x0

    .line 175
    :cond_3
    if-eqz v1, :cond_4

    .line 176
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 177
    const/4 v1, 0x0

    .line 179
    :cond_4
    if-eqz v5, :cond_7

    .line 180
    invoke-virtual {v5}, Ljava/io/Reader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 165
    :catch_1
    move-exception v6

    .line 166
    .local v6, "e":Ljava/io/FileNotFoundException;
    :try_start_4
    const-string v7, "ZrHung.SysHungVmWTG"

    const-string v8, "FileNotFoundException"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 171
    .end local v6    # "e":Ljava/io/FileNotFoundException;
    if-eqz v3, :cond_5

    .line 172
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 173
    const/4 v3, 0x0

    goto :goto_1

    .line 183
    :catch_2
    move-exception v6

    goto :goto_3

    .line 175
    :cond_5
    :goto_1
    if-eqz v1, :cond_6

    .line 176
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 177
    const/4 v1, 0x0

    .line 179
    :cond_6
    if-eqz v5, :cond_7

    .line 180
    invoke-virtual {v5}, Ljava/io/Reader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 181
    :goto_2
    const/4 v5, 0x0

    goto :goto_4

    .line 183
    :goto_3
    nop

    .line 184
    .local v6, "e":Ljava/io/IOException;
    const-string v7, "ZrHung.SysHungVmWTG"

    const-string v8, "IOException"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    .end local v6    # "e":Ljava/io/IOException;
    goto :goto_5

    .line 185
    :cond_7
    :goto_4
    nop

    .line 188
    :goto_5
    return v0

    .line 170
    :goto_6
    nop

    .line 171
    if-eqz v3, :cond_8

    .line 172
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 173
    const/4 v3, 0x0

    goto :goto_7

    .line 183
    :catch_3
    move-exception v7

    goto :goto_8

    .line 175
    :cond_8
    :goto_7
    if-eqz v1, :cond_9

    .line 176
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 177
    const/4 v1, 0x0

    .line 179
    :cond_9
    if-eqz v5, :cond_a

    .line 180
    invoke-virtual {v5}, Ljava/io/Reader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 181
    const/4 v5, 0x0

    goto :goto_9

    .line 183
    :goto_8
    nop

    .line 184
    .local v7, "e":Ljava/io/IOException;
    const-string v8, "ZrHung.SysHungVmWTG"

    const-string v9, "IOException"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v7    # "e":Ljava/io/IOException;
    nop

    .line 185
    :cond_a
    :goto_9
    throw v6
.end method

.method private vmWTGReportRecoveryBegin()V
    .locals 3

    .line 115
    new-instance v0, Landroid/util/ERecoveryEvent;

    invoke-direct {v0}, Landroid/util/ERecoveryEvent;-><init>()V

    .line 116
    .local v0, "beginEvent":Landroid/util/ERecoveryEvent;
    const-wide/32 v1, 0x17e6ddb0

    invoke-virtual {v0, v1, v2}, Landroid/util/ERecoveryEvent;->setERecoveryID(J)V

    .line 117
    const-wide/32 v1, 0x35b43ae0

    invoke-virtual {v0, v1, v2}, Landroid/util/ERecoveryEvent;->setFaultID(J)V

    .line 118
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/ERecoveryEvent;->setState(J)V

    .line 119
    invoke-static {v0}, Landroid/util/ERecovery;->eRecoveryReport(Landroid/util/ERecoveryEvent;)J

    .line 120
    return-void
.end method


# virtual methods
.method public check(Landroid/zrhung/ZrHungData;)Z
    .locals 9
    .param p1, "args"    # Landroid/zrhung/ZrHungData;

    .line 61
    iget-boolean v0, p0, Landroid/zrhung/SysHungVmWTG;->configReady:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 63
    invoke-virtual {p0}, Landroid/zrhung/SysHungVmWTG;->getConfig()Landroid/util/ZRHung$HungConfig;

    move-result-object v0

    .line 64
    .local v0, "cfg":Landroid/util/ZRHung$HungConfig;
    if-eqz v0, :cond_1

    iget v3, v0, Landroid/util/ZRHung$HungConfig;->status:I

    if-eqz v3, :cond_0

    goto :goto_0

    .line 70
    :cond_0
    iget-object v3, v0, Landroid/util/ZRHung$HungConfig;->value:Ljava/lang/String;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 71
    .local v3, "configs":[Ljava/lang/String;
    const-string v4, "ZrHung.SysHungVmWTG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Config from zrhung:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Landroid/util/ZRHung$HungConfig;->value:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    aget-object v4, v3, v1

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, p0, Landroid/zrhung/SysHungVmWTG;->enable:Z

    .line 74
    array-length v4, v3

    invoke-static {v3, v2, v4}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    iput-object v4, p0, Landroid/zrhung/SysHungVmWTG;->daemonsToCheck:[Ljava/lang/String;

    .line 75
    iput-boolean v2, p0, Landroid/zrhung/SysHungVmWTG;->configReady:Z

    .end local v0    # "cfg":Landroid/util/ZRHung$HungConfig;
    .end local v3    # "configs":[Ljava/lang/String;
    goto :goto_1

    .line 66
    .restart local v0    # "cfg":Landroid/util/ZRHung$HungConfig;
    :cond_1
    :goto_0
    const-string v2, "ZrHung.SysHungVmWTG"

    const-string v3, "Failed to get config from zrhung"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    return v1

    .line 77
    .end local v0    # "cfg":Landroid/util/ZRHung$HungConfig;
    :cond_2
    :goto_1
    iget-boolean v0, p0, Landroid/zrhung/SysHungVmWTG;->enable:Z

    if-eq v0, v2, :cond_3

    .line 78
    return v1

    .line 80
    :cond_3
    const-string v0, "ZrHung.SysHungVmWTG"

    const-string v3, "System blocked, run checking!"

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v0, p0, Landroid/zrhung/SysHungVmWTG;->daemonsToCheck:[Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Process;->getPidsForCommands([Ljava/lang/String;)[I

    move-result-object v0

    .line 83
    .local v0, "pids":[I
    array-length v3, v0

    .line 84
    .local v3, "length":I
    move v4, v1

    .local v4, "i":I
    :goto_2
    if-ge v4, v3, :cond_5

    .line 85
    aget v5, v0, v4

    invoke-direct {p0, v5}, Landroid/zrhung/SysHungVmWTG;->findBadProcess(I)Z

    move-result v5

    if-ne v5, v2, :cond_4

    .line 86
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "p="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",p="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, v0, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 87
    .local v5, "cmd":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Found process blocked: PID:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v7, v0, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " cmd: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Landroid/zrhung/SysHungVmWTG;->daemonsToCheck:[Ljava/lang/String;

    aget-object v7, v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 88
    .local v6, "msg":Ljava/lang/String;
    const-string v7, "ZrHung.SysHungVmWTG"

    invoke-static {v7, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const/16 v7, 0x16

    invoke-static {v7, v5, v6}, Landroid/util/ZRHung;->sendHungEvent(SLjava/lang/String;Ljava/lang/String;)Z

    .line 90
    const-string v7, "waitState"

    invoke-virtual {p1, v7}, Landroid/zrhung/ZrHungData;->getInt(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_4

    .line 91
    const-string v1, "ZrHung.SysHungVmWTG"

    const-string v7, "Daemon(s) blocked for over 60s, reboot to recover!"

    invoke-static {v1, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-direct {p0}, Landroid/zrhung/SysHungVmWTG;->vmWTGReportRecoveryBegin()V

    .line 96
    const-wide/16 v7, 0x7d0

    invoke-static {v7, v8}, Landroid/os/SystemClock;->sleep(J)V

    .line 97
    const-string v1, "Daemon(s) blocked"

    invoke-direct {p0, v1}, Landroid/zrhung/SysHungVmWTG;->lowLevelReboot(Ljava/lang/String;)V

    .line 98
    return v2

    .line 84
    .end local v5    # "cmd":Ljava/lang/String;
    .end local v6    # "msg":Ljava/lang/String;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 102
    .end local v4    # "i":I
    :cond_5
    return v1
.end method
