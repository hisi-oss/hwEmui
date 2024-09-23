.class public Lcom/huawei/android/bastet/ExchangeWbInfo;
.super Ljava/lang/Object;
.source "ExchangeWbInfo.java"


# instance fields
.field private mCollectionId:Ljava/lang/String;

.field private mSyncKey:Ljava/lang/String;

.field private mSyncType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "collectionId"    # Ljava/lang/String;
    .param p2, "syncKey"    # Ljava/lang/String;
    .param p3, "syncType"    # I

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/huawei/android/bastet/ExchangeWbInfo;->mCollectionId:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lcom/huawei/android/bastet/ExchangeWbInfo;->mSyncKey:Ljava/lang/String;

    .line 39
    iput p3, p0, Lcom/huawei/android/bastet/ExchangeWbInfo;->mSyncType:I

    .line 40
    return-void
.end method


# virtual methods
.method public getCollectionId()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/huawei/android/bastet/ExchangeWbInfo;->mCollectionId:Ljava/lang/String;

    return-object v0
.end method

.method public getSyncKey()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/huawei/android/bastet/ExchangeWbInfo;->mSyncKey:Ljava/lang/String;

    return-object v0
.end method

.method public getSyncType()I
    .locals 1

    .line 51
    iget v0, p0, Lcom/huawei/android/bastet/ExchangeWbInfo;->mSyncType:I

    return v0
.end method
