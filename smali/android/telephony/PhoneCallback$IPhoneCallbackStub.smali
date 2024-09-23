.class Landroid/telephony/PhoneCallback$IPhoneCallbackStub;
.super Lcom/android/internal/telephony/IPhoneCallback$Stub;
.source "PhoneCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/PhoneCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IPhoneCallbackStub"
.end annotation


# instance fields
.field private mPhoneCallbackWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/telephony/PhoneCallback;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/telephony/PhoneCallback;


# direct methods
.method public constructor <init>(Landroid/telephony/PhoneCallback;Landroid/telephony/PhoneCallback;)V
    .locals 0
    .param p2, "phoneCallback"    # Landroid/telephony/PhoneCallback;

    .line 76
    iput-object p1, p0, Landroid/telephony/PhoneCallback$IPhoneCallbackStub;->this$0:Landroid/telephony/PhoneCallback;

    invoke-direct {p0}, Lcom/android/internal/telephony/IPhoneCallback$Stub;-><init>()V

    .line 77
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Landroid/telephony/PhoneCallback$IPhoneCallbackStub;->mPhoneCallbackWeakRef:Ljava/lang/ref/WeakReference;

    .line 78
    return-void
.end method

.method private send(IIILjava/lang/Object;)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .line 81
    iget-object v0, p0, Landroid/telephony/PhoneCallback$IPhoneCallbackStub;->mPhoneCallbackWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneCallback;

    .line 82
    .local v0, "callback":Landroid/telephony/PhoneCallback;
    if-eqz v0, :cond_0

    .line 83
    invoke-static {v0}, Landroid/telephony/PhoneCallback;->access$100(Landroid/telephony/PhoneCallback;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {v1, p1, p2, p3, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 85
    :cond_0
    return-void
.end method


# virtual methods
.method public onCallback1(I)V
    .locals 3
    .param p1, "param"    # I

    .line 87
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, p1, v1, v2}, Landroid/telephony/PhoneCallback$IPhoneCallbackStub;->send(IIILjava/lang/Object;)V

    .line 88
    return-void
.end method

.method public onCallback2(II)V
    .locals 2
    .param p1, "param1"    # I
    .param p2, "param2"    # I

    .line 91
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Landroid/telephony/PhoneCallback$IPhoneCallbackStub;->send(IIILjava/lang/Object;)V

    .line 92
    return-void
.end method

.method public onCallback3(IILandroid/os/Bundle;)V
    .locals 1
    .param p1, "param1"    # I
    .param p2, "param2"    # I
    .param p3, "param3"    # Landroid/os/Bundle;

    .line 94
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/telephony/PhoneCallback$IPhoneCallbackStub;->send(IIILjava/lang/Object;)V

    .line 95
    return-void
.end method
