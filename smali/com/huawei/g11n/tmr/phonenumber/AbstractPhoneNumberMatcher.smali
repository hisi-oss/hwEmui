.class public abstract Lcom/huawei/g11n/tmr/phonenumber/AbstractPhoneNumberMatcher;
.super Ljava/lang/Object;
.source "AbstractPhoneNumberMatcher.java"


# instance fields
.field private country:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "country"    # Ljava/lang/String;

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/huawei/g11n/tmr/phonenumber/AbstractPhoneNumberMatcher;->country:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method public getCountry()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/huawei/g11n/tmr/phonenumber/AbstractPhoneNumberMatcher;->country:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getMatchedPhoneNumber(Ljava/lang/String;Ljava/lang/String;)[I
.end method
