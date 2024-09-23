.class public Landroid/os/FreezeScreenScene$MonitorHelper;
.super Ljava/lang/Object;
.source "FreezeScreenScene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/FreezeScreenScene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MonitorHelper"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 247
    invoke-static {}, Landroid/os/FreezeScreenScene$MonitorHelper;->getVersionName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 247
    invoke-static {}, Landroid/os/FreezeScreenScene$MonitorHelper;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p0, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 288
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 289
    :catch_0
    move-exception v0

    .line 290
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const-string v1, "FreezeScreenScene"

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    const/4 v1, 0x0

    return-object v1
.end method

.method private static getPackageName()Ljava/lang/String;
    .locals 1

    .line 296
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    .line 297
    .local v0, "packageName":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 298
    const-string v0, "system_server"

    .line 301
    :cond_0
    return-object v0
.end method

.method public static getReflectPrivateField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 3
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "fieldName"    # Ljava/lang/String;

    .line 268
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 269
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 270
    .local v1, "field":Ljava/lang/reflect/Field;
    new-instance v2, Landroid/os/FreezeScreenScene$MonitorHelper$1;

    invoke-direct {v2, v1}, Landroid/os/FreezeScreenScene$MonitorHelper$1;-><init>(Ljava/lang/reflect/Field;)V

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    return-object v1

    .line 280
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v0

    .line 281
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    goto :goto_0

    .line 278
    :catch_1
    move-exception v0

    .line 279
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 282
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    nop

    .line 283
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getVersionCode()J
    .locals 3

    .line 305
    const-wide/16 v0, 0x0

    .line 306
    .local v0, "versionCode":J
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 307
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v2

    .line 308
    invoke-virtual {v2}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->versionCode:I

    int-to-long v0, v2

    .line 310
    :cond_0
    return-wide v0
.end method

.method private static getVersionName()Ljava/lang/String;
    .locals 4

    .line 315
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 316
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 317
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 318
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 319
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 320
    .local v2, "info":Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_0

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 321
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 327
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    :cond_0
    goto :goto_0

    .line 325
    :catch_0
    move-exception v0

    .line 326
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "FreezeScreenScene"

    const-string v2, "Could not get package info"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 328
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/FreezeScreenScene$MonitorHelper;->getVersionCode()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isAppWindow(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 3
    .param p0, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .line 260
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x7d0

    if-lt v0, v2, :cond_2

    :cond_0
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x834

    if-eq v0, v2, :cond_2

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x835

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    nop

    :cond_2
    :goto_0
    return v1
.end method

.method public static isFullWindow(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 5
    .param p0, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .line 250
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 251
    :cond_0
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v1, v1, 0x400

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v0

    .line 253
    .local v1, "hasFullScreenFlag":Z
    :goto_0
    invoke-static {p0}, Landroid/os/FreezeScreenScene$MonitorHelper;->isAppWindow(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    if-nez v3, :cond_2

    iget v3, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    if-nez v3, :cond_2

    iget v3, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v4, -0x1

    if-ne v4, v3, :cond_2

    iget v3, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v4, v3, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v0

    .line 256
    .local v3, "isMatchParentWH":Z
    :goto_1
    if-nez v1, :cond_4

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    goto :goto_3

    :cond_4
    :goto_2
    move v0, v2

    :goto_3
    return v0
.end method
