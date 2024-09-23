.class public final Landroid/zrhung/appeye/AppEyeFocusWindow;
.super Landroid/zrhung/ZrHungImpl;
.source "AppEyeFocusWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/zrhung/appeye/AppEyeFocusWindow$AppEyeFocusWindowHandler;
    }
.end annotation


# static fields
.field public static final CHECK_FOCUS_WINDOW_ERROR_MSG:I = 0x1

.field public static final FOCUS_ACTIVITY_PARAM:Ljava/lang/String; = "focusedActivityName"

.field public static final FOCUS_PACKAGE_PARAM:Ljava/lang/String; = "focusedPackageName"

.field public static final FOCUS_WINDOW_PARAM:Ljava/lang/String; = "focusedWindowName"

.field public static final HUNG_CONFIG_ENABLE:Ljava/lang/String; = "1"

.field private static final NULL_STRING:Ljava/lang/String; = "null"

.field private static final TAG:Ljava/lang/String; = "ZrHung.AppEyeFocusWindow"

.field private static mAppEyeFocusWindow:Landroid/zrhung/appeye/AppEyeFocusWindow;

.field private static mCheckFreezeScreenDelayTime:I


# instance fields
.field private mAppEyeFocusWindowHandler:Landroid/zrhung/appeye/AppEyeFocusWindow$AppEyeFocusWindowHandler;

.field private mFocusWindowInfo:Ljava/lang/StringBuilder;

.field private mFocusedActivity:Ljava/lang/String;

.field private mFocusedPackage:Ljava/lang/String;

.field private mFocusedWindow:Ljava/lang/String;

.field private mHungConfig:Landroid/util/ZRHung$HungConfig;

.field private mHungConfigEnable:Ljava/lang/String;

