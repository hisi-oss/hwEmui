.class Landroid/rms/iaware/AppSceneRecogManager$FragmentInfo;
.super Landroid/rms/iaware/AppSceneRecogManager$BaseClass;
.source "AppSceneRecogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/rms/iaware/AppSceneRecogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FragmentInfo"
.end annotation


# instance fields
.field mFragmentClassName:Ljava/lang/String;

.field mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;

    .line 1122
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/rms/iaware/AppSceneRecogManager$BaseClass;-><init>(Landroid/rms/iaware/AppSceneRecogManager$1;)V

    .line 1123
    iput-object p1, p0, Landroid/rms/iaware/AppSceneRecogManager$FragmentInfo;->mFragmentClassName:Ljava/lang/String;

    .line 1124
    iput-object p2, p0, Landroid/rms/iaware/AppSceneRecogManager$FragmentInfo;->mTag:Ljava/lang/String;

    .line 1125
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1128
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 1129
    return v0

    .line 1131
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 1132
    return v1

    .line 1134
    :cond_1
    instance-of v2, p1, Landroid/rms/iaware/AppSceneRecogManager$FragmentInfo;

    if-eqz v2, :cond_3

    .line 1135
    move-object v2, p1

    check-cast v2, Landroid/rms/iaware/AppSceneRecogManager$FragmentInfo;

    .line 1136
    .local v2, "fragmentInfo":Landroid/rms/iaware/AppSceneRecogManager$FragmentInfo;
    iget-object v3, v2, Landroid/rms/iaware/AppSceneRecogManager$FragmentInfo;->mFragmentClassName:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, v2, Landroid/rms/iaware/AppSceneRecogManager$FragmentInfo;->mFragmentClassName:Ljava/lang/String;

    iget-object v4, p0, Landroid/rms/iaware/AppSceneRecogManager$FragmentInfo;->mFragmentClassName:Ljava/lang/String;

    .line 1137
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v2, Landroid/rms/iaware/AppSceneRecogManager$FragmentInfo;->mTag:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, v2, Landroid/rms/iaware/AppSceneRecogManager$FragmentInfo;->mTag:Ljava/lang/String;

    iget-object v4, p0, Landroid/rms/iaware/AppSceneRecogManager$FragmentInfo;->mTag:Ljava/lang/String;

    .line 1139
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 1136
    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 1141
    .end local v2    # "fragmentInfo":Landroid/rms/iaware/AppSceneRecogManager$FragmentInfo;
    :cond_3
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 1151
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " FragmentClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/rms/iaware/AppSceneRecogManager$FragmentInfo;->mFragmentClassName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",Tags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/rms/iaware/AppSceneRecogManager$FragmentInfo;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
