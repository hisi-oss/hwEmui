.class public final Landroid/zrhung/appeye/AppEyeTransparentWindow;
.super Landroid/zrhung/ZrHungImpl;
.source "AppEyeTransparentWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/zrhung/appeye/AppEyeTransparentWindow$AppEyeTransparentWindowHandler;
    }
.end annotation


# static fields
.field public static final CHECK_TRANS_WINDOW_ERROR_MSG:I = 0x1

.field public static final FOCUS_ACTIVITY_PARAM:Ljava/lang/String; = "focusedActivityName"

.field public static final FOCUS_PACKAGE_PARAM:Ljava/lang/String; = "focusedPackageName"

.field public static final FOCUS_WINDOW_PARAM:Ljava/lang/String; = "focusedWindowName"

.field public static final HUNG_CONFIG_ENABLE:Ljava/lang/String; = "1"

.field public static final LAYOUT_PARAM:Ljava/lang/String; = "layoutParams"

.field private static final NULL_STRING:Ljava/lang/String; = "null"

.field private static final TAG:Ljava/lang/String; = "ZrHung.AppEyeTransparentWindow"

.field private static mAppEyeTransparentWindow:Landroid/zrhung/appeye/AppEyeTransparentWindow;

.field private static mCheckFreezeScreenDelayTime:I


# instance fields
.field private mAppEyeTransparentWindowHandler:Landroid/zrhung/appeye/AppEyeTransparentWindow$AppEyeTransparentWindowHandler;

.field private mFocusedWindow:Ljava/lang/String;

.field private mHungConfig:Landroid/util/ZRHung$HungConfig;

.field private mHungConfigEnable:Ljava/lang/String;

.field private mHungConfigStatus:I

.field private mTransActivity:Ljava/lang/String;

