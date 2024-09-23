.class public final Lcom/huawei/bd/Reporter;
.super Ljava/lang/Object;
.source "Reporter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/bd/Reporter$BDServiceDeathRecipient;
    }
.end annotation


# static fields
.field public static final ACTIVITY_CREATE:I = 0x1

.field public static final ACTIVITY_DESTROY:I = 0x4

.field public static final ACTIVITY_PAUSE:I = 0x3

.field public static final ACTIVITY_RESUME:I = 0x2

.field public static final MAX_CONTENT_SIZE:I = 0x400

.field private static final NO_DATA:I = -0x1

.field public static final PRI_HIGH:I = 0x19

.field public static final PRI_LOW:I = 0x5

.field public static final PRI_NORMAL:I = 0xf

.field private static final TAG:Ljava/lang/String; = "BD.Reporter"

.field private static deathRecipient:Lcom/huawei/bd/Reporter$BDServiceDeathRecipient;

.field private static notAvailCount:I

.field private static sBetaState:I

.field private static sGetServiceMethod:Ljava/lang/reflect/Method;

.field private static sService:Lcom/huawei/bd/IBDService;

.field private static sServiceManagerClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 39
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/bd/Reporter;->sService:Lcom/huawei/bd/IBDService;

    .line 40
    new-instance v1, Lcom/huawei/bd/Reporter$BDServiceDeathRecipient;

    invoke-direct {v1, v0}, Lcom/huawei/bd/Reporter$BDServiceDeathRecipient;-><init>(Lcom/huawei/bd/Reporter$1;)V

    sput-object v1, Lcom/huawei/bd/Reporter;->deathRecipient:Lcom/huawei/bd/Reporter$BDServiceDeathRecipient;

    .line 41
    const/4 v1, 0x0

    sput v1, Lcom/huawei/bd/Reporter;->notAvailCount:I

    .line 42
    const/4 v2, -0x1

    sput v2, Lcom/huawei/bd/Reporter;->sBetaState:I

    .line 48
    sput-object v0, Lcom/huawei/bd/Reporter;->sServiceManagerClazz:Ljava/lang/Class;

    .line 49
    sput-object v0, Lcom/huawei/bd/Reporter;->sGetServiceMethod:Ljava/lang/reflect/Method;

    .line 53
    :try_start_0
    const-string v0, "android.os.ServiceManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/huawei/bd/Reporter;->sServiceManagerClazz:Ljava/lang/Class;

    .line 54
    sget-object v0, Lcom/huawei/bd/Reporter;->sServiceManagerClazz:Ljava/lang/Class;

    const-string v2, "getService"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v1

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/huawei/bd/Reporter;->sGetServiceMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "BD.Reporter"

    const-string v2, "ServiceManager Exception"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 59
    :catch_1
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "BD.Reporter"

    const-string v2, "ServiceManager IllegalArgumentException"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_0

    .line 57
    :catch_2
    move-exception v0

    .line 58
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v1, "BD.Reporter"

    const-string v2, "ServiceManager NoSuchMethodException"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    goto :goto_0

    .line 55
    :catch_3
    move-exception v0

    .line 56
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const-string v1, "BD.Reporter"

    const-string v2, "ServiceManager ClassNotFoundException"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :goto_0
    nop

    .line 64
    :goto_1
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method static synthetic access$102(Lcom/huawei/bd/IBDService;)Lcom/huawei/bd/IBDService;
    .locals 0
    .param p0, "x0"    # Lcom/huawei/bd/IBDService;

    .line 17
    sput-object p0, Lcom/huawei/bd/Reporter;->sService:Lcom/huawei/bd/IBDService;

    return-object p0
.end method

