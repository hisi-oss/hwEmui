.class public Lcom/huawei/g11n/tmr/address/jni/DicSearch;
.super Ljava/lang/Object;
.source "DicSearch.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TMRManager"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 9
    :try_start_0
    const-string v0, "dicsearch"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    goto :goto_0

    :catch_0
    move-exception v0

    .line 11
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "loadLibrary tmr has an error  >>>> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 13
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native dicsearch(ILjava/lang/String;)I
.end method
