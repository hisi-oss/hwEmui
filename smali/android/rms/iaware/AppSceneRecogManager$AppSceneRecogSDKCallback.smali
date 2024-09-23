.class Landroid/rms/iaware/AppSceneRecogManager$AppSceneRecogSDKCallback;
.super Landroid/os/Binder;
.source "AppSceneRecogManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/rms/iaware/AppSceneRecogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppSceneRecogSDKCallback"
.end annotation


# static fields
.field private static final BINDER_TRANSACTION_END:I = 0x1

.field private static final SDK_CALLBACK_DESCRIPTOR:Ljava/lang/String; = "android.rms.iaware.AppSceneRecogSDKCallback"

.field private static final TRANSACTION_RECOGAPPSCENE:I = 0x1


# instance fields
.field private final sceneList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/rms/iaware/AppSceneRecogManager;


# direct methods
.method public constructor <init>(Landroid/rms/iaware/AppSceneRecogManager;)V
    .locals 0

    .line 969
    iput-object p1, p0, Landroid/rms/iaware/AppSceneRecogManager$AppSceneRecogSDKCallback;->this$0:Landroid/rms/iaware/AppSceneRecogManager;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 968
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/rms/iaware/AppSceneRecogManager$AppSceneRecogSDKCallback;->sceneList:Ljava/util/List;

    .line 970
    const-string p1, "android.rms.iaware.AppSceneRecogSDKCallback"

    invoke-virtual {p0, p0, p1}, Landroid/rms/iaware/AppSceneRecogManager$AppSceneRecogSDKCallback;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 971
    return-void
.end method

