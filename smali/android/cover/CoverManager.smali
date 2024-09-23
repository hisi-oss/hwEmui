.class public Landroid/cover/CoverManager;
.super Ljava/lang/Object;
.source "CoverManager.java"

# interfaces
.implements Landroid/cover/IHwCoverManager;


# static fields
.field private static final ACTION_COVER_CHANGED:Ljava/lang/String; = "com.huawei.action.coverview_window_changed"

.field private static final ACTION_PACKAGE:Ljava/lang/String; = "package"

.field private static final ACTION_PERM_COVER:Ljava/lang/String; = "com.android.keyguard.permission.RECEIVE_COVER_STATE"

.field private static final ACTION_TYPE_PARAM:Ljava/lang/String; = "change_type"

.field public static final COVER_COVER_CLOCK_ACTION:Ljava/lang/String; = "com.huawei.android.start.CoverClock"

.field public static final COVER_NAME_PREFIX:Ljava/lang/String; = "Cover:"

.field public static final COVER_SERVICE:Ljava/lang/String; = "cover"

.field public static final COVER_STATE:Ljava/lang/String; = "coverOpen"

.field public static final COVER_STATE_CHANGED_ACTION:Ljava/lang/String; = "com.huawei.android.cover.STATE"

.field public static final DEFAULT_COLOR:I = -0x1000000

.field public static final HALL_STATE_RECEIVER_ASSOCIATED:Ljava/lang/String; = "associated"

.field public static final HALL_STATE_RECEIVER_AUDIO:Ljava/lang/String; = "audioserver"

.field public static final HALL_STATE_RECEIVER_CAMERA:Ljava/lang/String; = "cameraserver"

.field public static final HALL_STATE_RECEIVER_DEFINE:Ljava/lang/String; = "android"

.field public static final HALL_STATE_RECEIVER_FACE:Ljava/lang/String; = "facerecognize"

.field public static final HALL_STATE_RECEIVER_GETSTATE:Ljava/lang/String; = "getstate"

.field public static final HALL_STATE_RECEIVER_PHONE:Ljava/lang/String; = "com.android.phone"

.field private static final KEYGUARD_PERMISSION:Ljava/lang/String; = "android.permission.CONTROL_KEYGUARD"

.field private static final TAG:Ljava/lang/String; = "CoverManger"

.field private static final mInstanceSync:Ljava/lang/Object;

.field private static volatile sSelf:Landroid/cover/CoverManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCoverItemparams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/cover/CoverManager;->mInstanceSync:Ljava/lang/Object;

    .line 54
    const/4 v0, 0x0

    sput-object v0, Landroid/cover/CoverManager;->sSelf:Landroid/cover/CoverManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getCoverManagerService()Landroid/cover/ICoverManager;
    .locals 2

    .line 76
    const-string v0, "cover"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 77
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/cover/ICoverManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/cover/ICoverManager;

    move-result-object v1

    .line 78
    .local v1, "coverManagerService":Landroid/cover/ICoverManager;
    return-object v1
.end method

.method public static getDefault()Landroid/cover/CoverManager;
    .locals 1

    .line 82
    sget-object v0, Landroid/cover/CoverManager;->sSelf:Landroid/cover/CoverManager;

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Landroid/cover/CoverManager;

    invoke-direct {v0}, Landroid/cover/CoverManager;-><init>()V

    sput-object v0, Landroid/cover/CoverManager;->sSelf:Landroid/cover/CoverManager;

    .line 85
    :cond_0
    sget-object v0, Landroid/cover/CoverManager;->sSelf:Landroid/cover/CoverManager;

    return-object v0
.end method


# virtual methods
.method public addCoverItemView(Landroid/view/View;Z)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "isNeed"    # Z

    .line 222
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/cover/CoverManager;->addCoverItemView(Landroid/view/View;ZZI)V

    .line 223
    return-void
.end method

.method public addCoverItemView(Landroid/view/View;ZI)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "isNeed"    # Z
    .param p3, "activTime"    # I

    .line 226
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/cover/CoverManager;->addCoverItemView(Landroid/view/View;ZZI)V

    .line 227
    return-void
.end method

.method public addCoverItemView(Landroid/view/View;ZZ)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "isNeed"    # Z
    .param p3, "mDisablePower"    # Z

    .line 230
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/cover/CoverManager;->addCoverItemView(Landroid/view/View;ZZI)V

    .line 231
    return-void
.end method