.method public static beta(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "eventID"    # I
    .param p2, "eventMsg"    # Ljava/lang/String;

    .line 173
    sget v0, Lcom/huawei/bd/Reporter;->sBetaState:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 174
    const-string v0, "ro.logsystem.usertype"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/huawei/bd/Reporter;->sBetaState:I

    .line 176
    :cond_0
    sget v0, Lcom/huawei/bd/Reporter;->sBetaState:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 177
    const/4 v0, 0x5

    invoke-static {p0, p1, p2, v0}, Lcom/huawei/bd/Reporter;->e(Landroid/content/Context;ILjava/lang/String;I)Z

    move-result v0

    return v0

    .line 179
    :cond_1
    return v1
.end method

.method public static c(Landroid/content/Context;I)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "eventID"    # I

    .line 132
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/huawei/bd/Reporter;->c(Landroid/content/Context;II)Z

    move-result v0

    return v0
.end method

.method public static c(Landroid/content/Context;II)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "eventID"    # I
    .param p2, "count"    # I

    .line 145
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    const v1, 0xffff

    if-gt p1, v1, :cond_2

    const/4 v1, 0x1

    if-ge p2, v1, :cond_0

    goto :goto_0

    .line 150
    :cond_0
    invoke-static {}, Lcom/huawei/bd/Reporter;->getService()Lcom/huawei/bd/IBDService;

    move-result-object v2

    .line 151
    .local v2, "service":Lcom/huawei/bd/IBDService;
    if-nez v2, :cond_1

    .line 152
    return v0

    .line 154
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 156
    .local v3, "pkgName":Ljava/lang/String;
    :try_start_0
    invoke-static {p1}, Lcom/huawei/bd/Reporter;->restrictID(I)I

    move-result v4

    invoke-interface {v2, v3, v4, p2}, Lcom/huawei/bd/IBDService;->sendAccumulativeData(Ljava/lang/String;II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    nop

    .line 162
    return v1

    .line 157
    :catch_0
    move-exception v1

    .line 158
    .local v1, "e":Landroid/os/RemoteException;
    const-string v4, "BD.Reporter"

    const-string v5, "sendAccumulativeData RemoteException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    return v0

    .line 146
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "service":Lcom/huawei/bd/IBDService;
    .end local v3    # "pkgName":Ljava/lang/String;
    :cond_2
    :goto_0
    const-string v1, "BD.Reporter"

    const-string v2, "null == context || eventID > 65535 || count < 1"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    return v0
.end method

.method public static e(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "eventID"    # I
    .param p2, "eventMsg"    # Ljava/lang/String;

    .line 76
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v5, 0xf

    const/4 v6, -0x1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-static/range {v0 .. v6}, Lcom/huawei/bd/Reporter;->handleEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public static e(Landroid/content/Context;ILjava/lang/String;I)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "eventID"    # I
    .param p2, "eventMsg"    # Ljava/lang/String;
    .param p3, "priority"    # I

    .line 92
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, -0x1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    invoke-static/range {v0 .. v6}, Lcom/huawei/bd/Reporter;->handleEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method private static getService()Lcom/huawei/bd/IBDService;
    .locals 6

    .line 223
    invoke-static {}, Lcom/huawei/bd/Reporter;->ifServiceNotAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 224
    return-object v1

    .line 227
    :cond_0
    sget-object v0, Lcom/huawei/bd/Reporter;->sService:Lcom/huawei/bd/IBDService;

    if-eqz v0, :cond_1

    .line 228
    sget-object v0, Lcom/huawei/bd/Reporter;->sService:Lcom/huawei/bd/IBDService;

    return-object v0

    .line 231
    :cond_1
    sget-object v0, Lcom/huawei/bd/Reporter;->sServiceManagerClazz:Ljava/lang/Class;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/huawei/bd/Reporter;->sGetServiceMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_2

    goto/16 :goto_2

    .line 237
    :cond_2
    :try_start_0
    sget-object v0, Lcom/huawei/bd/Reporter;->sGetServiceMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "com.huawei.bd.BDService"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 238
    .local v0, "b":Landroid/os/IBinder;
    if-nez v0, :cond_3

    .line 239
    sget v3, Lcom/huawei/bd/Reporter;->notAvailCount:I

    add-int/2addr v3, v2

    sput v3, Lcom/huawei/bd/Reporter;->notAvailCount:I

    .line 240
    const-string v2, "BD.Reporter"

    const-string v3, "Can\'t getService HwBDService"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    return-object v1

    .line 244
    :cond_3
    invoke-interface {v0}, Landroid/os/IBinder;->pingBinder()Z

    move-result v2

    if-nez v2, :cond_4

    .line 245
    const-string v2, "BD.Reporter"

    const-string v3, "HwBDService is not running"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    return-object v1

    .line 248
    :cond_4
    sget-object v1, Lcom/huawei/bd/Reporter;->deathRecipient:Lcom/huawei/bd/Reporter$BDServiceDeathRecipient;

    invoke-interface {v0, v1, v5}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 249
    invoke-static {v0}, Lcom/huawei/bd/IBDService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/huawei/bd/IBDService;

    move-result-object v1

    sput-object v1, Lcom/huawei/bd/Reporter;->sService:Lcom/huawei/bd/IBDService;

    .line 250
    const-string v1, "BD.Reporter"

    sget-object v2, Lcom/huawei/bd/Reporter;->sService:Lcom/huawei/bd/IBDService;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "b":Landroid/os/IBinder;
    goto :goto_0

    .line 261
    :catch_0
    move-exception v0

    .line 262
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_1

    .line 259
    :catch_1
    move-exception v0

    .line 260
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "BD.Reporter"

    const-string v2, "getService RuntimeException"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/RuntimeException;
    goto :goto_0

    .line 257
    :catch_2
    move-exception v0

    .line 258
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v1, "BD.Reporter"

    const-string v2, "getService InvocationTargetException"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    goto :goto_0

    .line 255
    :catch_3
    move-exception v0

    .line 256
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v1, "BD.Reporter"

    const-string v2, "getService IllegalAccessException"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_0

    .line 253
    :catch_4
    move-exception v0

    .line 254
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "BD.Reporter"

    const-string v2, "getService IllegalArgumentException"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_0

    .line 251
    :catch_5
    move-exception v0

    .line 252
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "BD.Reporter"

    const-string v2, "getService ClassNotFoundException"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :goto_0
    nop

    .line 265
    :goto_1
    sget-object v0, Lcom/huawei/bd/Reporter;->sService:Lcom/huawei/bd/IBDService;

    return-object v0

    .line 232
    :cond_5
    :goto_2
    const-string v0, "BD.Reporter"

    const-string v2, "Can\'t support using ServiceManager"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    return-object v1
.end method

.method private static handleEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;II)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "eventID"    # I
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "priority"    # I
    .param p6, "taskId"    # I

    .line 195
    const/4 v0, 0x0

    if-eqz p0, :cond_4

    const v1, 0xffff

    if-le p3, v1, :cond_0

    goto :goto_0

    .line 200
    :cond_0
    invoke-static {}, Lcom/huawei/bd/Reporter;->getService()Lcom/huawei/bd/IBDService;

    move-result-object v1

    .line 201
    .local v1, "service":Lcom/huawei/bd/IBDService;
    if-nez v1, :cond_1

    .line 202
    return v0

    .line 205
    :cond_1
    if-nez p1, :cond_2

    .line 206
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 210
    :cond_2
    :try_start_0
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x400

    if-le v2, v3, :cond_3

    .line 211
    invoke-virtual {p4, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object p4, v2

    .line 213
    :cond_3
    invoke-static {p3}, Lcom/huawei/bd/Reporter;->restrictID(I)I

    move-result v2

    invoke-interface {v1, p1, v2, p4, p5}, Lcom/huawei/bd/IBDService;->sendAppActionData(Ljava/lang/String;ILjava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    nop

    .line 219
    const/4 v0, 0x1

    return v0

    .line 214
    :catch_0
    move-exception v2

    .line 215
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "BD.Reporter"

    const-string v4, "sendAppActionData RemoteException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    return v0

    .line 196
    .end local v1    # "service":Lcom/huawei/bd/IBDService;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_4
    :goto_0
    const-string v1, "BD.Reporter"

    const-string v2, "null == context || eventID > 65535"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    return v0
.end method

.method private static ifServiceNotAvailable()Z
    .locals 2

    .line 190
    sget v0, Lcom/huawei/bd/Reporter;->notAvailCount:I

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static j(Landroid/content/Context;ILorg/json/JSONObject;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "eventID"    # I
    .param p2, "eventMsg"    # Lorg/json/JSONObject;

    .line 105
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v5, 0xf

    const/4 v6, -0x1

    move-object v0, p0

    move v3, p1

    invoke-static/range {v0 .. v6}, Lcom/huawei/bd/Reporter;->handleEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public static j(Landroid/content/Context;ILorg/json/JSONObject;I)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "eventID"    # I
    .param p2, "eventMsg"    # Lorg/json/JSONObject;
    .param p3, "priority"    # I

    .line 121
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, -0x1

    move-object v0, p0

    move v3, p1

    move v5, p3

    invoke-static/range {v0 .. v6}, Lcom/huawei/bd/Reporter;->handleEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method private static restrictID(I)I
    .locals 1
    .param p0, "eventID"    # I

    .line 184
    const v0, 0xffff

    and-int/2addr p0, v0

    .line 185
    const/high16 v0, 0x10000

    or-int/2addr p0, v0

    .line 186
    return p0
.end method
