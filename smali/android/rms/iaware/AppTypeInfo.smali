.class public Landroid/rms/iaware/AppTypeInfo;
.super Ljava/lang/Object;
.source "AppTypeInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final APP_ABROAD_ACTTOP_BIT_LOWEST:I = 0xc

.field public static final APP_APPFUNC_NAVI:I = 0x4

.field public static final APP_ATTRIBUTE_ACTTOP_AB:I = 0xf000

.field public static final APP_ATTRIBUTE_ACTTOP_CN:I = 0xf00

.field public static final APP_ATTRIBUTE_ALARM:I = 0x4

.field public static final APP_ATTRIBUTE_LOGIN:I = 0x2

.field public static final APP_ATTRIBUTE_OVERSEA:I = -0x80000000

.field public static final APP_ATTRIBUTE_PAY:I = 0x1

.field public static final APP_ATTRIBUTE_PRELOAD:I = 0x10

.field public static final APP_ATTRIBUTE_SCREENON_WAKELOCK:I = 0x8

.field public static final APP_ATTRIBUTE_UNKNOWN:I = -0x1

.field public static final APP_CHINA_ACTTOP_BIT_LOWEST:I = 0x8

.field public static final APP_TYPE_ALARM:I = 0x5

.field public static final APP_TYPE_APP_MARKET:I = 0x1f

.field public static final APP_TYPE_ASSISTANT:I = 0x20

.field public static final APP_TYPE_BANK:I = 0x10

.field public static final APP_TYPE_BIKE:I = 0x17

.field public static final APP_TYPE_BROWSER:I = 0x12

.field public static final APP_TYPE_BUS:I = 0x18

.field public static final APP_TYPE_BUSINESS:I = 0xb

.field public static final APP_TYPE_CALLCAB:I = 0x16

.field public static final APP_TYPE_CAMERA:I = 0x11

.field public static final APP_TYPE_DOWN_UP_LOAD:I = 0x23

.field public static final APP_TYPE_EDUCATION:I = 0x21

.field public static final APP_TYPE_EMAIL:I = 0x1

.field public static final APP_TYPE_FORUM:I = 0x14

.field public static final APP_TYPE_GALLERY:I = 0x1d

.field public static final APP_TYPE_GAME:I = 0x9

.field public static final APP_TYPE_IM:I = 0x0

.field public static final APP_TYPE_IME:I = 0x13

.field public static final APP_TYPE_LAUNCHER:I = 0x1c

.field public static final APP_TYPE_LEXICON:I = 0xa

.field public static final APP_TYPE_LIVE:I = 0x15

.field public static final APP_TYPE_MUSIC:I = 0x7

.field public static final APP_TYPE_NAVI:I = 0x3

.field public static final APP_TYPE_NEEDCHECK:I = -0x2

.field public static final APP_TYPE_NEWS:I = 0x1a

.field public static final APP_TYPE_OFFICE:I = 0xc

.field public static final APP_TYPE_OTHERS:I = 0xff

.field public static final APP_TYPE_PAY:I = 0x22

.field public static final APP_TYPE_READING:I = 0x6

.field public static final APP_TYPE_SHOPPING:I = 0xe

.field public static final APP_TYPE_SMALL_VIDEO:I = 0x24

.field public static final APP_TYPE_SMS:I = 0x1b

.field public static final APP_TYPE_SPORT:I = 0x2

.field public static final APP_TYPE_STOCKS:I = 0x4

.field public static final APP_TYPE_THEME:I = 0xd

.field public static final APP_TYPE_THIRD_GUARD:I = 0x19

.field public static final APP_TYPE_TOOL:I = 0xf

.field public static final APP_TYPE_UNKNOWN:I = -0x1

.field public static final APP_TYPE_VIDEO:I = 0x8

.field public static final APP_TYPE_VOIP:I = 0x1e

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/rms/iaware/AppTypeInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final PG_APP_TYPE_ALARM:I = 0x136

.field public static final PG_APP_TYPE_APP_MARKET:I = 0x140

.field public static final PG_APP_TYPE_BROWSER:I = 0x132

.field public static final PG_APP_TYPE_CAMERA:I = 0x144

.field public static final PG_APP_TYPE_EBOOK:I = 0x133

.field public static final PG_APP_TYPE_EDUCATION:I = 0x142

.field public static final PG_APP_TYPE_EMAIL:I = 0x12f

