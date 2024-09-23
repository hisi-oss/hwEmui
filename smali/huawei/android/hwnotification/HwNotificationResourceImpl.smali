.class public Lhuawei/android/hwnotification/HwNotificationResourceImpl;
.super Ljava/lang/Object;
.source "HwNotificationResourceImpl.java"

# interfaces
.implements Landroid/hwnotification/HwNotificationResource$IHwNotificationResource;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNotificationThemeData(Landroid/os/Bundle;IIII)Landroid/os/Bundle;
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "contIconId"    # I
    .param p3, "repIconId"    # I
    .param p4, "bgIndex"    # I
    .param p5, "repLocation"    # I

    .line 18
    if-nez p1, :cond_0

    .line 19
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object p1, v0

    .line 22
    :cond_0
    if-lez p2, :cond_1

    .line 23
    const-string v0, "huawei.notification.contentIcon"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 26
    :cond_1
    if-lez p3, :cond_2

    .line 27
    const-string v0, "huawei.notification.replace.iconId"

    invoke-virtual {p1, v0, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 30
    :cond_2
    if-ltz p4, :cond_3

    .line 31
    const-string v0, "huawei.notification.backgroundIndex"

    invoke-virtual {p1, v0, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 34
    :cond_3
    if-lez p5, :cond_4

    .line 35
    const-string v0, "huawei.notification.replace.location"

    invoke-virtual {p1, v0, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 37
    :cond_4
    return-object p1
.end method
