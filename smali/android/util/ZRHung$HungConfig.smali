.class public final Landroid/util/ZRHung$HungConfig;
.super Ljava/lang/Object;
.source "ZRHung.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/ZRHung;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HungConfig"
.end annotation


# instance fields
.field public final status:I

.field public final value:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    const/4 v0, -0x1

    iput v0, p0, Landroid/util/ZRHung$HungConfig;->status:I

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/util/ZRHung$HungConfig;->value:Ljava/lang/String;

    .line 123
    return-void
.end method

.method private constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "s"    # I
    .param p2, "val"    # Ljava/lang/String;

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput p1, p0, Landroid/util/ZRHung$HungConfig;->status:I

    .line 127
    iput-object p2, p0, Landroid/util/ZRHung$HungConfig;->value:Ljava/lang/String;

    .line 128
    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/String;Landroid/util/ZRHung$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Landroid/util/ZRHung$1;

    .line 116
    invoke-direct {p0, p1, p2}, Landroid/util/ZRHung$HungConfig;-><init>(ILjava/lang/String;)V

    return-void
.end method
