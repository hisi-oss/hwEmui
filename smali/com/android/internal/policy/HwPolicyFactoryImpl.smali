.class public Lcom/android/internal/policy/HwPolicyFactoryImpl;
.super Ljava/lang/Object;
.source "HwPolicyFactoryImpl.java"

# interfaces
.implements Lcom/android/internal/policy/HwPolicyFactory$Factory;


# static fields
.field private static final TAG:Ljava/lang/String; = "HwPolicyFactoryImpl"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHwDecorViewEx()Lcom/android/internal/policy/HwDecorViewEx;
    .locals 1

    .line 65
    new-instance v0, Lcom/android/internal/policy/HwDecorViewEx;

    invoke-direct {v0}, Lcom/android/internal/policy/HwDecorViewEx;-><init>()V

    return-object v0
.end method

.method public bridge synthetic getHwDecorViewEx()Lcom/android/internal/policy/IHwDecorViewEx;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lcom/android/internal/policy/HwPolicyFactoryImpl;->getHwDecorViewEx()Lcom/android/internal/policy/HwDecorViewEx;

    move-result-object v0

    return-object v0
.end method

.method public getHwNavigationBarColorView(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 59
    new-instance v0, Lcom/android/internal/policy/HwNavigationBarColorView;

    invoke-direct {v0, p1}, Lcom/android/internal/policy/HwNavigationBarColorView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getHwPhoneLayoutInflater(Landroid/content/Context;)Lcom/android/internal/policy/PhoneLayoutInflater;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 54
    new-instance v0, Lcom/android/internal/policy/HwPhoneLayoutInflater;

    invoke-direct {v0, p1}, Lcom/android/internal/policy/HwPhoneLayoutInflater;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getHwPhoneWindow(Landroid/content/Context;)Landroid/view/Window;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 44
    new-instance v0, Lcom/android/internal/policy/HwPhoneWindow;

    invoke-direct {v0, p1}, Lcom/android/internal/policy/HwPhoneWindow;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getHwPhoneWindow(Landroid/content/Context;Landroid/view/Window;Landroid/view/ViewRootImpl$ActivityConfigCallback;)Landroid/view/Window;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "win"    # Landroid/view/Window;
    .param p3, "activityConfigCallback"    # Landroid/view/ViewRootImpl$ActivityConfigCallback;

    .line 49
    new-instance v0, Lcom/android/internal/policy/HwPhoneWindow;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/policy/HwPhoneWindow;-><init>(Landroid/content/Context;Landroid/view/Window;Landroid/view/ViewRootImpl$ActivityConfigCallback;)V

    return-object v0
.end method
