.class public final Landroid/rms/iaware/DataContract$Apps$ExitMode;
.super Ljava/lang/Object;
.source "DataContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/rms/iaware/DataContract$Apps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExitMode"
.end annotation


# static fields
.field public static final ANR:Ljava/lang/String; = "anr"

.field public static final CLEAN_BG:Ljava/lang/String; = "clean bg"

.field public static final CRASH:Ljava/lang/String; = "crash"

.field public static final DIED:Ljava/lang/String; = "died"

.field public static final FORCE_STOP:Ljava/lang/String; = "force stop"

.field public static final INTALL_EXCEPT:Ljava/lang/String; = "install exception"

.field public static final KILL:Ljava/lang/String; = "kill"

.field public static final OOM_ADJ:Ljava/lang/String; = "oomadj"

.field public static final REINSTALL:Ljava/lang/String; = "reinstall"

.field public static final SYSTEM_MANAGER:Ljava/lang/String; = "system manager"

.field public static final SYSTEM_READY:Ljava/lang/String; = "system ready"

.field public static final TIMEOUT:Ljava/lang/String; = "timeout"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
