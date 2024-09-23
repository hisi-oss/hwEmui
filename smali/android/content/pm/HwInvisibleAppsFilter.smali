.class public Landroid/content/pm/HwInvisibleAppsFilter;
.super Ljava/lang/Object;
.source "HwInvisibleAppsFilter.java"


# static fields
.field public static final HIDE_APP_KEY:Ljava/lang/String; = "hw_invisible_apps_in_appmanager"


# instance fields
.field private mConfigHideApps:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    nop

    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hw_invisible_apps_in_appmanager"

    .line 15
    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/HwInvisibleAppsFilter;->mConfigHideApps:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public filterHideApp(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .line 32
    .local p1, "allApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    iget-object v0, p0, Landroid/content/pm/HwInvisibleAppsFilter;->mConfigHideApps:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/content/pm/HwInvisibleAppsFilter;->mConfigHideApps:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    if-nez p1, :cond_0

    goto :goto_1

    .line 36
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .local v0, "willRemove":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 38
    .local v2, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v3, p0, Landroid/content/pm/HwInvisibleAppsFilter;->mConfigHideApps:Ljava/lang/String;

    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 39
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    .end local v2    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_1
    goto :goto_0

    .line 43
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 44
    invoke-interface {p1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 46
    :cond_3
    return-object p1

    .line 33
    .end local v0    # "willRemove":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :cond_4
    :goto_1
    return-object p1
.end method

.method public isConfigToHide(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 20
    iget-object v0, p0, Landroid/content/pm/HwInvisibleAppsFilter;->mConfigHideApps:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/content/pm/HwInvisibleAppsFilter;->mConfigHideApps:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 24
    :cond_0
    iget-object v0, p0, Landroid/content/pm/HwInvisibleAppsFilter;->mConfigHideApps:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 25
    const/4 v0, 0x1

    return v0

    .line 28
    :cond_1
    return v1

    .line 21
    :cond_2
    :goto_0
    return v1
.end method
