.class public abstract Lcom/huawei/g11n/tmr/AbstractDateTmrHandle;
.super Ljava/lang/Object;
.source "AbstractDateTmrHandle.java"


# instance fields
.field private locale:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "locale"    # Ljava/lang/String;

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/huawei/g11n/tmr/AbstractDateTmrHandle;->locale:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method public abstract convertDate(Ljava/lang/String;J)[Ljava/util/Date;
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/huawei/g11n/tmr/AbstractDateTmrHandle;->locale:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/g11n/tmr/AbstractDateTmrHandle;->locale:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public abstract getTime(Ljava/lang/String;)[I
.end method
