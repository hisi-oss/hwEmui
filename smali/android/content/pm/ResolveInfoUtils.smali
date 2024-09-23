.class public Landroid/content/pm/ResolveInfoUtils;
.super Lcom/huawei/utils/reflect/EasyInvokeUtils;
.source "ResolveInfoUtils.java"


# instance fields
.field mComponentInfo:Lcom/huawei/utils/reflect/MethodObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/huawei/utils/reflect/MethodObject<",
            "Landroid/content/pm/ComponentInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/huawei/utils/reflect/EasyInvokeUtils;-><init>()V

    return-void
.end method


# virtual methods
.method public getComponentInfo(Landroid/content/pm/ResolveInfo;)Landroid/content/pm/ComponentInfo;
    .locals 2
    .param p1, "resinfo"    # Landroid/content/pm/ResolveInfo;
    .annotation runtime Lcom/huawei/utils/reflect/annotation/InvokeMethod;
        methodObject = "mComponentInfo"
    .end annotation

    .line 18
    iget-object v0, p0, Landroid/content/pm/ResolveInfoUtils;->mComponentInfo:Lcom/huawei/utils/reflect/MethodObject;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/pm/ResolveInfoUtils;->invokeMethod(Lcom/huawei/utils/reflect/MethodObject;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ComponentInfo;

    return-object v0
.end method
