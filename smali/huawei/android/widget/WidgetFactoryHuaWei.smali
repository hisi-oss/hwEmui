.class public Lhuawei/android/widget/WidgetFactoryHuaWei;
.super Ljava/lang/Object;
.source "WidgetFactoryHuaWei.java"

# interfaces
.implements Landroid/view/LayoutInflater$Factory;


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "WidgetFactoryHuaWei"

.field private static final mConstructorSignature:[Ljava/lang/Class;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 37
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Landroid/content/Context;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Landroid/util/AttributeSet;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lhuawei/android/widget/WidgetFactoryHuaWei;->mConstructorSignature:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 45
    iput-object p1, p0, Lhuawei/android/widget/WidgetFactoryHuaWei;->mContext:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lhuawei/android/widget/WidgetFactoryHuaWei;->mPackageName:Ljava/lang/String;

    .line 47
    return-void

    .line 42
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Both of packageName and context can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .line 58
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v2, v0, :cond_0

    .line 60
    return-object v1

    .line 74
    :cond_0
    :try_start_0
    iget-object v0, p0, Lhuawei/android/widget/WidgetFactoryHuaWei;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lhuawei/android/widget/WidgetFactoryHuaWei;->mPackageName:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 79
    .local v0, "c":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 80
    .local v2, "loader":Ljava/lang/ClassLoader;
    invoke-virtual {v2, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 81
    .local v3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/view/View;>;"
    sget-object v4, Lhuawei/android/widget/WidgetFactoryHuaWei;->mConstructorSignature:[Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    .line 82
    .local v4, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Landroid/view/View;>;"
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    const/4 v6, 0x1

    aput-object p3, v5, v6

    .line 83
    .local v5, "args":[Ljava/lang/Object;
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    .line 96
    .end local v0    # "c":Landroid/content/Context;
    .end local v2    # "loader":Ljava/lang/ClassLoader;
    .end local v3    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/view/View;>;"
    .end local v4    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Landroid/view/View;>;"
    .end local v5    # "args":[Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v2, "WidgetFactoryHuaWei"

    const-string v3, "onCreateView : InvocationTargetException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    goto :goto_1

    .line 94
    :catch_1
    move-exception v0

    .line 95
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "WidgetFactoryHuaWei"

    const-string v3, "onCreateView : IllegalArgumentException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_0

    .line 92
    :catch_2
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v2, "WidgetFactoryHuaWei"

    const-string v3, "onCreateView : IllegalAccessException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_0

    .line 90
    :catch_3
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/InstantiationException;
    const-string v2, "WidgetFactoryHuaWei"

    const-string v3, "onCreateView : InstantiationException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/InstantiationException;
    goto :goto_0

    .line 88
    :catch_4
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v2, "WidgetFactoryHuaWei"

    const-string v3, "onCreateView : NoSuchMethodException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    goto :goto_0

    .line 86
    :catch_5
    move-exception v0

    .line 87
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const-string v2, "WidgetFactoryHuaWei"

    const-string v3, "onCreateView : ClassNotFoundException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    goto :goto_0

    .line 84
    :catch_6
    move-exception v0

    .line 85
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "WidgetFactoryHuaWei"

    const-string v3, "onCreateView : NameNotFoundException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    nop

    .line 99
    :goto_1
    return-object v1
.end method
