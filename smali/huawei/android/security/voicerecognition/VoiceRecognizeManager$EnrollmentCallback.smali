.class public abstract Lhuawei/android/security/voicerecognition/VoiceRecognizeManager$EnrollmentCallback;
.super Ljava/lang/Object;
.source "VoiceRecognizeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhuawei/android/security/voicerecognition/VoiceRecognizeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "EnrollmentCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 604
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnrollAcquire(II)V
    .locals 0
    .param p1, "acquireInfo"    # I
    .param p2, "subInfo"    # I

    .line 609
    return-void
.end method

.method public onEnrollCancelResult(I)V
    .locals 0
    .param p1, "ret"    # I

    .line 612
    return-void
.end method

.method public onEnrollResult(II)V
    .locals 0
    .param p1, "ret"    # I
    .param p2, "id"    # I

    .line 606
    return-void
.end method
