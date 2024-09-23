.class public Lhuawei/android/widget/HwWidgetManagerImpl;
.super Ljava/lang/Object;
.source "HwWidgetManagerImpl.java"

# interfaces
.implements Landroid/widget/HwWidgetManager;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mInstance:Landroid/widget/HwWidgetManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    const/4 v0, 0x0

    sput-object v0, Lhuawei/android/widget/HwWidgetManagerImpl;->TAG:Ljava/lang/String;

    .line 17
    new-instance v0, Lhuawei/android/widget/HwWidgetManagerImpl;

    invoke-direct {v0}, Lhuawei/android/widget/HwWidgetManagerImpl;-><init>()V

    sput-object v0, Lhuawei/android/widget/HwWidgetManagerImpl;->mInstance:Landroid/widget/HwWidgetManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefault()Landroid/widget/HwWidgetManager;
    .locals 1

    .line 25
    sget-object v0, Lhuawei/android/widget/HwWidgetManagerImpl;->mInstance:Landroid/widget/HwWidgetManager;

    return-object v0
.end method


# virtual methods
.method public createWidgetFactoryHuaWei(Landroid/content/Context;Ljava/lang/String;)Landroid/view/LayoutInflater$Factory;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 21
    new-instance v0, Lhuawei/android/widget/WidgetFactoryHuaWei;

    invoke-direct {v0, p1, p2}, Lhuawei/android/widget/WidgetFactoryHuaWei;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method