.method public addCoverItemView(Landroid/view/View;ZZI)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "isNeed"    # Z
    .param p3, "mDisablePower"    # Z
    .param p4, "activTime"    # I

    .line 238
    if-nez p1, :cond_0

    .line 239
    const-string v0, "CoverManger"

    const-string v1, "return from addCoverItemView because view is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    return-void

    .line 242
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/cover/CoverManager;->mContext:Landroid/content/Context;

    .line 243
    iget-object v0, p0, Landroid/cover/CoverManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "cover_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v2, v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 244
    .local v0, "isModeEnabled":Z
    :goto_0
    if-nez v0, :cond_2

    .line 245
    const-string v1, "CoverManger"

    const-string v2, "return from addCoverItemView because the button is closed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    return-void

    .line 248
    :cond_2
    const/16 v1, 0x132

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addCoverItemView isNeed = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mDisablePower:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " view:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Flog;->i(ILjava/lang/String;)I

    .line 250
    iget-object v1, p0, Landroid/cover/CoverManager;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 251
    .local v1, "wm":Landroid/view/WindowManager;
    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    const/16 v4, 0x835

    invoke-direct {v3, v4}, Landroid/view/WindowManager$LayoutParams;-><init>(I)V

    iput-object v3, p0, Landroid/cover/CoverManager;->mCoverItemparams:Landroid/view/WindowManager$LayoutParams;

    .line 252
    iget-object v3, p0, Landroid/cover/CoverManager;->mCoverItemparams:Landroid/view/WindowManager$LayoutParams;

    const/4 v4, -0x1

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 253
    iget-object v3, p0, Landroid/cover/CoverManager;->mCoverItemparams:Landroid/view/WindowManager$LayoutParams;

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 259
    iget-object v3, p0, Landroid/cover/CoverManager;->mCoverItemparams:Landroid/view/WindowManager$LayoutParams;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cover:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Landroid/cover/CoverManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 260
    iget-object v3, p0, Landroid/cover/CoverManager;->mCoverItemparams:Landroid/view/WindowManager$LayoutParams;

    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const v5, -0x7ffffff0

    or-int/2addr v4, v5

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 262
    iget-object v3, p0, Landroid/cover/CoverManager;->mCoverItemparams:Landroid/view/WindowManager$LayoutParams;

    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v4, v4, 0x300

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 265
    if-eqz p4, :cond_3

    .line 266
    iget-object v3, p0, Landroid/cover/CoverManager;->mCoverItemparams:Landroid/view/WindowManager$LayoutParams;

    int-to-long v4, p4

    iput-wide v4, v3, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 268
    :cond_3
    if-eqz p3, :cond_4

    .line 270
    iget-object v3, p0, Landroid/cover/CoverManager;->mCoverItemparams:Landroid/view/WindowManager$LayoutParams;

    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->hwFlags:I

    const/high16 v5, -0x80000000

    or-int/2addr v4, v5

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->hwFlags:I

    .line 273
    :cond_4
    if-eqz p2, :cond_5

    .line 274
    iget-object v3, p0, Landroid/cover/CoverManager;->mCoverItemparams:Landroid/view/WindowManager$LayoutParams;

    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v4, v4, 0x800

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_1

    .line 276
    :cond_5
    iget-object v3, p0, Landroid/cover/CoverManager;->mCoverItemparams:Landroid/view/WindowManager$LayoutParams;

    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v4, v4, 0x400

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 278
    :goto_1
    iget-object v3, p0, Landroid/cover/CoverManager;->mCoverItemparams:Landroid/view/WindowManager$LayoutParams;

    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v5, 0x20000

    or-int/2addr v4, v5

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 279
    iget-object v3, p0, Landroid/cover/CoverManager;->mCoverItemparams:Landroid/view/WindowManager$LayoutParams;

    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v5, 0x4000000

    or-int/2addr v4, v5

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 280
    iget-object v3, p0, Landroid/cover/CoverManager;->mCoverItemparams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v3, Landroid/view/WindowManager$LayoutParams;->isEmuiStyle:I

    .line 282
    const/high16 v3, 0x10000

    invoke-virtual {p1, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 283
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_6

    .line 284
    iget-object v3, p0, Landroid/cover/CoverManager;->mCoverItemparams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, p1, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 286
    :cond_6
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.huawei.action.coverview_window_changed"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 287
    .local v3, "intent":Landroid/content/Intent;
    const-string v4, "change_type"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 288
    const-string v2, "package"

    iget-object v4, p0, Landroid/cover/CoverManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 289
    iget-object v2, p0, Landroid/cover/CoverManager;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v5, "com.android.keyguard.permission.RECEIVE_COVER_STATE"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 290
    return-void
.end method

.method public getHallState(I)I
    .locals 4
    .param p1, "hallType"    # I

    .line 127
    const/4 v0, -0x1

    const/16 v1, 0x132

    :try_start_0
    invoke-static {}, Landroid/cover/CoverManager;->getCoverManagerService()Landroid/cover/ICoverManager;

    move-result-object v2

    .line 128
    .local v2, "ic":Landroid/cover/ICoverManager;
    if-nez v2, :cond_0

    .line 129
    const-string v3, "getHallState get CoverManagerService fail"

    invoke-static {v1, v3}, Landroid/util/Flog;->w(ILjava/lang/String;)I

    .line 130
    return v0

    .line 132
    :cond_0
    invoke-interface {v2, p1}, Landroid/cover/ICoverManager;->getHallState(I)I

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    .line 133
    .end local v2    # "ic":Landroid/cover/ICoverManager;
    :catch_0
    move-exception v2

    .line 134
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "getHallState get RemoteException:"

    invoke-static {v1, v3, v2}, Landroid/util/Flog;->w(ILjava/lang/String;Ljava/lang/Throwable;)I

    .line 135
    return v0
.end method

.method public isCoverOpen()Z
    .locals 4

    .line 90
    const/4 v0, 0x1

    const/16 v1, 0x132

    :try_start_0
    invoke-static {}, Landroid/cover/CoverManager;->getCoverManagerService()Landroid/cover/ICoverManager;

    move-result-object v2

    .line 91
    .local v2, "ic":Landroid/cover/ICoverManager;
    if-nez v2, :cond_0

    .line 92
    const-string v3, "CoverManagerService not started yet"

    invoke-static {v1, v3}, Landroid/util/Flog;->w(ILjava/lang/String;)I

    .line 93
    return v0

    .line 96
    :cond_0
    invoke-interface {v2}, Landroid/cover/ICoverManager;->isCoverOpen()Z

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    .line 98
    .end local v2    # "ic":Landroid/cover/ICoverManager;
    :catch_0
    move-exception v2

    .line 99
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "isCoverOpen got RemoteException:"

    invoke-static {v1, v3, v2}, Landroid/util/Flog;->w(ILjava/lang/String;Ljava/lang/Throwable;)I

    .line 100
    return v0
.end method

.method public registerHallCallback(Ljava/lang/String;ILandroid/cover/IHallCallback;)Z
    .locals 4
    .param p1, "receiverName"    # Ljava/lang/String;
    .param p2, "hallType"    # I
    .param p3, "callback"    # Landroid/cover/IHallCallback;

    .line 153
    const/4 v0, 0x0

    const/16 v1, 0x132

    :try_start_0
    invoke-static {}, Landroid/cover/CoverManager;->getCoverManagerService()Landroid/cover/ICoverManager;

    move-result-object v2

    .line 154
    .local v2, "ic":Landroid/cover/ICoverManager;
    if-nez v2, :cond_0

    .line 155
    const-string v3, "registerHallCallback get CoverManagerService fail"

    invoke-static {v1, v3}, Landroid/util/Flog;->w(ILjava/lang/String;)I

    .line 156
    return v0

    .line 158
    :cond_0
    invoke-interface {v2, p1, p2, p3}, Landroid/cover/ICoverManager;->registerHallCallback(Ljava/lang/String;ILandroid/cover/IHallCallback;)Z

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    .line 159
    .end local v2    # "ic":Landroid/cover/ICoverManager;
    :catch_0
    move-exception v2

    .line 160
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "registerHallCallback get RemoteException:"

    invoke-static {v1, v3, v2}, Landroid/util/Flog;->w(ILjava/lang/String;Ljava/lang/Throwable;)I

    .line 161
    return v0
.end method

.method public removeCoverItemView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeCoverItemView view = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x132

    invoke-static {v1, v0}, Landroid/util/Flog;->i(ILjava/lang/String;)I

    .line 294
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Landroid/cover/CoverManager;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 296
    .local v0, "wm":Landroid/view/WindowManager;
    invoke-interface {v0, p1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 299
    .end local v0    # "wm":Landroid/view/WindowManager;
    :cond_0
    iget-object v0, p0, Landroid/cover/CoverManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 301
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.huawei.action.coverview_window_changed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 302
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "change_type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 303
    const-string v1, "package"

    iget-object v2, p0, Landroid/cover/CoverManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 304
    iget-object v1, p0, Landroid/cover/CoverManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "com.android.keyguard.permission.RECEIVE_COVER_STATE"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 308
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method public setCoverForbiddened(Z)Z
    .locals 4
    .param p1, "forbiddened"    # Z

    .line 107
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/cover/CoverManager;->getCoverManagerService()Landroid/cover/ICoverManager;

    move-result-object v1

    .line 108
    .local v1, "ic":Landroid/cover/ICoverManager;
    if-nez v1, :cond_0

    .line 109
    return v0

    .line 111
    :cond_0
    invoke-interface {v1, p1}, Landroid/cover/ICoverManager;->setCoverForbiddened(Z)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 112
    .end local v1    # "ic":Landroid/cover/ICoverManager;
    :catch_0
    move-exception v1

    .line 113
    .local v1, "e":Landroid/os/RemoteException;
    const/16 v2, 0x132

    const-string v3, "setCoverForbiddened got RemoteException:"

    invoke-static {v2, v3, v1}, Landroid/util/Flog;->w(ILjava/lang/String;Ljava/lang/Throwable;)I

    .line 114
    return v0
.end method

.method public setCoverViewBinder(Landroid/os/IBinder;Landroid/content/Context;)V
    .locals 3
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "context"    # Landroid/content/Context;

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCoverBinder, binder = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x132

    invoke-static {v1, v0}, Landroid/util/Flog;->i(ILjava/lang/String;)I

    .line 313
    const-string v0, "android.permission.CONTROL_KEYGUARD"

    invoke-virtual {p2, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 318
    :try_start_0
    invoke-static {}, Landroid/cover/CoverManager;->getCoverManagerService()Landroid/cover/ICoverManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/cover/ICoverManager;->setCoverViewBinder(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    goto :goto_0

    .line 319
    :catch_0
    move-exception v0

    .line 320
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "setCoverBinder failed:"

    invoke-static {v1, v2, v0}, Landroid/util/Flog;->w(ILjava/lang/String;Ljava/lang/Throwable;)I

    .line 322
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 314
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caller needs permission \'android.permission.CONTROL_KEYGUARD\' to call "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Flog;->w(ILjava/lang/String;)I

    .line 315
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "must have permission android.permission.CONTROL_KEYGUARD"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unRegisterHallCallback(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "receiverName"    # Ljava/lang/String;
    .param p2, "hallType"    # I

    .line 179
    const/4 v0, 0x0

    const/16 v1, 0x132

    :try_start_0
    invoke-static {}, Landroid/cover/CoverManager;->getCoverManagerService()Landroid/cover/ICoverManager;

    move-result-object v2

    .line 180
    .local v2, "ic":Landroid/cover/ICoverManager;
    if-nez v2, :cond_0

    .line 181
    const-string v3, "unRegisterHallCallback get CoverManagerService fail"

    invoke-static {v1, v3}, Landroid/util/Flog;->w(ILjava/lang/String;)I

    .line 182
    return v0

    .line 184
    :cond_0
    invoke-interface {v2, p1, p2}, Landroid/cover/ICoverManager;->unRegisterHallCallback(Ljava/lang/String;I)Z

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    .line 185
    .end local v2    # "ic":Landroid/cover/ICoverManager;
    :catch_0
    move-exception v2

    .line 186
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "unRegisterHallCallback get RemoteException:"

    invoke-static {v1, v3, v2}, Landroid/util/Flog;->w(ILjava/lang/String;Ljava/lang/Throwable;)I

    .line 187
    return v0
.end method

.method public unRegisterHallCallbackEx(ILandroid/cover/IHallCallback;)Z
    .locals 4
    .param p1, "hallType"    # I
    .param p2, "callback"    # Landroid/cover/IHallCallback;

    .line 206
    const/4 v0, 0x0

    const/16 v1, 0x132

    :try_start_0
    invoke-static {}, Landroid/cover/CoverManager;->getCoverManagerService()Landroid/cover/ICoverManager;

    move-result-object v2

    .line 207
    .local v2, "ic":Landroid/cover/ICoverManager;
    if-nez v2, :cond_0

    .line 208
    const-string v3, "unRegisterHallCallbackEx get CoverManagerService fail"

    invoke-static {v1, v3}, Landroid/util/Flog;->w(ILjava/lang/String;)I

    .line 209
    return v0

    .line 211
    :cond_0
    invoke-interface {v2, p1, p2}, Landroid/cover/ICoverManager;->unRegisterHallCallbackEx(ILandroid/cover/IHallCallback;)Z

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    .line 212
    .end local v2    # "ic":Landroid/cover/ICoverManager;
    :catch_0
    move-exception v2

    .line 213
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "unRegisterHallCallbackEx get RemoteException:"

    invoke-static {v1, v3, v2}, Landroid/util/Flog;->w(ILjava/lang/String;Ljava/lang/Throwable;)I

    .line 214
    return v0
.end method
