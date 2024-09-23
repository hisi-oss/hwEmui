.class public Landroid/app/servertransaction/LaunchActivityItemUtils;
.super Ljava/lang/Object;
.source "LaunchActivityItemUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getActivityInfo(Ljava/lang/Object;)Landroid/content/pm/ActivityInfo;
    .locals 2
    .param p0, "launchActivityItem"    # Ljava/lang/Object;

    .line 33
    instance-of v0, p0, Landroid/app/servertransaction/LaunchActivityItem;

    if-eqz v0, :cond_0

    .line 34
    move-object v0, p0

    check-cast v0, Landroid/app/servertransaction/LaunchActivityItem;

    .line 35
    .local v0, "la":Landroid/app/servertransaction/LaunchActivityItem;
    invoke-virtual {v0}, Landroid/app/servertransaction/LaunchActivityItem;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v1

    return-object v1

    .line 37
    .end local v0    # "la":Landroid/app/servertransaction/LaunchActivityItem;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static getIntent(Ljava/lang/Object;)Landroid/content/Intent;
    .locals 2
    .param p0, "launchActivityItem"    # Ljava/lang/Object;

    .line 25
    instance-of v0, p0, Landroid/app/servertransaction/LaunchActivityItem;

    if-eqz v0, :cond_0

    .line 26
    move-object v0, p0

    check-cast v0, Landroid/app/servertransaction/LaunchActivityItem;

    .line 27
    .local v0, "la":Landroid/app/servertransaction/LaunchActivityItem;
    invoke-virtual {v0}, Landroid/app/servertransaction/LaunchActivityItem;->getIntent()Landroid/content/Intent;

    move-result-object v1

    return-object v1

    .line 29
    .end local v0    # "la":Landroid/app/servertransaction/LaunchActivityItem;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
