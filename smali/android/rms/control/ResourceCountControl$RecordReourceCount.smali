.class final Landroid/rms/control/ResourceCountControl$RecordReourceCount;
.super Ljava/lang/Object;
.source "ResourceCountControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/rms/control/ResourceCountControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RecordReourceCount"
.end annotation


# instance fields
.field private mCount:I

.field private mOverLoadNum:I

.field private mReportTimeMillis:J

.field private mTotalCount:I

.field private mWaterFlag:Z


# direct methods
.method constructor <init>(IIIJ)V
    .locals 1
    .param p1, "totalCount"    # I
    .param p2, "count"    # I
    .param p3, "overLoadNum"    # I
    .param p4, "timeMills"    # J

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput p1, p0, Landroid/rms/control/ResourceCountControl$RecordReourceCount;->mTotalCount:I

    .line 60
    iput p2, p0, Landroid/rms/control/ResourceCountControl$RecordReourceCount;->mCount:I

    .line 61
    iput p3, p0, Landroid/rms/control/ResourceCountControl$RecordReourceCount;->mOverLoadNum:I

    .line 62
    iput-wide p4, p0, Landroid/rms/control/ResourceCountControl$RecordReourceCount;->mReportTimeMillis:J

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/rms/control/ResourceCountControl$RecordReourceCount;->mWaterFlag:Z

    .line 64
    return-void
.end method

.method static synthetic access$000(Landroid/rms/control/ResourceCountControl$RecordReourceCount;)I
    .locals 1
    .param p0, "x0"    # Landroid/rms/control/ResourceCountControl$RecordReourceCount;

    .line 47
    iget v0, p0, Landroid/rms/control/ResourceCountControl$RecordReourceCount;->mCount:I

    return v0
.end method

.method static synthetic access$002(Landroid/rms/control/ResourceCountControl$RecordReourceCount;I)I
    .locals 0
    .param p0, "x0"    # Landroid/rms/control/ResourceCountControl$RecordReourceCount;
    .param p1, "x1"    # I

    .line 47
    iput p1, p0, Landroid/rms/control/ResourceCountControl$RecordReourceCount;->mCount:I

    return p1
.end method

.method static synthetic access$008(Landroid/rms/control/ResourceCountControl$RecordReourceCount;)I
    .locals 2
    .param p0, "x0"    # Landroid/rms/control/ResourceCountControl$RecordReourceCount;

    .line 47
    iget v0, p0, Landroid/rms/control/ResourceCountControl$RecordReourceCount;->mCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/rms/control/ResourceCountControl$RecordReourceCount;->mCount:I

    return v0
.end method

.method static synthetic access$010(Landroid/rms/control/ResourceCountControl$RecordReourceCount;)I
    .locals 2
    .param p0, "x0"    # Landroid/rms/control/ResourceCountControl$RecordReourceCount;

    .line 47
    iget v0, p0, Landroid/rms/control/ResourceCountControl$RecordReourceCount;->mCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Landroid/rms/control/ResourceCountControl$RecordReourceCount;->mCount:I

    return v0
.end method

.method static synthetic access$100(Landroid/rms/control/ResourceCountControl$RecordReourceCount;)I
    .locals 1
    .param p0, "x0"    # Landroid/rms/control/ResourceCountControl$RecordReourceCount;

    .line 47
    iget v0, p0, Landroid/rms/control/ResourceCountControl$RecordReourceCount;->mTotalCount:I

    return v0
.end method

.method static synthetic access$102(Landroid/rms/control/ResourceCountControl$RecordReourceCount;I)I
    .locals 0
    .param p0, "x0"    # Landroid/rms/control/ResourceCountControl$RecordReourceCount;
    .param p1, "x1"    # I

    .line 47
    iput p1, p0, Landroid/rms/control/ResourceCountControl$RecordReourceCount;->mTotalCount:I

    return p1
.end method

.method static synthetic access$200(Landroid/rms/control/ResourceCountControl$RecordReourceCount;)Z
    .locals 1
    .param p0, "x0"    # Landroid/rms/control/ResourceCountControl$RecordReourceCount;

    .line 47
    iget-boolean v0, p0, Landroid/rms/control/ResourceCountControl$RecordReourceCount;->mWaterFlag:Z

    return v0
.end method

.method static synthetic access$202(Landroid/rms/control/ResourceCountControl$RecordReourceCount;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/rms/control/ResourceCountControl$RecordReourceCount;
    .param p1, "x1"    # Z

    .line 47
    iput-boolean p1, p0, Landroid/rms/control/ResourceCountControl$RecordReourceCount;->mWaterFlag:Z

    return p1
.end method

.method static synthetic access$300(Landroid/rms/control/ResourceCountControl$RecordReourceCount;)I
    .locals 1
    .param p0, "x0"    # Landroid/rms/control/ResourceCountControl$RecordReourceCount;

    .line 47
    iget v0, p0, Landroid/rms/control/ResourceCountControl$RecordReourceCount;->mOverLoadNum:I

    return v0
.end method

.method static synthetic access$302(Landroid/rms/control/ResourceCountControl$RecordReourceCount;I)I
    .locals 0
    .param p0, "x0"    # Landroid/rms/control/ResourceCountControl$RecordReourceCount;
    .param p1, "x1"    # I

    .line 47
    iput p1, p0, Landroid/rms/control/ResourceCountControl$RecordReourceCount;->mOverLoadNum:I

    return p1
.end method

.method static synthetic access$308(Landroid/rms/control/ResourceCountControl$RecordReourceCount;)I
    .locals 2
    .param p0, "x0"    # Landroid/rms/control/ResourceCountControl$RecordReourceCount;

    .line 47
    iget v0, p0, Landroid/rms/control/ResourceCountControl$RecordReourceCount;->mOverLoadNum:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/rms/control/ResourceCountControl$RecordReourceCount;->mOverLoadNum:I

    return v0
.end method

.method static synthetic access$400(Landroid/rms/control/ResourceCountControl$RecordReourceCount;)J
    .locals 2
    .param p0, "x0"    # Landroid/rms/control/ResourceCountControl$RecordReourceCount;

    .line 47
    iget-wide v0, p0, Landroid/rms/control/ResourceCountControl$RecordReourceCount;->mReportTimeMillis:J

    return-wide v0
.end method

.method static synthetic access$402(Landroid/rms/control/ResourceCountControl$RecordReourceCount;J)J
    .locals 0
    .param p0, "x0"    # Landroid/rms/control/ResourceCountControl$RecordReourceCount;
    .param p1, "x1"    # J

    .line 47
    iput-wide p1, p0, Landroid/rms/control/ResourceCountControl$RecordReourceCount;->mReportTimeMillis:J

    return-wide p1
.end method
