.class public Landroid/app/mtm/iaware/appmng/AppCleanParam;
.super Ljava/lang/Object;
.source "AppCleanParam.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/mtm/iaware/appmng/AppCleanParam$Builder;,
        Landroid/app/mtm/iaware/appmng/AppCleanParam$AppCleanInfo;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/mtm/iaware/appmng/AppCleanParam;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAction:I

.field private mAppCleanInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/mtm/iaware/appmng/AppCleanParam$AppCleanInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mBundle:Landroid/os/Bundle;

.field private mIntList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIntList2:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mKilledCount:I

.field private mLevel:I

.field private mSource:I

.field private mStringList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTimeStamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 237
    new-instance v0, Landroid/app/mtm/iaware/appmng/AppCleanParam$1;

    invoke-direct {v0}, Landroid/app/mtm/iaware/appmng/AppCleanParam$1;-><init>()V

    sput-object v0, Landroid/app/mtm/iaware/appmng/AppCleanParam;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/app/mtm/iaware/appmng/AppCleanParam$Builder;)V
    .locals 2
    .param p1, "builder"    # Landroid/app/mtm/iaware/appmng/AppCleanParam$Builder;

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    invoke-static {p1}, Landroid/app/mtm/iaware/appmng/AppCleanParam$Builder;->access$100(Landroid/app/mtm/iaware/appmng/AppCleanParam$Builder;)I

    move-result v0

    iput v0, p0, Landroid/app/mtm/iaware/appmng/AppCleanParam;->mSource:I

    .line 170
    invoke-static {p1}, Landroid/app/mtm/iaware/appmng/AppCleanParam$Builder;->access$200(Landroid/app/mtm/iaware/appmng/AppCleanParam$Builder;)I

    move-result v0

    iput v0, p0, Landroid/app/mtm/iaware/appmng/AppCleanParam;->mAction:I

    .line 171
    invoke-static {p1}, Landroid/app/mtm/iaware/appmng/AppCleanParam$Builder;->access$300(Landroid/app/mtm/iaware/appmng/AppCleanParam$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/app/mtm/iaware/appmng/AppCleanParam;->mStringList:Ljava/util/List;

    .line 172
    invoke-static {p1}, Landroid/app/mtm/iaware/appmng/AppCleanParam$Builder;->access$400(Landroid/app/mtm/iaware/appmng/AppCleanParam$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/app/mtm/iaware/appmng/AppCleanParam;->mIntList:Ljava/util/List;

    .line 173
    invoke-static {p1}, Landroid/app/mtm/iaware/appmng/AppCleanParam$Builder;->access$500(Landroid/app/mtm/iaware/appmng/AppCleanParam$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/app/mtm/iaware/appmng/AppCleanParam;->mIntList2:Ljava/util/List;

    .line 174
    invoke-static {p1}, Landroid/app/mtm/iaware/appmng/AppCleanParam$Builder;->access$600(Landroid/app/mtm/iaware/appmng/AppCleanParam$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/app/mtm/iaware/appmng/AppCleanParam;->mAppCleanInfoList:Ljava/util/List;

    .line 175
    invoke-static {p1}, Landroid/app/mtm/iaware/appmng/AppCleanParam$Builder;->access$700(Landroid/app/mtm/iaware/appmng/AppCleanParam$Builder;)I

    move-result v0

    iput v0, p0, Landroid/app/mtm/iaware/appmng/AppCleanParam;->mLevel:I

    .line 176
    invoke-static {p1}, Landroid/app/mtm/iaware/appmng/AppCleanParam$Builder;->access$800(Landroid/app/mtm/iaware/appmng/AppCleanParam$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/mtm/iaware/appmng/AppCleanParam;->mTimeStamp:J

    .line 177
    invoke-static {p1}, Landroid/app/mtm/iaware/appmng/AppCleanParam$Builder;->access$900(Landroid/app/mtm/iaware/appmng/AppCleanParam$Builder;)I

    move-result v0

    iput v0, p0, Landroid/app/mtm/iaware/appmng/AppCleanParam;->mKilledCount:I

    .line 178
    invoke-static {p1}, Landroid/app/mtm/iaware/appmng/AppCleanParam$Builder;->access$1000(Landroid/app/mtm/iaware/appmng/AppCleanParam$Builder;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/app/mtm/iaware/appmng/AppCleanParam;->mBundle:Landroid/os/Bundle;

    .line 179
    return-void
.end method

.method synthetic constructor <init>(Landroid/app/mtm/iaware/appmng/AppCleanParam$Builder;Landroid/app/mtm/iaware/appmng/AppCleanParam$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/app/mtm/iaware/appmng/AppCleanParam$Builder;
    .param p2, "x1"    # Landroid/app/mtm/iaware/appmng/AppCleanParam$1;

    .line 25
    invoke-direct {p0, p1}, Landroid/app/mtm/iaware/appmng/AppCleanParam;-><init>(Landroid/app/mtm/iaware/appmng/AppCleanParam$Builder;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    invoke-virtual {p0, p1}, Landroid/app/mtm/iaware/appmng/AppCleanParam;->readFromParcel(Landroid/os/Parcel;)V

    .line 235
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/mtm/iaware/appmng/AppCleanParam$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/app/mtm/iaware/appmng/AppCleanParam$1;

    .line 25
    invoke-direct {p0, p1}, Landroid/app/mtm/iaware/appmng/AppCleanParam;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 251
    const/4 v0, 0x0

    return v0
.end method

.method public getAction()I
    .locals 1

    .line 186
    iget v0, p0, Landroid/app/mtm/iaware/appmng/AppCleanParam;->mAction:I

    return v0
.end method

.method public getAppCleanInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/mtm/iaware/appmng/AppCleanParam$AppCleanInfo;",
            ">;"
        }
    .end annotation

    .line 211
    iget-object v0, p0, Landroid/app/mtm/iaware/appmng/AppCleanParam;->mAppCleanInfoList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 212
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/mtm/iaware/appmng/AppCleanParam;->mAppCleanInfoList:Ljava/util/List;

    .line 214
    :cond_0
    iget-object v0, p0, Landroid/app/mtm/iaware/appmng/AppCleanParam;->mAppCleanInfoList:Ljava/util/List;

    return-object v0
.end method

.method public getBundle()Landroid/os/Bundle;
    .locals 1

    .line 230
    iget-object v0, p0, Landroid/app/mtm/iaware/appmng/AppCleanParam;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public getIntList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 197
    iget-object v0, p0, Landroid/app/mtm/iaware/appmng/AppCleanParam;->mIntList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 198
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/mtm/iaware/appmng/AppCleanParam;->mIntList:Ljava/util/List;

    .line 200
    :cond_0
    iget-object v0, p0, Landroid/app/mtm/iaware/appmng/AppCleanParam;->mIntList:Ljava/util/List;

    return-object v0
.end method

.method public getIntList2()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 204
    iget-object v0, p0, Landroid/app/mtm/iaware/appmng/AppCleanParam;->mIntList2:Ljava/util/List;

    if-nez v0, :cond_0

    .line 205
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/mtm/iaware/appmng/AppCleanParam;->mIntList2:Ljava/util/List;

    .line 207
    :cond_0
    iget-object v0, p0, Landroid/app/mtm/iaware/appmng/AppCleanParam;->mIntList2:Ljava/util/List;

    return-object v0
.end method

.method public getKilledCount()I
    .locals 1

    .line 226
    iget v0, p0, Landroid/app/mtm/iaware/appmng/AppCleanParam;->mKilledCount:I

    return v0
.end method

.method public getLevel()I
    .locals 1

    .line 218
    iget v0, p0, Landroid/app/mtm/iaware/appmng/AppCleanParam;->mLevel:I

    return v0
.end method

.method public getSource()I
    .locals 1

    .line 182
    iget v0, p0, Landroid/app/mtm/iaware/appmng/AppCleanParam;->mSource:I

    return v0
.end method

.method public getStringList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 190
    iget-object v0, p0, Landroid/app/mtm/iaware/appmng/AppCleanParam;->mStringList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 191
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/mtm/iaware/appmng/AppCleanParam;->mStringList:Ljava/util/List;

    .line 193
    :cond_0
    iget-object v0, p0, Landroid/app/mtm/iaware/appmng/AppCleanParam;->mStringList:Ljava/util/List;

    return-object v0
.end method

.method public getTimeStamp()J
    .locals 2

    .line 222
    iget-wide v0, p0, Landroid/app/mtm/iaware/appmng/AppCleanParam;->mTimeStamp:J

    return-wide v0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 269
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/mtm/iaware/appmng/AppCleanParam;->mSource:I

    .line 270
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/mtm/iaware/appmng/AppCleanParam;->mAction:I

    .line 271
    iget-object v0, p0, Landroid/app/mtm/iaware/appmng/AppCleanParam;->mStringList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 272
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/mtm/iaware/appmng/AppCleanParam;->mStringList:Ljava/util/List;

    .line 274
    :cond_0
    iget-object v0, p0, Landroid/app/mtm/iaware/appmng/AppCleanParam;->mStringList:Ljava/util/List;

    const-class v1, Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 275
    iget-object v0, p0, Landroid/app/mtm/iaware/appmng/AppCleanParam;->mIntList:Ljava/util/List;

    if-nez v0, :cond_1

    .line 276
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/mtm/iaware/appmng/AppCleanParam;->mIntList:Ljava/util/List;

    .line 278
    :cond_1
    iget-object v0, p0, Landroid/app/mtm/iaware/appmng/AppCleanParam;->mIntList:Ljava/util/List;

    const-class v1, Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 279
    iget-object v0, p0, Landroid/app/mtm/iaware/appmng/AppCleanParam;->mIntList2:Ljava/util/List;

    if-nez v0, :cond_2

    .line 280
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/mtm/iaware/appmng/AppCleanParam;->mIntList2:Ljava/util/List;

    .line 282
    :cond_2
    iget-object v0, p0, Landroid/app/mtm/iaware/appmng/AppCleanParam;->mIntList2:Ljava/util/List;

    const-class v1, Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 283
    iget-object v0, p0, Landroid/app/mtm/iaware/appmng/AppCleanParam;->mAppCleanInfoList:Ljava/util/List;

    if-nez v0, :cond_3

    .line 284
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/mtm/iaware/appmng/AppCleanParam;->mAppCleanInfoList:Ljava/util/List;

    .line 286
    :cond_3
    iget-object v0, p0, Landroid/app/mtm/iaware/appmng/AppCleanParam;->mAppCleanInfoList:Ljava/util/List;

    const-class v1, Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 287
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/mtm/iaware/appmng/AppCleanParam;->mLevel:I

    .line 288
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/mtm/iaware/appmng/AppCleanParam;->mTimeStamp:J

    .line 289
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/mtm/iaware/appmng/AppCleanParam;->mKilledCount:I

    .line 290
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/app/mtm/iaware/appmng/AppCleanParam;->mBundle:Landroid/os/Bundle;

    .line 291
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Source = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/app/mtm/iaware/appmng/AppCleanParam;->mSource:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Action = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/app/mtm/iaware/appmng/AppCleanParam;->mAction:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Level = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/app/mtm/iaware/appmng/AppCleanParam;->mLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", TimeStamp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/app/mtm/iaware/appmng/AppCleanParam;->mTimeStamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", KilledCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/app/mtm/iaware/appmng/AppCleanParam;->mKilledCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Bundle = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/mtm/iaware/appmng/AppCleanParam;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 256
    iget v0, p0, Landroid/app/mtm/iaware/appmng/AppCleanParam;->mSource:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 257
    iget v0, p0, Landroid/app/mtm/iaware/appmng/AppCleanParam;->mAction:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 258
    iget-object v0, p0, Landroid/app/mtm/iaware/appmng/AppCleanParam;->mStringList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 259
    iget-object v0, p0, Landroid/app/mtm/iaware/appmng/AppCleanParam;->mIntList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 260
    iget-object v0, p0, Landroid/app/mtm/iaware/appmng/AppCleanParam;->mIntList2:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 261
    iget-object v0, p0, Landroid/app/mtm/iaware/appmng/AppCleanParam;->mAppCleanInfoList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 262
    iget v0, p0, Landroid/app/mtm/iaware/appmng/AppCleanParam;->mLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 263
    iget-wide v0, p0, Landroid/app/mtm/iaware/appmng/AppCleanParam;->mTimeStamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 264
    iget v0, p0, Landroid/app/mtm/iaware/appmng/AppCleanParam;->mKilledCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 265
    iget-object v0, p0, Landroid/app/mtm/iaware/appmng/AppCleanParam;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 266
    return-void
.end method
