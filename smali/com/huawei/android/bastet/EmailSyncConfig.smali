.class public Lcom/huawei/android/bastet/EmailSyncConfig;
.super Ljava/lang/Object;
.source "EmailSyncConfig.java"


# instance fields
.field private mFolderName:Ljava/lang/String;

.field private mLatestUid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "folder"    # Ljava/lang/String;
    .param p2, "uid"    # Ljava/lang/String;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/huawei/android/bastet/EmailSyncConfig;->mFolderName:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/huawei/android/bastet/EmailSyncConfig;->mLatestUid:Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method public getFolderName()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/huawei/android/bastet/EmailSyncConfig;->mFolderName:Ljava/lang/String;

    return-object v0
.end method

.method public getLatestUid()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/huawei/android/bastet/EmailSyncConfig;->mLatestUid:Ljava/lang/String;

    return-object v0
.end method
