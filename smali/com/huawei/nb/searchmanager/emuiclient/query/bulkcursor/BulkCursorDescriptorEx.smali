.class public final Lcom/huawei/nb/searchmanager/emuiclient/query/bulkcursor/BulkCursorDescriptorEx;
.super Ljava/lang/Object;
.source "BulkCursorDescriptorEx.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/huawei/nb/searchmanager/emuiclient/query/bulkcursor/BulkCursorDescriptorEx;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private columnNames:[Ljava/lang/String;

.field private count:I

.field private cursor:Lcom/huawei/nb/searchmanager/emuiclient/query/bulkcursor/IBulkCursor;

.field private wantsAllOnMoveCalls:Z

.field private window:Landroid/database/CursorWindow;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    new-instance v0, Lcom/huawei/nb/searchmanager/emuiclient/query/bulkcursor/BulkCursorDescriptorEx$1;

    invoke-direct {v0}, Lcom/huawei/nb/searchmanager/emuiclient/query/bulkcursor/BulkCursorDescriptorEx$1;-><init>()V

    sput-object v0, Lcom/huawei/nb/searchmanager/emuiclient/query/bulkcursor/BulkCursorDescriptorEx;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/nb/searchmanager/emuiclient/query/bulkcursor/BulkCursorNative;->asInterface(Landroid/os/IBinder;)Lcom/huawei/nb/searchmanager/emuiclient/query/bulkcursor/IBulkCursor;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/nb/searchmanager/emuiclient/query/bulkcursor/BulkCursorDescriptorEx;->cursor:Lcom/huawei/nb/searchmanager/emuiclient/query/bulkcursor/IBulkCursor;

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/nb/searchmanager/emuiclient/query/bulkcursor/BulkCursorDescriptorEx;->columnNames:[Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/huawei/nb/searchmanager/emuiclient/query/bulkcursor/BulkCursorDescriptorEx;->wantsAllOnMoveCalls:Z

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/huawei/nb/searchmanager/emuiclient/query/bulkcursor/BulkCursorDescriptorEx;->count:I

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 34
    sget-object v0, Landroid/database/CursorWindow;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/CursorWindow;

    iput-object v0, p0, Lcom/huawei/nb/searchmanager/emuiclient/query/bulkcursor/BulkCursorDescriptorEx;->window:Landroid/database/CursorWindow;

    .line 36
    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/huawei/nb/searchmanager/emuiclient/query/bulkcursor/IBulkCursor;[Ljava/lang/String;ZILandroid/database/CursorWindow;)V
    .locals 1
    .param p1, "cursor"    # Lcom/huawei/nb/searchmanager/emuiclient/query/bulkcursor/IBulkCursor;
    .param p2, "columnNames"    # [Ljava/lang/String;
    .param p3, "wantsAllOnMoveCalls"    # Z
    .param p4, "count"    # I
    .param p5, "window"    # Landroid/database/CursorWindow;

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/huawei/nb/searchmanager/emuiclient/query/bulkcursor/BulkCursorDescriptorEx;->cursor:Lcom/huawei/nb/searchmanager/emuiclient/query/bulkcursor/IBulkCursor;

    .line 22
    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lcom/huawei/nb/searchmanager/emuiclient/query/bulkcursor/BulkCursorDescriptorEx;->columnNames:[Ljava/lang/String;

    .line 23
    iput-boolean p3, p0, Lcom/huawei/nb/searchmanager/emuiclient/query/bulkcursor/BulkCursorDescriptorEx;->wantsAllOnMoveCalls:Z

    .line 24
    iput p4, p0, Lcom/huawei/nb/searchmanager/emuiclient/query/bulkcursor/BulkCursorDescriptorEx;->count:I

    .line 25
    iput-object p5, p0, Lcom/huawei/nb/searchmanager/emuiclient/query/bulkcursor/BulkCursorDescriptorEx;->window:Landroid/database/CursorWindow;

    .line 26
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/huawei/nb/searchmanager/emuiclient/query/bulkcursor/BulkCursorDescriptorEx;->columnNames:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 51
    iget v0, p0, Lcom/huawei/nb/searchmanager/emuiclient/query/bulkcursor/BulkCursorDescriptorEx;->count:I

    return v0
.end method

.method public getCursor()Lcom/huawei/nb/searchmanager/emuiclient/query/bulkcursor/IBulkCursor;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/huawei/nb/searchmanager/emuiclient/query/bulkcursor/BulkCursorDescriptorEx;->cursor:Lcom/huawei/nb/searchmanager/emuiclient/query/bulkcursor/IBulkCursor;

    return-object v0
.end method

.method public getWindow()Landroid/database/CursorWindow;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/huawei/nb/searchmanager/emuiclient/query/bulkcursor/BulkCursorDescriptorEx;->window:Landroid/database/CursorWindow;

    return-object v0
.end method

.method public isWantsAllOnMoveCalls()Z
    .locals 1

    .line 47
    iget-boolean v0, p0, Lcom/huawei/nb/searchmanager/emuiclient/query/bulkcursor/BulkCursorDescriptorEx;->wantsAllOnMoveCalls:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 78
    iget-object v0, p0, Lcom/huawei/nb/searchmanager/emuiclient/query/bulkcursor/BulkCursorDescriptorEx;->cursor:Lcom/huawei/nb/searchmanager/emuiclient/query/bulkcursor/IBulkCursor;

    invoke-interface {v0}, Lcom/huawei/nb/searchmanager/emuiclient/query/bulkcursor/IBulkCursor;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 79
    iget-object v0, p0, Lcom/huawei/nb/searchmanager/emuiclient/query/bulkcursor/BulkCursorDescriptorEx;->columnNames:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 80
    iget-boolean v0, p0, Lcom/huawei/nb/searchmanager/emuiclient/query/bulkcursor/BulkCursorDescriptorEx;->wantsAllOnMoveCalls:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    iget v0, p0, Lcom/huawei/nb/searchmanager/emuiclient/query/bulkcursor/BulkCursorDescriptorEx;->count:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    iget-object v0, p0, Lcom/huawei/nb/searchmanager/emuiclient/query/bulkcursor/BulkCursorDescriptorEx;->window:Landroid/database/CursorWindow;

    if-eqz v0, :cond_0

    .line 83
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    iget-object v0, p0, Lcom/huawei/nb/searchmanager/emuiclient/query/bulkcursor/BulkCursorDescriptorEx;->window:Landroid/database/CursorWindow;

    invoke-virtual {v0, p1, p2}, Landroid/database/CursorWindow;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 86
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    :goto_0
    return-void
.end method
