.class public Lhuawei/android/security/voicerecognition/VoiceCommandList;
.super Ljava/lang/Object;
.source "VoiceCommandList.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhuawei/android/security/voicerecognition/VoiceCommandList$VoiceConfiguration;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lhuawei/android/security/voicerecognition/VoiceCommandList;",
            ">;"
        }
    .end annotation
.end field

.field private static final INDEX_ALGO_ID:I = 0x2

.field private static final INDEX_HEADSET_ID:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mConfigList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lhuawei/android/security/voicerecognition/VoiceCommandList$VoiceConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private mIdForUnlock:I

.field private mVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    const-class v0, Lhuawei/android/security/voicerecognition/VoiceCommandList;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lhuawei/android/security/voicerecognition/VoiceCommandList;->TAG:Ljava/lang/String;

    .line 35
    new-instance v0, Lhuawei/android/security/voicerecognition/VoiceCommandList$1;

    invoke-direct {v0}, Lhuawei/android/security/voicerecognition/VoiceCommandList$1;-><init>()V

    sput-object v0, Lhuawei/android/security/voicerecognition/VoiceCommandList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceCommandList;->mVersion:Ljava/lang/String;

    .line 15
    const/4 v0, -0x1

    iput v0, p0, Lhuawei/android/security/voicerecognition/VoiceCommandList;->mIdForUnlock:I

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceCommandList;->mConfigList:Ljava/util/List;

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceCommandList;->mVersion:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lhuawei/android/security/voicerecognition/VoiceCommandList;->mIdForUnlock:I

    .line 32
    const-class v0, Lhuawei/android/security/voicerecognition/VoiceCommandList$VoiceConfiguration;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceCommandList;->mConfigList:Ljava/util/List;

    .line 33
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lhuawei/android/security/voicerecognition/VoiceCommandList$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lhuawei/android/security/voicerecognition/VoiceCommandList$1;

    .line 10
    invoke-direct {p0, p1}, Lhuawei/android/security/voicerecognition/VoiceCommandList;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "version"    # Ljava/lang/String;
    .param p2, "idForUnlock"    # I

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceCommandList;->mVersion:Ljava/lang/String;

    .line 15
    const/4 v0, -0x1

    iput v0, p0, Lhuawei/android/security/voicerecognition/VoiceCommandList;->mIdForUnlock:I

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceCommandList;->mConfigList:Ljava/util/List;

    .line 19
    iput-object p1, p0, Lhuawei/android/security/voicerecognition/VoiceCommandList;->mVersion:Ljava/lang/String;

    .line 20
    iput p2, p0, Lhuawei/android/security/voicerecognition/VoiceCommandList;->mIdForUnlock:I

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/util/List;)V
    .locals 1
    .param p1, "version"    # Ljava/lang/String;
    .param p2, "idForLock"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lhuawei/android/security/voicerecognition/VoiceCommandList$VoiceConfiguration;",
            ">;)V"
        }
    .end annotation

    .line 23
    .local p3, "voiceList":Ljava/util/List;, "Ljava/util/List<Lhuawei/android/security/voicerecognition/VoiceCommandList$VoiceConfiguration;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceCommandList;->mVersion:Ljava/lang/String;

    .line 15
    const/4 v0, -0x1

    iput v0, p0, Lhuawei/android/security/voicerecognition/VoiceCommandList;->mIdForUnlock:I

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceCommandList;->mConfigList:Ljava/util/List;

    .line 24
    iput-object p1, p0, Lhuawei/android/security/voicerecognition/VoiceCommandList;->mVersion:Ljava/lang/String;

    .line 25
    iput p2, p0, Lhuawei/android/security/voicerecognition/VoiceCommandList;->mIdForUnlock:I

    .line 26
    iget-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceCommandList;->mConfigList:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 27
    return-void
.end method

