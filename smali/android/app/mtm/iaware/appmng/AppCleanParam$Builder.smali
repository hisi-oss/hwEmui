.class public Landroid/app/mtm/iaware/appmng/AppCleanParam$Builder;
.super Ljava/lang/Object;
.source "AppCleanParam.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/mtm/iaware/appmng/AppCleanParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


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
.method public constructor <init>(I)V
    .locals 0
    .param p1, "source"    # I

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput p1, p0, Landroid/app/mtm/iaware/appmng/AppCleanParam$Builder;->mSource:I

    .line 116
    return-void
.end method

.method static synthetic access$100(Landroid/app/mtm/iaware/appmng/AppCleanParam$Builder;)I
    .locals 1
    .param p0, "x0"    # Landroid/app/mtm/iaware/appmng/AppCleanParam$Builder;

    .line 102
    iget v0, p0, Landroid/app/mtm/iaware/appmng/AppCleanParam$Builder;->mSource:I

    return v0
.end method

.method static synthetic access$1000(Landroid/app/mtm/iaware/appmng/AppCleanParam$Builder;)Landroid/os/Bundle;
    .locals 1
    .param p0, "x0"    # Landroid/app/mtm/iaware/appmng/AppCleanParam$Builder;

    .line 102
    iget-object v0, p0, Landroid/app/mtm/iaware/appmng/AppCleanParam$Builder;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$200(Landroid/app/mtm/iaware/appmng/AppCleanParam$Builder;)I
    .locals 1
    .param p0, "x0"    # Landroid/app/mtm/iaware/appmng/AppCleanParam$Builder;

    .line 102
    iget v0, p0, Landroid/app/mtm/iaware/appmng/AppCleanParam$Builder;->mAction:I

    return v0
.end method

.method static synthetic access$300(Landroid/app/mtm/iaware/appmng/AppCleanParam$Builder;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Landroid/app/mtm/iaware/appmng/AppCleanParam$Builder;

    .line 102
    iget-object v0, p0, Landroid/app/mtm/iaware/appmng/AppCleanParam$Builder;->mStringList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Landroid/app/mtm/iaware/appmng/AppCleanParam$Builder;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Landroid/app/mtm/iaware/appmng/AppCleanParam$Builder;

    .line 102
    iget-object v0, p0, Landroid/app/mtm/iaware/appmng/AppCleanParam$Builder;->mIntList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Landroid/app/mtm/iaware/appmng/AppCleanParam$Builder;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Landroid/app/mtm/iaware/appmng/AppCleanParam$Builder;

    .line 102
    iget-object v0, p0, Landroid/app/mtm/iaware/appmng/AppCleanParam$Builder;->mIntList2:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Landroid/app/mtm/iaware/appmng/AppCleanParam$Builder;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Landroid/app/mtm/iaware/appmng/AppCleanParam$Builder;

    .line 102
    iget-object v0, p0, Landroid/app/mtm/iaware/appmng/AppCleanParam$Builder;->mAppCleanInfoList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700(Landroid/app/mtm/iaware/appmng/AppCleanParam$Builder;)I
    .locals 1
    .param p0, "x0"    # Landroid/app/mtm/iaware/appmng/AppCleanParam$Builder;

    .line 102
    iget v0, p0, Landroid/app/mtm/iaware/appmng/AppCleanParam$Builder;->mLevel:I

    return v0
.end method

.method static synthetic access$800(Landroid/app/mtm/iaware/appmng/AppCleanParam$Builder;)J
    .locals 2
    .param p0, "x0"    # Landroid/app/mtm/iaware/appmng/AppCleanParam$Builder;

    .line 102
    iget-wide v0, p0, Landroid/app/mtm/iaware/appmng/AppCleanParam$Builder;->mTimeStamp:J

    return-wide v0
.end method

.method static synthetic access$900(Landroid/app/mtm/iaware/appmng/AppCleanParam$Builder;)I
    .locals 1
    .param p0, "x0"    # Landroid/app/mtm/iaware/appmng/AppCleanParam$Builder;

    .line 102
    iget v0, p0, Landroid/app/mtm/iaware/appmng/AppCleanParam$Builder;->mKilledCount:I

    return v0
.end method


# virtual methods
.method public action(I)Landroid/app/mtm/iaware/appmng/AppCleanParam$Builder;
    .locals 0
    .param p1, "action"    # I

    .line 134
    iput p1, p0, Landroid/app/mtm/iaware/appmng/AppCleanParam$Builder;->mAction:I

    .line 135
    return-object p0
.end method

.method public appCleanInfoList(Ljava/util/List;)Landroid/app/mtm/iaware/appmng/AppCleanParam$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/mtm/iaware/appmng/AppCleanParam$AppCleanInfo;",
            ">;)",
            "Landroid/app/mtm/iaware/appmng/AppCleanParam$Builder;"
        }
    .end annotation

    .line 154
    .local p1, "appCleanInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/app/mtm/iaware/appmng/AppCleanParam$AppCleanInfo;>;"
    iput-object p1, p0, Landroid/app/mtm/iaware/appmng/AppCleanParam$Builder;->mAppCleanInfoList:Ljava/util/List;

    .line 155
    return-object p0
