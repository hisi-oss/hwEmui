.class Lhuawei/android/security/facerecognition/FaceCamera$HandlerExecutor;
.super Ljava/lang/Object;
.source "FaceCamera.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhuawei/android/security/facerecognition/FaceCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HandlerExecutor"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .line 780
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 781
    iput-object p1, p0, Lhuawei/android/security/facerecognition/FaceCamera$HandlerExecutor;->mHandler:Landroid/os/Handler;

    .line 782
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runCmd"    # Ljava/lang/Runnable;

    .line 786
    iget-object v0, p0, Lhuawei/android/security/facerecognition/FaceCamera$HandlerExecutor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 787
    return-void
.end method