.method private getConfigurationCommon(II)Lhuawei/android/security/voicerecognition/VoiceCommandList$VoiceConfiguration;
    .locals 4
    .param p1, "index"    # I
    .param p2, "id"    # I

    .line 97
    iget-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceCommandList;->mConfigList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 98
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 99
    iget-object v2, p0, Lhuawei/android/security/voicerecognition/VoiceCommandList;->mConfigList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lhuawei/android/security/voicerecognition/VoiceCommandList$VoiceConfiguration;

    .line 100
    .local v2, "config":Lhuawei/android/security/voicerecognition/VoiceCommandList$VoiceConfiguration;
    invoke-direct {p0, v2, p1, p2}, Lhuawei/android/security/voicerecognition/VoiceCommandList;->isIdEquals(Lhuawei/android/security/voicerecognition/VoiceCommandList$VoiceConfiguration;II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 101
    return-object v2

    .line 98
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 104
    .end local v1    # "i":I
    .end local v2    # "config":Lhuawei/android/security/voicerecognition/VoiceCommandList$VoiceConfiguration;
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private isIdEquals(Lhuawei/android/security/voicerecognition/VoiceCommandList$VoiceConfiguration;II)Z
    .locals 1
    .param p1, "config"    # Lhuawei/android/security/voicerecognition/VoiceCommandList$VoiceConfiguration;
    .param p2, "index"    # I
    .param p3, "id"    # I

    .line 108
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 109
    return v0

    .line 111
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 118
    return v0

    .line 115
    :pswitch_0
    invoke-virtual {p1, p3}, Lhuawei/android/security/voicerecognition/VoiceCommandList$VoiceConfiguration;->isAlgoIdEquals(I)Z

    move-result v0

    return v0

    .line 113
    :pswitch_1
    invoke-virtual {p1, p3}, Lhuawei/android/security/voicerecognition/VoiceCommandList$VoiceConfiguration;->isHeadsetIdEquals(I)Z

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public addConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "headsetIdStr"    # Ljava/lang/String;
    .param p2, "commandStr"    # Ljava/lang/String;
    .param p3, "algoIdStr"    # Ljava/lang/String;
    .param p4, "voiceTagStr"    # Ljava/lang/String;
    .param p5, "callFlagStr"    # Ljava/lang/String;

    .line 126
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 127
    .local v1, "headsetId":I
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 128
    .local v3, "algoId":I
    invoke-static {p5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 129
    .local v5, "callFlag":I
    iget-object v6, p0, Lhuawei/android/security/voicerecognition/VoiceCommandList;->mConfigList:Ljava/util/List;

    new-instance v7, Lhuawei/android/security/voicerecognition/VoiceCommandList$VoiceConfiguration;

    move-object v0, v7

    move-object v2, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lhuawei/android/security/voicerecognition/VoiceCommandList$VoiceConfiguration;-><init>(ILjava/lang/String;ILjava/lang/String;I)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    .end local v1    # "headsetId":I
    .end local v3    # "algoId":I
    .end local v5    # "callFlag":I
    goto :goto_0

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v1, Lhuawei/android/security/voicerecognition/VoiceCommandList;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid config value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public describeContents()I
    .locals 1

    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public gatConfigVersion()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceCommandList;->mVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getConfigList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lhuawei/android/security/voicerecognition/VoiceCommandList$VoiceConfiguration;",
            ">;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceCommandList;->mConfigList:Ljava/util/List;

    return-object v0
.end method

.method public getConfigurationByAlgoId(I)Lhuawei/android/security/voicerecognition/VoiceCommandList$VoiceConfiguration;
    .locals 1
    .param p1, "algoId"    # I

    .line 92
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lhuawei/android/security/voicerecognition/VoiceCommandList;->getConfigurationCommon(II)Lhuawei/android/security/voicerecognition/VoiceCommandList$VoiceConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getConfigurationByHeadsetId(I)Lhuawei/android/security/voicerecognition/VoiceCommandList$VoiceConfiguration;
    .locals 1
    .param p1, "headsetId"    # I

    .line 88
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lhuawei/android/security/voicerecognition/VoiceCommandList;->getConfigurationCommon(II)Lhuawei/android/security/voicerecognition/VoiceCommandList$VoiceConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getListSize()I
    .locals 1

    .line 65
    iget-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceCommandList;->mConfigList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceCommandList;->mConfigList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 68
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getUnlockId()I
    .locals 1

    .line 80
    iget v0, p0, Lhuawei/android/security/voicerecognition/VoiceCommandList;->mIdForUnlock:I

    return v0
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .line 84
    iput-object p1, p0, Lhuawei/android/security/voicerecognition/VoiceCommandList;->mVersion:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 61
    const-string v0, "VoiceCommandList"

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 54
    iget-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceCommandList;->mVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 55
    iget v0, p0, Lhuawei/android/security/voicerecognition/VoiceCommandList;->mIdForUnlock:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    iget-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceCommandList;->mConfigList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 57
    return-void
.end method
