.class Landroid/util/HiLogFormatter$FormatSpecifier$BigDecimalLayout;
.super Ljava/lang/Object;
.source "HiLogFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/HiLogFormatter$FormatSpecifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BigDecimalLayout"
.end annotation


# instance fields
.field private dot:Z

.field private exp:Ljava/lang/StringBuilder;

.field private mant:Ljava/lang/StringBuilder;

.field private scale:I

.field final synthetic this$1:Landroid/util/HiLogFormatter$FormatSpecifier;


# direct methods
.method public constructor <init>(Landroid/util/HiLogFormatter$FormatSpecifier;Ljava/math/BigInteger;ILandroid/util/HiLogFormatter$BigDecimalLayoutForm;)V
    .locals 0
    .param p2, "intVal"    # Ljava/math/BigInteger;
    .param p3, "scale"    # I
    .param p4, "form"    # Landroid/util/HiLogFormatter$BigDecimalLayoutForm;

    .line 3839
    iput-object p1, p0, Landroid/util/HiLogFormatter$FormatSpecifier$BigDecimalLayout;->this$1:Landroid/util/HiLogFormatter$FormatSpecifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3836
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/util/HiLogFormatter$FormatSpecifier$BigDecimalLayout;->dot:Z

    .line 3840
    invoke-direct {p0, p2, p3, p4}, Landroid/util/HiLogFormatter$FormatSpecifier$BigDecimalLayout;->layout(Ljava/math/BigInteger;ILandroid/util/HiLogFormatter$BigDecimalLayoutForm;)V

    .line 3841
    return-void
.end method