.method private sendInitMsg()V
    .locals 5

    .line 1027
    const/4 v0, 0x0

    .line 1028
    .local v0, "initFlag":I
    iget-object v1, p0, Landroid/rms/iaware/AppSceneRecogManager$AppSceneRecogSDKCallback;->this$0:Landroid/rms/iaware/AppSceneRecogManager;

    invoke-static {v1}, Landroid/rms/iaware/AppSceneRecogManager;->access$400(Landroid/rms/iaware/AppSceneRecogManager;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1029
    iget-object v1, p0, Landroid/rms/iaware/AppSceneRecogManager$AppSceneRecogSDKCallback;->this$0:Landroid/rms/iaware/AppSceneRecogManager;

    invoke-static {v1}, Landroid/rms/iaware/AppSceneRecogManager;->access$1900(Landroid/rms/iaware/AppSceneRecogManager;)V

    .line 1030
    const/4 v0, 0x1

    .line 1033
    :cond_0
    iget-object v1, p0, Landroid/rms/iaware/AppSceneRecogManager$AppSceneRecogSDKCallback;->this$0:Landroid/rms/iaware/AppSceneRecogManager;

    invoke-static {v1}, Landroid/rms/iaware/AppSceneRecogManager;->access$1200(Landroid/rms/iaware/AppSceneRecogManager;)Landroid/rms/iaware/AppSceneRecogManager$ThirdAppHandler;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1034
    iget-object v1, p0, Landroid/rms/iaware/AppSceneRecogManager$AppSceneRecogSDKCallback;->this$0:Landroid/rms/iaware/AppSceneRecogManager;

    invoke-static {v1}, Landroid/rms/iaware/AppSceneRecogManager;->access$1200(Landroid/rms/iaware/AppSceneRecogManager;)Landroid/rms/iaware/AppSceneRecogManager$ThirdAppHandler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/rms/iaware/AppSceneRecogManager$ThirdAppHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 1035
    .local v1, "msg":Landroid/os/Message;
    iput v2, v1, Landroid/os/Message;->what:I

    .line 1036
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/rms/iaware/AppSceneRecogManager$AppSceneRecogSDKCallback;->sceneList:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1037
    .local v2, "tmpArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1038
    .local v3, "bundle":Landroid/os/Bundle;
    const-string v4, "list"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1039
    const-string v4, "initflag"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1040
    invoke-virtual {v1, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1041
    iget-object v4, p0, Landroid/rms/iaware/AppSceneRecogManager$AppSceneRecogSDKCallback;->this$0:Landroid/rms/iaware/AppSceneRecogManager;

    invoke-static {v4}, Landroid/rms/iaware/AppSceneRecogManager;->access$1200(Landroid/rms/iaware/AppSceneRecogManager;)Landroid/rms/iaware/AppSceneRecogManager$ThirdAppHandler;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/rms/iaware/AppSceneRecogManager$ThirdAppHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1043
    iget-object v4, p0, Landroid/rms/iaware/AppSceneRecogManager$AppSceneRecogSDKCallback;->sceneList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 1045
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "tmpArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "bundle":Landroid/os/Bundle;
    :cond_1
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1023
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 976
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 1017
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 979
    :cond_0
    const/4 v1, 0x2

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "android.rms.iaware.AppSceneRecogSDKCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 984
    nop

    .line 986
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 987
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 988
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 989
    .local v4, "binderFlag":I
    iget-object v5, p0, Landroid/rms/iaware/AppSceneRecogManager$AppSceneRecogSDKCallback;->sceneList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 991
    if-ne v4, v0, :cond_3

    .line 992
    iget-object v5, p0, Landroid/rms/iaware/AppSceneRecogManager$AppSceneRecogSDKCallback;->sceneList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 993
    invoke-static {}, Landroid/rms/iaware/AppSceneRecogManager;->access$600()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 994
    const-string v1, "AppSceneRecogManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Scene data for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    :cond_1
    invoke-direct {p0}, Landroid/rms/iaware/AppSceneRecogManager$AppSceneRecogSDKCallback;->sendInitMsg()V

    .line 997
    iget-object v1, p0, Landroid/rms/iaware/AppSceneRecogManager$AppSceneRecogSDKCallback;->this$0:Landroid/rms/iaware/AppSceneRecogManager;

    invoke-static {v1}, Landroid/rms/iaware/AppSceneRecogManager;->access$400(Landroid/rms/iaware/AppSceneRecogManager;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 998
    iget-object v1, p0, Landroid/rms/iaware/AppSceneRecogManager$AppSceneRecogSDKCallback;->this$0:Landroid/rms/iaware/AppSceneRecogManager;

    invoke-static {v1}, Landroid/rms/iaware/AppSceneRecogManager;->access$1900(Landroid/rms/iaware/AppSceneRecogManager;)V

    .line 999
    iget-object v1, p0, Landroid/rms/iaware/AppSceneRecogManager$AppSceneRecogSDKCallback;->this$0:Landroid/rms/iaware/AppSceneRecogManager;

    invoke-static {v1}, Landroid/rms/iaware/AppSceneRecogManager;->access$1200(Landroid/rms/iaware/AppSceneRecogManager;)Landroid/rms/iaware/AppSceneRecogManager$ThirdAppHandler;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1000
    iget-object v1, p0, Landroid/rms/iaware/AppSceneRecogManager$AppSceneRecogSDKCallback;->this$0:Landroid/rms/iaware/AppSceneRecogManager;

    invoke-static {v1}, Landroid/rms/iaware/AppSceneRecogManager;->access$1200(Landroid/rms/iaware/AppSceneRecogManager;)Landroid/rms/iaware/AppSceneRecogManager$ThirdAppHandler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/rms/iaware/AppSceneRecogManager$ThirdAppHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 1001
    .local v1, "msg":Landroid/os/Message;
    iput v0, v1, Landroid/os/Message;->what:I

    .line 1002
    new-instance v2, Ljava/util/ArrayList;

    iget-object v5, p0, Landroid/rms/iaware/AppSceneRecogManager$AppSceneRecogSDKCallback;->sceneList:Ljava/util/List;

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1003
    .local v2, "tmpArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 1004
    .local v5, "bundle":Landroid/os/Bundle;
    const-string v6, "list"

    invoke-virtual {v5, v6, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1005
    invoke-virtual {v1, v5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1006
    iget-object v6, p0, Landroid/rms/iaware/AppSceneRecogManager$AppSceneRecogSDKCallback;->this$0:Landroid/rms/iaware/AppSceneRecogManager;

    invoke-static {v6}, Landroid/rms/iaware/AppSceneRecogManager;->access$1200(Landroid/rms/iaware/AppSceneRecogManager;)Landroid/rms/iaware/AppSceneRecogManager$ThirdAppHandler;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/rms/iaware/AppSceneRecogManager$ThirdAppHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1008
    iget-object v6, p0, Landroid/rms/iaware/AppSceneRecogManager$AppSceneRecogSDKCallback;->sceneList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 1009
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "tmpArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "bundle":Landroid/os/Bundle;
    goto :goto_0

    .line 1012
    :cond_2
    iget-object v5, p0, Landroid/rms/iaware/AppSceneRecogManager$AppSceneRecogSDKCallback;->this$0:Landroid/rms/iaware/AppSceneRecogManager;

    invoke-static {v5}, Landroid/rms/iaware/AppSceneRecogManager;->access$400(Landroid/rms/iaware/AppSceneRecogManager;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v5

    invoke-virtual {v5, v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 1015
    :cond_3
    :goto_0
    return v0

    .line 980
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "binderFlag":I
    :catch_0
    move-exception v0

    .line 981
    .local v0, "e":Ljava/lang/SecurityException;
    iget-object v3, p0, Landroid/rms/iaware/AppSceneRecogManager$AppSceneRecogSDKCallback;->this$0:Landroid/rms/iaware/AppSceneRecogManager;

    const-string v4, "enforceInterface SDK_CALLBACK_DESCRIPTOR failed"

    invoke-static {v3, v4}, Landroid/rms/iaware/AppSceneRecogManager;->access$200(Landroid/rms/iaware/AppSceneRecogManager;Ljava/lang/String;)V

    .line 982
    iget-object v3, p0, Landroid/rms/iaware/AppSceneRecogManager$AppSceneRecogSDKCallback;->this$0:Landroid/rms/iaware/AppSceneRecogManager;

    invoke-static {v3}, Landroid/rms/iaware/AppSceneRecogManager;->access$400(Landroid/rms/iaware/AppSceneRecogManager;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 983
    return v2
.end method