.field private mHungConfigStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    const/4 v0, 0x0

    sput-object v0, Landroid/zrhung/appeye/AppEyeFocusWindow;->mAppEyeFocusWindow:Landroid/zrhung/appeye/AppEyeFocusWindow;

    .line 65
    const/16 v0, 0x1770

    sput v0, Landroid/zrhung/appeye/AppEyeFocusWindow;->mCheckFreezeScreenDelayTime:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "wpName"    # Ljava/lang/String;

    .line 68
    invoke-direct {p0, p1}, Landroid/zrhung/ZrHungImpl;-><init>(Ljava/lang/String;)V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/zrhung/appeye/AppEyeFocusWindow;->mAppEyeFocusWindowHandler:Landroid/zrhung/appeye/AppEyeFocusWindow$AppEyeFocusWindowHandler;

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Landroid/zrhung/appeye/AppEyeFocusWindow;->mFocusWindowInfo:Ljava/lang/StringBuilder;

    .line 56
    iput-object v0, p0, Landroid/zrhung/appeye/AppEyeFocusWindow;->mFocusedPackage:Ljava/lang/String;

    .line 57
    iput-object v0, p0, Landroid/zrhung/appeye/AppEyeFocusWindow;->mFocusedActivity:Ljava/lang/String;

    .line 58
    iput-object v0, p0, Landroid/zrhung/appeye/AppEyeFocusWindow;->mFocusedWindow:Ljava/lang/String;

    .line 62
    iput-object v0, p0, Landroid/zrhung/appeye/AppEyeFocusWindow;->mHungConfig:Landroid/util/ZRHung$HungConfig;

    .line 63
    const/4 v0, -0x1

    iput v0, p0, Landroid/zrhung/appeye/AppEyeFocusWindow;->mHungConfigStatus:I

    .line 64
    const-string v0, "null"

    iput-object v0, p0, Landroid/zrhung/appeye/AppEyeFocusWindow;->mHungConfigEnable:Ljava/lang/String;

    .line 69
    new-instance v0, Landroid/zrhung/appeye/AppEyeFocusWindow$AppEyeFocusWindowHandler;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/zrhung/appeye/AppEyeFocusWindow$AppEyeFocusWindowHandler;-><init>(Landroid/zrhung/appeye/AppEyeFocusWindow;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/zrhung/appeye/AppEyeFocusWindow;->mAppEyeFocusWindowHandler:Landroid/zrhung/appeye/AppEyeFocusWindow$AppEyeFocusWindowHandler;

    .line 70
    return-void
.end method

.method public static declared-synchronized getInstance(Ljava/lang/String;)Landroid/zrhung/appeye/AppEyeFocusWindow;
    .locals 2
    .param p0, "wpName"    # Ljava/lang/String;

    const-class v0, Landroid/zrhung/appeye/AppEyeFocusWindow;

    monitor-enter v0

    .line 73
    :try_start_0
    sget-object v1, Landroid/zrhung/appeye/AppEyeFocusWindow;->mAppEyeFocusWindow:Landroid/zrhung/appeye/AppEyeFocusWindow;

    if-nez v1, :cond_0

    .line 74
    new-instance v1, Landroid/zrhung/appeye/AppEyeFocusWindow;

    invoke-direct {v1, p0}, Landroid/zrhung/appeye/AppEyeFocusWindow;-><init>(Ljava/lang/String;)V

    sput-object v1, Landroid/zrhung/appeye/AppEyeFocusWindow;->mAppEyeFocusWindow:Landroid/zrhung/appeye/AppEyeFocusWindow;

    .line 76
    :cond_0
    sget-object v1, Landroid/zrhung/appeye/AppEyeFocusWindow;->mAppEyeFocusWindow:Landroid/zrhung/appeye/AppEyeFocusWindow;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 72
    .end local p0    # "wpName":Ljava/lang/String;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private parseInt(Ljava/lang/String;)I
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    .line 128
    const/4 v0, -0x1

    .line 130
    .local v0, "value":I
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 133
    goto :goto_0

    .line 131
    :catch_0
    move-exception v1

    .line 132
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v2, "ZrHung.AppEyeFocusWindow"

    const-string v3, "parseInt NumberFormatException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :goto_0
    return v0
.end method


# virtual methods
.method public declared-synchronized addInfo(Landroid/zrhung/ZrHungData;)Z
    .locals 5
    .param p1, "args"    # Landroid/zrhung/ZrHungData;

    monitor-enter p0

    .line 243
    const/16 v0, 0x2710

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    if-gt v0, v2, :cond_0

    .line 244
    const-string v0, "ZrHung.AppEyeFocusWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "permission not allowed. uid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    monitor-exit p0

    return v1

    .line 247
    :cond_0
    :try_start_1
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 248
    .local v0, "nowTime":Ljava/lang/String;
    iget-object v2, p0, Landroid/zrhung/appeye/AppEyeFocusWindow;->mFocusWindowInfo:Ljava/lang/StringBuilder;

    if-eqz v2, :cond_1

    .line 249
    iget-object v2, p0, Landroid/zrhung/appeye/AppEyeFocusWindow;->mFocusWindowInfo:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "addFocusWindowInfo"

    invoke-virtual {p1, v3}, Landroid/zrhung/ZrHungData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 250
    const/4 v1, 0x1

    monitor-exit p0

    return v1

    .line 255
    .end local v0    # "nowTime":Ljava/lang/String;
    :cond_1
    nop

    .line 256
    monitor-exit p0

    return v1

    .line 242
    .end local p1    # "args":Landroid/zrhung/ZrHungData;
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 252
    .restart local p1    # "args":Landroid/zrhung/ZrHungData;
    :catch_0
    move-exception v0

    .line 253
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_2
    const-string v2, "ZrHung.AppEyeFocusWindow"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception info ex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 254
    monitor-exit p0

    return v1

    .line 242
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local p1    # "args":Landroid/zrhung/ZrHungData;
    :goto_0
    monitor-exit p0

    .end local p0    # "this":Landroid/zrhung/appeye/AppEyeFocusWindow;
    throw p1
.end method

.method public cancelCheck(Landroid/zrhung/ZrHungData;)Z
    .locals 5
    .param p1, "args"    # Landroid/zrhung/ZrHungData;

    .line 178
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "focusedWindowName"

    invoke-virtual {p1, v1}, Landroid/zrhung/ZrHungData;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Landroid/zrhung/appeye/AppEyeFocusWindow;->mFocusedWindow:Ljava/lang/String;

    .line 179
    const-string v1, "focusedPackageName"

    invoke-virtual {p1, v1}, Landroid/zrhung/ZrHungData;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Landroid/zrhung/appeye/AppEyeFocusWindow;->mFocusedPackage:Ljava/lang/String;

    .line 180
    const-string v1, "focusedActivityName"

    invoke-virtual {p1, v1}, Landroid/zrhung/ZrHungData;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Landroid/zrhung/appeye/AppEyeFocusWindow;->mFocusedActivity:Ljava/lang/String;

    .line 182
    iget-object v1, p0, Landroid/zrhung/appeye/AppEyeFocusWindow;->mAppEyeFocusWindowHandler:Landroid/zrhung/appeye/AppEyeFocusWindow$AppEyeFocusWindowHandler;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 183
    iget-object v1, p0, Landroid/zrhung/appeye/AppEyeFocusWindow;->mAppEyeFocusWindowHandler:Landroid/zrhung/appeye/AppEyeFocusWindow$AppEyeFocusWindowHandler;

    invoke-virtual {v1, v2}, Landroid/zrhung/appeye/AppEyeFocusWindow$AppEyeFocusWindowHandler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    iget-object v1, p0, Landroid/zrhung/appeye/AppEyeFocusWindow;->mAppEyeFocusWindowHandler:Landroid/zrhung/appeye/AppEyeFocusWindow$AppEyeFocusWindowHandler;

    invoke-virtual {v1, v2}, Landroid/zrhung/appeye/AppEyeFocusWindow$AppEyeFocusWindowHandler;->removeMessages(I)V

    .line 185
    const-string v1, "ZrHung.AppEyeFocusWindow"

    const-string v3, "FocusWindowErrorScene cancelCheckFreezeScreen"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_0
    iget-object v1, p0, Landroid/zrhung/appeye/AppEyeFocusWindow;->mFocusWindowInfo:Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/zrhung/appeye/AppEyeFocusWindow;->mFocusWindowInfo:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v1, v0, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    return v2

    .line 190
    :catch_0
    move-exception v1

    .line 191
    .local v1, "ex":Ljava/lang/Exception;
    const-string v2, "ZrHung.AppEyeFocusWindow"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception info ex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    return v0
.end method

.method public check(Landroid/zrhung/ZrHungData;)Z
    .locals 5
    .param p1, "args"    # Landroid/zrhung/ZrHungData;

    .line 149
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/zrhung/appeye/AppEyeFocusWindow;->init(Landroid/zrhung/ZrHungData;)I

    .line 150
    const-string v0, "focusedWindowName"

    invoke-virtual {p1, v0}, Landroid/zrhung/ZrHungData;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/zrhung/appeye/AppEyeFocusWindow;->mFocusedWindow:Ljava/lang/String;

    .line 151
    const-string v0, "focusedPackageName"

    invoke-virtual {p1, v0}, Landroid/zrhung/ZrHungData;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/zrhung/appeye/AppEyeFocusWindow;->mFocusedPackage:Ljava/lang/String;

    .line 152
    const-string v0, "focusedActivityName"

    invoke-virtual {p1, v0}, Landroid/zrhung/ZrHungData;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/zrhung/appeye/AppEyeFocusWindow;->mFocusedActivity:Ljava/lang/String;

    .line 153
    iget-object v0, p0, Landroid/zrhung/appeye/AppEyeFocusWindow;->mAppEyeFocusWindowHandler:Landroid/zrhung/appeye/AppEyeFocusWindow$AppEyeFocusWindowHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/zrhung/appeye/AppEyeFocusWindow$AppEyeFocusWindowHandler;->removeMessages(I)V

    .line 154
    iget-object v0, p0, Landroid/zrhung/appeye/AppEyeFocusWindow;->mAppEyeFocusWindowHandler:Landroid/zrhung/appeye/AppEyeFocusWindow$AppEyeFocusWindowHandler;

    invoke-virtual {v0, v1}, Landroid/zrhung/appeye/AppEyeFocusWindow$AppEyeFocusWindowHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 155
    .local v0, "msg":Landroid/os/Message;
    if-eqz v0, :cond_0

    .line 156
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 157
    iget-object v2, p0, Landroid/zrhung/appeye/AppEyeFocusWindow;->mAppEyeFocusWindowHandler:Landroid/zrhung/appeye/AppEyeFocusWindow$AppEyeFocusWindowHandler;

    sget v3, Landroid/zrhung/appeye/AppEyeFocusWindow;->mCheckFreezeScreenDelayTime:I

    int-to-long v3, v3

    invoke-virtual {v2, v0, v3, v4}, Landroid/zrhung/appeye/AppEyeFocusWindow$AppEyeFocusWindowHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 158
    const-string v2, "ZrHung.AppEyeFocusWindow"

    const-string v3, "FocusWindowErrorScene CheckFreezeScreen"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :cond_0
    return v1

    .line 161
    .end local v0    # "msg":Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 162
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "ZrHung.AppEyeFocusWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception info ex:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const/4 v1, 0x0

    return v1
.end method

.method public init(Landroid/zrhung/ZrHungData;)I
    .locals 4
    .param p1, "args"    # Landroid/zrhung/ZrHungData;

    .line 108
    :try_start_0
    iget-object v0, p0, Landroid/zrhung/appeye/AppEyeFocusWindow;->mHungConfig:Landroid/util/ZRHung$HungConfig;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/zrhung/appeye/AppEyeFocusWindow;->mHungConfigStatus:I

    if-ne v0, v2, :cond_1

    .line 109
    :cond_0
    const/16 v0, 0x110

    invoke-static {v0}, Landroid/util/ZRHung;->getHungConfig(S)Landroid/util/ZRHung$HungConfig;

    move-result-object v0

    iput-object v0, p0, Landroid/zrhung/appeye/AppEyeFocusWindow;->mHungConfig:Landroid/util/ZRHung$HungConfig;

    .line 110
    iget-object v0, p0, Landroid/zrhung/appeye/AppEyeFocusWindow;->mHungConfig:Landroid/util/ZRHung$HungConfig;

    if-eqz v0, :cond_1

    .line 111
    iget-object v0, p0, Landroid/zrhung/appeye/AppEyeFocusWindow;->mHungConfig:Landroid/util/ZRHung$HungConfig;

    iget v0, v0, Landroid/util/ZRHung$HungConfig;->status:I

    iput v0, p0, Landroid/zrhung/appeye/AppEyeFocusWindow;->mHungConfigStatus:I

    .line 112
    iget-object v0, p0, Landroid/zrhung/appeye/AppEyeFocusWindow;->mHungConfig:Landroid/util/ZRHung$HungConfig;

    iget-object v0, v0, Landroid/util/ZRHung$HungConfig;->value:Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, "value":[Ljava/lang/String;
    aget-object v3, v0, v1

    iput-object v3, p0, Landroid/zrhung/appeye/AppEyeFocusWindow;->mHungConfigEnable:Ljava/lang/String;

    .line 114
    array-length v3, v0

    if-le v3, v2, :cond_1

    .line 115
    aget-object v2, v0, v2

    invoke-direct {p0, v2}, Landroid/zrhung/appeye/AppEyeFocusWindow;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Landroid/zrhung/appeye/AppEyeFocusWindow;->mCheckFreezeScreenDelayTime:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    .end local v0    # "value":[Ljava/lang/String;
    :cond_1
    return v1

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "ZrHung.AppEyeFocusWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception info ex:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    const/4 v1, -0x2

    return v1
.end method

.method public sendEvent(Landroid/zrhung/ZrHungData;)Z
    .locals 6
    .param p1, "args"    # Landroid/zrhung/ZrHungData;

    .line 208
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "null"

    iget-object v2, p0, Landroid/zrhung/appeye/AppEyeFocusWindow;->mFocusedWindow:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 209
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 210
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, "FocusWindowErrorScene find freezeScreen"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    const-string v2, "FOCUS_PACKAGE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/zrhung/appeye/AppEyeFocusWindow;->mFocusedPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    const-string v2, "FOCUS_WINDOW: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/zrhung/appeye/AppEyeFocusWindow;->mFocusedWindow:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    const-string v2, "FOCUS_ACTIVITY: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/zrhung/appeye/AppEyeFocusWindow;->mFocusedActivity:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    const-string v2, "FocusWindowInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/zrhung/appeye/AppEyeFocusWindow;->mFocusWindowInfo:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    const-string v2, "ZrHung.AppEyeFocusWindow"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v2, p0, Landroid/zrhung/appeye/AppEyeFocusWindow;->mHungConfig:Landroid/util/ZRHung$HungConfig;

    if-eqz v2, :cond_0

    .line 217
    iget v2, p0, Landroid/zrhung/appeye/AppEyeFocusWindow;->mHungConfigStatus:I

    if-nez v2, :cond_0

    const-string v2, "1"

    iget-object v3, p0, Landroid/zrhung/appeye/AppEyeFocusWindow;->mHungConfigEnable:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 218
    new-instance v2, Landroid/zrhung/ZrHungData;

    invoke-direct {v2}, Landroid/zrhung/ZrHungData;-><init>()V

    .line 219
    .local v2, "data":Landroid/zrhung/ZrHungData;
    const-string v3, "packageName"

    iget-object v4, p0, Landroid/zrhung/appeye/AppEyeFocusWindow;->mFocusedPackage:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/zrhung/ZrHungData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const/16 v3, 0x110

    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v3, v2, v4, v5}, Landroid/zrhung/appeye/AppEyeFocusWindow;->sendAppEyeEvent(SLandroid/zrhung/ZrHungData;Ljava/lang/String;Ljava/lang/String;)Z

    .line 224
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    .end local v2    # "data":Landroid/zrhung/ZrHungData;
    :cond_0
    iget-object v1, p0, Landroid/zrhung/appeye/AppEyeFocusWindow;->mFocusWindowInfo:Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/zrhung/appeye/AppEyeFocusWindow;->mFocusWindowInfo:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    const/4 v0, 0x1

    return v0

    .line 226
    :catch_0
    move-exception v1

    .line 227
    .local v1, "ex":Ljava/lang/Exception;
    const-string v2, "ZrHung.AppEyeFocusWindow"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception info ex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    return v0
.end method
