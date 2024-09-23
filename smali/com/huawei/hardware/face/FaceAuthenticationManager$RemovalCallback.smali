.class public abstract Lcom/huawei/hardware/face/FaceAuthenticationManager$RemovalCallback;
.super Ljava/lang/Object;
.source "FaceAuthenticationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hardware/face/FaceAuthenticationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "RemovalCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 899
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemovalError(Lcom/huawei/hardware/face/Face;ILjava/lang/CharSequence;)V
    .locals 0
    .param p1, "face"    # Lcom/huawei/hardware/face/Face;
    .param p2, "errMsgId"    # I
    .param p3, "errString"    # Ljava/lang/CharSequence;

    .line 909
    return-void
.end method

.method public onRemovalSucceeded(Lcom/huawei/hardware/face/Face;)V
    .locals 0
    .param p1, "face"    # Lcom/huawei/hardware/face/Face;

    .line 917
    return-void
.end method
