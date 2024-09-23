.class public Landroid/app/mtm/iaware/appmng/AppMngConstant;
.super Ljava/lang/Object;
.source "AppMngConstant.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/mtm/iaware/appmng/AppMngConstant$BroadcastSource;,
        Landroid/app/mtm/iaware/appmng/AppMngConstant$AppStartReason;,
        Landroid/app/mtm/iaware/appmng/AppMngConstant$AppStartSource;,
        Landroid/app/mtm/iaware/appmng/AppMngConstant$AppCpuLimitSource;,
        Landroid/app/mtm/iaware/appmng/AppMngConstant$AppIoLimitSource;,
        Landroid/app/mtm/iaware/appmng/AppMngConstant$AppFreezeSource;,
        Landroid/app/mtm/iaware/appmng/AppMngConstant$AppCleanSource;,
        Landroid/app/mtm/iaware/appmng/AppMngConstant$CleanReason;,
        Landroid/app/mtm/iaware/appmng/AppMngConstant$AppMngFeature;,
        Landroid/app/mtm/iaware/appmng/AppMngConstant$EnumWithDesc;
    }
.end annotation


# static fields
.field public static final ACTION_SYSTEM_MANAGER_CLEAN:I = 0x0

.field public static final ACTION_SYSTEM_MANAGER_GET_LIST:I = 0x1

.field public static final POLICY_IGNORE:I = 0x2

.field public static final POLICY_SMART:I = 0x0

.field public static final POLICY_STRICT:I = 0x1

.field public static final RSN_ALW_COMMON:I = 0x4

.field public static final RSN_ALW_ONEAPP:I = 0x1

.field public static final RSN_ALW_SYSCALL:I = 0x2

.field public static final RSN_ALW_USER:I = 0x3

.field public static final RSN_FBD:I = 0x0

.field public static final RSN_MAX:I = 0x5

.field public static final TAG_SPECIAL_REASON:Ljava/lang/String; = "spec"

.field public static final TRI_STAT_NOTSMT_ALV:I = 0x2

.field public static final TRI_STAT_NOTSMT_NOTALV:I = 0x0

.field public static final TRI_STAT_SMT_ALV_CUST:I = 0x4

.field public static final TRI_STAT_SMT_ALV_NCUST:I = 0x3

.field public static final TRI_STAT_SMT_NOTALV:I = 0x1

.field public static final TRI_STAT_UNINIT:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
