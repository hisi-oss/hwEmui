.class public Lhuawei/android/common/HwFrameworkFactoryImpl$HwNetworkPolicyManagerImpl;
.super Ljava/lang/Object;
.source "HwFrameworkFactoryImpl.java"

# interfaces
.implements Landroid/common/HwFrameworkFactory$IHwNetworkPolicyManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhuawei/android/common/HwFrameworkFactoryImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HwNetworkPolicyManagerImpl"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInstance(Landroid/content/Context;Landroid/net/INetworkPolicyManager;)Landroid/net/NetworkPolicyManager;
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/net/INetworkPolicyManager;

    .line 367
    new-instance v0, Landroid/net/HwNetworkPolicyManager;

    invoke-direct {v0, p1, p2}, Landroid/net/HwNetworkPolicyManager;-><init>(Landroid/content/Context;Landroid/net/INetworkPolicyManager;)V

    return-object v0
.end method
