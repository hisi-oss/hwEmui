.class public Lcom/huawei/android/statistical/StatisticalUtils;
.super Ljava/lang/Object;
.source "StatisticalUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "StatisticalUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static reportc(Landroid/content/Context;I)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "eventID"    # I

    .line 12
    invoke-static {p0, p1}, Lcom/huawei/bd/Reporter;->c(Landroid/content/Context;I)Z

    .line 13
    return-void
.end method

.method public static reporte(Landroid/content/Context;ILjava/lang/String;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "eventID"    # I
    .param p2, "eventMsg"    # Ljava/lang/String;

    .line 16
    invoke-static {p0, p1, p2}, Lcom/huawei/bd/Reporter;->e(Landroid/content/Context;ILjava/lang/String;)Z

    .line 17
    return-void
.end method
