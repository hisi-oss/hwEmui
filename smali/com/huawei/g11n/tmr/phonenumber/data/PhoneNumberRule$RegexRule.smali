.class public Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;
.super Ljava/lang/Object;
.source "PhoneNumberRule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RegexRule"
.end annotation


# instance fields
.field private pattern:Ljava/util/regex/Pattern;

.field private regex:Ljava/lang/String;

.field final synthetic this$0:Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;

.field private type:I


# direct methods
.method public constructor <init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;)V
    .locals 0
    .param p2, "regex1"    # Ljava/lang/String;

    .line 147
    iput-object p1, p0, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;->this$0:Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    const/4 p1, 0x0

    iput p1, p0, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;->type:I

    .line 148
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 150
    :cond_0
    iput-object p2, p0, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;->regex:Ljava/lang/String;

    .line 151
    iget-object p1, p0, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;->regex:Ljava/lang/String;

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;->pattern:Ljava/util/regex/Pattern;

    .line 152
    return-void

    .line 149
    :cond_1
    :goto_0
    return-void
.end method

.method public constructor <init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;I)V
    .locals 0
    .param p2, "regex1"    # Ljava/lang/String;
    .param p3, "flag"    # I

    .line 154
    iput-object p1, p0, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;->this$0:Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    const/4 p1, 0x0

    iput p1, p0, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;->type:I

    .line 155
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 157
    :cond_0
    iput-object p2, p0, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;->regex:Ljava/lang/String;

    .line 158
    iget-object p1, p0, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;->regex:Ljava/lang/String;

    invoke-static {p1, p3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;->pattern:Ljava/util/regex/Pattern;

    .line 159
    return-void

    .line 156
    :cond_1
    :goto_0
    return-void
.end method

.method public constructor <init>(Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;Ljava/lang/String;II)V
    .locals 0
    .param p2, "regex1"    # Ljava/lang/String;
    .param p3, "flag"    # I
    .param p4, "type"    # I

    .line 161
    iput-object p1, p0, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;->this$0:Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    const/4 p1, 0x0

    iput p1, p0, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;->type:I

    .line 162
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 164
    :cond_0
    iput-object p2, p0, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;->regex:Ljava/lang/String;

    .line 165
    iput p4, p0, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;->type:I

    .line 166
    iget-object p1, p0, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;->regex:Ljava/lang/String;

    invoke-static {p1, p3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;->pattern:Ljava/util/regex/Pattern;

    .line 167
    return-void

    .line 163
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getPattern()Ljava/util/regex/Pattern;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;->pattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method public getRegex()Ljava/lang/String;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;->regex:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 123
    iget v0, p0, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;->type:I

    return v0
.end method

.method public handle(Lcom/android/i18n/phonenumbers/PhoneNumberMatch;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "possibleNumber"    # Lcom/android/i18n/phonenumbers/PhoneNumberMatch;
    .param p2, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/i18n/phonenumbers/PhoneNumberMatch;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;",
            ">;"
        }
    .end annotation

    .line 176
    new-instance v0, Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;

    invoke-direct {v0}, Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;-><init>()V

    .line 177
    .local v0, "matcher":Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;->setBegin(I)V

    .line 178
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;->setEnd(I)V

    .line 179
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;->setContent(Ljava/lang/String;)V

    .line 180
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 181
    .local v1, "ret":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/g11n/tmr/phonenumber/MatchedNumberInfo;>;"
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    return-object v1
.end method

.method public isValid(Lcom/android/i18n/phonenumbers/PhoneNumberMatch;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/PhoneNumberMatch;
    .locals 0
    .param p1, "possibleNumber"    # Lcom/android/i18n/phonenumbers/PhoneNumberMatch;
    .param p2, "msg"    # Ljava/lang/String;

    .line 187
    return-object p1
.end method

.method public setPattern(Ljava/util/regex/Pattern;)V
    .locals 0
    .param p1, "pattern"    # Ljava/util/regex/Pattern;

    .line 143
    iput-object p1, p0, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;->pattern:Ljava/util/regex/Pattern;

    .line 144
    return-void
.end method

.method public setRegex(Ljava/lang/String;)V
    .locals 0
    .param p1, "regex"    # Ljava/lang/String;

    .line 135
    iput-object p1, p0, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;->regex:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .line 129
    iput p1, p0, Lcom/huawei/g11n/tmr/phonenumber/data/PhoneNumberRule$RegexRule;->type:I

    .line 130
    return-void
.end method
