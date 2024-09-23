.class public interface abstract annotation Lcom/huawei/utils/reflect/annotation/InvokeMethod;
.super Ljava/lang/Object;
.source "InvokeMethod.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/huawei/utils/reflect/annotation/InvokeMethod;
        methodName = ""
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract methodName()Ljava/lang/String;
.end method

.method public abstract methodObject()Ljava/lang/String;
.end method
