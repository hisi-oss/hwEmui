.class public Landroid/util/ERecoveryEvent;
.super Ljava/lang/Object;
.source "ERecoveryEvent.java"


# static fields
.field public static final EVENT_BEGIN:J = 0x0L

.field public static final EVENT_END:J = 0x1L

.field public static final EVENT_FAIL:J = 0x1L

.field public static final EVENT_PENDING:J = 0x2L

.field public static final EVENT_REQUEST:J = 0x2L

.field public static final EVENT_RESULT:J = 0x3L

.field public static final EVENT_SUCCESS:J


# instance fields
.field private eRecoveryID:J

.field private faultID:J

.field private fingerPrint:Ljava/lang/String;

.field private pid:J

.field private processName:Ljava/lang/String;

.field private reason:Ljava/lang/String;

.field private reserved:Ljava/lang/String;

.field private result:J

.field private state:J

.field private timeStamp:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public constructor <init>(JJJLjava/lang/String;Ljava/lang/String;JJJLjava/lang/String;Ljava/lang/String;)V
    .locals 17
    .param p1, "erecovery_id"    # J
    .param p3, "fault_id"    # J
    .param p5, "pid"    # J
    .param p7, "processname"    # Ljava/lang/String;
    .param p8, "fingerprint"    # Ljava/lang/String;
    .param p9, "time"    # J
    .param p11, "state"    # J
    .param p13, "result"    # J
    .param p15, "reason"    # Ljava/lang/String;
    .param p16, "reserved"    # Ljava/lang/String;

    move-object/from16 v0, p0

    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 30
    move-wide/from16 v1, p1

    iput-wide v1, v0, Landroid/util/ERecoveryEvent;->eRecoveryID:J

    .line 31
    move-wide/from16 v3, p3

    iput-wide v3, v0, Landroid/util/ERecoveryEvent;->faultID:J

    .line 32
    move-wide/from16 v5, p5

    iput-wide v5, v0, Landroid/util/ERecoveryEvent;->pid:J

    .line 33
    move-object/from16 v7, p7

    iput-object v7, v0, Landroid/util/ERecoveryEvent;->processName:Ljava/lang/String;

    .line 34
    move-object/from16 v8, p8

    iput-object v8, v0, Landroid/util/ERecoveryEvent;->fingerPrint:Ljava/lang/String;

    .line 35
    move-wide/from16 v9, p9

    iput-wide v9, v0, Landroid/util/ERecoveryEvent;->timeStamp:J

    .line 36
    move-wide/from16 v11, p11

    iput-wide v11, v0, Landroid/util/ERecoveryEvent;->state:J

    .line 37
    move-wide/from16 v13, p13

    iput-wide v13, v0, Landroid/util/ERecoveryEvent;->result:J

    .line 38
    move-object/from16 v15, p15

    iput-object v15, v0, Landroid/util/ERecoveryEvent;->reason:Ljava/lang/String;

    .line 39
    move-object/from16 v1, p16

    iput-object v1, v0, Landroid/util/ERecoveryEvent;->reserved:Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method public setERecoveryID(J)V
    .locals 0
    .param p1, "id"    # J

    .line 43
    iput-wide p1, p0, Landroid/util/ERecoveryEvent;->eRecoveryID:J

    .line 44
    return-void
.end method

.method public setFaultID(J)V
    .locals 0
    .param p1, "id"    # J

    .line 47
    iput-wide p1, p0, Landroid/util/ERecoveryEvent;->faultID:J

    .line 48
    return-void
.end method

.method public setFingerPrint(Ljava/lang/String;)V
    .locals 0
    .param p1, "fingerPrint"    # Ljava/lang/String;

    .line 59
    iput-object p1, p0, Landroid/util/ERecoveryEvent;->fingerPrint:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setPid(J)V
    .locals 0
    .param p1, "pidNum"    # J

    .line 51
    iput-wide p1, p0, Landroid/util/ERecoveryEvent;->pid:J

    .line 52
    return-void
.end method

.method public setProcessName(Ljava/lang/String;)V
    .locals 0
    .param p1, "processname"    # Ljava/lang/String;

    .line 55
    iput-object p1, p0, Landroid/util/ERecoveryEvent;->processName:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setReason(Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;

    .line 75
    iput-object p1, p0, Landroid/util/ERecoveryEvent;->reason:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setReserved(Ljava/lang/String;)V
    .locals 0
    .param p1, "reserved"    # Ljava/lang/String;

    .line 79
    iput-object p1, p0, Landroid/util/ERecoveryEvent;->reserved:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setResult(J)V
    .locals 0
    .param p1, "result"    # J

    .line 71
    iput-wide p1, p0, Landroid/util/ERecoveryEvent;->result:J

    .line 72
    return-void
.end method

.method public setState(J)V
    .locals 0
    .param p1, "state"    # J

    .line 67
    iput-wide p1, p0, Landroid/util/ERecoveryEvent;->state:J

    .line 68
    return-void
.end method

.method public setTimeStamp(J)V
    .locals 0
    .param p1, "timeStamp"    # J

    .line 63
    iput-wide p1, p0, Landroid/util/ERecoveryEvent;->timeStamp:J

    .line 64
    return-void
.end method
