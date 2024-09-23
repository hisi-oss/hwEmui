.class public final Lcom/huawei/nb/searchmanager/emuiclient/query/bulkcursor/BulkCursorToCursorAdaptor;
.super Landroid/database/AbstractWindowedCursor;
.source "BulkCursorToCursorAdaptor.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BulkCursor"


# instance fields
.field private mBulkCursor:Lcom/huawei/nb/searchmanager/emuiclient/query/bulkcursor/IBulkCursor;

.field private mColumns:[Ljava/lang/String;

.field private mCount:I

.field private mWantsAllOnMoveCalls:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Landroid/database/AbstractWindowedCursor;-><init>()V

    return-void
.end method

.method private throwIfCursorIsClosed()V
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/huawei/nb/searchmanager/emuiclient/query/bulkcursor/BulkCursorToCursorAdaptor;->mBulkCursor:Lcom/huawei/nb/searchmanager/emuiclient/query/bulkcursor/IBulkCursor;

    if-eqz v0, :cond_0

    .line 42
    return-void

    .line 40
    :cond_0
    new-instance v0, Landroid/database/StaleDataException;

    const-string v1, "Attempted to access a cursor after it has been closed."

    invoke-direct {v0, v1}, Landroid/database/StaleDataException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 4

    .line 94
    invoke-super {p0}, Landroid/database/AbstractWindowedCursor;->close()V

    .line 96
    iget-object v0, p0, Lcom/huawei/nb/searchmanager/emuiclient/query/bulkcursor/BulkCursorToCursorAdaptor;->mBulkCursor:Lcom/huawei/nb/searchmanager/emuiclient/query/bulkcursor/IBulkCursor;

    if-eqz v0, :cond_0

    .line 98
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/huawei/nb/searchmanager/emuiclient/query/bulkcursor/BulkCursorToCursorAdaptor;->mBulkCursor:Lcom/huawei/nb/searchmanager/emuiclient/query/bulkcursor/IBulkCursor;

    invoke-interface {v1}, Lcom/huawei/nb/searchmanager/emuiclient/query/bulkcursor/IBulkCursor;->close()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    :goto_0
    iput-object v0, p0, Lcom/huawei/nb/searchmanager/emuiclient/query/bulkcursor/BulkCursorToCursorAdaptor;->mBulkCursor:Lcom/huawei/nb/searchmanager/emuiclient/query/bulkcursor/IBulkCursor;

    .line 103
    goto :goto_2

    .line 102
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 99
    :catch_0
    move-exception v1

    .line 100
    .local v1, "ex":Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "BulkCursor"

    const-string v3, "Remote process exception when closing"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v1    # "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 102
    :goto_1
    iput-object v0, p0, Lcom/huawei/nb/searchmanager/emuiclient/query/bulkcursor/BulkCursorToCursorAdaptor;->mBulkCursor:Lcom/huawei/nb/searchmanager/emuiclient/query/bulkcursor/IBulkCursor;

    throw v1

    .line 105
    :cond_0
    :goto_2
    return-void
.end method

.method public deactivate()V
    .locals 3

    .line 81
    invoke-super {p0}, Landroid/database/AbstractWindowedCursor;->deactivate()V

    .line 83
    iget-object v0, p0, Lcom/huawei/nb/searchmanager/emuiclient/query/bulkcursor/BulkCursorToCursorAdaptor;->mBulkCursor:Lcom/huawei/nb/searchmanager/emuiclient/query/bulkcursor/IBulkCursor;

    if-eqz v0, :cond_0

    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/huawei/nb/searchmanager/emuiclient/query/bulkcursor/BulkCursorToCursorAdaptor;->mBulkCursor:Lcom/huawei/nb/searchmanager/emuiclient/query/bulkcursor/IBulkCursor;

    invoke-interface {v0}, Lcom/huawei/nb/searchmanager/emuiclient/query/bulkcursor/IBulkCursor;->deactivate()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    goto :goto_0

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "BulkCursor"

    const-string v2, "Remote process exception when deactivating"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .line 109
    invoke-direct {p0}, Lcom/huawei/nb/searchmanager/emuiclient/query/bulkcursor/BulkCursorToCursorAdaptor;->throwIfCursorIsClosed()V

    .line 111
    iget-object v0, p0, Lcom/huawei/nb/searchmanager/emuiclient/query/bulkcursor/BulkCursorToCursorAdaptor;->mColumns:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 46
    invoke-direct {p0}, Lcom/huawei/nb/searchmanager/emuiclient/query/bulkcursor/BulkCursorToCursorAdaptor;->throwIfCursorIsClosed()V

    .line 47
    iget v0, p0, Lcom/huawei/nb/searchmanager/emuiclient/query/bulkcursor/BulkCursorToCursorAdaptor;->mCount:I

    return v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 2

    .line 116
    invoke-direct {p0}, Lcom/huawei/nb/searchmanager/emuiclient/query/bulkcursor/BulkCursorToCursorAdaptor;->throwIfCursorIsClosed()V

    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/huawei/nb/searchmanager/emuiclient/query/bulkcursor/BulkCursorToCursorAdaptor;->mBulkCursor:Lcom/huawei/nb/searchmanager/emuiclient/query/bulkcursor/IBulkCursor;

    invoke-interface {v0}, Lcom/huawei/nb/searchmanager/emuiclient/query/bulkcursor/IBulkCursor;->getExtras()Landroid/os/Bundle;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 120
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public initialize(Lcom/huawei/nb/searchmanager/emuiclient/query/bulkcursor/BulkCursorDescriptorEx;)V
    .locals 2
    .param p1, "d"    # Lcom/huawei/nb/searchmanager/emuiclient/query/bulkcursor/BulkCursorDescriptorEx;

    .line 26
    invoke-virtual {p1}, Lcom/huawei/nb/searchmanager/emuiclient/query/bulkcursor/BulkCursorDescriptorEx;->getCursor()Lcom/huawei/nb/searchmanager/emuiclient/query/bulkcursor/IBulkCursor;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/nb/searchmanager/emuiclient/query/bulkcursor/BulkCursorToCursorAdaptor;->mBulkCursor:Lcom/huawei/nb/searchmanager/emuiclient/query/bulkcursor/IBulkCursor;

    .line 27
    invoke-virtual {p1}, Lcom/huawei/nb/searchmanager/emuiclient/query/bulkcursor/BulkCursorDescriptorEx;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/nb/searchmanager/emuiclient/query/bulkcursor/BulkCursorToCursorAdaptor;->mColumns:[Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Lcom/huawei/nb/searchmanager/emuiclient/query/bulkcursor/BulkCursorDescriptorEx;->isWantsAllOnMoveCalls()Z

    move-result v0

    iput-boolean v0, p0, Lcom/huawei/nb/searchmanager/emuiclient/query/bulkcursor/BulkCursorToCursorAdaptor;->mWantsAllOnMoveCalls:Z

    .line 29
    invoke-virtual {p1}, Lcom/huawei/nb/searchmanager/emuiclient/query/bulkcursor/BulkCursorDescriptorEx;->getCount()I

    move-result v0

    iput v0, p0, Lcom/huawei/nb/searchmanager/emuiclient/query/bulkcursor/BulkCursorToCursorAdaptor;->mCount:I

    .line 30
    invoke-virtual {p1}, Lcom/huawei/nb/searchmanager/emuiclient/query/bulkcursor/BulkCursorDescriptorEx;->getWindow()Landroid/database/CursorWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {p1}, Lcom/huawei/nb/searchmanager/emuiclient/query/bulkcursor/BulkCursorDescriptorEx;->getWindow()Landroid/database/CursorWindow;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/huawei/nb/searchmanager/emuiclient/query/bulkcursor/BulkCursorToCursorAdaptor;->setWindow(Landroid/database/CursorWindow;)V

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/huawei/nb/searchmanager/emuiclient/query/bulkcursor/BulkCursorToCursorAdaptor;->mBulkCursor:Lcom/huawei/nb/searchmanager/emuiclient/query/bulkcursor/IBulkCursor;

    if-nez v0, :cond_1

    .line 34
    const-string v0, "BulkCursor"

    const-string v1, "mBulkCursor is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    :cond_1
    return-void
.end method

.method public onMove(II)Z
    .locals 4
    .param p1, "oldPosition"    # I
    .param p2, "newPosition"    # I

    .line 52
    invoke-direct {p0}, Lcom/huawei/nb/searchmanager/emuiclient/query/bulkcursor/BulkCursorToCursorAdaptor;->throwIfCursorIsClosed()V

    .line 56
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/huawei/nb/searchmanager/emuiclient/query/bulkcursor/BulkCursorToCursorAdaptor;->mWindow:Landroid/database/CursorWindow;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/huawei/nb/searchmanager/emuiclient/query/bulkcursor/BulkCursorToCursorAdaptor;->mWindow:Landroid/database/CursorWindow;

    .line 57
    invoke-virtual {v1}, Landroid/database/CursorWindow;->getStartPosition()I

    move-result v1

    if-lt p2, v1, :cond_1

    iget-object v1, p0, Lcom/huawei/nb/searchmanager/emuiclient/query/bulkcursor/BulkCursorToCursorAdaptor;->mWindow:Landroid/database/CursorWindow;

    .line 58
    invoke-virtual {v1}, Landroid/database/CursorWindow;->getStartPosition()I

    move-result v1

    iget-object v2, p0, Lcom/huawei/nb/searchmanager/emuiclient/query/bulkcursor/BulkCursorToCursorAdaptor;->mWindow:Landroid/database/CursorWindow;

    invoke-virtual {v2}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v2

    add-int/2addr v1, v2

    if-lt p2, v1, :cond_0

    goto :goto_0

    .line 60
    :cond_0
    iget-boolean v1, p0, Lcom/huawei/nb/searchmanager/emuiclient/query/bulkcursor/BulkCursorToCursorAdaptor;->mWantsAllOnMoveCalls:Z

    if-eqz v1, :cond_2

    .line 61
    iget-object v1, p0, Lcom/huawei/nb/searchmanager/emuiclient/query/bulkcursor/BulkCursorToCursorAdaptor;->mBulkCursor:Lcom/huawei/nb/searchmanager/emuiclient/query/bulkcursor/IBulkCursor;

    invoke-interface {v1, p2}, Lcom/huawei/nb/searchmanager/emuiclient/query/bulkcursor/IBulkCursor;->onMove(I)V

    goto :goto_1

    .line 59
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/huawei/nb/searchmanager/emuiclient/query/bulkcursor/BulkCursorToCursorAdaptor;->mBulkCursor:Lcom/huawei/nb/searchmanager/emuiclient/query/bulkcursor/IBulkCursor;

    invoke-interface {v1, p2}, Lcom/huawei/nb/searchmanager/emuiclient/query/bulkcursor/IBulkCursor;->getWindow(I)Landroid/database/CursorWindow;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/nb/searchmanager/emuiclient/query/bulkcursor/BulkCursorToCursorAdaptor;->setWindow(Landroid/database/CursorWindow;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :cond_2
    :goto_1
    nop

    .line 70
    iget-object v1, p0, Lcom/huawei/nb/searchmanager/emuiclient/query/bulkcursor/BulkCursorToCursorAdaptor;->mWindow:Landroid/database/CursorWindow;

    if-nez v1, :cond_3

    .line 71
    return v0

    .line 74
    :cond_3
    const/4 v0, 0x1

    return v0

    .line 63
    :catch_0
    move-exception v1

    .line 65
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "BulkCursor"

    const-string v3, "Unable to get window because the remote process is dead"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    return v0
.end method

.method public respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 129
    invoke-direct {p0}, Lcom/huawei/nb/searchmanager/emuiclient/query/bulkcursor/BulkCursorToCursorAdaptor;->throwIfCursorIsClosed()V

    .line 132
    :try_start_0
    iget-object v0, p0, Lcom/huawei/nb/searchmanager/emuiclient/query/bulkcursor/BulkCursorToCursorAdaptor;->mBulkCursor:Lcom/huawei/nb/searchmanager/emuiclient/query/bulkcursor/IBulkCursor;

    invoke-interface {v0, p1}, Lcom/huawei/nb/searchmanager/emuiclient/query/bulkcursor/IBulkCursor;->respond(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 133
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BulkCursor"

    const-string v2, "respond() threw RemoteException, returning an empty bundle."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 138
    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    return-object v1
.end method
