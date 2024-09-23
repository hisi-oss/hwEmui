.class public Landroid/app/mtm/iaware/appmng/AppCleanParam$AppCleanInfo;
.super Ljava/lang/Object;
.source "AppCleanParam.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/mtm/iaware/appmng/AppCleanParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppCleanInfo"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/mtm/iaware/appmng/AppCleanParam$AppCleanInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mCleanType:Ljava/lang/Integer;

.field mPkgName:Ljava/lang/String;

.field mTaskId:Ljava/lang/Integer;

.field mUserid:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    new-instance v0, Landroid/app/mtm/iaware/appmng/AppCleanParam$AppCleanInfo$1;

    invoke-direct {v0}, Landroid/app/mtm/iaware/appmng/AppCleanParam$AppCleanInfo$1;-><init>()V

    sput-object v0, Landroid/app/mtm/iaware/appmng/AppCleanParam$AppCleanInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/app/mtm/iaware/appmng/AppCleanParam$AppCleanInfo;->mTaskId:Ljava/lang/Integer;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/mtm/iaware/appmng/AppCleanParam$AppCleanInfo;->mPkgName:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/app/mtm/iaware/appmng/AppCleanParam$AppCleanInfo;->mUserid:Ljava/lang/Integer;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/app/mtm/iaware/appmng/AppCleanParam$AppCleanInfo;->mCleanType:Ljava/lang/Integer;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/app/mtm/iaware/appmng/AppCleanParam$AppCleanInfo;->mTaskId:Ljava/lang/Integer;

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userid"    # Ljava/lang/Integer;
    .param p3, "cleanType"    # Ljava/lang/Integer;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/app/mtm/iaware/appmng/AppCleanParam$AppCleanInfo;->mTaskId:Ljava/lang/Integer;

    .line 65
    iput-object p1, p0, Landroid/app/mtm/iaware/appmng/AppCleanParam$AppCleanInfo;->mPkgName:Ljava/lang/String;

    .line 66
    iput-object p2, p0, Landroid/app/mtm/iaware/appmng/AppCleanParam$AppCleanInfo;->mUserid:Ljava/lang/Integer;

    .line 67
    iput-object p3, p0, Landroid/app/mtm/iaware/appmng/AppCleanParam$AppCleanInfo;->mCleanType:Ljava/lang/Integer;

    .line 68
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public getCleanType()Ljava/lang/Integer;
    .locals 1

    .line 76
    iget-object v0, p0, Landroid/app/mtm/iaware/appmng/AppCleanParam$AppCleanInfo;->mCleanType:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Landroid/app/mtm/iaware/appmng/AppCleanParam$AppCleanInfo;->mPkgName:Ljava/lang/String;

    return-object v0
.end method

.method public getTaskId()Ljava/lang/Integer;
    .locals 1

    .line 82
    iget-object v0, p0, Landroid/app/mtm/iaware/appmng/AppCleanParam$AppCleanInfo;->mTaskId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getUserId()Ljava/lang/Integer;
    .locals 1

    .line 73
    iget-object v0, p0, Landroid/app/mtm/iaware/appmng/AppCleanParam$AppCleanInfo;->mUserid:Ljava/lang/Integer;

    return-object v0
.end method

.method public setTaskId(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "taskId"    # Ljava/lang/Integer;

    .line 79
    iput-object p1, p0, Landroid/app/mtm/iaware/appmng/AppCleanParam$AppCleanInfo;->mTaskId:Ljava/lang/Integer;

    .line 80
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 92
    iget-object v0, p0, Landroid/app/mtm/iaware/appmng/AppCleanParam$AppCleanInfo;->mPkgName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Landroid/app/mtm/iaware/appmng/AppCleanParam$AppCleanInfo;->mUserid:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    iget-object v0, p0, Landroid/app/mtm/iaware/appmng/AppCleanParam$AppCleanInfo;->mCleanType:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    iget-object v0, p0, Landroid/app/mtm/iaware/appmng/AppCleanParam$AppCleanInfo;->mTaskId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    return-void
.end method
