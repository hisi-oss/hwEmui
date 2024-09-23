.class public Lcom/android/internal/policy/HwPhoneWindow$Utils;
.super Ljava/lang/Object;
.source "HwPhoneWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/HwPhoneWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Utils"
.end annotation


# static fields
.field private static final mIsChina:Z

.field private static mIsLastDeviceProvisioned:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 506
    const-string v0, "CN"

    const-string v1, "ro.product.locale.region"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/policy/HwPhoneWindow$Utils;->mIsChina:Z

    .line 507
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/policy/HwPhoneWindow$Utils;->mIsLastDeviceProvisioned:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 505
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 505
    sget-boolean v0, Lcom/android/internal/policy/HwPhoneWindow$Utils;->mIsChina:Z

    return v0
.end method

.method public static getLastDeviceProvisioned()Z
    .locals 1

    .line 513
    sget-boolean v0, Lcom/android/internal/policy/HwPhoneWindow$Utils;->mIsLastDeviceProvisioned:Z

    return v0
.end method

.method public static setLastDeviceProvisioned(Z)V
    .locals 0
    .param p0, "lastDeviceProvisioned"    # Z

    .line 510
    sput-boolean p0, Lcom/android/internal/policy/HwPhoneWindow$Utils;->mIsLastDeviceProvisioned:Z

    .line 511
    return-void
.end method
