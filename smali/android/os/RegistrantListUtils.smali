.class public Landroid/os/RegistrantListUtils;
.super Ljava/lang/Object;
.source "RegistrantListUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static internalNotifyRegistrantDelayed(Landroid/os/Registrant;Ljava/lang/Object;Ljava/lang/Throwable;J)V
    .locals 4
    .param p0, "r"    # Landroid/os/Registrant;
    .param p1, "result"    # Ljava/lang/Object;
    .param p2, "exception"    # Ljava/lang/Throwable;
    .param p3, "delayMillis"    # J

    .line 26
    invoke-virtual {p0}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 28
    .local v0, "h":Landroid/os/Handler;
    if-nez v0, :cond_0

    .line 29
    invoke-virtual {p0}, Landroid/os/Registrant;->clear()V

    goto :goto_0

    .line 31
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 33
    .local v1, "msg":Landroid/os/Message;
    iget v2, p0, Landroid/os/Registrant;->what:I

    iput v2, v1, Landroid/os/Message;->what:I

    .line 35
    new-instance v2, Landroid/os/AsyncResult;

    iget-object v3, p0, Landroid/os/Registrant;->userObj:Ljava/lang/Object;

    invoke-direct {v2, v3, p1, p2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 37
    invoke-virtual {v0, v1, p3, p4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 39
    .end local v1    # "msg":Landroid/os/Message;
    :goto_0
    return-void
.end method

.method private static internalNotifyRegistrantsDelayed(Landroid/os/RegistrantList;Ljava/lang/Object;Ljava/lang/Throwable;J)V
    .locals 3
    .param p0, "list"    # Landroid/os/RegistrantList;
    .param p1, "result"    # Ljava/lang/Object;
    .param p2, "exception"    # Ljava/lang/Throwable;
    .param p3, "delayMillis"    # J

    .line 9
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Landroid/os/RegistrantList;->registrants:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "s":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 10
    iget-object v2, p0, Landroid/os/RegistrantList;->registrants:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Registrant;

    .line 11
    .local v2, "r":Landroid/os/Registrant;
    invoke-static {v2, p1, p2, p3, p4}, Landroid/os/RegistrantListUtils;->internalNotifyRegistrantDelayed(Landroid/os/Registrant;Ljava/lang/Object;Ljava/lang/Throwable;J)V

    .line 9
    .end local v2    # "r":Landroid/os/Registrant;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 13
    .end local v0    # "i":I
    .end local v1    # "s":I
    :cond_0
    return-void
.end method

.method public static notifyRegistrantsDelayed(Landroid/os/RegistrantList;Landroid/os/AsyncResult;J)V
    .locals 2
    .param p0, "list"    # Landroid/os/RegistrantList;
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "delayMillis"    # J

    .line 18
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {p0, v0, v1, p2, p3}, Landroid/os/RegistrantListUtils;->internalNotifyRegistrantsDelayed(Landroid/os/RegistrantList;Ljava/lang/Object;Ljava/lang/Throwable;J)V

    .line 19
    return-void
.end method
