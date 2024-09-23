.class final Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;
.super Ljava/lang/Object;
.source "ResourceFlowControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/rms/control/ResourceFlowControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RecordReourceSpeed"
.end annotation


# instance fields
.field private mContinuousOverLoadNum:I

.field private mCountInPeroid:I

.field private mOverLoadNum:I

.field private mReportTimeMillis:J

.field private mTimeMillis:J

.field private mTotalCount:I


# direct methods
.method constructor <init>(IIIIJJ)V
    .locals 0
    .param p1, "totalCount"    # I
    .param p2, "countInPeroid"    # I
    .param p3, "overLoadNum"    # I
    .param p4, "mContinuousOverLoadNum"    # I
    .param p5, "timeMillis"    # J
    .param p7, "reportTimeMillis"    # J

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput p1, p0, Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;->mTotalCount:I

    .line 63
    iput p2, p0, Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;->mCountInPeroid:I

    .line 64
    iput p3, p0, Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;->mOverLoadNum:I

    .line 65
    iput p4, p0, Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;->mContinuousOverLoadNum:I

    .line 66
    iput-wide p5, p0, Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;->mTimeMillis:J

    .line 67
    iput-wide p7, p0, Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;->mReportTimeMillis:J

    .line 68
    return-void
.end method

.method static synthetic access$000(Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;)I
    .locals 1
    .param p0, "x0"    # Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;

    .line 47
    iget v0, p0, Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;->mCountInPeroid:I

    return v0
.end method

.method static synthetic access$002(Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;I)I
    .locals 0
    .param p0, "x0"    # Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;
    .param p1, "x1"    # I

    .line 47
    iput p1, p0, Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;->mCountInPeroid:I

    return p1
.end method

.method static synthetic access$008(Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;)I
    .locals 2
    .param p0, "x0"    # Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;

    .line 47
    iget v0, p0, Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;->mCountInPeroid:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;->mCountInPeroid:I

    return v0
.end method

.method static synthetic access$100(Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;)I
    .locals 1
    .param p0, "x0"    # Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;

    .line 47
    iget v0, p0, Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;->mOverLoadNum:I

    return v0
.end method

.method static synthetic access$102(Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;I)I
    .locals 0
    .param p0, "x0"    # Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;
    .param p1, "x1"    # I

    .line 47
    iput p1, p0, Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;->mOverLoadNum:I

    return p1
.end method

.method static synthetic access$108(Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;)I
    .locals 2
    .param p0, "x0"    # Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;

    .line 47
    iget v0, p0, Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;->mOverLoadNum:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;->mOverLoadNum:I

    return v0
.end method

.method static synthetic access$200(Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;)J
    .locals 2
    .param p0, "x0"    # Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;

    .line 47
    iget-wide v0, p0, Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;->mTimeMillis:J

    return-wide v0
.end method

.method static synthetic access$202(Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;J)J
    .locals 0
    .param p0, "x0"    # Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;
    .param p1, "x1"    # J

    .line 47
    iput-wide p1, p0, Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;->mTimeMillis:J

    return-wide p1
.end method

.method static synthetic access$300(Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;)I
    .locals 1
    .param p0, "x0"    # Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;

    .line 47
    iget v0, p0, Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;->mContinuousOverLoadNum:I

    return v0
.end method

.method static synthetic access$302(Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;I)I
    .locals 0
    .param p0, "x0"    # Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;
    .param p1, "x1"    # I

    .line 47
    iput p1, p0, Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;->mContinuousOverLoadNum:I

    return p1
.end method

.method static synthetic access$308(Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;)I
    .locals 2
    .param p0, "x0"    # Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;

    .line 47
    iget v0, p0, Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;->mContinuousOverLoadNum:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;->mContinuousOverLoadNum:I

    return v0
.end method

.method static synthetic access$408(Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;)I
    .locals 2
    .param p0, "x0"    # Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;

    .line 47
    iget v0, p0, Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;->mTotalCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;->mTotalCount:I

    return v0
.end method

.method static synthetic access$500(Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;)J
    .locals 2
    .param p0, "x0"    # Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;

    .line 47
    iget-wide v0, p0, Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;->mReportTimeMillis:J

    return-wide v0
.end method

.method static synthetic access$502(Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;J)J
    .locals 0
    .param p0, "x0"    # Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;
    .param p1, "x1"    # J

    .line 47
    iput-wide p1, p0, Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;->mReportTimeMillis:J

    return-wide p1
.end method
