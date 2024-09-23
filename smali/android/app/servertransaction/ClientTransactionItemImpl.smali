.class public Landroid/app/servertransaction/ClientTransactionItemImpl;
.super Landroid/app/servertransaction/ClientTransactionItem;
.source "ClientTransactionItemImpl.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/servertransaction/ClientTransactionItemImpl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mFLConfigurationChangeItem:Landroid/app/servertransaction/IClientTransactionItem;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    new-instance v0, Landroid/app/servertransaction/ClientTransactionItemImpl$1;

    invoke-direct {v0}, Landroid/app/servertransaction/ClientTransactionItemImpl$1;-><init>()V

    sput-object v0, Landroid/app/servertransaction/ClientTransactionItemImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/app/servertransaction/IClientTransactionItem;)V
    .locals 0
    .param p1, "flConfigurationChangeItem"    # Landroid/app/servertransaction/IClientTransactionItem;

    .line 30
    invoke-direct {p0}, Landroid/app/servertransaction/ClientTransactionItem;-><init>()V

    .line 31
    iput-object p1, p0, Landroid/app/servertransaction/ClientTransactionItemImpl;->mFLConfigurationChangeItem:Landroid/app/servertransaction/IClientTransactionItem;

    .line 32
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 50
    invoke-direct {p0}, Landroid/app/servertransaction/ClientTransactionItem;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/servertransaction/ClientTransactionItemImpl;->mFLConfigurationChangeItem:Landroid/app/servertransaction/IClientTransactionItem;

    .line 52
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/servertransaction/ClientTransactionItemImpl$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/app/servertransaction/ClientTransactionItemImpl$1;

    .line 27
    invoke-direct {p0, p1}, Landroid/app/servertransaction/ClientTransactionItemImpl;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 67
    instance-of v0, p1, Landroid/app/servertransaction/ClientTransactionItemImpl;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 68
    iget-object v0, p0, Landroid/app/servertransaction/ClientTransactionItemImpl;->mFLConfigurationChangeItem:Landroid/app/servertransaction/IClientTransactionItem;

    move-object v2, p1

    check-cast v2, Landroid/app/servertransaction/ClientTransactionItemImpl;

    iget-object v2, v2, Landroid/app/servertransaction/ClientTransactionItemImpl;->mFLConfigurationChangeItem:Landroid/app/servertransaction/IClientTransactionItem;

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1

    .line 70
    :cond_1
    return v1
.end method

.method public execute(Landroid/app/ClientTransactionHandler;Landroid/os/IBinder;Landroid/app/servertransaction/PendingTransactionActions;)V
    .locals 1
    .param p1, "client"    # Landroid/app/ClientTransactionHandler;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "pendingActions"    # Landroid/app/servertransaction/PendingTransactionActions;

    .line 37
    iget-object v0, p0, Landroid/app/servertransaction/ClientTransactionItemImpl;->mFLConfigurationChangeItem:Landroid/app/servertransaction/IClientTransactionItem;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Landroid/app/servertransaction/ClientTransactionItemImpl;->mFLConfigurationChangeItem:Landroid/app/servertransaction/IClientTransactionItem;

    invoke-interface {v0, p1, p2, p3}, Landroid/app/servertransaction/IClientTransactionItem;->execute(Landroid/app/ClientTransactionHandler;Landroid/os/IBinder;Landroid/app/servertransaction/PendingTransactionActions;)V

    .line 40
    :cond_0
    return-void
.end method

.method public hashCode()I
    .locals 1

    .line 75
    iget-object v0, p0, Landroid/app/servertransaction/ClientTransactionItemImpl;->mFLConfigurationChangeItem:Landroid/app/servertransaction/IClientTransactionItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/servertransaction/ClientTransactionItemImpl;->mFLConfigurationChangeItem:Landroid/app/servertransaction/IClientTransactionItem;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public recycle()V
    .locals 0

    .line 44
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 80
    const-string v0, "ClientTransactionItemImpl{}"

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 48
    return-void
.end method
