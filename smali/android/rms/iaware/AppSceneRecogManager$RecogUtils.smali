.class Landroid/rms/iaware/AppSceneRecogManager$RecogUtils;
.super Ljava/lang/Object;
.source "AppSceneRecogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/rms/iaware/AppSceneRecogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RecogUtils"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static equalsList(Ljava/util/List;Ljava/util/List;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/rms/iaware/AppSceneRecogManager$BaseClass;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Landroid/rms/iaware/AppSceneRecogManager$BaseClass;",
            ">;)Z"
        }
    .end annotation

    .line 1167
    .local p0, "list1":Ljava/util/List;, "Ljava/util/List<+Landroid/rms/iaware/AppSceneRecogManager$BaseClass;>;"
    .local p1, "list2":Ljava/util/List;, "Ljava/util/List<+Landroid/rms/iaware/AppSceneRecogManager$BaseClass;>;"
    invoke-static {p0}, Landroid/rms/iaware/AppSceneRecogManager$RecogUtils;->isEmptyList(Ljava/util/List;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/rms/iaware/AppSceneRecogManager$RecogUtils;->isEmptyList(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1168
    return v1

    .line 1170
    :cond_0
    const/4 v0, 0x0

    if-eqz p0, :cond_6

    if-eqz p1, :cond_6

    .line 1171
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .line 1172
    .local v2, "list1Len":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 1173
    .local v3, "list2Len":I
    if-eq v2, v3, :cond_1

    .line 1174
    return v0

    .line 1176
    :cond_1
    move v4, v0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_5

    .line 1177
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/rms/iaware/AppSceneRecogManager$BaseClass;

    .line 1178
    .local v5, "baseClass":Landroid/rms/iaware/AppSceneRecogManager$BaseClass;
    move v6, v0

    .line 1179
    .local v6, "j":I
    :goto_1
    if-ge v6, v3, :cond_3

    .line 1180
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1181
    goto :goto_2

    .line 1179
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1184
    :cond_3
    :goto_2
    if-ne v6, v3, :cond_4

    .line 1185
    return v0

    .line 1176
    .end local v5    # "baseClass":Landroid/rms/iaware/AppSceneRecogManager$BaseClass;
    .end local v6    # "j":I
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1188
    .end local v4    # "i":I
    :cond_5
    return v1

    .line 1190
    .end local v2    # "list1Len":I
    .end local v3    # "list2Len":I
    :cond_6
    return v0
.end method

.method private static isEmptyList(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/rms/iaware/AppSceneRecogManager$BaseClass;",
            ">;)Z"
        }
    .end annotation

    .line 1160
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<+Landroid/rms/iaware/AppSceneRecogManager$BaseClass;>;"
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1163
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 1161
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