.field public static final PG_APP_TYPE_GALLERY:I = 0x13c

.field public static final PG_APP_TYPE_GAME:I = 0x131

.field public static final PG_APP_TYPE_IM:I = 0x137

.field public static final PG_APP_TYPE_INPUTMETHOD:I = 0x130

.field public static final PG_APP_TYPE_LAUNCHER:I = 0x12d

.field public static final PG_APP_TYPE_LIFE_TOOL:I = 0x141

.field public static final PG_APP_TYPE_LOCATION_PROVIDER:I = 0x13a

.field public static final PG_APP_TYPE_MONEY:I = 0x143

.field public static final PG_APP_TYPE_MUSIC:I = 0x138

.field public static final PG_APP_TYPE_NAVIGATION:I = 0x139

.field public static final PG_APP_TYPE_NEWS_CLIENT:I = 0x13e

.field public static final PG_APP_TYPE_OFFICE:I = 0x13b

.field public static final PG_APP_TYPE_PEDOMETER:I = 0x145

.field public static final PG_APP_TYPE_SCRLOCK:I = 0x135

.field public static final PG_APP_TYPE_SHOP:I = 0x13f

.field public static final PG_APP_TYPE_SIP:I = 0x13d

.field public static final PG_APP_TYPE_SMS:I = 0x12e

.field public static final PG_APP_TYPE_VIDEO:I = 0x134

.field public static final PG_TYPE_BASE:I = 0x12c


# instance fields
.field private final appFuncList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private attribute:I

.field private pkgName:Ljava/lang/String;

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 192
    new-instance v0, Landroid/rms/iaware/AppTypeInfo$1;

    invoke-direct {v0}, Landroid/rms/iaware/AppTypeInfo$1;-><init>()V

    sput-object v0, Landroid/rms/iaware/AppTypeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/rms/iaware/AppTypeInfo;->appFuncList:Ljava/util/List;

    .line 131
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/rms/iaware/AppTypeInfo;->appFuncList:Ljava/util/List;

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/rms/iaware/AppTypeInfo;->type:I

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/rms/iaware/AppTypeInfo;->attribute:I

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/rms/iaware/AppTypeInfo;->pkgName:Ljava/lang/String;

    .line 137
    iget-object v0, p0, Landroid/rms/iaware/AppTypeInfo;->appFuncList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 138
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 181
    const/4 v0, 0x0

    return v0
.end method

.method public getAppFuncList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 158
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v1, p0, Landroid/rms/iaware/AppTypeInfo;->appFuncList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 159
    return-object v0
.end method

.method public getAttribute()I
    .locals 1

    .line 149
    iget v0, p0, Landroid/rms/iaware/AppTypeInfo;->attribute:I

    return v0
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 1

    .line 167
    iget-object v0, p0, Landroid/rms/iaware/AppTypeInfo;->pkgName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 141
    iget v0, p0, Landroid/rms/iaware/AppTypeInfo;->type:I

    return v0
.end method

.method public setAppFuncList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 163
    .local p1, "appFuncList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v0, p0, Landroid/rms/iaware/AppTypeInfo;->appFuncList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 164
    return-void
.end method

.method public setAttribute(I)V
    .locals 0
    .param p1, "attribute"    # I

    .line 153
    iput p1, p0, Landroid/rms/iaware/AppTypeInfo;->attribute:I

    .line 154
    return-void
.end method

.method public setPkgName(Ljava/lang/String;)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 171
    iput-object p1, p0, Landroid/rms/iaware/AppTypeInfo;->pkgName:Ljava/lang/String;

    .line 172
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .line 145
    iput p1, p0, Landroid/rms/iaware/AppTypeInfo;->type:I

    .line 146
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppTypeInfo [pkgName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/rms/iaware/AppTypeInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ,type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/rms/iaware/AppTypeInfo;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", attribute="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/rms/iaware/AppTypeInfo;->attribute:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ,appFuncList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/rms/iaware/AppTypeInfo;->appFuncList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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

    .line 186
    iget v0, p0, Landroid/rms/iaware/AppTypeInfo;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    iget v0, p0, Landroid/rms/iaware/AppTypeInfo;->attribute:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 188
    iget-object v0, p0, Landroid/rms/iaware/AppTypeInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Landroid/rms/iaware/AppTypeInfo;->appFuncList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 190
    return-void
.end method