.method private layout(Ljava/math/BigInteger;ILandroid/util/HiLogFormatter$BigDecimalLayoutForm;)V
    .locals 10
    .param p1, "intVal"    # Ljava/math/BigInteger;
    .param p2, "scale"    # I
    .param p3, "form"    # Landroid/util/HiLogFormatter$BigDecimalLayoutForm;

    .line 3880
    invoke-virtual {p1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 3881
    .local v0, "coeff":[C
    iput p2, p0, Landroid/util/HiLogFormatter$FormatSpecifier$BigDecimalLayout;->scale:I

    .line 3888
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, v0

    add-int/lit8 v2, v2, 0xe

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v1, p0, Landroid/util/HiLogFormatter$FormatSpecifier$BigDecimalLayout;->mant:Ljava/lang/StringBuilder;

    .line 3890
    const/16 v1, 0x2e

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p2, :cond_4

    .line 3891
    array-length v4, v0

    .line 3892
    .local v4, "len":I
    if-le v4, v3, :cond_2

    .line 3893
    iget-object v5, p0, Landroid/util/HiLogFormatter$FormatSpecifier$BigDecimalLayout;->mant:Ljava/lang/StringBuilder;

    aget-char v2, v0, v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3894
    sget-object v2, Landroid/util/HiLogFormatter$BigDecimalLayoutForm;->SCIENTIFIC:Landroid/util/HiLogFormatter$BigDecimalLayoutForm;

    if-ne p3, v2, :cond_1

    .line 3895
    iget-object v2, p0, Landroid/util/HiLogFormatter$FormatSpecifier$BigDecimalLayout;->mant:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3896
    iput-boolean v3, p0, Landroid/util/HiLogFormatter$FormatSpecifier$BigDecimalLayout;->dot:Z

    .line 3897
    iget-object v1, p0, Landroid/util/HiLogFormatter$FormatSpecifier$BigDecimalLayout;->mant:Ljava/lang/StringBuilder;

    add-int/lit8 v2, v4, -0x1

    invoke-virtual {v1, v0, v3, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 3898
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "+"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Landroid/util/HiLogFormatter$FormatSpecifier$BigDecimalLayout;->exp:Ljava/lang/StringBuilder;

    .line 3899
    const/16 v1, 0xa

    if-ge v4, v1, :cond_0

    .line 3900
    iget-object v1, p0, Landroid/util/HiLogFormatter$FormatSpecifier$BigDecimalLayout;->exp:Ljava/lang/StringBuilder;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v4, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 3902
    :cond_0
    iget-object v1, p0, Landroid/util/HiLogFormatter$FormatSpecifier$BigDecimalLayout;->exp:Ljava/lang/StringBuilder;

    add-int/lit8 v2, v4, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 3904
    :cond_1
    iget-object v1, p0, Landroid/util/HiLogFormatter$FormatSpecifier$BigDecimalLayout;->mant:Ljava/lang/StringBuilder;

    add-int/lit8 v2, v4, -0x1

    invoke-virtual {v1, v0, v3, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 3907
    :cond_2
    iget-object v1, p0, Landroid/util/HiLogFormatter$FormatSpecifier$BigDecimalLayout;->mant:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 3908
    sget-object v1, Landroid/util/HiLogFormatter$BigDecimalLayoutForm;->SCIENTIFIC:Landroid/util/HiLogFormatter$BigDecimalLayoutForm;

    if-ne p3, v1, :cond_3

    .line 3909
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "+00"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Landroid/util/HiLogFormatter$FormatSpecifier$BigDecimalLayout;->exp:Ljava/lang/StringBuilder;

    .line 3911
    :cond_3
    :goto_0
    return-void

    .line 3913
    .end local v4    # "len":I
    :cond_4
    int-to-long v4, p2

    neg-long v4, v4

    array-length v6, v0

    sub-int/2addr v6, v3

    int-to-long v6, v6

    add-long/2addr v4, v6

    .line 3914
    .local v4, "adjusted":J
    sget-object v6, Landroid/util/HiLogFormatter$BigDecimalLayoutForm;->DECIMAL_FLOAT:Landroid/util/HiLogFormatter$BigDecimalLayoutForm;

    const/16 v7, 0x30

    if-ne p3, v6, :cond_9

    .line 3916
    array-length v6, v0

    sub-int v6, p2, v6

    .line 3917
    .local v6, "pad":I
    if-ltz v6, :cond_6

    .line 3919
    iget-object v1, p0, Landroid/util/HiLogFormatter$FormatSpecifier$BigDecimalLayout;->mant:Ljava/lang/StringBuilder;

    const-string v2, "0."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3920
    iput-boolean v3, p0, Landroid/util/HiLogFormatter$FormatSpecifier$BigDecimalLayout;->dot:Z

    .line 3921
    :goto_1
    if-lez v6, :cond_5

    iget-object v1, p0, Landroid/util/HiLogFormatter$FormatSpecifier$BigDecimalLayout;->mant:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 3922
    :cond_5
    iget-object v1, p0, Landroid/util/HiLogFormatter$FormatSpecifier$BigDecimalLayout;->mant:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 3924
    :cond_6
    neg-int v8, v6

    array-length v9, v0

    if-ge v8, v9, :cond_7

    .line 3926
    iget-object v7, p0, Landroid/util/HiLogFormatter$FormatSpecifier$BigDecimalLayout;->mant:Ljava/lang/StringBuilder;

    neg-int v8, v6

    invoke-virtual {v7, v0, v2, v8}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 3927
    iget-object v2, p0, Landroid/util/HiLogFormatter$FormatSpecifier$BigDecimalLayout;->mant:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3928
    iput-boolean v3, p0, Landroid/util/HiLogFormatter$FormatSpecifier$BigDecimalLayout;->dot:Z

    .line 3929
    iget-object v1, p0, Landroid/util/HiLogFormatter$FormatSpecifier$BigDecimalLayout;->mant:Ljava/lang/StringBuilder;

    neg-int v2, v6

    invoke-virtual {v1, v0, v2, p2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 3932
    :cond_7
    iget-object v1, p0, Landroid/util/HiLogFormatter$FormatSpecifier$BigDecimalLayout;->mant:Ljava/lang/StringBuilder;

    array-length v3, v0

    invoke-virtual {v1, v0, v2, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 3933
    move v1, v2

    .local v1, "i":I
    :goto_2
    neg-int v3, p2

    if-ge v1, v3, :cond_8

    .line 3934
    iget-object v3, p0, Landroid/util/HiLogFormatter$FormatSpecifier$BigDecimalLayout;->mant:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3933
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3935
    .end local v1    # "i":I
    :cond_8
    iput v2, p0, Landroid/util/HiLogFormatter$FormatSpecifier$BigDecimalLayout;->scale:I

    .line 3938
    .end local v6    # "pad":I
    :goto_3
    goto :goto_5

    .line 3940
    :cond_9
    iget-object v6, p0, Landroid/util/HiLogFormatter$FormatSpecifier$BigDecimalLayout;->mant:Ljava/lang/StringBuilder;

    aget-char v2, v0, v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3941
    array-length v2, v0

    if-le v2, v3, :cond_a

    .line 3942
    iget-object v2, p0, Landroid/util/HiLogFormatter$FormatSpecifier$BigDecimalLayout;->mant:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3943
    iput-boolean v3, p0, Landroid/util/HiLogFormatter$FormatSpecifier$BigDecimalLayout;->dot:Z

    .line 3944
    iget-object v1, p0, Landroid/util/HiLogFormatter$FormatSpecifier$BigDecimalLayout;->mant:Ljava/lang/StringBuilder;

    array-length v2, v0

    sub-int/2addr v2, v3

    invoke-virtual {v1, v0, v3, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 3946
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Landroid/util/HiLogFormatter$FormatSpecifier$BigDecimalLayout;->exp:Ljava/lang/StringBuilder;

    .line 3947
    const-wide/16 v1, 0x0

    cmp-long v3, v4, v1

    if-eqz v3, :cond_d

    .line 3948
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    .line 3950
    .local v8, "abs":J
    iget-object v3, p0, Landroid/util/HiLogFormatter$FormatSpecifier$BigDecimalLayout;->exp:Ljava/lang/StringBuilder;

    cmp-long v1, v4, v1

    if-gez v1, :cond_b

    const/16 v1, 0x2d

    goto :goto_4

    :cond_b
    const/16 v1, 0x2b

    :goto_4
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3951
    const-wide/16 v1, 0xa

    cmp-long v1, v8, v1

    if-gez v1, :cond_c

    .line 3952
    iget-object v1, p0, Landroid/util/HiLogFormatter$FormatSpecifier$BigDecimalLayout;->exp:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3953
    :cond_c
    iget-object v1, p0, Landroid/util/HiLogFormatter$FormatSpecifier$BigDecimalLayout;->exp:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3954
    .end local v8    # "abs":J
    goto :goto_5

    .line 3955
    :cond_d
    iget-object v1, p0, Landroid/util/HiLogFormatter$FormatSpecifier$BigDecimalLayout;->exp:Ljava/lang/StringBuilder;

    const-string v2, "+00"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3958
    :goto_5
    return-void
.end method

.method private toCharArray(Ljava/lang/StringBuilder;)[C
    .locals 3
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 3872
    if-nez p1, :cond_0

    .line 3873
    const/4 v0, 0x0

    return-object v0

    .line 3874
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    new-array v0, v0, [C

    .line 3875
    .local v0, "result":[C
    array-length v1, v0

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1, v0, v2}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    .line 3876
    return-object v0
.end method


# virtual methods
.method public exponent()[C
    .locals 1

    .line 3868
    iget-object v0, p0, Landroid/util/HiLogFormatter$FormatSpecifier$BigDecimalLayout;->exp:Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Landroid/util/HiLogFormatter$FormatSpecifier$BigDecimalLayout;->toCharArray(Ljava/lang/StringBuilder;)[C

    move-result-object v0

    return-object v0
.end method

.method public hasDot()Z
    .locals 1

    .line 3844
    iget-boolean v0, p0, Landroid/util/HiLogFormatter$FormatSpecifier$BigDecimalLayout;->dot:Z

    return v0
.end method

.method public layoutChars()[C
    .locals 2

    .line 3853
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/util/HiLogFormatter$FormatSpecifier$BigDecimalLayout;->mant:Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 3854
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/util/HiLogFormatter$FormatSpecifier$BigDecimalLayout;->exp:Ljava/lang/StringBuilder;

    if-eqz v1, :cond_0

    .line 3855
    const/16 v1, 0x45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3856
    iget-object v1, p0, Landroid/util/HiLogFormatter$FormatSpecifier$BigDecimalLayout;->exp:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 3858
    :cond_0
    invoke-direct {p0, v0}, Landroid/util/HiLogFormatter$FormatSpecifier$BigDecimalLayout;->toCharArray(Ljava/lang/StringBuilder;)[C

    move-result-object v1

    return-object v1
.end method

.method public mantissa()[C
    .locals 1

    .line 3862
    iget-object v0, p0, Landroid/util/HiLogFormatter$FormatSpecifier$BigDecimalLayout;->mant:Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Landroid/util/HiLogFormatter$FormatSpecifier$BigDecimalLayout;->toCharArray(Ljava/lang/StringBuilder;)[C

    move-result-object v0

    return-object v0
.end method

.method public scale()I
    .locals 1

    .line 3848
    iget v0, p0, Landroid/util/HiLogFormatter$FormatSpecifier$BigDecimalLayout;->scale:I

    return v0
.end method
