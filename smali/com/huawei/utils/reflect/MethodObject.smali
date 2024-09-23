.class public Lcom/huawei/utils/reflect/MethodObject;
.super Ljava/lang/Object;
.source "MethodObject.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field method:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    .local p0, "this":Lcom/huawei/utils/reflect/MethodObject;, "Lcom/huawei/utils/reflect/MethodObject<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
