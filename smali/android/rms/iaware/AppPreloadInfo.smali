.class public Landroid/rms/iaware/AppPreloadInfo;
.super Ljava/lang/Object;
.source "AppPreloadInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/rms/iaware/AppPreloadInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private appAttribute:I

.field private coldstartTime:I

.field private packageName:Ljava/lang/String;

.field private powerDissipation:I

.field private preloadMem:I

.field private warmstartTime:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 144
    new-instance v0, Landroid/rms/iaware/AppPreloadInfo$1;

    invoke-direct {v0}, Landroid/rms/iaware/AppPreloadInfo$1;-><init>()V

    sput-object v0, Landroid/rms/iaware/AppPreloadInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/rms/iaware/AppPreloadInfo;->packageName:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/rms/iaware/AppPreloadInfo;->appAttribute:I

    .line 46
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 135
    const/4 v0, 0x0

    return v0
.end method

.method public getAppAttribute()I
    .locals 1

    .line 125
    iget v0, p0, Landroid/rms/iaware/AppPreloadInfo;->appAttribute:I

    return v0
.end method

.method public getColdstartTime()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 93
    iget v0, p0, Landroid/rms/iaware/AppPreloadInfo;->coldstartTime:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Landroid/rms/iaware/AppPreloadInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPowerDissipation()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 61
    iget v0, p0, Landroid/rms/iaware/AppPreloadInfo;->powerDissipation:I

    return v0
.end method

.method public getPreloadMem()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 77
    iget v0, p0, Landroid/rms/iaware/AppPreloadInfo;->preloadMem:I

    return v0
.end method

.method public getWarmstartTime()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 109
    iget v0, p0, Landroid/rms/iaware/AppPreloadInfo;->warmstartTime:I

    return v0
.end method

.method public setAppAttribute(I)V
    .locals 0
    .param p1, "appAttribute"    # I

    .line 121
    iput p1, p0, Landroid/rms/iaware/AppPreloadInfo;->appAttribute:I

    .line 122
    return-void
.end method

.method public setColdstartTime(I)V
    .locals 0
    .param p1, "coldstartTime"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 101
    iput p1, p0, Landroid/rms/iaware/AppPreloadInfo;->coldstartTime:I

    .line 102
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .line 53
    iput-object p1, p0, Landroid/rms/iaware/AppPreloadInfo;->packageName:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setPowerDissipation(I)V
    .locals 0
    .param p1, "powerDissipation"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 69
    iput p1, p0, Landroid/rms/iaware/AppPreloadInfo;->powerDissipation:I

    .line 70
    return-void
.end method

.method public setPreloadMem(I)V
    .locals 0
    .param p1, "preloadMem"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 85
    iput p1, p0, Landroid/rms/iaware/AppPreloadInfo;->preloadMem:I

    .line 86
    return-void
.end method

.method public setWarmstartTime(I)V
    .locals 0
    .param p1, "warmstartTime"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 117
    iput p1, p0, Landroid/rms/iaware/AppPreloadInfo;->warmstartTime:I

    .line 118
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppPreloadInfo [packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/rms/iaware/AppPreloadInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", appAttribute="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/rms/iaware/AppPreloadInfo;->appAttribute:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 140
    iget-object v0, p0, Landroid/rms/iaware/AppPreloadInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 141
    iget v0, p0, Landroid/rms/iaware/AppPreloadInfo;->appAttribute:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    return-void
.end method
