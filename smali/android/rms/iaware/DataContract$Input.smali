.class public Landroid/rms/iaware/DataContract$Input;
.super Ljava/lang/Object;
.source "DataContract.java"

# interfaces
.implements Landroid/rms/iaware/DataContract$BaseAttr;
.implements Landroid/rms/iaware/DataContract$InputAttr;
.implements Landroid/rms/iaware/DataContract$BaseProperty;
.implements Landroid/rms/iaware/DataContract$InputProperty;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/rms/iaware/DataContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Input"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/rms/iaware/DataContract$Input$Builder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 441
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final builder()Landroid/rms/iaware/DataContract$Input$Builder;
    .locals 1

    .line 444
    new-instance v0, Landroid/rms/iaware/DataContract$Input$Builder;

    invoke-direct {v0}, Landroid/rms/iaware/DataContract$Input$Builder;-><init>()V

    return-object v0
.end method
