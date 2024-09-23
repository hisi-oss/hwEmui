.class public Lcom/android/internal/policy/HwPhoneLayoutInflater;
.super Lcom/android/internal/policy/PhoneLayoutInflater;
.source "HwPhoneLayoutInflater.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HwPhoneLayoutInflater"

.field private static final sAndroidClassList:[Ljava/lang/String;

.field private static final sHwClassPrefixList:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 35
    const-string v0, "huawei.android.view."

    const-string v1, "huawei.android.widget."

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/HwPhoneLayoutInflater;->sHwClassPrefixList:[Ljava/lang/String;

    .line 43
    const-string v1, "LinearLayout"

    const-string v2, "RelativeLayout"

    const-string v3, "FrameLayout"

    const-string v4, "ViewStub"

    const-string v5, "View"

    const-string v6, "TextView"

    const-string v7, "RadioButton"

    const-string v8, "Space"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/HwPhoneLayoutInflater;->sAndroidClassList:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 74
    invoke-direct {p0, p1}, Lcom/android/internal/policy/PhoneLayoutInflater;-><init>(Landroid/content/Context;)V

    .line 75
    return-void
.end method

.method protected constructor <init>(Landroid/view/LayoutInflater;Landroid/content/Context;)V
    .locals 0
    .param p1, "original"    # Landroid/view/LayoutInflater;
    .param p2, "newContext"    # Landroid/content/Context;

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/PhoneLayoutInflater;-><init>(Landroid/view/LayoutInflater;Landroid/content/Context;)V

    .line 79
    return-void
.end method

.method private static isAndoridClass(Ljava/lang/String;)Z
    .locals 6
    .param p0, "name"    # Ljava/lang/String;

    .line 55
    sget-object v0, Lcom/android/internal/policy/HwPhoneLayoutInflater;->sAndroidClassList:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 56
    .local v4, "clazz":Ljava/lang/String;
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 57
    const/4 v0, 0x1

    return v0

    .line 55
    .end local v4    # "clazz":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 60
    :cond_1
    return v2
.end method


# virtual methods
.method public cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;
    .locals 1
    .param p1, "newContext"    # Landroid/content/Context;

    .line 109
    new-instance v0, Lcom/android/internal/policy/HwPhoneLayoutInflater;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/policy/HwPhoneLayoutInflater;-><init>(Landroid/view/LayoutInflater;Landroid/content/Context;)V

    return-object v0
.end method

.method protected onCreateView(Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 86
    invoke-virtual {p0}, Lcom/android/internal/policy/HwPhoneLayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/hwcontrol/HwWidgetFactory;->isHwTheme(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 88
    invoke-static {p1}, Lcom/android/internal/policy/HwPhoneLayoutInflater;->isAndoridClass(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    invoke-super {p0, p1, p2}, Lcom/android/internal/policy/PhoneLayoutInflater;->onCreateView(Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 92
    :cond_0
    sget-object v0, Lcom/android/internal/policy/HwPhoneLayoutInflater;->sHwClassPrefixList:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 94
    .local v3, "prefix":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, p1, v3, p2}, Lcom/android/internal/policy/HwPhoneLayoutInflater;->createView(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .local v4, "view":Landroid/view/View;
    if-eqz v4, :cond_1

    .line 96
    return-object v4

    .line 101
    .end local v4    # "view":Landroid/view/View;
    :cond_1
    goto :goto_1

    .line 98
    :catch_0
    move-exception v4

    .line 99
    .local v4, "e":Ljava/lang/ClassNotFoundException;
    const-string v5, "HwPhoneLayoutInflater"

    const-string v6, "onCreateView : ClassNotFoundException, In this case we want to let the base class take a crack at it"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    .end local v3    # "prefix":Ljava/lang/String;
    .end local v4    # "e":Ljava/lang/ClassNotFoundException;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 105
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/internal/policy/PhoneLayoutInflater;->onCreateView(Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
