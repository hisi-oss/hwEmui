.class Landroid/os/FreezeScreenScene$MonitorHelper$1;
.super Ljava/lang/Object;
.source "FreezeScreenScene.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/FreezeScreenScene$MonitorHelper;->getReflectPrivateField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Field;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$field:Ljava/lang/reflect/Field;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Field;)V
    .locals 0

    .line 270
    iput-object p1, p0, Landroid/os/FreezeScreenScene$MonitorHelper$1;->val$field:Ljava/lang/reflect/Field;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 2

    .line 273
    iget-object v0, p0, Landroid/os/FreezeScreenScene$MonitorHelper$1;->val$field:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 274
    const/4 v0, 0x0

    return-object v0
.end method
