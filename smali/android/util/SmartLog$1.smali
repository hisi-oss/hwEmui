.class Landroid/util/SmartLog$1;
.super Landroid/util/Singleton;
.source "SmartLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/SmartLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Singleton<",
        "Landroid/util/SmartLog;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Landroid/util/Singleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected create()Landroid/util/SmartLog;
    .locals 2

    .line 42
    new-instance v0, Landroid/util/SmartLog;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/util/SmartLog;-><init>(Landroid/util/SmartLog$1;)V

    return-object v0
.end method

.method protected bridge synthetic create()Ljava/lang/Object;
    .locals 1

    .line 40
    invoke-virtual {p0}, Landroid/util/SmartLog$1;->create()Landroid/util/SmartLog;

    move-result-object v0

    return-object v0
.end method
