.class final Lhuawei/android/hardware/tp/HwTpManager$ServiceNotification;
.super Landroid/hidl/manager/V1_0/IServiceNotification$Stub;
.source "HwTpManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhuawei/android/hardware/tp/HwTpManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ServiceNotification"
.end annotation


# instance fields
.field final synthetic this$0:Lhuawei/android/hardware/tp/HwTpManager;


# direct methods
.method constructor <init>(Lhuawei/android/hardware/tp/HwTpManager;)V
    .locals 0
    .param p1, "this$0"    # Lhuawei/android/hardware/tp/HwTpManager;

    .line 125
    iput-object p1, p0, Lhuawei/android/hardware/tp/HwTpManager$ServiceNotification;->this$0:Lhuawei/android/hardware/tp/HwTpManager;

    invoke-direct {p0}, Landroid/hidl/manager/V1_0/IServiceNotification$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRegistration(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "fqName"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "preexisting"    # Z

    .line 128
    iget-object v0, p0, Lhuawei/android/hardware/tp/HwTpManager$ServiceNotification;->this$0:Lhuawei/android/hardware/tp/HwTpManager;

    invoke-static {v0}, Lhuawei/android/hardware/tp/HwTpManager;->access$100(Lhuawei/android/hardware/tp/HwTpManager;)V

    .line 129
    return-void
.end method
