.class Lvendor/huawei/hardware/tp/V1_0/ITouchscreen$Stub$7;
.super Ljava/lang/Object;
.source "ITouchscreen.java"

# interfaces
.implements Lvendor/huawei/hardware/tp/V1_0/ITouchscreen$hwTsRunCommandCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvendor/huawei/hardware/tp/V1_0/ITouchscreen$Stub;->onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lvendor/huawei/hardware/tp/V1_0/ITouchscreen$Stub;

.field final synthetic val$_hidl_reply:Landroid/os/HwParcel;


# direct methods
.method constructor <init>(Lvendor/huawei/hardware/tp/V1_0/ITouchscreen$Stub;Landroid/os/HwParcel;)V
    .locals 0
    .param p1, "this$0"    # Lvendor/huawei/hardware/tp/V1_0/ITouchscreen$Stub;

    .line 2058
    iput-object p1, p0, Lvendor/huawei/hardware/tp/V1_0/ITouchscreen$Stub$7;->this$0:Lvendor/huawei/hardware/tp/V1_0/ITouchscreen$Stub;

    iput-object p2, p0, Lvendor/huawei/hardware/tp/V1_0/ITouchscreen$Stub$7;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValues(ILjava/lang/String;)V
    .locals 2
    .param p1, "ret"    # I
    .param p2, "status"    # Ljava/lang/String;

    .line 2061
    iget-object v0, p0, Lvendor/huawei/hardware/tp/V1_0/ITouchscreen$Stub$7;->val$_hidl_reply:Landroid/os/HwParcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2062
    iget-object v0, p0, Lvendor/huawei/hardware/tp/V1_0/ITouchscreen$Stub$7;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2063
    iget-object v0, p0, Lvendor/huawei/hardware/tp/V1_0/ITouchscreen$Stub$7;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2064
    iget-object v0, p0, Lvendor/huawei/hardware/tp/V1_0/ITouchscreen$Stub$7;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0}, Landroid/os/HwParcel;->send()V

    .line 2065
    return-void
.end method
