.class Lcom/huawei/hardware/face/FaceAuthenticationManager$OnAuthenticationCancelListener;
.super Ljava/lang/Object;
.source "FaceAuthenticationManager.java"

# interfaces
.implements Landroid/os/CancellationSignal$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hardware/face/FaceAuthenticationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnAuthenticationCancelListener"
.end annotation


# instance fields
.field private mCrypto:Lcom/huawei/hardware/face/FaceAuthenticationManager$CryptoObject;

.field final synthetic this$0:Lcom/huawei/hardware/face/FaceAuthenticationManager;


# direct methods
.method constructor <init>(Lcom/huawei/hardware/face/FaceAuthenticationManager;Lcom/huawei/hardware/face/FaceAuthenticationManager$CryptoObject;)V
    .locals 0
    .param p2, "crypto"    # Lcom/huawei/hardware/face/FaceAuthenticationManager$CryptoObject;

    .line 937
    iput-object p1, p0, Lcom/huawei/hardware/face/FaceAuthenticationManager$OnAuthenticationCancelListener;->this$0:Lcom/huawei/hardware/face/FaceAuthenticationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 938
    iput-object p2, p0, Lcom/huawei/hardware/face/FaceAuthenticationManager$OnAuthenticationCancelListener;->mCrypto:Lcom/huawei/hardware/face/FaceAuthenticationManager$CryptoObject;

    .line 939
    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .line 943
    iget-object v0, p0, Lcom/huawei/hardware/face/FaceAuthenticationManager$OnAuthenticationCancelListener;->this$0:Lcom/huawei/hardware/face/FaceAuthenticationManager;

    iget-object v1, p0, Lcom/huawei/hardware/face/FaceAuthenticationManager$OnAuthenticationCancelListener;->mCrypto:Lcom/huawei/hardware/face/FaceAuthenticationManager$CryptoObject;

    invoke-static {v0, v1}, Lcom/huawei/hardware/face/FaceAuthenticationManager;->access$800(Lcom/huawei/hardware/face/FaceAuthenticationManager;Lcom/huawei/hardware/face/FaceAuthenticationManager$CryptoObject;)V

    .line 944
    return-void
.end method
