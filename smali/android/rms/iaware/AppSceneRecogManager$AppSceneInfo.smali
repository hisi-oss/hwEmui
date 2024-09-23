.class Landroid/rms/iaware/AppSceneRecogManager$AppSceneInfo;
.super Ljava/lang/Object;
.source "AppSceneRecogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/rms/iaware/AppSceneRecogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AppSceneInfo"
.end annotation


# instance fields
.field mLayoutInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/rms/iaware/AppSceneRecogManager$LayoutInfo;",
            ">;"
        }
    .end annotation
.end field

.field mSceneId:Ljava/lang/String;

.field mSysStatus:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p3, "sysStatus"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/rms/iaware/AppSceneRecogManager$LayoutInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1053
    .local p2, "layoutInfos":Ljava/util/List;, "Ljava/util/List<Landroid/rms/iaware/AppSceneRecogManager$LayoutInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1054
    iput-object p1, p0, Landroid/rms/iaware/AppSceneRecogManager$AppSceneInfo;->mSceneId:Ljava/lang/String;

    .line 1055
    iput-object p2, p0, Landroid/rms/iaware/AppSceneRecogManager$AppSceneInfo;->mLayoutInfos:Ljava/util/List;

    .line 1056
    iput-object p3, p0, Landroid/rms/iaware/AppSceneRecogManager$AppSceneInfo;->mSysStatus:Ljava/lang/String;

    .line 1057
    return-void
.end method