.field private mTransPackage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    const/4 v0, 0x0

    sput-object v0, Landroid/zrhung/appeye/AppEyeTransparentWindow;->mAppEyeTransparentWindow:Landroid/zrhung/appeye/AppEyeTransparentWindow;

    .line 62
    const/16 v0, 0x1770

    sput v0, Landroid/zrhung/appeye/AppEyeTransparentWindow;->mCheckFreezeScreenDelayTime:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "wpName"    # Ljava/lang/String;

    .line 65
    invoke-direct {p0, p1}, Landroid/zrhung/ZrHungImpl;-><init>(Ljava/lang/String;)V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/zrhung/appeye/AppEyeTransparentWindow;->mAppEyeTransparentWindowHandler:Landroid/zrhung/appeye/AppEyeTransparentWindow$AppEyeTransparentWindowHandler;

    .line 53
    iput-object v0, p0, Landroid/zrhung/appeye/AppEyeTransparentWindow;->mTransPackage:Ljava/lang/String;

    .line 54
    iput-object v0, p0, Landroid/zrhung/appeye/AppEyeTransparentWindow;->mTransActivity:Ljava/lang/String;

    .line 55
    iput-object v0, p0, Landroid/zrhung/appeye/AppEyeTransparentWindow;->mFocusedWindow:Ljava/lang/String;

    .line 59
    iput-object v0, p0, Landroid/zrhung/appeye/AppEyeTransparentWindow;->mHungConfig:Landroid/util/ZRHung$HungConfig;

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Landroid/zrhung/appeye/AppEyeTransparentWindow;->mHungConfigStatus:I

    .line 61
    const-string v0, "null"

    iput-object v0, p0, Landroid/zrhung/appeye/AppEyeTransparentWindow;->mHungConfigEnable:Ljava/lang/String;

    .line 66
    new-instance v0, Landroid/zrhung/appeye/AppEyeTransparentWindow$AppEyeTransparentWindowHandler;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/zrhung/appeye/AppEyeTransparentWindow$AppEyeTransparentWindowHandler;-><init>(Landroid/zrhung/appeye/AppEyeTransparentWindow;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/zrhung/appeye/AppEyeTransparentWindow;->mAppEyeTransparentWindowHandler:Landroid/zrhung/appeye/AppEyeTransparentWindow$AppEyeTransparentWindowHandler;

    .line 67
    return-void
.end method

.method public static declared-synchronized getInstance(Ljava/lang/String;)Landroid/zrhung/appeye/AppEyeTransparentWindow;
    .locals 2
    .param p0, "wpName"    # Ljava/lang/String;

    const-class v0, Landroid/zrhung/appeye/AppEyeTransparentWindow;

    monitor-enter v0

    .line 70
    :try_start_0
    sget-object v1, Landroid/zrhung/appeye/AppEyeTransparentWindow;->mAppEyeTransparentWindow:Landroid/zrhung/appeye/AppEyeTransparentWindow;

    if-nez v1, :cond_0

    .line 71
    new-instance v1, Landroid/zrhung/appeye/AppEyeTransparentWindow;

    invoke-direct {v1, p0}, Landroid/zrhung/appeye/AppEyeTransparentWindow;-><init>(Ljava/lang/String;)V

    sput-object v1, Landroid/zrhung/appeye/AppEyeTransparentWindow;->mAppEyeTransparentWindow:Landroid/zrhung/appeye/AppEyeTransparentWindow;

    .line 73
    :cond_0
    sget-object v1, Landroid/zrhung/appeye/AppEyeTransparentWindow;->mAppEyeTransparentWindow:Landroid/zrhung/appeye/AppEyeTransparentWindow;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 69
    .end local p0    # "wpName":Ljava/lang/String;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private final isTranslucentThemeWithoutActionBar(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 2
    .param p1, "l"    # Landroid/view/WindowManager$LayoutParams;

    .line 252
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->hwFlags:I

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->hwFlags:I

    const/high16 v1, 0x20000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final isWinMayCauseFreezeScreen(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 2
    .param p1, "l"    # Landroid/view/WindowManager$LayoutParams;

    .line 233
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 234
    return v0

    .line 236
    :cond_0
    invoke-direct {p0, p1}, Landroid/zrhung/appeye/AppEyeTransparentWindow;->isZeroAlphaWindow(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 237
    invoke-direct {p0, p1}, Landroid/zrhung/appeye/AppEyeTransparentWindow;->isZeroPixelWindow(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 240
    :cond_1
    return v0

    .line 238
    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private final isZeroAlphaWindow(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 2
    .param p1, "l"    # Landroid/view/WindowManager$LayoutParams;

    .line 244
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    const v1, 0x3c23d70a    # 0.01f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final isZeroPixelWindow(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 2
    .param p1, "l"    # Landroid/view/WindowManager$LayoutParams;

    .line 248
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ltz v0, :cond_0

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    if-gt v0, v1, :cond_0

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private parseInt(Ljava/lang/String;)I
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    .line 125
    const/4 v0, -0x1

    .line 127
    .local v0, "value":I
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 130
    goto :goto_0

    .line 128
    :catch_0
    move-exception v1

    .line 129
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v2, "ZrHung.AppEyeTransparentWindow"

    const-string v3, "parseInt NumberFormatException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :goto_0
    return v0
.end method


# virtual methods
.method public cancelCheck(Landroid/zrhung/ZrHungData;)Z
    .locals 3
    .param p1, "args"    # Landroid/zrhung/ZrHungData;

    .line 174
    :try_start_0
    iget-object v0, p0, Landroid/zrhung/appeye/AppEyeTransparentWindow;->mAppEyeTransparentWindowHandler:Landroid/zrhung/appeye/AppEyeTransparentWindow$AppEyeTransparentWindowHandler;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Landroid/zrhung/appeye/AppEyeTransparentWindow;->mAppEyeTransparentWindowHandler:Landroid/zrhung/appeye/AppEyeTransparentWindow$AppEyeTransparentWindowHandler;

    invoke-virtual {v0, v1}, Landroid/zrhung/appeye/AppEyeTransparentWindow$AppEyeTransparentWindowHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Landroid/zrhung/appeye/AppEyeTransparentWindow;->mAppEyeTransparentWindowHandler:Landroid/zrhung/appeye/AppEyeTransparentWindow$AppEyeTransparentWindowHandler;

    invoke-virtual {v0, v1}, Landroid/zrhung/appeye/AppEyeTransparentWindow$AppEyeTransparentWindowHandler;->removeMessages(I)V

    .line 177
    const-string v0, "ZrHung.AppEyeTransparentWindow"

    const-string v2, "TransparentWindow cancelCheckFreezeScreen"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    :cond_0
    return v1

    .line 181
    :catch_0
    move-exception v0

    .line 182
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "ZrHung.AppEyeTransparentWindow"

    const-string v2, "cancel check exception"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const/4 v1, 0x0

    return v1
.end method

.method public check(Landroid/zrhung/ZrHungData;)Z
    .locals 5
    .param p1, "args"    # Landroid/zrhung/ZrHungData;

    .line 146
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/zrhung/appeye/AppEyeTransparentWindow;->init(Landroid/zrhung/ZrHungData;)I

    .line 147
    const-string v0, "focusedWindowName"

    invoke-virtual {p1, v0}, Landroid/zrhung/ZrHungData;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/zrhung/appeye/AppEyeTransparentWindow;->mFocusedWindow:Ljava/lang/String;

    .line 148
    const-string v0, "focusedPackageName"

    invoke-virtual {p1, v0}, Landroid/zrhung/ZrHungData;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/zrhung/appeye/AppEyeTransparentWindow;->mTransPackage:Ljava/lang/String;

    .line 149
    const-string v0, "focusedActivityName"

    invoke-virtual {p1, v0}, Landroid/zrhung/ZrHungData;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/zrhung/appeye/AppEyeTransparentWindow;->mTransActivity:Ljava/lang/String;

    .line 150
    const-string v0, "ZrHung.AppEyeTransparentWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TransparentWindow mHungConfigStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/zrhung/appeye/AppEyeTransparentWindow;->mHungConfigStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",mHungConfigEnable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/zrhung/appeye/AppEyeTransparentWindow;->mHungConfigEnable:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v0, p0, Landroid/zrhung/appeye/AppEyeTransparentWindow;->mAppEyeTransparentWindowHandler:Landroid/zrhung/appeye/AppEyeTransparentWindow$AppEyeTransparentWindowHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/zrhung/appeye/AppEyeTransparentWindow$AppEyeTransparentWindowHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 152
    .local v0, "msg":Landroid/os/Message;
    if-eqz v0, :cond_0

    .line 153
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 154
    iget-object v2, p0, Landroid/zrhung/appeye/AppEyeTransparentWindow;->mAppEyeTransparentWindowHandler:Landroid/zrhung/appeye/AppEyeTransparentWindow$AppEyeTransparentWindowHandler;

    sget v3, Landroid/zrhung/appeye/AppEyeTransparentWindow;->mCheckFreezeScreenDelayTime:I

    int-to-long v3, v3

    invoke-virtual {v2, v0, v3, v4}, Landroid/zrhung/appeye/AppEyeTransparentWindow$AppEyeTransparentWindowHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :cond_0
    return v1

    .line 157
    .end local v0    # "msg":Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 158
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "ZrHung.AppEyeTransparentWindow"

    const-string v2, "check exception"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const/4 v1, 0x0

    return v1
.end method

.method public init(Landroid/zrhung/ZrHungData;)I
    .locals 4
    .param p1, "args"    # Landroid/zrhung/ZrHungData;

    .line 105
    :try_start_0
    iget-object v0, p0, Landroid/zrhung/appeye/AppEyeTransparentWindow;->mHungConfig:Landroid/util/ZRHung$HungConfig;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/zrhung/appeye/AppEyeTransparentWindow;->mHungConfigStatus:I

    if-ne v0, v2, :cond_1

    .line 106
    :cond_0
    const/16 v0, 0x111

    invoke-static {v0}, Landroid/util/ZRHung;->getHungConfig(S)Landroid/util/ZRHung$HungConfig;

    move-result-object v0

    iput-object v0, p0, Landroid/zrhung/appeye/AppEyeTransparentWindow;->mHungConfig:Landroid/util/ZRHung$HungConfig;

    .line 107
    iget-object v0, p0, Landroid/zrhung/appeye/AppEyeTransparentWindow;->mHungConfig:Landroid/util/ZRHung$HungConfig;

    if-eqz v0, :cond_1

    .line 108
    iget-object v0, p0, Landroid/zrhung/appeye/AppEyeTransparentWindow;->mHungConfig:Landroid/util/ZRHung$HungConfig;

    iget v0, v0, Landroid/util/ZRHung$HungConfig;->status:I

    iput v0, p0, Landroid/zrhung/appeye/AppEyeTransparentWindow;->mHungConfigStatus:I

    .line 109
    iget-object v0, p0, Landroid/zrhung/appeye/AppEyeTransparentWindow;->mHungConfig:Landroid/util/ZRHung$HungConfig;

    iget-object v0, v0, Landroid/util/ZRHung$HungConfig;->value:Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "value":[Ljava/lang/String;
    aget-object v3, v0, v1

    iput-object v3, p0, Landroid/zrhung/appeye/AppEyeTransparentWindow;->mHungConfigEnable:Ljava/lang/String;

    .line 111
    array-length v3, v0

    if-le v3, v2, :cond_1

    .line 112
    aget-object v2, v0, v2

    invoke-direct {p0, v2}, Landroid/zrhung/appeye/AppEyeTransparentWindow;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Landroid/zrhung/appeye/AppEyeTransparentWindow;->mCheckFreezeScreenDelayTime:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    .end local v0    # "value":[Ljava/lang/String;
    :cond_1
    return v1

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "ZrHung.AppEyeTransparentWindow"

    const-string v2, "init exception"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const/4 v1, -0x2

    return v1
.end method

.method public sendEvent(Landroid/zrhung/ZrHungData;)Z
    .locals 11
    .param p1, "args"    # Landroid/zrhung/ZrHungData;

    .line 198
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "layoutParams"

    invoke-virtual {p1, v1}, Landroid/zrhung/ZrHungData;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    .line 199
    .local v1, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    invoke-direct {p0, v1}, Landroid/zrhung/appeye/AppEyeTransparentWindow;->isWinMayCauseFreezeScreen(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 200
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 201
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-direct {p0, v1}, Landroid/zrhung/appeye/AppEyeTransparentWindow;->isTranslucentThemeWithoutActionBar(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 202
    .local v3, "isTranslucent":Ljava/lang/Boolean;
    invoke-direct {p0, v1}, Landroid/zrhung/appeye/AppEyeTransparentWindow;->isZeroPixelWindow(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 203
    .local v4, "isZeroPixel":Ljava/lang/Boolean;
    const-string v5, "pid"

    invoke-virtual {p1, v5}, Landroid/zrhung/ZrHungData;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 204
    .local v5, "obj":Ljava/lang/Object;
    instance-of v6, v5, Ljava/lang/Integer;

    if-eqz v6, :cond_0

    move-object v6, v5

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_0

    :cond_0
    move v6, v0

    .line 205
    .local v6, "pid":I
    :goto_0
    const-string v7, "TransparentActivityScene find freezeScreen"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\n"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    const-string v7, "CURR_PACKAGE: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Landroid/zrhung/appeye/AppEyeTransparentWindow;->mTransPackage:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\n"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    const-string v7, "CURR_WINDOW: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Landroid/zrhung/appeye/AppEyeTransparentWindow;->mFocusedWindow:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\n"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    const-string v7, "CURR_ACTIVITY: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Landroid/zrhung/appeye/AppEyeTransparentWindow;->mTransActivity:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\n"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    const-string v7, "ALPHA: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, "\n"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    const-string v7, "TRANSLUCENT: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "\n"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    const-string v7, "ZEROPIXEL: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "\n"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 213
    const-string v7, "isFault = true"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    :cond_1
    const-string v7, "ZrHung.AppEyeTransparentWindow"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v7, p0, Landroid/zrhung/appeye/AppEyeTransparentWindow;->mHungConfig:Landroid/util/ZRHung$HungConfig;

    if-eqz v7, :cond_2

    .line 217
    iget v7, p0, Landroid/zrhung/appeye/AppEyeTransparentWindow;->mHungConfigStatus:I

    if-nez v7, :cond_2

    const-string v7, "1"

    iget-object v8, p0, Landroid/zrhung/appeye/AppEyeTransparentWindow;->mHungConfigEnable:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 218
    new-instance v7, Landroid/zrhung/ZrHungData;

    invoke-direct {v7}, Landroid/zrhung/ZrHungData;-><init>()V

    .line 219
    .local v7, "data":Landroid/zrhung/ZrHungData;
    const-string v8, "packageName"

    iget-object v9, p0, Landroid/zrhung/appeye/AppEyeTransparentWindow;->mTransPackage:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/zrhung/ZrHungData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const-string v8, "pid"

    invoke-virtual {v7, v8, v6}, Landroid/zrhung/ZrHungData;->putInt(Ljava/lang/String;I)V

    .line 221
    const/16 v8, 0x111

    const/4 v9, 0x0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v8, v7, v9, v10}, Landroid/zrhung/appeye/AppEyeTransparentWindow;->sendAppEyeEvent(SLandroid/zrhung/ZrHungData;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    .end local v3    # "isTranslucent":Ljava/lang/Boolean;
    .end local v4    # "isZeroPixel":Ljava/lang/Boolean;
    .end local v5    # "obj":Ljava/lang/Object;
    .end local v6    # "pid":I
    .end local v7    # "data":Landroid/zrhung/ZrHungData;
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 226
    .end local v1    # "layoutParams":Landroid/view/WindowManager$LayoutParams;
    :catch_0
    move-exception v1

    .line 227
    .local v1, "ex":Ljava/lang/Exception;
    const-string v2, "ZrHung.AppEyeTransparentWindow"

    const-string v3, "send event exception"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    return v0
.end method
