.class public Landroid/rms/iaware/DataContract$Apps;
.super Ljava/lang/Object;
.source "DataContract.java"

# interfaces
.implements Landroid/rms/iaware/DataContract$BaseAttr;
.implements Landroid/rms/iaware/DataContract$AppAttr;
.implements Landroid/rms/iaware/DataContract$BaseProperty;
.implements Landroid/rms/iaware/DataContract$AppProperty;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/rms/iaware/DataContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Apps"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/rms/iaware/DataContract$Apps$Builder;,
        Landroid/rms/iaware/DataContract$Apps$CrashReason;,
        Landroid/rms/iaware/DataContract$Apps$ExitMode;,
        Landroid/rms/iaware/DataContract$Apps$LaunchMode;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final builder()Landroid/rms/iaware/DataContract$Apps$Builder;
    .locals 1

    .line 133
    new-instance v0, Landroid/rms/iaware/DataContract$Apps$Builder;

    invoke-direct {v0}, Landroid/rms/iaware/DataContract$Apps$Builder;-><init>()V

    return-object v0
.end method
