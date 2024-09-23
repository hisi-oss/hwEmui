.class public Landroid/emcom/XEngineAppInfo;
.super Ljava/lang/Object;
.source "XEngineAppInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/emcom/XEngineAppInfo$HiViewParam;,
        Landroid/emcom/XEngineAppInfo$EventInfo;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/emcom/XEngineAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_XENGINE_APP:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "XEngineAppInfo"


# instance fields
.field private mEventList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/emcom/XEngineAppInfo$EventInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mGrade:I

.field private mHiViewParam:Landroid/emcom/XEngineAppInfo$HiViewParam;

.field private mPackageName:Ljava/lang/String;

.field private mainCardPsStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 104
    new-instance v0, Landroid/emcom/XEngineAppInfo$1;

    invoke-direct {v0}, Landroid/emcom/XEngineAppInfo$1;-><init>()V

    sput-object v0, Landroid/emcom/XEngineAppInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "p"    # Landroid/os/Parcel;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/emcom/XEngineAppInfo;->mEventList:Ljava/util/List;

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/emcom/XEngineAppInfo;->mPackageName:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/emcom/XEngineAppInfo;->mGrade:I

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 29
    .local v0, "count":I
    const/16 v1, 0xc8

    if-le v0, v1, :cond_0

    .line 30
    const-string v1, "XEngineAppInfo"

    const-string v2, "The count of xengine app is more than 200, do not read!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    return-void

    .line 33
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 34
    new-instance v2, Landroid/emcom/XEngineAppInfo$EventInfo;

    invoke-direct {v2}, Landroid/emcom/XEngineAppInfo$EventInfo;-><init>()V

    .line 35
    .local v2, "eventInfo":Landroid/emcom/XEngineAppInfo$EventInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/emcom/XEngineAppInfo$EventInfo;->access$002(Landroid/emcom/XEngineAppInfo$EventInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/emcom/XEngineAppInfo$EventInfo;->access$102(Landroid/emcom/XEngineAppInfo$EventInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/emcom/XEngineAppInfo$EventInfo;->access$202(Landroid/emcom/XEngineAppInfo$EventInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {v2, v3}, Landroid/emcom/XEngineAppInfo$EventInfo;->access$302(Landroid/emcom/XEngineAppInfo$EventInfo;I)I

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {v2, v3}, Landroid/emcom/XEngineAppInfo$EventInfo;->access$402(Landroid/emcom/XEngineAppInfo$EventInfo;I)I

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {v2, v3}, Landroid/emcom/XEngineAppInfo$EventInfo;->access$502(Landroid/emcom/XEngineAppInfo$EventInfo;I)I

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {v2, v3}, Landroid/emcom/XEngineAppInfo$EventInfo;->access$602(Landroid/emcom/XEngineAppInfo$EventInfo;I)I

    .line 42
    iget-object v3, p0, Landroid/emcom/XEngineAppInfo;->mEventList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    .end local v2    # "eventInfo":Landroid/emcom/XEngineAppInfo$EventInfo;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 44
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/emcom/XEngineAppInfo;->mEventList:Ljava/util/List;

    .line 22
    iput-object p1, p0, Landroid/emcom/XEngineAppInfo;->mPackageName:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public getEventList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/emcom/XEngineAppInfo$EventInfo;",
            ">;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Landroid/emcom/XEngineAppInfo;->mEventList:Ljava/util/List;

    return-object v0
.end method

.method public getGrade()I
    .locals 1

    .line 64
    iget v0, p0, Landroid/emcom/XEngineAppInfo;->mGrade:I

    return v0
.end method

.method public getHiViewParam()Landroid/emcom/XEngineAppInfo$HiViewParam;
    .locals 1

    .line 81
    iget-object v0, p0, Landroid/emcom/XEngineAppInfo;->mHiViewParam:Landroid/emcom/XEngineAppInfo$HiViewParam;

    return-object v0
.end method

.method public getMainCardPsStatus()I
    .locals 1

    .line 72
    iget v0, p0, Landroid/emcom/XEngineAppInfo;->mainCardPsStatus:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Landroid/emcom/XEngineAppInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public setGrade(I)V
    .locals 0
    .param p1, "grade"    # I

    .line 68
    iput p1, p0, Landroid/emcom/XEngineAppInfo;->mGrade:I

    .line 69
    return-void
.end method

.method public setHiViewParam(Landroid/emcom/XEngineAppInfo$HiViewParam;)V
    .locals 0
    .param p1, "hiParam"    # Landroid/emcom/XEngineAppInfo$HiViewParam;

    .line 85
    iput-object p1, p0, Landroid/emcom/XEngineAppInfo;->mHiViewParam:Landroid/emcom/XEngineAppInfo$HiViewParam;

    .line 86
    return-void
.end method

.method public setMainCardPsStatus(I)V
    .locals 0
    .param p1, "psStatus"    # I

    .line 76
    iput p1, p0, Landroid/emcom/XEngineAppInfo;->mainCardPsStatus:I

    .line 77
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .line 56
    iput-object p1, p0, Landroid/emcom/XEngineAppInfo;->mPackageName:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 218
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 219
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Landroid/emcom/XEngineAppInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "grade="

    .line 220
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/emcom/XEngineAppInfo;->mGrade:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "eventList="

    .line 221
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Landroid/emcom/XEngineAppInfo;->mEventList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 222
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 90
    iget-object v0, p0, Landroid/emcom/XEngineAppInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    iget v0, p0, Landroid/emcom/XEngineAppInfo;->mGrade:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    iget-object v0, p0, Landroid/emcom/XEngineAppInfo;->mEventList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    iget-object v0, p0, Landroid/emcom/XEngineAppInfo;->mEventList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/emcom/XEngineAppInfo$EventInfo;

    .line 94
    .local v1, "eventInfo":Landroid/emcom/XEngineAppInfo$EventInfo;
    invoke-static {v1}, Landroid/emcom/XEngineAppInfo$EventInfo;->access$000(Landroid/emcom/XEngineAppInfo$EventInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    invoke-static {v1}, Landroid/emcom/XEngineAppInfo$EventInfo;->access$100(Landroid/emcom/XEngineAppInfo$EventInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    invoke-static {v1}, Landroid/emcom/XEngineAppInfo$EventInfo;->access$200(Landroid/emcom/XEngineAppInfo$EventInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    invoke-static {v1}, Landroid/emcom/XEngineAppInfo$EventInfo;->access$300(Landroid/emcom/XEngineAppInfo$EventInfo;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    invoke-static {v1}, Landroid/emcom/XEngineAppInfo$EventInfo;->access$400(Landroid/emcom/XEngineAppInfo$EventInfo;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    invoke-static {v1}, Landroid/emcom/XEngineAppInfo$EventInfo;->access$500(Landroid/emcom/XEngineAppInfo$EventInfo;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    invoke-static {v1}, Landroid/emcom/XEngineAppInfo$EventInfo;->access$600(Landroid/emcom/XEngineAppInfo$EventInfo;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    .end local v1    # "eventInfo":Landroid/emcom/XEngineAppInfo$EventInfo;
    goto :goto_0

    .line 102
    :cond_0
    return-void
.end method
