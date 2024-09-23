.class public Lhuawei/android/common/HwFrameworkFactoryImpl$HwSystemManagerImpl;
.super Ljava/lang/Object;
.source "HwFrameworkFactoryImpl.java"

# interfaces
.implements Landroid/common/HwFrameworkFactory$IHwSystemManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhuawei/android/common/HwFrameworkFactoryImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HwSystemManagerImpl"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 431
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHsmInstance()Landroid/hsm/HwSystemManager$HsmInterface;
    .locals 1

    .line 433
    new-instance v0, Lcom/huawei/hsm/HsmInterfaceImpl;

    invoke-direct {v0}, Lcom/huawei/hsm/HsmInterfaceImpl;-><init>()V

    return-object v0
.end method