.end method

.method public build()Landroid/app/mtm/iaware/appmng/AppCleanParam;
    .locals 2

    .line 164
    new-instance v0, Landroid/app/mtm/iaware/appmng/AppCleanParam;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/app/mtm/iaware/appmng/AppCleanParam;-><init>(Landroid/app/mtm/iaware/appmng/AppCleanParam$Builder;Landroid/app/mtm/iaware/appmng/AppCleanParam$1;)V

    return-object v0
.end method

.method public bundle(Landroid/os/Bundle;)Landroid/app/mtm/iaware/appmng/AppCleanParam$Builder;
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 159
    iput-object p1, p0, Landroid/app/mtm/iaware/appmng/AppCleanParam$Builder;->mBundle:Landroid/os/Bundle;

    .line 160
    return-object p0
.end method

.method public intList(Ljava/util/List;)Landroid/app/mtm/iaware/appmng/AppCleanParam$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/app/mtm/iaware/appmng/AppCleanParam$Builder;"
        }
    .end annotation

    .line 144
    .local p1, "intList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iput-object p1, p0, Landroid/app/mtm/iaware/appmng/AppCleanParam$Builder;->mIntList:Ljava/util/List;

    .line 145
    return-object p0
.end method

.method public intList2(Ljava/util/List;)Landroid/app/mtm/iaware/appmng/AppCleanParam$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/app/mtm/iaware/appmng/AppCleanParam$Builder;"
        }
    .end annotation

    .line 149
    .local p1, "intList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iput-object p1, p0, Landroid/app/mtm/iaware/appmng/AppCleanParam$Builder;->mIntList2:Ljava/util/List;

    .line 150
    return-object p0
.end method

.method public killedCount(I)Landroid/app/mtm/iaware/appmng/AppCleanParam$Builder;
    .locals 0
    .param p1, "killedCount"    # I

    .line 129
    iput p1, p0, Landroid/app/mtm/iaware/appmng/AppCleanParam$Builder;->mKilledCount:I

    .line 130
    return-object p0
.end method

.method public level(I)Landroid/app/mtm/iaware/appmng/AppCleanParam$Builder;
    .locals 0
    .param p1, "level"    # I

    .line 119
    iput p1, p0, Landroid/app/mtm/iaware/appmng/AppCleanParam$Builder;->mLevel:I

    .line 120
    return-object p0
.end method

.method public stringList(Ljava/util/List;)Landroid/app/mtm/iaware/appmng/AppCleanParam$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/app/mtm/iaware/appmng/AppCleanParam$Builder;"
        }
    .end annotation

    .line 139
    .local p1, "stringList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Landroid/app/mtm/iaware/appmng/AppCleanParam$Builder;->mStringList:Ljava/util/List;

    .line 140
    return-object p0
.end method

.method public timeStamp(J)Landroid/app/mtm/iaware/appmng/AppCleanParam$Builder;
    .locals 0
    .param p1, "timeStamp"    # J

    .line 124
    iput-wide p1, p0, Landroid/app/mtm/iaware/appmng/AppCleanParam$Builder;->mTimeStamp:J

    .line 125
    return-object p0
.end method
