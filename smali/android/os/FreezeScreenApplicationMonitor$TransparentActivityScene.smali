.class public final Landroid/os/FreezeScreenApplicationMonitor$TransparentActivityScene;
.super Landroid/os/FreezeScreenScene;
.source "FreezeScreenApplicationMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/FreezeScreenApplicationMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TransparentActivityScene"
.end annotation


# static fields
.field private static final CHECK_FREEZE_SCREEN_DELAY_TIME:I = 0x1388

.field private static final CHILDREN_ARRAY_FIELD:Ljava/lang/String; = "mChildren"

.field private static final IS_TRANSPARENT_FIELD:Ljava/lang/String; = "mIsTransparent"

.field private static final MAX_CHILDREN_VIEW_IN_FIRST_HIERARCHY:I = 0x1

.field private static final MAX_CHILDREN_VIEW_IN_SECOND_HIERARCHY:I = 0x0

.field private static final PARENT_CONTENT_FIELD:Ljava/lang/String; = "mContentParent"

.field private static final PHONE_WINDOW_CLASS:Ljava/lang/String; = "com.android.internal.policy.PhoneWindow"

.field private static final VIEW_GROUP_CLASS:Ljava/lang/String; = "android.view.ViewGroup"

.field private static final mCheckStanderd:[I


# instance fields
.field private mCurCheckActivity:Landroid/app/Activity;

.field private mFreezeScreenAppSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 107
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/os/FreezeScreenApplicationMonitor$TransparentActivityScene;->mCheckStanderd:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 94
    invoke-direct {p0}, Landroid/os/FreezeScreenScene;-><init>()V

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/FreezeScreenApplicationMonitor$TransparentActivityScene;->mCurCheckActivity:Landroid/app/Activity;

    .line 105
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/os/FreezeScreenApplicationMonitor$TransparentActivityScene;->mFreezeScreenAppSet:Ljava/util/HashSet;

    return-void
.end method

.method private final isWinMayCauseFreezeScreen(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 6
    .param p1, "l"    # Landroid/view/WindowManager$LayoutParams;

    .line 159
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 160
    return v0

    .line 162
    :cond_0
    const/4 v1, 0x0

    .line 163
    .local v1, "isTransparent":Z
    iget-object v2, p0, Landroid/os/FreezeScreenApplicationMonitor$TransparentActivityScene;->mCurCheckActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    instance-of v2, v2, Lcom/android/internal/policy/PhoneWindow;

    if-eqz v2, :cond_1

    .line 164
    const-string v2, "com.android.internal.policy.PhoneWindow"

    const-string v3, "mIsTransparent"

    invoke-static {v2, v3}, Landroid/os/FreezeScreenScene$MonitorHelper;->getReflectPrivateField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 166
    .local v2, "isTransparentField":Ljava/lang/reflect/Field;
    if-eqz v2, :cond_1

    .line 168
    :try_start_0
    iget-object v3, p0, Landroid/os/FreezeScreenApplicationMonitor$TransparentActivityScene;->mCurCheckActivity:Landroid/app/Activity;

    .line 169
    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 168
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v3

    .line 172
    goto :goto_0

    .line 170
    :catch_0
    move-exception v3

    .line 171
    .local v3, "e":Ljava/lang/IllegalAccessException;
    const-string v4, "FreezeScreenApplicationMonitor"

    const-string v5, "getTransparentField Fail"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    .end local v2    # "isTransparentField":Ljava/lang/reflect/Field;
    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    :cond_1
    :goto_0
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    const v3, 0x3c23d70a    # 0.01f

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_3

    if-eqz v1, :cond_2

    goto :goto_1

    .line 178
    :cond_2
    return v0

    .line 176
    :cond_3
    :goto_1
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public declared-synchronized cancelCheckFreezeScreen(Landroid/util/ArrayMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .local p1, "params":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Object;>;"
    monitor-enter p0

    .line 149
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/os/FreezeScreenApplicationMonitor$TransparentActivityScene;->checkParamsValid(Landroid/util/ArrayMap;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 151
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/os/FreezeScreenApplicationMonitor$TransparentActivityScene;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 152
    const-string v0, "FreezeScreenApplicationMonitor"

    const-string v1, "TransparentActivityScene cancelCheckFreezeScreen"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v0, p0, Landroid/os/FreezeScreenApplicationMonitor$TransparentActivityScene;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 155
    :cond_1
    monitor-exit p0

    return-void

    .line 148
    .end local p1    # "params":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Landroid/os/FreezeScreenApplicationMonitor$TransparentActivityScene;
    throw p1
.end method

.method public declared-synchronized checkFreezeScreen(Landroid/util/ArrayMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .local p1, "params":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Object;>;"
    monitor-enter p0

    .line 123
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/os/FreezeScreenApplicationMonitor$TransparentActivityScene;->checkParamsValid(Landroid/util/ArrayMap;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 124
    :cond_0
    :try_start_1
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Landroid/os/FreezeScreenApplicationMonitor$TransparentActivityScene;->mCurCheckActivity:Landroid/app/Activity;

    .line 125
    iget-object v0, p0, Landroid/os/FreezeScreenApplicationMonitor$TransparentActivityScene;->mCurCheckActivity:Landroid/app/Activity;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/os/FreezeScreenApplicationMonitor$TransparentActivityScene;->mCurCheckActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 128
    :cond_1
    iget-object v0, p0, Landroid/os/FreezeScreenApplicationMonitor$TransparentActivityScene;->mCurCheckActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "transPackage":Ljava/lang/String;
    iget-object v1, p0, Landroid/os/FreezeScreenApplicationMonitor$TransparentActivityScene;->mCurCheckActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 130
    .local v1, "transActivity":Ljava/lang/String;
    const-string v2, "layoutParams"

    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0, v2}, Landroid/os/FreezeScreenApplicationMonitor$TransparentActivityScene;->isWinMayCauseFreezeScreen(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/os/FreezeScreenApplicationMonitor$TransparentActivityScene;->mFreezeScreenAppSet:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 131
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    const-string v3, "TransparentActivityScene find freezeScreen, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    const-string v3, "CURR_APP: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    if-eqz v1, :cond_2

    .line 137
    iget-object v3, p0, Landroid/os/FreezeScreenApplicationMonitor$TransparentActivityScene;->mFreezeScreenAppSet:Ljava/util/HashSet;

    invoke-virtual {v3, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 140
    :cond_2
    const-string v3, "FreezeScreenApplicationMonitor"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/util/ZRHung;->sendHungEvent(SLjava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 146
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    monitor-exit p0

    return-void

    .line 126
    .end local v0    # "transPackage":Ljava/lang/String;
    .end local v1    # "transActivity":Ljava/lang/String;
    :cond_4
    :goto_0
    monitor-exit p0

    return-void

    .line 122
    .end local p1    # "params":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Landroid/os/FreezeScreenApplicationMonitor$TransparentActivityScene;
    throw p1
.end method

.method public checkParamsValid(Landroid/util/ArrayMap;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 112
    .local p1, "params":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 113
    :cond_0
    const-string v1, "looper"

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Landroid/os/Looper;

    if-nez v1, :cond_1

    return v0

    .line 114
    :cond_1
    const-string v1, "token"

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Landroid/os/IBinder;

    if-nez v1, :cond_2

    return v0

    .line 115
    :cond_2
    const-string v1, "layoutParams"

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v1, "layoutParams"

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Landroid/view/WindowManager$LayoutParams;

    if-nez v1, :cond_3

    .line 116
    return v0

    .line 118
    :cond_3
    const-string v1, "activity"

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Activity;

    if-nez v1, :cond_4

    return v0

    .line 119
    :cond_4
    const/4 v0, 0x1

    return v0
.end method
