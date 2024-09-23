.class public Lcom/huawei/android/hwcontrol/ToastFactory;
.super Ljava/lang/Object;
.source "ToastFactory.java"

# interfaces
.implements Landroid/hwcontrol/HwWidgetFactory$HwToast;


# static fields
.field public static final STYLE_EMUI_TOAST:Ljava/lang/String; = "androidhwext:style/Animation.Emui.Toast"

.field private static final TAG:Ljava/lang/String; = "ToastFactory"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/Toast;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/widget/Toast;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 55
    invoke-virtual {p2}, Landroid/widget/Toast;->getWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 56
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 57
    .local v1, "res":Landroid/content/res/Resources;
    if-eqz v1, :cond_0

    .line 58
    const-string v2, "androidhwext:style/Animation.Emui.Toast"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 61
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "res":Landroid/content/res/Resources;
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/huawei/android/hwcontrol/ToastFactory;->updateBlurStatus(Landroid/content/Context;Landroid/widget/Toast;Landroid/util/AttributeSet;)V

    .line 62
    return-void
.end method

.method private updateBlurStatus(Landroid/content/Context;Landroid/widget/Toast;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "toast"    # Landroid/widget/Toast;
    .param p3, "set"    # Landroid/util/AttributeSet;

    .line 80
    if-eqz p2, :cond_1

    .line 81
    invoke-virtual {p2}, Landroid/widget/Toast;->getWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 82
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const v1, 0x2010018

    const v2, 0x2061017

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HwToast-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    const-string v4, ""

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 82
    invoke-static {p1, p3, v1, v2, v3}, Lhuawei/android/utils/HwRTBlurUtils;->obtainBlurStyle(Landroid/content/Context;Landroid/util/AttributeSet;IILjava/lang/String;)Lhuawei/android/utils/HwRTBlurUtils$BlurParams;

    move-result-object v1

    .line 88
    .local v1, "blurParams":Lhuawei/android/utils/HwRTBlurUtils$BlurParams;
    invoke-static {v0, v1}, Lhuawei/android/utils/HwRTBlurUtils;->updateBlurStatus(Landroid/view/WindowManager$LayoutParams;Lhuawei/android/utils/HwRTBlurUtils$BlurParams;)V

    .line 90
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "blurParams":Lhuawei/android/utils/HwRTBlurUtils$BlurParams;
    :cond_1
    return-void
.end method


# virtual methods
.method public initialToast(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 69
    return-void
.end method

.method public layoutInflate(Landroid/content/Context;)Landroid/view/View;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 72
    const-string v0, "layout_inflater"

    .line 73
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 74
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const/4 v1, 0x0

    .line 75
    .local v1, "v":Landroid/view/View;
    const v2, 0x2070016

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 76
    return-object v1
.end method
