.class Lhuawei/android/security/facerecognition/FaceReportEventToIaware$1;
.super Ljava/lang/Object;
.source "FaceReportEventToIaware.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhuawei/android/security/facerecognition/FaceReportEventToIaware;->reportEventToIaware(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$currentTime:J

.field final synthetic val$eventID:I


# direct methods
.method constructor <init>(IJ)V
    .locals 0

    .line 97
    iput p1, p0, Lhuawei/android/security/facerecognition/FaceReportEventToIaware$1;->val$eventID:I

    iput-wide p2, p0, Lhuawei/android/security/facerecognition/FaceReportEventToIaware$1;->val$currentTime:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 100
    invoke-static {}, Lhuawei/android/security/facerecognition/FaceReportEventToIaware;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    const-string v0, "FaceReportEventToIaware"

    const-string v1, "Report is runnning, thread return."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    return-void

    .line 104
    :cond_0
    invoke-static {}, Lhuawei/android/security/facerecognition/FaceReportEventToIaware;->access$100()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 105
    :try_start_0
    invoke-static {}, Lhuawei/android/security/facerecognition/FaceReportEventToIaware;->access$000()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 106
    const-string v1, "FaceReportEventToIaware"

    const-string v2, "Report is runnning, thread return."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    monitor-exit v0

    return-void

    .line 109
    :cond_1
    iget v1, p0, Lhuawei/android/security/facerecognition/FaceReportEventToIaware$1;->val$eventID:I

    invoke-static {v1}, Lhuawei/android/security/facerecognition/FaceReportEventToIaware;->access$200(I)V

    .line 110
    const/4 v1, 0x0

    invoke-static {v1}, Lhuawei/android/security/facerecognition/FaceReportEventToIaware;->access$002(Z)Z

    .line 111
    iget-wide v1, p0, Lhuawei/android/security/facerecognition/FaceReportEventToIaware$1;->val$currentTime:J

    invoke-static {v1, v2}, Lhuawei/android/security/facerecognition/FaceReportEventToIaware;->access$302(J)J

    .line 112
    iget v1, p0, Lhuawei/android/security/facerecognition/FaceReportEventToIaware$1;->val$eventID:I

    invoke-static {v1}, Lhuawei/android/security/facerecognition/FaceReportEventToIaware;->access$402(I)I

    .line 113
    monitor-exit v0

    .line 114
    return-void

    .line 113
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
