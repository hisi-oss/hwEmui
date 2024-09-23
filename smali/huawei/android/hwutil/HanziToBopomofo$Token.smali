.class public Lhuawei/android/hwutil/HanziToBopomofo$Token;
.super Ljava/lang/Object;
.source "HanziToBopomofo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhuawei/android/hwutil/HanziToBopomofo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Token"
.end annotation


# static fields
.field public static final LATIN:I = 0x1

.field public static final SEPARATOR:Ljava/lang/String; = " "

.field public static final UNKNOWN:I = 0x3

.field public static final ZHUYIN:I = 0x2


# instance fields
.field public source:Ljava/lang/String;

.field public target:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "source"    # Ljava/lang/String;
    .param p3, "target"    # Ljava/lang/String;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput p1, p0, Lhuawei/android/hwutil/HanziToBopomofo$Token;->type:I

    .line 53
    iput-object p2, p0, Lhuawei/android/hwutil/HanziToBopomofo$Token;->source:Ljava/lang/String;

    .line 54
    iput-object p3, p0, Lhuawei/android/hwutil/HanziToBopomofo$Token;->target:Ljava/lang/String;

    .line 55
    return-void
.end method
