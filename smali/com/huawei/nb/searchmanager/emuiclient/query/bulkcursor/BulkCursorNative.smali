.class public abstract Lcom/huawei/nb/searchmanager/emuiclient/query/bulkcursor/BulkCursorNative;
.super Landroid/os/Binder;
.source "BulkCursorNative.java"

# interfaces
.implements Lcom/huawei/nb/searchmanager/emuiclient/query/bulkcursor/IBulkCursor;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "android.content.IBulkCursor"

    invoke-virtual {p0, p0, v0}, Lcom/huawei/nb/searchmanager/emuiclient/query/bulkcursor/BulkCursorNative;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/huawei/nb/searchmanager/emuiclient/query/bulkcursor/IBulkCursor;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 29
    if-nez p0, :cond_0

    .line 30
    const/4 v0, 0x0

    return-object v0

    .line 33
    :cond_0
    const-string v0, "android.content.IBulkCursor"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 34
    .local v0, "iInterface":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/huawei/nb/searchmanager/emuiclient/query/bulkcursor/IBulkCursor;

    if-eqz v1, :cond_1

    .line 35
    move-object v1, v0

    check-cast v1, Lcom/huawei/nb/searchmanager/emuiclient/query/bulkcursor/IBulkCursor;

    return-object v1

    .line 37
    :cond_1
    new-instance v1, Lcom/huawei/nb/searchmanager/emuiclient/query/bulkcursor/BulkCursorProxy;

    invoke-direct {v1, p0}, Lcom/huawei/nb/searchmanager/emuiclient/query/bulkcursor/BulkCursorProxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 108
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 44
    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    .line 101
    :pswitch_0
    goto :goto_1

    .line 67
    :pswitch_1
    :try_start_0
    const-string v1, "android.content.IBulkCursor"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Lcom/huawei/nb/searchmanager/emuiclient/query/bulkcursor/BulkCursorNative;->close()V

    .line 69
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    return v0

    .line 90
    :pswitch_2
    const-string v1, "android.content.IBulkCursor"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 92
    .local v1, "extras":Landroid/os/Bundle;
    invoke-virtual {p0, v1}, Lcom/huawei/nb/searchmanager/emuiclient/query/bulkcursor/BulkCursorNative;->respond(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    .line 93
    .local v2, "returnExtras":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 95
    return v0

    .line 82
    .end local v1    # "extras":Landroid/os/Bundle;
    .end local v2    # "returnExtras":Landroid/os/Bundle;
    :pswitch_3
    const-string v1, "android.content.IBulkCursor"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Lcom/huawei/nb/searchmanager/emuiclient/query/bulkcursor/BulkCursorNative;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 84
    .restart local v1    # "extras":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 86
    return v0

    .line 74
    .end local v1    # "extras":Landroid/os/Bundle;
    :pswitch_4
    const-string v1, "android.content.IBulkCursor"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 76
    .local v1, "position":I
    invoke-virtual {p0, v1}, Lcom/huawei/nb/searchmanager/emuiclient/query/bulkcursor/BulkCursorNative;->onMove(I)V

    .line 77
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    return v0

    .line 60
    .end local v1    # "position":I
    :pswitch_5
    const-string v1, "android.content.IBulkCursor"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lcom/huawei/nb/searchmanager/emuiclient/query/bulkcursor/BulkCursorNative;->deactivate()V

    .line 62
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    return v0

    .line 46
    :pswitch_6
    const-string v1, "android.content.IBulkCursor"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 48
    .local v1, "startPos":I
    invoke-virtual {p0, v1}, Lcom/huawei/nb/searchmanager/emuiclient/query/bulkcursor/BulkCursorNative;->getWindow(I)Landroid/database/CursorWindow;

    move-result-object v2

    .line 49
    .local v2, "window":Landroid/database/CursorWindow;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    if-nez v2, :cond_0

    .line 51
    const/4 v3, 0x0

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    invoke-virtual {v2, p3, v0}, Landroid/database/CursorWindow;->writeToParcel(Landroid/os/Parcel;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :goto_0
    return v0

    .line 98
    .end local v1    # "startPos":I
    .end local v2    # "window":Landroid/database/CursorWindow;
    :catch_0
    move-exception v1

    .line 99
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {p3, v1}, Landroid/database/DatabaseUtils;->writeExceptionToParcel(Landroid/os/Parcel;Ljava/lang/Exception;)V

    .line 100
    return v0

    .line 103
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
