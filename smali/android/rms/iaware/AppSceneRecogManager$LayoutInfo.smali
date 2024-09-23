.class Landroid/rms/iaware/AppSceneRecogManager$LayoutInfo;
.super Landroid/rms/iaware/AppSceneRecogManager$BaseClass;
.source "AppSceneRecogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/rms/iaware/AppSceneRecogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LayoutInfo"
.end annotation


# instance fields
.field mFragmentInfo:Landroid/rms/iaware/AppSceneRecogManager$FragmentInfo;

.field mLayoutInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/rms/iaware/AppSceneRecogManager$LayoutInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/rms/iaware/AppSceneRecogManager$FragmentInfo;)V
    .locals 1
    .param p1, "fragmentInfo"    # Landroid/rms/iaware/AppSceneRecogManager$FragmentInfo;

    .line 1064
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/rms/iaware/AppSceneRecogManager$BaseClass;-><init>(Landroid/rms/iaware/AppSceneRecogManager$1;)V

    .line 1065
    iput-object p1, p0, Landroid/rms/iaware/AppSceneRecogManager$LayoutInfo;->mFragmentInfo:Landroid/rms/iaware/AppSceneRecogManager$FragmentInfo;

    .line 1066
    return-void
.end method

.method public constructor <init>(Landroid/rms/iaware/AppSceneRecogManager$FragmentInfo;Ljava/util/List;)V
    .locals 1
    .param p1, "fragmentInfo"    # Landroid/rms/iaware/AppSceneRecogManager$FragmentInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/rms/iaware/AppSceneRecogManager$FragmentInfo;",
            "Ljava/util/List<",
            "Landroid/rms/iaware/AppSceneRecogManager$LayoutInfo;",
            ">;)V"
        }
    .end annotation

    .line 1068
    .local p2, "layoutInfos":Ljava/util/List;, "Ljava/util/List<Landroid/rms/iaware/AppSceneRecogManager$LayoutInfo;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/rms/iaware/AppSceneRecogManager$BaseClass;-><init>(Landroid/rms/iaware/AppSceneRecogManager$1;)V

    .line 1069
    iput-object p1, p0, Landroid/rms/iaware/AppSceneRecogManager$LayoutInfo;->mFragmentInfo:Landroid/rms/iaware/AppSceneRecogManager$FragmentInfo;

    .line 1070
    iput-object p2, p0, Landroid/rms/iaware/AppSceneRecogManager$LayoutInfo;->mLayoutInfos:Ljava/util/List;

    .line 1071
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1074
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 1075
    return v0

    .line 1077
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 1078
    return v1

    .line 1080
    :cond_1
    instance-of v2, p1, Landroid/rms/iaware/AppSceneRecogManager$LayoutInfo;

    if-eqz v2, :cond_3

    .line 1081
    move-object v2, p1

    check-cast v2, Landroid/rms/iaware/AppSceneRecogManager$LayoutInfo;

    .line 1082
    .local v2, "layoutInfo":Landroid/rms/iaware/AppSceneRecogManager$LayoutInfo;
    iget-object v3, p0, Landroid/rms/iaware/AppSceneRecogManager$LayoutInfo;->mFragmentInfo:Landroid/rms/iaware/AppSceneRecogManager$FragmentInfo;

    iget-object v4, v2, Landroid/rms/iaware/AppSceneRecogManager$LayoutInfo;->mFragmentInfo:Landroid/rms/iaware/AppSceneRecogManager$FragmentInfo;

    invoke-virtual {v3, v4}, Landroid/rms/iaware/AppSceneRecogManager$FragmentInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v2, Landroid/rms/iaware/AppSceneRecogManager$LayoutInfo;->mLayoutInfos:Ljava/util/List;

    iget-object v4, p0, Landroid/rms/iaware/AppSceneRecogManager$LayoutInfo;->mLayoutInfos:Ljava/util/List;

    .line 1083
    invoke-static {v3, v4}, Landroid/rms/iaware/AppSceneRecogManager$RecogUtils;->equalsList(Ljava/util/List;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 1082
    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 1085
    .end local v2    # "layoutInfo":Landroid/rms/iaware/AppSceneRecogManager$LayoutInfo;
    :cond_3
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 1114
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1090
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1091
    .local v0, "sBuffer":Ljava/lang/StringBuffer;
    const-string v1, "className:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Landroid/rms/iaware/AppSceneRecogManager$LayoutInfo;->mFragmentInfo:Landroid/rms/iaware/AppSceneRecogManager$FragmentInfo;

    iget-object v1, v1, Landroid/rms/iaware/AppSceneRecogManager$FragmentInfo;->mFragmentClassName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ",tag:"

    .line 1092
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Landroid/rms/iaware/AppSceneRecogManager$LayoutInfo;->mFragmentInfo:Landroid/rms/iaware/AppSceneRecogManager$FragmentInfo;

    iget-object v1, v1, Landroid/rms/iaware/AppSceneRecogManager$FragmentInfo;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ",fragments:["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1093
    iget-object v1, p0, Landroid/rms/iaware/AppSceneRecogManager$LayoutInfo;->mLayoutInfos:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 1094
    iget-object v1, p0, Landroid/rms/iaware/AppSceneRecogManager$LayoutInfo;->mLayoutInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 1095
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 1096
    iget-object v3, p0, Landroid/rms/iaware/AppSceneRecogManager$LayoutInfo;->mLayoutInfos:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/rms/iaware/AppSceneRecogManager$LayoutInfo;

    .line 1097
    .local v3, "tt":Landroid/rms/iaware/AppSceneRecogManager$LayoutInfo;
    if-nez v3, :cond_0

    .line 1098
    goto :goto_1

    .line 1100
    :cond_0
    const-string v4, "{"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1101
    invoke-virtual {v3}, Landroid/rms/iaware/AppSceneRecogManager$LayoutInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1102
    const-string v4, "}"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1103
    add-int/lit8 v4, v1, -0x1

    if-ge v2, v4, :cond_1

    .line 1104
    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1095
    .end local v3    # "tt":Landroid/rms/iaware/AppSceneRecogManager$LayoutInfo;
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1108
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_2
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1109
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
