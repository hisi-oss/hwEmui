.class final Landroid/rms/iaware/AppSceneRecogManager$ThirdAppHandler;
.super Landroid/os/Handler;
.source "AppSceneRecogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/rms/iaware/AppSceneRecogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ThirdAppHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/rms/iaware/AppSceneRecogManager;


# direct methods
.method public constructor <init>(Landroid/rms/iaware/AppSceneRecogManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 712
    iput-object p1, p0, Landroid/rms/iaware/AppSceneRecogManager$ThirdAppHandler;->this$0:Landroid/rms/iaware/AppSceneRecogManager;

    .line 713
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 714
    return-void
.end method

.method private doRecog(Landroid/app/Activity;)Ljava/lang/String;
    .locals 11
    .param p1, "activity"    # Landroid/app/Activity;

    .line 819
    iget-object v0, p0, Landroid/rms/iaware/AppSceneRecogManager$ThirdAppHandler;->this$0:Landroid/rms/iaware/AppSceneRecogManager;

    invoke-static {v0}, Landroid/rms/iaware/AppSceneRecogManager;->access$500(Landroid/rms/iaware/AppSceneRecogManager;)Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    .line 820
    iget-object v0, p0, Landroid/rms/iaware/AppSceneRecogManager$ThirdAppHandler;->this$0:Landroid/rms/iaware/AppSceneRecogManager;

    const-string v2, "doRecog: this activity is gone, return null."

    invoke-static {v0, v2}, Landroid/rms/iaware/AppSceneRecogManager;->access$100(Landroid/rms/iaware/AppSceneRecogManager;Ljava/lang/String;)V

    .line 821
    return-object v1

    .line 823
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 824
    .local v0, "activityName":Ljava/lang/String;
    iget-object v2, p0, Landroid/rms/iaware/AppSceneRecogManager$ThirdAppHandler;->this$0:Landroid/rms/iaware/AppSceneRecogManager;

    invoke-static {v2}, Landroid/rms/iaware/AppSceneRecogManager;->access$1000(Landroid/rms/iaware/AppSceneRecogManager;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 825
    .local v2, "appSceneInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/rms/iaware/AppSceneRecogManager$AppSceneInfo;>;"
    if-nez v2, :cond_1

    .line 826
    iget-object v3, p0, Landroid/rms/iaware/AppSceneRecogManager$ThirdAppHandler;->this$0:Landroid/rms/iaware/AppSceneRecogManager;

    const-string v4, "Current activity has no scene."

    invoke-static {v3, v4}, Landroid/rms/iaware/AppSceneRecogManager;->access$100(Landroid/rms/iaware/AppSceneRecogManager;Ljava/lang/String;)V

    .line 827
    return-object v1

    .line 829
    :cond_1
    const-string v1, "unknown"

    .line 830
    .local v1, "sceneId":Ljava/lang/String;
    const/4 v3, 0x0

    .line 831
    .local v3, "i":I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    .line 832
    .local v4, "total":I
    :goto_0
    if-ge v3, v4, :cond_8

    .line 833
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/rms/iaware/AppSceneRecogManager$AppSceneInfo;

    .line 834
    .local v5, "sceneInfo":Landroid/rms/iaware/AppSceneRecogManager$AppSceneInfo;
    if-eqz v5, :cond_7

    iget-object v6, p0, Landroid/rms/iaware/AppSceneRecogManager$ThirdAppHandler;->this$0:Landroid/rms/iaware/AppSceneRecogManager;

    invoke-static {v6}, Landroid/rms/iaware/AppSceneRecogManager;->access$1300(Landroid/rms/iaware/AppSceneRecogManager;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v5, Landroid/rms/iaware/AppSceneRecogManager$AppSceneInfo;->mSysStatus:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 835
    goto :goto_3

    .line 837
    :cond_2
    iget-object v6, v5, Landroid/rms/iaware/AppSceneRecogManager$AppSceneInfo;->mLayoutInfos:Ljava/util/List;

    if-eqz v6, :cond_4

    iget-object v6, v5, Landroid/rms/iaware/AppSceneRecogManager$AppSceneInfo;->mLayoutInfos:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_3

    goto :goto_1

    .line 848
    :cond_3
    iget-object v6, p0, Landroid/rms/iaware/AppSceneRecogManager$ThirdAppHandler;->this$0:Landroid/rms/iaware/AppSceneRecogManager;

    invoke-static {v6, v0, p1}, Landroid/rms/iaware/AppSceneRecogManager;->access$1500(Landroid/rms/iaware/AppSceneRecogManager;Ljava/lang/String;Landroid/app/Activity;)Ljava/util/List;

    move-result-object v6

    .line 849
    .local v6, "layoutInfos":Ljava/util/List;, "Ljava/util/List<Landroid/rms/iaware/AppSceneRecogManager$LayoutInfo;>;"
    iget-object v7, p0, Landroid/rms/iaware/AppSceneRecogManager$ThirdAppHandler;->this$0:Landroid/rms/iaware/AppSceneRecogManager;

    const-string v8, "Current layout: "

    iget-object v9, p0, Landroid/rms/iaware/AppSceneRecogManager$ThirdAppHandler;->this$0:Landroid/rms/iaware/AppSceneRecogManager;

    invoke-static {v9, v6}, Landroid/rms/iaware/AppSceneRecogManager;->access$1600(Landroid/rms/iaware/AppSceneRecogManager;Ljava/util/List;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Landroid/rms/iaware/AppSceneRecogManager;->access$000(Landroid/rms/iaware/AppSceneRecogManager;Ljava/lang/String;Ljava/lang/Object;)V

    .line 850
    iget-object v7, p0, Landroid/rms/iaware/AppSceneRecogManager$ThirdAppHandler;->this$0:Landroid/rms/iaware/AppSceneRecogManager;

    const-string v8, "Feature layout: "

    iget-object v9, p0, Landroid/rms/iaware/AppSceneRecogManager$ThirdAppHandler;->this$0:Landroid/rms/iaware/AppSceneRecogManager;

    iget-object v10, v5, Landroid/rms/iaware/AppSceneRecogManager$AppSceneInfo;->mLayoutInfos:Ljava/util/List;

    invoke-static {v9, v10}, Landroid/rms/iaware/AppSceneRecogManager;->access$1600(Landroid/rms/iaware/AppSceneRecogManager;Ljava/util/List;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Landroid/rms/iaware/AppSceneRecogManager;->access$000(Landroid/rms/iaware/AppSceneRecogManager;Ljava/lang/String;Ljava/lang/Object;)V

    .line 851
    iget-object v7, v5, Landroid/rms/iaware/AppSceneRecogManager$AppSceneInfo;->mLayoutInfos:Ljava/util/List;

    invoke-static {v7, v6}, Landroid/rms/iaware/AppSceneRecogManager$RecogUtils;->equalsList(Ljava/util/List;Ljava/util/List;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 852
    iget-object v1, v5, Landroid/rms/iaware/AppSceneRecogManager$AppSceneInfo;->mSceneId:Ljava/lang/String;

    .line 853
    iget-object v7, p0, Landroid/rms/iaware/AppSceneRecogManager$ThirdAppHandler;->this$0:Landroid/rms/iaware/AppSceneRecogManager;

    const-string v8, "Matches with the fragments. sceneId: "

    invoke-static {v7, v8, v1}, Landroid/rms/iaware/AppSceneRecogManager;->access$000(Landroid/rms/iaware/AppSceneRecogManager;Ljava/lang/String;Ljava/lang/Object;)V

    .line 854
    goto :goto_4

    .line 838
    .end local v6    # "layoutInfos":Ljava/util/List;, "Ljava/util/List<Landroid/rms/iaware/AppSceneRecogManager$LayoutInfo;>;"
    :cond_4
    :goto_1
    iget-object v6, p0, Landroid/rms/iaware/AppSceneRecogManager$ThirdAppHandler;->this$0:Landroid/rms/iaware/AppSceneRecogManager;

    const/4 v7, 0x0

    invoke-static {v6, v0, p1, v7}, Landroid/rms/iaware/AppSceneRecogManager;->access$1400(Landroid/rms/iaware/AppSceneRecogManager;Ljava/lang/String;Landroid/app/Activity;I)Ljava/util/List;

    move-result-object v6

    .line 839
    .restart local v6    # "layoutInfos":Ljava/util/List;, "Ljava/util/List<Landroid/rms/iaware/AppSceneRecogManager$LayoutInfo;>;"
    if-eqz v6, :cond_6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_5

    goto :goto_2

    .line 843
    :cond_5
    iget-object v7, p0, Landroid/rms/iaware/AppSceneRecogManager$ThirdAppHandler;->this$0:Landroid/rms/iaware/AppSceneRecogManager;

    const-string v8, "----No Match with no fragments. sceneId:"

    invoke-static {v7, v8, v1}, Landroid/rms/iaware/AppSceneRecogManager;->access$000(Landroid/rms/iaware/AppSceneRecogManager;Ljava/lang/String;Ljava/lang/Object;)V

    .line 845
    goto :goto_4

    .line 840
    :cond_6
    :goto_2
    iget-object v1, v5, Landroid/rms/iaware/AppSceneRecogManager$AppSceneInfo;->mSceneId:Ljava/lang/String;

    .line 841
    iget-object v7, p0, Landroid/rms/iaware/AppSceneRecogManager$ThirdAppHandler;->this$0:Landroid/rms/iaware/AppSceneRecogManager;

    const-string v8, "Matches with no fragments. sceneId: "

    invoke-static {v7, v8, v1}, Landroid/rms/iaware/AppSceneRecogManager;->access$000(Landroid/rms/iaware/AppSceneRecogManager;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    .line 832
    .end local v5    # "sceneInfo":Landroid/rms/iaware/AppSceneRecogManager$AppSceneInfo;
    .end local v6    # "layoutInfos":Ljava/util/List;, "Ljava/util/List<Landroid/rms/iaware/AppSceneRecogManager$LayoutInfo;>;"
    :cond_7
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 858
    :cond_8
    :goto_4
    iget-object v5, p0, Landroid/rms/iaware/AppSceneRecogManager$ThirdAppHandler;->this$0:Landroid/rms/iaware/AppSceneRecogManager;

    const-string v6, "-----Finish to recognize. sceneId: "

    invoke-static {v5, v6, v1}, Landroid/rms/iaware/AppSceneRecogManager;->access$000(Landroid/rms/iaware/AppSceneRecogManager;Ljava/lang/String;Ljava/lang/Object;)V

    .line 859
    return-object v1
.end method

.method private getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "entry"    # Lorg/json/JSONObject;
    .param p2, "name"    # Ljava/lang/String;

    .line 910
    const-string v0, ""

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getLayoutInfo(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 12
    .param p1, "jsonArray"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Landroid/rms/iaware/AppSceneRecogManager$LayoutInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 914
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 915
    .local v0, "layoutInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/rms/iaware/AppSceneRecogManager$LayoutInfo;>;"
    const/4 v1, 0x0

    .line 916
    .local v1, "fragmentInfo":Landroid/rms/iaware/AppSceneRecogManager$FragmentInfo;
    const/4 v2, 0x0

    .line 917
    .local v2, "layoutInfo":Landroid/rms/iaware/AppSceneRecogManager$LayoutInfo;
    if-eqz p1, :cond_2

    .line 918
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    .local v4, "len":I
    :goto_0
    if-ge v3, v4, :cond_2

    .line 919
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 920
    .local v5, "obj":Lorg/json/JSONObject;
    const-string v6, "className"

    invoke-direct {p0, v5, v6}, Landroid/rms/iaware/AppSceneRecogManager$ThirdAppHandler;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 921
    .local v6, "className":Ljava/lang/String;
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    .line 922
    .local v7, "strTMP":Ljava/lang/String;
    const-string v8, "null"

    .line 923
    .local v8, "tag":Ljava/lang/String;
    const-string v9, "tag"

    invoke-virtual {v7, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 924
    const-string v9, "tag"

    invoke-direct {p0, v5, v9}, Landroid/rms/iaware/AppSceneRecogManager$ThirdAppHandler;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 926
    :cond_0
    new-instance v9, Landroid/rms/iaware/AppSceneRecogManager$FragmentInfo;

    invoke-direct {v9, v6, v8}, Landroid/rms/iaware/AppSceneRecogManager$FragmentInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v9

    .line 927
    const-string v9, "fragments"

    invoke-virtual {v7, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 928
    const-string v9, "fragments"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 929
    .local v9, "fragements":Lorg/json/JSONArray;
    invoke-direct {p0, v9}, Landroid/rms/iaware/AppSceneRecogManager$ThirdAppHandler;->getLayoutInfo(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v10

    .line 930
    .local v10, "tmpLayoutInfos":Ljava/util/List;, "Ljava/util/List<Landroid/rms/iaware/AppSceneRecogManager$LayoutInfo;>;"
    new-instance v11, Landroid/rms/iaware/AppSceneRecogManager$LayoutInfo;

    invoke-direct {v11, v1, v10}, Landroid/rms/iaware/AppSceneRecogManager$LayoutInfo;-><init>(Landroid/rms/iaware/AppSceneRecogManager$FragmentInfo;Ljava/util/List;)V

    move-object v2, v11

    .line 931
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 932
    .end local v9    # "fragements":Lorg/json/JSONArray;
    .end local v10    # "tmpLayoutInfos":Ljava/util/List;, "Ljava/util/List<Landroid/rms/iaware/AppSceneRecogManager$LayoutInfo;>;"
    goto :goto_1

    .line 933
    :cond_1
    new-instance v9, Landroid/rms/iaware/AppSceneRecogManager$LayoutInfo;

    invoke-direct {v9, v1}, Landroid/rms/iaware/AppSceneRecogManager$LayoutInfo;-><init>(Landroid/rms/iaware/AppSceneRecogManager$FragmentInfo;)V

    move-object v2, v9

    .line 934
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 918
    .end local v5    # "obj":Lorg/json/JSONObject;
    .end local v6    # "className":Ljava/lang/String;
    .end local v7    # "strTMP":Ljava/lang/String;
    .end local v8    # "tag":Ljava/lang/String;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 938
    .end local v3    # "i":I
    .end local v4    # "len":I
    :cond_2
    return-object v0
.end method

.method private handleInitMsg(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 744
    iget-object v0, p0, Landroid/rms/iaware/AppSceneRecogManager$ThirdAppHandler;->this$0:Landroid/rms/iaware/AppSceneRecogManager;

    const-string v1, "MSG_CM_CLASS_INIT"

    invoke-static {v0, v1}, Landroid/rms/iaware/AppSceneRecogManager;->access$100(Landroid/rms/iaware/AppSceneRecogManager;Ljava/lang/String;)V

    .line 745
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 746
    .local v0, "bundle":Landroid/os/Bundle;
    const/4 v1, 0x0

    .line 748
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    const-string v2, "list"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 751
    goto :goto_0

    .line 749
    :catch_0
    move-exception v2

    .line 750
    .local v2, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    iget-object v3, p0, Landroid/rms/iaware/AppSceneRecogManager$ThirdAppHandler;->this$0:Landroid/rms/iaware/AppSceneRecogManager;

    const-string v4, "handleInitMsg occur ArrayIndexOutOfBoundsException."

    invoke-static {v3, v4}, Landroid/rms/iaware/AppSceneRecogManager;->access$200(Landroid/rms/iaware/AppSceneRecogManager;Ljava/lang/String;)V

    .line 752
    .end local v2    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :goto_0
    if-nez v1, :cond_0

    .line 753
    return-void

    .line 756
    :cond_0
    invoke-direct {p0, v1}, Landroid/rms/iaware/AppSceneRecogManager$ThirdAppHandler;->saveAppSceneInfo(Ljava/util/ArrayList;)V

    .line 757
    const-string v2, "initflag"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 759
    .local v2, "doInit":I
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 760
    iget-object v3, p0, Landroid/rms/iaware/AppSceneRecogManager$ThirdAppHandler;->this$0:Landroid/rms/iaware/AppSceneRecogManager;

    invoke-static {v3}, Landroid/rms/iaware/AppSceneRecogManager;->access$300(Landroid/rms/iaware/AppSceneRecogManager;)V

    .line 761
    const-string v3, "AppSceneRecogManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Enable is:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Landroid/rms/iaware/AppSceneRecogManager$ThirdAppHandler;->this$0:Landroid/rms/iaware/AppSceneRecogManager;

    invoke-static {v5}, Landroid/rms/iaware/AppSceneRecogManager;->access$400(Landroid/rms/iaware/AppSceneRecogManager;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    :cond_1
    return-void
.end method

.method private handleRecogMsg(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 786
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/Activity;

    .line 787
    .local v0, "activity":Landroid/app/Activity;
    iget-object v1, p0, Landroid/rms/iaware/AppSceneRecogManager$ThirdAppHandler;->this$0:Landroid/rms/iaware/AppSceneRecogManager;

    invoke-static {v1}, Landroid/rms/iaware/AppSceneRecogManager;->access$400(Landroid/rms/iaware/AppSceneRecogManager;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Landroid/rms/iaware/AppSceneRecogManager$ThirdAppHandler;->this$0:Landroid/rms/iaware/AppSceneRecogManager;

    invoke-static {v1}, Landroid/rms/iaware/AppSceneRecogManager;->access$500(Landroid/rms/iaware/AppSceneRecogManager;)Landroid/app/Activity;

    move-result-object v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 790
    :cond_0
    sget-boolean v1, Landroid/view/View;->sTriggerFlag:Z

    if-eqz v1, :cond_2

    .line 791
    const/4 v1, 0x0

    sput-boolean v1, Landroid/view/View;->sTriggerFlag:Z

    .line 792
    invoke-static {}, Landroid/rms/iaware/AppSceneRecogManager;->access$600()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 793
    const-string v1, "AppSceneRecogManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSG_SCENARIO_RECOGNITION: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/rms/iaware/AppSceneRecogManager$ThirdAppHandler;->this$0:Landroid/rms/iaware/AppSceneRecogManager;

    invoke-static {v3}, Landroid/rms/iaware/AppSceneRecogManager;->access$700(Landroid/rms/iaware/AppSceneRecogManager;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    :cond_1
    invoke-static {}, Landroid/rms/iaware/AppSceneRecogManager;->access$800()Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/rms/iaware/AppSceneRecogManager$ThirdAppHandler;->this$0:Landroid/rms/iaware/AppSceneRecogManager;

    invoke-static {v2}, Landroid/rms/iaware/AppSceneRecogManager;->access$700(Landroid/rms/iaware/AppSceneRecogManager;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 796
    invoke-direct {p0, v0}, Landroid/rms/iaware/AppSceneRecogManager$ThirdAppHandler;->doRecog(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    .line 797
    .local v1, "origSceneId":Ljava/lang/String;
    invoke-direct {p0, v1}, Landroid/rms/iaware/AppSceneRecogManager$ThirdAppHandler;->handleReportRecogResult(Ljava/lang/String;)V

    .line 800
    .end local v1    # "origSceneId":Ljava/lang/String;
    :cond_2
    invoke-direct {p0, v0}, Landroid/rms/iaware/AppSceneRecogManager$ThirdAppHandler;->sendRecogMsg(Landroid/app/Activity;)V

    .line 801
    return-void

    .line 788
    :cond_3
    :goto_0
    return-void
.end method

.method private handleReportRecogResult(Ljava/lang/String;)V
    .locals 4
    .param p1, "currentSceneId"    # Ljava/lang/String;

    .line 863
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 864
    .local v0, "message":Ljava/lang/String;
    invoke-static {}, Landroid/rms/iaware/AppSceneRecogManager;->access$600()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 865
    const-string v1, "AppSceneRecogManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-----begin to report scene: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " last:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/rms/iaware/AppSceneRecogManager$ThirdAppHandler;->this$0:Landroid/rms/iaware/AppSceneRecogManager;

    invoke-static {v3}, Landroid/rms/iaware/AppSceneRecogManager;->access$1700(Landroid/rms/iaware/AppSceneRecogManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    :cond_0
    if-eqz p1, :cond_1

    iget-object v1, p0, Landroid/rms/iaware/AppSceneRecogManager$ThirdAppHandler;->this$0:Landroid/rms/iaware/AppSceneRecogManager;

    invoke-static {v1}, Landroid/rms/iaware/AppSceneRecogManager;->access$1700(Landroid/rms/iaware/AppSceneRecogManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 869
    const/16 v1, 0xbdc

    const-wide/16 v2, 0x0

    :try_start_0
    invoke-static {v1, v0, v2, v3}, Landroid/rms/iaware/IAwareSdk;->asyncReportData(ILjava/lang/String;J)V

    .line 870
    iget-object v1, p0, Landroid/rms/iaware/AppSceneRecogManager$ThirdAppHandler;->this$0:Landroid/rms/iaware/AppSceneRecogManager;

    invoke-static {v1, p1}, Landroid/rms/iaware/AppSceneRecogManager;->access$1702(Landroid/rms/iaware/AppSceneRecogManager;Ljava/lang/String;)Ljava/lang/String;

    .line 871
    iget-object v1, p0, Landroid/rms/iaware/AppSceneRecogManager$ThirdAppHandler;->this$0:Landroid/rms/iaware/AppSceneRecogManager;

    const-string v2, "-----Success to report scene: "

    invoke-static {v1, v2, v0}, Landroid/rms/iaware/AppSceneRecogManager;->access$000(Landroid/rms/iaware/AppSceneRecogManager;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 874
    goto :goto_0

    .line 872
    :catch_0
    move-exception v1

    .line 873
    .local v1, "e":Ljava/lang/RuntimeException;
    iget-object v2, p0, Landroid/rms/iaware/AppSceneRecogManager$ThirdAppHandler;->this$0:Landroid/rms/iaware/AppSceneRecogManager;

    const-string v3, "Failed to report scene."

    invoke-static {v2, v3}, Landroid/rms/iaware/AppSceneRecogManager;->access$200(Landroid/rms/iaware/AppSceneRecogManager;Ljava/lang/String;)V

    .line 876
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_1
    :goto_0
    return-void
.end method

.method private handleResumeFocusChangedMsg(ILandroid/os/Message;)V
    .locals 4
    .param p1, "what"    # I
    .param p2, "msg"    # Landroid/os/Message;

    .line 766
    iget-object v0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/Activity;

    .line 767
    .local v0, "activity":Landroid/app/Activity;
    iget-object v1, p0, Landroid/rms/iaware/AppSceneRecogManager$ThirdAppHandler;->this$0:Landroid/rms/iaware/AppSceneRecogManager;

    invoke-static {v1}, Landroid/rms/iaware/AppSceneRecogManager;->access$500(Landroid/rms/iaware/AppSceneRecogManager;)Landroid/app/Activity;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 768
    return-void

    .line 770
    :cond_0
    invoke-static {}, Landroid/rms/iaware/AppSceneRecogManager;->access$600()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 771
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 772
    const-string v1, "AppSceneRecogManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSG_WINDOW_FOCUS: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 774
    :cond_1
    const-string v1, "AppSceneRecogManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSG_RESUME_ACTIVITY: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    :cond_2
    :goto_0
    invoke-static {}, Landroid/rms/iaware/AppSceneRecogManager;->access$800()Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/rms/iaware/AppSceneRecogManager$ThirdAppHandler;->this$0:Landroid/rms/iaware/AppSceneRecogManager;

    invoke-static {v2}, Landroid/rms/iaware/AppSceneRecogManager;->access$700(Landroid/rms/iaware/AppSceneRecogManager;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 778
    iget-object v1, p0, Landroid/rms/iaware/AppSceneRecogManager$ThirdAppHandler;->this$0:Landroid/rms/iaware/AppSceneRecogManager;

    invoke-static {v1, v0}, Landroid/rms/iaware/AppSceneRecogManager;->access$900(Landroid/rms/iaware/AppSceneRecogManager;Landroid/app/Activity;)I

    .line 779
    invoke-direct {p0, v0}, Landroid/rms/iaware/AppSceneRecogManager$ThirdAppHandler;->doRecog(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    .line 780
    .local v1, "sceneId":Ljava/lang/String;
    invoke-direct {p0, v1}, Landroid/rms/iaware/AppSceneRecogManager$ThirdAppHandler;->handleReportRecogResult(Ljava/lang/String;)V

    .line 782
    .end local v1    # "sceneId":Ljava/lang/String;
    :cond_3
    invoke-direct {p0, v0}, Landroid/rms/iaware/AppSceneRecogManager$ThirdAppHandler;->sendRecogMsg(Landroid/app/Activity;)V

    .line 783
    return-void
.end method

.method private saveAppSceneInfo(Ljava/util/ArrayList;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 879
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/rms/iaware/AppSceneRecogManager$ThirdAppHandler;->this$0:Landroid/rms/iaware/AppSceneRecogManager;

    invoke-static {v0}, Landroid/rms/iaware/AppSceneRecogManager;->access$1000(Landroid/rms/iaware/AppSceneRecogManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 881
    const/4 v0, 0x0

    .line 882
    .local v0, "jsonObject":Lorg/json/JSONObject;
    const/4 v1, 0x0

    .line 883
    .local v1, "layout":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .line 884
    .local v2, "appSceneInfo":Landroid/rms/iaware/AppSceneRecogManager$AppSceneInfo;
    const/4 v3, 0x0

    .local v3, "i":I
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .local v4, "size":I
    :goto_0
    if-ge v3, v4, :cond_2

    .line 885
    new-instance v5, Lorg/json/JSONObject;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v0, v5

    .line 886
    const-string v5, "pkgName"

    invoke-direct {p0, v0, v5}, Landroid/rms/iaware/AppSceneRecogManager$ThirdAppHandler;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 887
    .local v5, "pkgName":Ljava/lang/String;
    iget-object v6, p0, Landroid/rms/iaware/AppSceneRecogManager$ThirdAppHandler;->this$0:Landroid/rms/iaware/AppSceneRecogManager;

    invoke-static {v6}, Landroid/rms/iaware/AppSceneRecogManager;->access$1800(Landroid/rms/iaware/AppSceneRecogManager;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 888
    goto :goto_1

    .line 890
    :cond_0
    const-string v6, "sceneId"

    invoke-direct {p0, v0, v6}, Landroid/rms/iaware/AppSceneRecogManager$ThirdAppHandler;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 891
    .local v6, "sceneId":Ljava/lang/String;
    const-string v7, "activity"

    invoke-direct {p0, v0, v7}, Landroid/rms/iaware/AppSceneRecogManager$ThirdAppHandler;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 892
    .local v7, "activity":Ljava/lang/String;
    const-string v8, "layout"

    invoke-direct {p0, v0, v8}, Landroid/rms/iaware/AppSceneRecogManager$ThirdAppHandler;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 893
    .local v8, "layoutString":Ljava/lang/String;
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9, v8}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move-object v1, v9

    .line 894
    invoke-direct {p0, v1}, Landroid/rms/iaware/AppSceneRecogManager$ThirdAppHandler;->getLayoutInfo(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v9

    .line 895
    .local v9, "layoutInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/rms/iaware/AppSceneRecogManager$LayoutInfo;>;"
    iget-object v10, p0, Landroid/rms/iaware/AppSceneRecogManager$ThirdAppHandler;->this$0:Landroid/rms/iaware/AppSceneRecogManager;

    invoke-static {v10}, Landroid/rms/iaware/AppSceneRecogManager;->access$1000(Landroid/rms/iaware/AppSceneRecogManager;)Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 896
    .local v10, "appSceneInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/rms/iaware/AppSceneRecogManager$AppSceneInfo;>;"
    if-nez v10, :cond_1

    .line 897
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v11

    .line 899
    :cond_1
    new-instance v11, Landroid/rms/iaware/AppSceneRecogManager$AppSceneInfo;

    const-string v12, "0"

    invoke-direct {v11, v6, v9, v12}, Landroid/rms/iaware/AppSceneRecogManager$AppSceneInfo;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    move-object v2, v11

    .line 900
    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 901
    iget-object v11, p0, Landroid/rms/iaware/AppSceneRecogManager$ThirdAppHandler;->this$0:Landroid/rms/iaware/AppSceneRecogManager;

    invoke-static {v11}, Landroid/rms/iaware/AppSceneRecogManager;->access$1000(Landroid/rms/iaware/AppSceneRecogManager;)Ljava/util/Map;

    move-result-object v11

    invoke-interface {v11, v7, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 884
    .end local v5    # "pkgName":Ljava/lang/String;
    .end local v6    # "sceneId":Ljava/lang/String;
    .end local v7    # "activity":Ljava/lang/String;
    .end local v8    # "layoutString":Ljava/lang/String;
    .end local v9    # "layoutInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/rms/iaware/AppSceneRecogManager$LayoutInfo;>;"
    .end local v10    # "appSceneInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/rms/iaware/AppSceneRecogManager$AppSceneInfo;>;"
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 905
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    .end local v1    # "layout":Lorg/json/JSONArray;
    .end local v2    # "appSceneInfo":Landroid/rms/iaware/AppSceneRecogManager$AppSceneInfo;
    .end local v3    # "i":I
    .end local v4    # "size":I
    :cond_2
    goto :goto_2

    .line 903
    :catch_0
    move-exception v0

    .line 904
    .local v0, "e":Lorg/json/JSONException;
    iget-object v1, p0, Landroid/rms/iaware/AppSceneRecogManager$ThirdAppHandler;->this$0:Landroid/rms/iaware/AppSceneRecogManager;

    const-string v2, "saveAppSceneInfo occur JSONException."

    invoke-static {v1, v2}, Landroid/rms/iaware/AppSceneRecogManager;->access$200(Landroid/rms/iaware/AppSceneRecogManager;Ljava/lang/String;)V

    .line 906
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_2
    return-void
.end method

.method private sendRecogMsg(Landroid/app/Activity;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;

    .line 804
    if-nez p1, :cond_0

    .line 805
    return-void

    .line 808
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 809
    .local v0, "activityName":Ljava/lang/String;
    iget-object v1, p0, Landroid/rms/iaware/AppSceneRecogManager$ThirdAppHandler;->this$0:Landroid/rms/iaware/AppSceneRecogManager;

    invoke-static {v1}, Landroid/rms/iaware/AppSceneRecogManager;->access$1000(Landroid/rms/iaware/AppSceneRecogManager;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 810
    .local v1, "appSceneInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/rms/iaware/AppSceneRecogManager$AppSceneInfo;>;"
    if-nez v1, :cond_1

    .line 811
    return-void

    .line 813
    :cond_1
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Landroid/rms/iaware/AppSceneRecogManager$ThirdAppHandler;->this$0:Landroid/rms/iaware/AppSceneRecogManager;

    invoke-static {v3}, Landroid/rms/iaware/AppSceneRecogManager;->access$1100(Landroid/rms/iaware/AppSceneRecogManager;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 814
    iget-object v2, p0, Landroid/rms/iaware/AppSceneRecogManager$ThirdAppHandler;->this$0:Landroid/rms/iaware/AppSceneRecogManager;

    invoke-static {v2}, Landroid/rms/iaware/AppSceneRecogManager;->access$1200(Landroid/rms/iaware/AppSceneRecogManager;)Landroid/rms/iaware/AppSceneRecogManager$ThirdAppHandler;

    move-result-object v2

    iget-object v3, p0, Landroid/rms/iaware/AppSceneRecogManager$ThirdAppHandler;->this$0:Landroid/rms/iaware/AppSceneRecogManager;

    invoke-static {v3}, Landroid/rms/iaware/AppSceneRecogManager;->access$1200(Landroid/rms/iaware/AppSceneRecogManager;)Landroid/rms/iaware/AppSceneRecogManager$ThirdAppHandler;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v4, p1}, Landroid/rms/iaware/AppSceneRecogManager$ThirdAppHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0xa0

    invoke-virtual {v2, v3, v4, v5}, Landroid/rms/iaware/AppSceneRecogManager$ThirdAppHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 816
    :cond_2
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 718
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 729
    :pswitch_0
    invoke-direct {p0, p1}, Landroid/rms/iaware/AppSceneRecogManager$ThirdAppHandler;->handleRecogMsg(Landroid/os/Message;)V

    .line 730
    goto :goto_0

    .line 725
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v0, p1}, Landroid/rms/iaware/AppSceneRecogManager$ThirdAppHandler;->handleResumeFocusChangedMsg(ILandroid/os/Message;)V

    .line 726
    goto :goto_0

    .line 733
    :pswitch_2
    iget-object v0, p0, Landroid/rms/iaware/AppSceneRecogManager$ThirdAppHandler;->this$0:Landroid/rms/iaware/AppSceneRecogManager;

    const-string v1, "MSG_PAUSE_ACTIVITY: "

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Landroid/rms/iaware/AppSceneRecogManager;->access$000(Landroid/rms/iaware/AppSceneRecogManager;Ljava/lang/String;Ljava/lang/Object;)V

    .line 734
    const-string v0, "unknown"

    invoke-direct {p0, v0}, Landroid/rms/iaware/AppSceneRecogManager$ThirdAppHandler;->handleReportRecogResult(Ljava/lang/String;)V

    .line 735
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/rms/iaware/AppSceneRecogManager$ThirdAppHandler;->sendRecogMsg(Landroid/app/Activity;)V

    .line 736
    goto :goto_0

    .line 720
    :pswitch_3
    invoke-direct {p0, p1}, Landroid/rms/iaware/AppSceneRecogManager$ThirdAppHandler;->handleInitMsg(Landroid/os/Message;)V

    .line 721
    nop

    .line 741
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
