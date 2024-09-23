.class public final synthetic Lhuawei/android/hardware/tp/-$$Lambda$HwTpManager$PuGfrMz_pIKDw283eE1svlyjvV4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lvendor/huawei/hardware/tp/V1_0/ITouchscreen$hwTsRunCommandCallback;


# instance fields
.field private final synthetic f$0:Lhuawei/android/hardware/tp/HwTpManager;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lhuawei/android/hardware/tp/HwTpManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhuawei/android/hardware/tp/-$$Lambda$HwTpManager$PuGfrMz_pIKDw283eE1svlyjvV4;->f$0:Lhuawei/android/hardware/tp/HwTpManager;

    iput-object p2, p0, Lhuawei/android/hardware/tp/-$$Lambda$HwTpManager$PuGfrMz_pIKDw283eE1svlyjvV4;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lhuawei/android/hardware/tp/-$$Lambda$HwTpManager$PuGfrMz_pIKDw283eE1svlyjvV4;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onValues(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lhuawei/android/hardware/tp/-$$Lambda$HwTpManager$PuGfrMz_pIKDw283eE1svlyjvV4;->f$0:Lhuawei/android/hardware/tp/HwTpManager;

    iget-object v1, p0, Lhuawei/android/hardware/tp/-$$Lambda$HwTpManager$PuGfrMz_pIKDw283eE1svlyjvV4;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lhuawei/android/hardware/tp/-$$Lambda$HwTpManager$PuGfrMz_pIKDw283eE1svlyjvV4;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1, p2}, Lhuawei/android/hardware/tp/HwTpManager;->lambda$hwTsRunCommand$0(Lhuawei/android/hardware/tp/HwTpManager;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method
