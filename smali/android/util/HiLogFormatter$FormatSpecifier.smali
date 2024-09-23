.class Landroid/util/HiLogFormatter$FormatSpecifier;
.super Ljava/lang/Object;
.source "HiLogFormatter.java"

# interfaces
.implements Landroid/util/HiLogFormatter$FormatString;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/HiLogFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FormatSpecifier"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/HiLogFormatter$FormatSpecifier$BigDecimalLayout;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private c:C

.field private dt:Z

.field private f:Landroid/util/HiLogFormatter$Flags;

.field private index:I

.field private precision:I

.field private privacy:Z

.field final synthetic this$0:Landroid/util/HiLogFormatter;

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2741
    const-class v0, Landroid/util/HiLogFormatter;

    return-void
.end method

.method constructor <init>(Landroid/util/HiLogFormatter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p2, "indexStr"    # Ljava/lang/String;
    .param p3, "flagsStr"    # Ljava/lang/String;
    .param p4, "widthStr"    # Ljava/lang/String;
    .param p5, "precisionStr"    # Ljava/lang/String;
    .param p6, "tTStr"    # Ljava/lang/String;
    .param p7, "convStr"    # Ljava/lang/String;
    .param p8, "privacyStr"    # Ljava/lang/String;

    .line 2848
    iput-object p1, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->this$0:Landroid/util/HiLogFormatter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2742
    const/4 p1, -0x1

    iput p1, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->index:I

    .line 2743
    sget-object p1, Landroid/util/HiLogFormatter$Flags;->NONE:Landroid/util/HiLogFormatter$Flags;

    iput-object p1, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->f:Landroid/util/HiLogFormatter$Flags;

    .line 2746
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->dt:Z

    .line 2748
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->privacy:Z

    .line 2849
    const/4 v0, 0x1

    .line 2851
    .local v0, "idx":I
    invoke-direct {p0, p2}, Landroid/util/HiLogFormatter$FormatSpecifier;->index(Ljava/lang/String;)I

    .line 2852
    invoke-direct {p0, p3}, Landroid/util/HiLogFormatter$FormatSpecifier;->flags(Ljava/lang/String;)Landroid/util/HiLogFormatter$Flags;

    .line 2853
    invoke-direct {p0, p4}, Landroid/util/HiLogFormatter$FormatSpecifier;->width(Ljava/lang/String;)I

    .line 2854
    invoke-direct {p0, p5}, Landroid/util/HiLogFormatter$FormatSpecifier;->precision(Ljava/lang/String;)I

    .line 2855
    invoke-direct {p0, p8}, Landroid/util/HiLogFormatter$FormatSpecifier;->privacy(Ljava/lang/String;)V

    .line 2857
    if-eqz p6, :cond_0

    .line 2858
    iput-boolean p1, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->dt:Z

    .line 2859
    const-string p1, "T"

    invoke-virtual {p6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2860
    iget-object p1, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->f:Landroid/util/HiLogFormatter$Flags;

    sget-object v1, Landroid/util/HiLogFormatter$Flags;->UPPERCASE:Landroid/util/HiLogFormatter$Flags;

    invoke-static {p1, v1}, Landroid/util/HiLogFormatter$Flags;->access$100(Landroid/util/HiLogFormatter$Flags;Landroid/util/HiLogFormatter$Flags;)Landroid/util/HiLogFormatter$Flags;

    .line 2863
    :cond_0
    invoke-direct {p0, p7}, Landroid/util/HiLogFormatter$FormatSpecifier;->conversion(Ljava/lang/String;)C

    .line 2865
    iget-boolean p1, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->dt:Z

    if-eqz p1, :cond_1

    .line 2866
    invoke-direct {p0}, Landroid/util/HiLogFormatter$FormatSpecifier;->checkDateTime()V

    goto :goto_0

    .line 2867
    :cond_1
    iget-char p1, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->c:C

    invoke-static {p1}, Landroid/util/HiLogFormatter$Conversion;->isGeneral(C)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2868
    invoke-direct {p0}, Landroid/util/HiLogFormatter$FormatSpecifier;->checkGeneral()V

    goto :goto_0

    .line 2869
    :cond_2
    iget-char p1, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->c:C

    invoke-static {p1}, Landroid/util/HiLogFormatter$Conversion;->isCharacter(C)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2870
    invoke-direct {p0}, Landroid/util/HiLogFormatter$FormatSpecifier;->checkCharacter()V

    goto :goto_0

    .line 2871
    :cond_3
    iget-char p1, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->c:C

    invoke-static {p1}, Landroid/util/HiLogFormatter$Conversion;->isInteger(C)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 2872
    invoke-direct {p0}, Landroid/util/HiLogFormatter$FormatSpecifier;->checkInteger()V

    goto :goto_0

    .line 2873
    :cond_4
    iget-char p1, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->c:C

    invoke-static {p1}, Landroid/util/HiLogFormatter$Conversion;->isFloat(C)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 2874
    invoke-direct {p0}, Landroid/util/HiLogFormatter$FormatSpecifier;->checkFloat()V

    goto :goto_0

    .line 2875
    :cond_5
    iget-char p1, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->c:C

    invoke-static {p1}, Landroid/util/HiLogFormatter$Conversion;->isText(C)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 2876
    invoke-direct {p0}, Landroid/util/HiLogFormatter$FormatSpecifier;->checkText()V

    .line 2879
    :goto_0
    return-void

    .line 2878
    :cond_6
    new-instance p1, Ljava/util/UnknownFormatConversionException;

    iget-char v1, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->c:C

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/util/UnknownFormatConversionException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private addDot([C)[C
    .locals 3
    .param p1, "mant"    # [C

    .line 3970
    move-object v0, p1

    .line 3971
    .local v0, "tmp":[C
    array-length v1, p1

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [C

    .line 3972
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3973
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    const/16 v2, 0x2e

    aput-char v2, v0, v1

    .line 3974
    return-object v0
.end method

.method private addZeros([CI)[C
    .locals 7
    .param p1, "v"    # [C
    .param p2, "prec"    # I

    .line 3559
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    const/16 v3, 0x2e

    if-ge v1, v2, :cond_1

    .line 3560
    aget-char v2, p1, v1

    if-ne v2, v3, :cond_0

    .line 3561
    goto :goto_1

    .line 3559
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3563
    :cond_1
    :goto_1
    const/4 v2, 0x0

    .line 3564
    .local v2, "needDot":Z
    array-length v4, p1

    if-ne v1, v4, :cond_2

    .line 3565
    const/4 v2, 0x1

    .line 3569
    :cond_2
    array-length v4, p1

    sub-int/2addr v4, v1

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    move v6, v0

    goto :goto_2

    :cond_3
    move v6, v5

    :goto_2
    sub-int/2addr v4, v6

    .line 3570
    .local v4, "outPrec":I
    nop

    .line 3571
    if-ne v4, p2, :cond_4

    .line 3572
    return-object p1

    .line 3575
    :cond_4
    array-length v6, p1

    add-int/2addr v6, p2

    sub-int/2addr v6, v4

    .line 3576
    if-eqz v2, :cond_5

    goto :goto_3

    :cond_5
    move v5, v0

    :goto_3
    add-int/2addr v6, v5

    new-array v5, v6, [C

    .line 3577
    .local v5, "tmp":[C
    array-length v6, p1

    invoke-static {p1, v0, v5, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3580
    array-length v0, p1

    .line 3581
    .local v0, "start":I
    if-eqz v2, :cond_6

    .line 3582
    array-length v6, p1

    aput-char v3, v5, v6

    .line 3583
    add-int/lit8 v0, v0, 0x1

    .line 3587
    :cond_6
    move v3, v0

    .local v3, "j":I
    :goto_4
    array-length v6, v5

    if-ge v3, v6, :cond_7

    .line 3588
    const/16 v6, 0x30

    aput-char v6, v5, v3

    .line 3587
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 3590
    .end local v3    # "j":I
    :cond_7
    return-object v5
.end method

.method private adjustWidth(ILandroid/util/HiLogFormatter$Flags;Z)I
    .locals 2
    .param p1, "width"    # I
    .param p2, "f"    # Landroid/util/HiLogFormatter$Flags;
    .param p3, "neg"    # Z

    .line 3962
    move v0, p1

    .line 3963
    .local v0, "newW":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    if-eqz p3, :cond_0

    sget-object v1, Landroid/util/HiLogFormatter$Flags;->PARENTHESES:Landroid/util/HiLogFormatter$Flags;

    invoke-virtual {p2, v1}, Landroid/util/HiLogFormatter$Flags;->contains(Landroid/util/HiLogFormatter$Flags;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3964
    add-int/lit8 v0, v0, -0x1

    .line 3965
    :cond_0
    return v0
.end method

.method private varargs checkBadFlags([Landroid/util/HiLogFormatter$Flags;)V
    .locals 3
    .param p1, "badFlags"    # [Landroid/util/HiLogFormatter$Flags;

    .line 3143
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 3144
    iget-object v1, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->f:Landroid/util/HiLogFormatter$Flags;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Landroid/util/HiLogFormatter$Flags;->contains(Landroid/util/HiLogFormatter$Flags;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3145
    aget-object v1, p1, v0

    iget-char v2, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->c:C

    invoke-direct {p0, v1, v2}, Landroid/util/HiLogFormatter$FormatSpecifier;->failMismatch(Landroid/util/HiLogFormatter$Flags;C)V

    .line 3143
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3146
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private checkCharacter()V
    .locals 4

    .line 3120
    iget v0, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->precision:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 3122
    const/4 v0, 0x6

    new-array v0, v0, [Landroid/util/HiLogFormatter$Flags;

    const/4 v2, 0x0

    sget-object v3, Landroid/util/HiLogFormatter$Flags;->ALTERNATE:Landroid/util/HiLogFormatter$Flags;

    aput-object v3, v0, v2

    const/4 v2, 0x1

    sget-object v3, Landroid/util/HiLogFormatter$Flags;->PLUS:Landroid/util/HiLogFormatter$Flags;

    aput-object v3, v0, v2

    const/4 v2, 0x2

    sget-object v3, Landroid/util/HiLogFormatter$Flags;->LEADING_SPACE:Landroid/util/HiLogFormatter$Flags;

    aput-object v3, v0, v2

    const/4 v2, 0x3

    sget-object v3, Landroid/util/HiLogFormatter$Flags;->ZERO_PAD:Landroid/util/HiLogFormatter$Flags;

    aput-object v3, v0, v2

    const/4 v2, 0x4

    sget-object v3, Landroid/util/HiLogFormatter$Flags;->GROUP:Landroid/util/HiLogFormatter$Flags;

    aput-object v3, v0, v2

    const/4 v2, 0x5

    sget-object v3, Landroid/util/HiLogFormatter$Flags;->PARENTHESES:Landroid/util/HiLogFormatter$Flags;

    aput-object v3, v0, v2

    invoke-direct {p0, v0}, Landroid/util/HiLogFormatter$FormatSpecifier;->checkBadFlags([Landroid/util/HiLogFormatter$Flags;)V

    .line 3125
    iget v0, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->width:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->f:Landroid/util/HiLogFormatter$Flags;

    sget-object v1, Landroid/util/HiLogFormatter$Flags;->LEFT_JUSTIFY:Landroid/util/HiLogFormatter$Flags;

    invoke-virtual {v0, v1}, Landroid/util/HiLogFormatter$Flags;->contains(Landroid/util/HiLogFormatter$Flags;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3126
    :cond_0
    new-instance v0, Ljava/util/MissingFormatWidthException;

    invoke-virtual {p0}, Landroid/util/HiLogFormatter$FormatSpecifier;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/MissingFormatWidthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3127
    :cond_1
    :goto_0
    return-void

    .line 3121
    :cond_2
    new-instance v0, Ljava/util/IllegalFormatPrecisionException;

    iget v1, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->precision:I

    invoke-direct {v0, v1}, Ljava/util/IllegalFormatPrecisionException;-><init>(I)V

    throw v0
.end method

.method private checkDateTime()V
    .locals 4

    .line 3108
    iget v0, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->precision:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 3110
    iget-char v0, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->c:C

    invoke-static {v0}, Landroid/util/HiLogFormatter$DateTime;->isValid(C)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3112
    const/4 v0, 0x6

    new-array v0, v0, [Landroid/util/HiLogFormatter$Flags;

    const/4 v2, 0x0

    sget-object v3, Landroid/util/HiLogFormatter$Flags;->ALTERNATE:Landroid/util/HiLogFormatter$Flags;

    aput-object v3, v0, v2

    const/4 v2, 0x1

    sget-object v3, Landroid/util/HiLogFormatter$Flags;->PLUS:Landroid/util/HiLogFormatter$Flags;

    aput-object v3, v0, v2

    const/4 v2, 0x2

    sget-object v3, Landroid/util/HiLogFormatter$Flags;->LEADING_SPACE:Landroid/util/HiLogFormatter$Flags;

    aput-object v3, v0, v2

    const/4 v2, 0x3

    sget-object v3, Landroid/util/HiLogFormatter$Flags;->ZERO_PAD:Landroid/util/HiLogFormatter$Flags;

    aput-object v3, v0, v2

    const/4 v2, 0x4

    sget-object v3, Landroid/util/HiLogFormatter$Flags;->GROUP:Landroid/util/HiLogFormatter$Flags;

    aput-object v3, v0, v2

    const/4 v2, 0x5

    sget-object v3, Landroid/util/HiLogFormatter$Flags;->PARENTHESES:Landroid/util/HiLogFormatter$Flags;

    aput-object v3, v0, v2

    invoke-direct {p0, v0}, Landroid/util/HiLogFormatter$FormatSpecifier;->checkBadFlags([Landroid/util/HiLogFormatter$Flags;)V

    .line 3115
    iget v0, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->width:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->f:Landroid/util/HiLogFormatter$Flags;

    sget-object v1, Landroid/util/HiLogFormatter$Flags;->LEFT_JUSTIFY:Landroid/util/HiLogFormatter$Flags;

    invoke-virtual {v0, v1}, Landroid/util/HiLogFormatter$Flags;->contains(Landroid/util/HiLogFormatter$Flags;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3116
    :cond_0
    new-instance v0, Ljava/util/MissingFormatWidthException;

    invoke-virtual {p0}, Landroid/util/HiLogFormatter$FormatSpecifier;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/MissingFormatWidthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3117
    :cond_1
    :goto_0
    return-void

    .line 3111
    :cond_2
    new-instance v0, Ljava/util/UnknownFormatConversionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v2, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->c:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/UnknownFormatConversionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3109
    :cond_3
    new-instance v0, Ljava/util/IllegalFormatPrecisionException;

    iget v1, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->precision:I

    invoke-direct {v0, v1}, Ljava/util/IllegalFormatPrecisionException;-><init>(I)V

    throw v0
.end method

.method private checkFloat()V
    .locals 4

    .line 3149
    invoke-direct {p0}, Landroid/util/HiLogFormatter$FormatSpecifier;->checkNumeric()V

    .line 3150
    iget-char v0, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->c:C

    const/16 v1, 0x66

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 3151
    :cond_0
    iget-char v0, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->c:C

    const/16 v1, 0x61

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    .line 3152
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/util/HiLogFormatter$Flags;

    sget-object v1, Landroid/util/HiLogFormatter$Flags;->PARENTHESES:Landroid/util/HiLogFormatter$Flags;

    aput-object v1, v0, v3

    sget-object v1, Landroid/util/HiLogFormatter$Flags;->GROUP:Landroid/util/HiLogFormatter$Flags;

    aput-object v1, v0, v2

    invoke-direct {p0, v0}, Landroid/util/HiLogFormatter$FormatSpecifier;->checkBadFlags([Landroid/util/HiLogFormatter$Flags;)V

    goto :goto_0

    .line 3153
    :cond_1
    iget-char v0, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->c:C

    const/16 v1, 0x65

    if-ne v0, v1, :cond_2

    .line 3154
    new-array v0, v2, [Landroid/util/HiLogFormatter$Flags;

    sget-object v1, Landroid/util/HiLogFormatter$Flags;->GROUP:Landroid/util/HiLogFormatter$Flags;

    aput-object v1, v0, v3

    invoke-direct {p0, v0}, Landroid/util/HiLogFormatter$FormatSpecifier;->checkBadFlags([Landroid/util/HiLogFormatter$Flags;)V

    goto :goto_0

    .line 3155
    :cond_2
    iget-char v0, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->c:C

    const/16 v1, 0x67

    if-ne v0, v1, :cond_3

    .line 3156
    new-array v0, v2, [Landroid/util/HiLogFormatter$Flags;

    sget-object v1, Landroid/util/HiLogFormatter$Flags;->ALTERNATE:Landroid/util/HiLogFormatter$Flags;

    aput-object v1, v0, v3

    invoke-direct {p0, v0}, Landroid/util/HiLogFormatter$FormatSpecifier;->checkBadFlags([Landroid/util/HiLogFormatter$Flags;)V

    .line 3158
    :cond_3
    :goto_0
    return-void
.end method

.method private checkGeneral()V
    .locals 3

    .line 3097
    iget-char v0, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->c:C

    const/16 v1, 0x62

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->c:C

    const/16 v1, 0x68

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->f:Landroid/util/HiLogFormatter$Flags;

    sget-object v1, Landroid/util/HiLogFormatter$Flags;->ALTERNATE:Landroid/util/HiLogFormatter$Flags;

    .line 3098
    invoke-virtual {v0, v1}, Landroid/util/HiLogFormatter$Flags;->contains(Landroid/util/HiLogFormatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3099
    sget-object v0, Landroid/util/HiLogFormatter$Flags;->ALTERNATE:Landroid/util/HiLogFormatter$Flags;

    iget-char v1, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->c:C

    invoke-direct {p0, v0, v1}, Landroid/util/HiLogFormatter$FormatSpecifier;->failMismatch(Landroid/util/HiLogFormatter$Flags;C)V

    .line 3101
    :cond_1
    iget v0, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->width:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->f:Landroid/util/HiLogFormatter$Flags;

    sget-object v1, Landroid/util/HiLogFormatter$Flags;->LEFT_JUSTIFY:Landroid/util/HiLogFormatter$Flags;

    invoke-virtual {v0, v1}, Landroid/util/HiLogFormatter$Flags;->contains(Landroid/util/HiLogFormatter$Flags;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 3102
    :cond_2
    new-instance v0, Ljava/util/MissingFormatWidthException;

    invoke-virtual {p0}, Landroid/util/HiLogFormatter$FormatSpecifier;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/MissingFormatWidthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3103
    :cond_3
    :goto_0
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/util/HiLogFormatter$Flags;

    const/4 v1, 0x0

    sget-object v2, Landroid/util/HiLogFormatter$Flags;->PLUS:Landroid/util/HiLogFormatter$Flags;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Landroid/util/HiLogFormatter$Flags;->LEADING_SPACE:Landroid/util/HiLogFormatter$Flags;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Landroid/util/HiLogFormatter$Flags;->ZERO_PAD:Landroid/util/HiLogFormatter$Flags;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Landroid/util/HiLogFormatter$Flags;->GROUP:Landroid/util/HiLogFormatter$Flags;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Landroid/util/HiLogFormatter$Flags;->PARENTHESES:Landroid/util/HiLogFormatter$Flags;

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Landroid/util/HiLogFormatter$FormatSpecifier;->checkBadFlags([Landroid/util/HiLogFormatter$Flags;)V

    .line 3105
    return-void
.end method

.method private checkInteger()V
    .locals 4

    .line 3130
    invoke-direct {p0}, Landroid/util/HiLogFormatter$FormatSpecifier;->checkNumeric()V

    .line 3131
    iget v0, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->precision:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 3134
    iget-char v0, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->c:C

    const/16 v1, 0x64

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    .line 3135
    new-array v0, v3, [Landroid/util/HiLogFormatter$Flags;

    sget-object v1, Landroid/util/HiLogFormatter$Flags;->ALTERNATE:Landroid/util/HiLogFormatter$Flags;

    aput-object v1, v0, v2

    invoke-direct {p0, v0}, Landroid/util/HiLogFormatter$FormatSpecifier;->checkBadFlags([Landroid/util/HiLogFormatter$Flags;)V

    goto :goto_0

    .line 3136
    :cond_0
    iget-char v0, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->c:C

    const/16 v1, 0x6f

    if-ne v0, v1, :cond_1

    .line 3137
    new-array v0, v3, [Landroid/util/HiLogFormatter$Flags;

    sget-object v1, Landroid/util/HiLogFormatter$Flags;->GROUP:Landroid/util/HiLogFormatter$Flags;

    aput-object v1, v0, v2

    invoke-direct {p0, v0}, Landroid/util/HiLogFormatter$FormatSpecifier;->checkBadFlags([Landroid/util/HiLogFormatter$Flags;)V

    goto :goto_0

    .line 3139
    :cond_1
    new-array v0, v3, [Landroid/util/HiLogFormatter$Flags;

    sget-object v1, Landroid/util/HiLogFormatter$Flags;->GROUP:Landroid/util/HiLogFormatter$Flags;

    aput-object v1, v0, v2

    invoke-direct {p0, v0}, Landroid/util/HiLogFormatter$FormatSpecifier;->checkBadFlags([Landroid/util/HiLogFormatter$Flags;)V

    .line 3140
    :goto_0
    return-void

    .line 3132
    :cond_2
    new-instance v0, Ljava/util/IllegalFormatPrecisionException;

    iget v1, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->precision:I

    invoke-direct {v0, v1}, Ljava/util/IllegalFormatPrecisionException;-><init>(I)V

    throw v0
.end method

.method private checkNumeric()V
    .locals 2

    .line 3161
    iget v0, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->width:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->width:I

    if-ltz v0, :cond_0

    goto :goto_0

    .line 3162
    :cond_0
    new-instance v0, Ljava/util/IllegalFormatWidthException;

    iget v1, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->width:I

    invoke-direct {v0, v1}, Ljava/util/IllegalFormatWidthException;-><init>(I)V

    throw v0

    .line 3164
    :cond_1
    :goto_0
    iget v0, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->precision:I

    if-eq v0, v1, :cond_3

    iget v0, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->precision:I

    if-ltz v0, :cond_2

    goto :goto_1

    .line 3165
    :cond_2
    new-instance v0, Ljava/util/IllegalFormatPrecisionException;

    iget v1, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->precision:I

    invoke-direct {v0, v1}, Ljava/util/IllegalFormatPrecisionException;-><init>(I)V

    throw v0

    .line 3168
    :cond_3
    :goto_1
    iget v0, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->width:I

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->f:Landroid/util/HiLogFormatter$Flags;

    sget-object v1, Landroid/util/HiLogFormatter$Flags;->LEFT_JUSTIFY:Landroid/util/HiLogFormatter$Flags;

    .line 3169
    invoke-virtual {v0, v1}, Landroid/util/HiLogFormatter$Flags;->contains(Landroid/util/HiLogFormatter$Flags;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->f:Landroid/util/HiLogFormatter$Flags;

    sget-object v1, Landroid/util/HiLogFormatter$Flags;->ZERO_PAD:Landroid/util/HiLogFormatter$Flags;

    invoke-virtual {v0, v1}, Landroid/util/HiLogFormatter$Flags;->contains(Landroid/util/HiLogFormatter$Flags;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_2

    .line 3170
    :cond_4
    new-instance v0, Ljava/util/MissingFormatWidthException;

    invoke-virtual {p0}, Landroid/util/HiLogFormatter$FormatSpecifier;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/MissingFormatWidthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3173
    :cond_5
    :goto_2
    iget-object v0, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->f:Landroid/util/HiLogFormatter$Flags;

    sget-object v1, Landroid/util/HiLogFormatter$Flags;->PLUS:Landroid/util/HiLogFormatter$Flags;

    invoke-virtual {v0, v1}, Landroid/util/HiLogFormatter$Flags;->contains(Landroid/util/HiLogFormatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->f:Landroid/util/HiLogFormatter$Flags;

    sget-object v1, Landroid/util/HiLogFormatter$Flags;->LEADING_SPACE:Landroid/util/HiLogFormatter$Flags;

    invoke-virtual {v0, v1}, Landroid/util/HiLogFormatter$Flags;->contains(Landroid/util/HiLogFormatter$Flags;)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    iget-object v0, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->f:Landroid/util/HiLogFormatter$Flags;

    sget-object v1, Landroid/util/HiLogFormatter$Flags;->LEFT_JUSTIFY:Landroid/util/HiLogFormatter$Flags;

    .line 3174
    invoke-virtual {v0, v1}, Landroid/util/HiLogFormatter$Flags;->contains(Landroid/util/HiLogFormatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->f:Landroid/util/HiLogFormatter$Flags;

    sget-object v1, Landroid/util/HiLogFormatter$Flags;->ZERO_PAD:Landroid/util/HiLogFormatter$Flags;

    invoke-virtual {v0, v1}, Landroid/util/HiLogFormatter$Flags;->contains(Landroid/util/HiLogFormatter$Flags;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_3

    .line 3175
    :cond_7
    new-instance v0, Ljava/util/IllegalFormatFlagsException;

    iget-object v1, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->f:Landroid/util/HiLogFormatter$Flags;

    invoke-virtual {v1}, Landroid/util/HiLogFormatter$Flags;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/IllegalFormatFlagsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3176
    :cond_8
    :goto_3
    return-void
.end method

.method private checkText()V
    .locals 3

    .line 3179
    iget v0, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->precision:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    .line 3181
    iget-char v0, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->c:C

    const/16 v2, 0x25

    if-eq v0, v2, :cond_3

    const/16 v2, 0x6e

    if-eq v0, v2, :cond_0

    .line 3197
    goto :goto_1

    .line 3191
    :cond_0
    iget v0, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->width:I

    if-ne v0, v1, :cond_2

    .line 3193
    iget-object v0, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->f:Landroid/util/HiLogFormatter$Flags;

    invoke-virtual {v0}, Landroid/util/HiLogFormatter$Flags;->valueOf()I

    move-result v0

    sget-object v1, Landroid/util/HiLogFormatter$Flags;->NONE:Landroid/util/HiLogFormatter$Flags;

    invoke-virtual {v1}, Landroid/util/HiLogFormatter$Flags;->valueOf()I

    move-result v1

    if-ne v0, v1, :cond_1

    goto :goto_1

    .line 3194
    :cond_1
    new-instance v0, Ljava/util/IllegalFormatFlagsException;

    iget-object v1, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->f:Landroid/util/HiLogFormatter$Flags;

    invoke-virtual {v1}, Landroid/util/HiLogFormatter$Flags;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/IllegalFormatFlagsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3192
    :cond_2
    new-instance v0, Ljava/util/IllegalFormatWidthException;

    iget v1, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->width:I

    invoke-direct {v0, v1}, Ljava/util/IllegalFormatWidthException;-><init>(I)V

    throw v0

    .line 3183
    :cond_3
    iget-object v0, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->f:Landroid/util/HiLogFormatter$Flags;

    invoke-virtual {v0}, Landroid/util/HiLogFormatter$Flags;->valueOf()I

    move-result v0

    sget-object v2, Landroid/util/HiLogFormatter$Flags;->LEFT_JUSTIFY:Landroid/util/HiLogFormatter$Flags;

    invoke-virtual {v2}, Landroid/util/HiLogFormatter$Flags;->valueOf()I

    move-result v2

    if-eq v0, v2, :cond_5

    iget-object v0, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->f:Landroid/util/HiLogFormatter$Flags;

    .line 3184
    invoke-virtual {v0}, Landroid/util/HiLogFormatter$Flags;->valueOf()I

    move-result v0

    sget-object v2, Landroid/util/HiLogFormatter$Flags;->NONE:Landroid/util/HiLogFormatter$Flags;

    invoke-virtual {v2}, Landroid/util/HiLogFormatter$Flags;->valueOf()I

    move-result v2

    if-ne v0, v2, :cond_4

    goto :goto_0

    .line 3185
    :cond_4
    new-instance v0, Ljava/util/IllegalFormatFlagsException;

    iget-object v1, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->f:Landroid/util/HiLogFormatter$Flags;

    invoke-virtual {v1}, Landroid/util/HiLogFormatter$Flags;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/IllegalFormatFlagsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3187
    :cond_5
    :goto_0
    iget v0, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->width:I

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->f:Landroid/util/HiLogFormatter$Flags;

    sget-object v1, Landroid/util/HiLogFormatter$Flags;->LEFT_JUSTIFY:Landroid/util/HiLogFormatter$Flags;

    invoke-virtual {v0, v1}, Landroid/util/HiLogFormatter$Flags;->contains(Landroid/util/HiLogFormatter$Flags;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_1

    .line 3188
    :cond_6
    new-instance v0, Ljava/util/MissingFormatWidthException;

    invoke-virtual {p0}, Landroid/util/HiLogFormatter$FormatSpecifier;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/MissingFormatWidthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3199
    :cond_7
    :goto_1
    return-void

    .line 3180
    :cond_8
    new-instance v0, Ljava/util/IllegalFormatPrecisionException;

    iget v1, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->precision:I

    invoke-direct {v0, v1}, Ljava/util/IllegalFormatPrecisionException;-><init>(I)V

    throw v0
.end method

.method private conversion()C
    .locals 1

    .line 2843
    iget-char v0, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->c:C

    return v0
.end method

.method private conversion(Ljava/lang/String;)C
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 2829
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput-char v0, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->c:C

    .line 2830
    iget-boolean v0, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->dt:Z

    if-nez v0, :cond_2

    .line 2831
    iget-char v0, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->c:C

    invoke-static {v0}, Landroid/util/HiLogFormatter$Conversion;->isValid(C)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2833
    iget-char v0, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->c:C

    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2834
    iget-object v0, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->f:Landroid/util/HiLogFormatter$Flags;

    sget-object v1, Landroid/util/HiLogFormatter$Flags;->UPPERCASE:Landroid/util/HiLogFormatter$Flags;

    invoke-static {v0, v1}, Landroid/util/HiLogFormatter$Flags;->access$100(Landroid/util/HiLogFormatter$Flags;Landroid/util/HiLogFormatter$Flags;)Landroid/util/HiLogFormatter$Flags;

    .line 2835
    :cond_0
    iget-char v0, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->c:C

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    iput-char v0, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->c:C

    .line 2836
    iget-char v0, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->c:C

    invoke-static {v0}, Landroid/util/HiLogFormatter$Conversion;->isText(C)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2837
    const/4 v0, -0x2

    iput v0, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->index:I

    goto :goto_0

    .line 2832
    :cond_1
    new-instance v0, Ljava/util/UnknownFormatConversionException;

    iget-char v1, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->c:C

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/UnknownFormatConversionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2839
    :cond_2
    :goto_0
    iget-char v0, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->c:C

    return v0
.end method

.method private failConversion(CLjava/lang/Object;)V
    .locals 2
    .param p1, "c"    # C
    .param p2, "arg"    # Ljava/lang/Object;

    .line 4456
    new-instance v0, Ljava/util/IllegalFormatConversionException;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/util/IllegalFormatConversionException;-><init>(CLjava/lang/Class;)V

    throw v0
.end method

.method private failMismatch(Landroid/util/HiLogFormatter$Flags;C)V
    .locals 2
    .param p1, "f"    # Landroid/util/HiLogFormatter$Flags;
    .param p2, "c"    # C

    .line 4451
    invoke-virtual {p1}, Landroid/util/HiLogFormatter$Flags;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4452
    .local v0, "fs":Ljava/lang/String;
    new-instance v1, Ljava/util/FormatFlagsConversionMismatchException;

    invoke-direct {v1, v0, p2}, Ljava/util/FormatFlagsConversionMismatchException;-><init>(Ljava/lang/String;C)V

    throw v1
.end method

.method private flags(Ljava/lang/String;)Landroid/util/HiLogFormatter$Flags;
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 2780
    invoke-static {p1}, Landroid/util/HiLogFormatter$Flags;->parse(Ljava/lang/String;)Landroid/util/HiLogFormatter$Flags;

    move-result-object v0

    iput-object v0, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->f:Landroid/util/HiLogFormatter$Flags;

    .line 2781
    iget-object v0, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->f:Landroid/util/HiLogFormatter$Flags;

    sget-object v1, Landroid/util/HiLogFormatter$Flags;->PREVIOUS:Landroid/util/HiLogFormatter$Flags;

    invoke-virtual {v0, v1}, Landroid/util/HiLogFormatter$Flags;->contains(Landroid/util/HiLogFormatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2782
    const/4 v0, -0x1

    iput v0, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->index:I

    .line 2783
    :cond_0
    iget-object v0, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->f:Landroid/util/HiLogFormatter$Flags;

    return-object v0
.end method

.method private getZero(Ljava/util/Locale;)C
    .locals 2
    .param p1, "l"    # Ljava/util/Locale;

    .line 4460
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->this$0:Landroid/util/HiLogFormatter;

    invoke-virtual {v0}, Landroid/util/HiLogFormatter;->locale()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4461
    invoke-static {p1}, Ljava/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    move-result-object v0

    .line 4462
    .local v0, "dfs":Ljava/text/DecimalFormatSymbols;
    invoke-virtual {v0}, Ljava/text/DecimalFormatSymbols;->getZeroDigit()C

    move-result v1

    return v1

    .line 4464
    .end local v0    # "dfs":Ljava/text/DecimalFormatSymbols;
    :cond_0
    iget-object v0, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->this$0:Landroid/util/HiLogFormatter;

    invoke-static {v0}, Landroid/util/HiLogFormatter;->access$400(Landroid/util/HiLogFormatter;)C

    move-result v0

    return v0
.end method

.method private hexDouble(DI)Ljava/lang/String;
    .locals 32
    .param p1, "d"    # D
    .param p3, "prec"    # I

    .line 3596
    move/from16 v2, p3

    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->isFinite(D)Z

    move-result v3

    if-eqz v3, :cond_c

    const-wide/16 v5, 0x0

    cmpl-double v3, p1, v5

    if-eqz v3, :cond_c

    if-eqz v2, :cond_c

    const/16 v3, 0xd

    if-lt v2, v3, :cond_0

    goto/16 :goto_5

    .line 3600
    :cond_0
    nop

    .line 3602
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->getExponent(D)I

    move-result v3

    .line 3603
    .local v3, "exponent":I
    const/16 v5, -0x3ff

    const/4 v7, 0x1

    if-ne v3, v5, :cond_1

    move v5, v7

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    .line 3608
    .local v5, "subnormal":Z
    :goto_0
    const/16 v8, 0x36

    if-eqz v5, :cond_2

    .line 3609
    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    invoke-static {v9, v10, v8}, Ljava/lang/Math;->scalb(DI)D

    move-result-wide v9

    invoke-static {v9, v10}, Landroid/util/HiLogFormatter;->access$302(D)D

    .line 3610
    invoke-static {}, Landroid/util/HiLogFormatter;->access$300()D

    move-result-wide v9

    mul-double v0, p1, v9

    .line 3613
    .end local p1    # "d":D
    .local v0, "d":D
    invoke-static {v0, v1}, Ljava/lang/Math;->getExponent(D)I

    move-result v3

    .line 3614
    goto :goto_1

    .line 3618
    .end local v0    # "d":D
    .restart local p1    # "d":D
    :cond_2
    move-wide/from16 v0, p1

    .end local p1    # "d":D
    .restart local v0    # "d":D
    :goto_1
    mul-int/lit8 v9, v2, 0x4

    add-int/2addr v9, v7

    .line 3619
    .local v9, "precision":I
    rsub-int/lit8 v10, v9, 0x35

    .line 3621
    .local v10, "shiftDistance":I
    nop

    .line 3623
    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v11

    .line 3625
    .local v11, "doppel":J
    const-wide v13, 0x7fffffffffffffffL

    and-long/2addr v13, v11

    shr-long/2addr v13, v10

    .line 3630
    .local v13, "newSignif":J
    const-wide/16 v15, -0x1

    move/from16 v18, v9

    shl-long v8, v15, v10

    .end local v9    # "precision":I
    .local v18, "precision":I
    not-long v8, v8

    and-long/2addr v8, v11

    .line 3637
    .local v8, "roundingBits":J
    const-wide/16 v15, 0x1

    and-long v19, v13, v15

    const-wide/16 v21, 0x0

    cmp-long v19, v19, v21

    if-nez v19, :cond_3

    move/from16 v19, v7

    goto :goto_2

    :cond_3
    const/16 v19, 0x0

    .line 3638
    .local v19, "leastZero":Z
    :goto_2
    add-int/lit8 v20, v10, -0x1

    shl-long v23, v15, v20

    and-long v23, v23, v8

    cmp-long v20, v23, v21

    if-eqz v20, :cond_4

    move/from16 v20, v7

    goto :goto_3

    :cond_4
    const/16 v20, 0x0

    .line 3640
    .local v20, "round":Z
    :goto_3
    if-le v10, v7, :cond_5

    add-int/lit8 v23, v10, -0x1

    shl-long v6, v15, v23

    not-long v6, v6

    and-long/2addr v6, v8

    cmp-long v6, v6, v21

    if-eqz v6, :cond_5

    const/16 v25, 0x1

    goto :goto_4

    :cond_5
    const/16 v25, 0x0

    :goto_4
    move/from16 v6, v25

    .line 3642
    .local v6, "sticky":Z
    if-eqz v19, :cond_6

    if-eqz v20, :cond_6

    if-nez v6, :cond_7

    :cond_6
    if-nez v19, :cond_8

    if-eqz v20, :cond_8

    .line 3643
    :cond_7
    add-long/2addr v13, v15

    .line 3646
    :cond_8
    const-wide/high16 v15, -0x8000000000000000L

    and-long/2addr v15, v11

    .line 3647
    .local v15, "signBit":J
    shl-long v21, v13, v10

    or-long v13, v15, v21

    .line 3648
    move/from16 v26, v5

    invoke-static {v13, v14}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v4

    .line 3650
    .end local v5    # "subnormal":Z
    .local v4, "result":D
    .local v26, "subnormal":Z
    invoke-static {v4, v5}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 3652
    const-string v7, "1.0p1024"

    return-object v7

    .line 3654
    :cond_9
    invoke-static {v4, v5}, Ljava/lang/Double;->toHexString(D)Ljava/lang/String;

    move-result-object v7

    move-wide/from16 v27, v0

    const/4 v0, 0x2

    invoke-virtual {v7, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 3655
    .local v0, "res":Ljava/lang/String;
    .local v27, "d":D
    if-nez v26, :cond_a

    .line 3656
    return-object v0

    .line 3659
    :cond_a
    const/16 v1, 0x70

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 3660
    .local v1, "idx":I
    const/4 v7, -0x1

    if-ne v1, v7, :cond_b

    .line 3662
    nop

    .line 3663
    const/4 v7, 0x0

    return-object v7

    .line 3666
    :cond_b
    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 3667
    .local v7, "exp":Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    const/16 v17, 0x36

    add-int/lit8 v2, v21, -0x36

    .line 3668
    .local v2, "iexp":I
    move/from16 v29, v3

    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3    # "exponent":I
    .local v29, "exponent":I
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v30, v4

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .end local v4    # "result":D
    .local v30, "result":D
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "p"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3669
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3668
    return-object v3

    .line 3598
    .end local v0    # "res":Ljava/lang/String;
    .end local v1    # "idx":I
    .end local v2    # "iexp":I
    .end local v6    # "sticky":Z
    .end local v7    # "exp":Ljava/lang/String;
    .end local v8    # "roundingBits":J
    .end local v10    # "shiftDistance":I
    .end local v11    # "doppel":J
    .end local v13    # "newSignif":J
    .end local v15    # "signBit":J
    .end local v18    # "precision":I
    .end local v19    # "leastZero":Z
    .end local v20    # "round":Z
    .end local v26    # "subnormal":Z
    .end local v27    # "d":D
    .end local v29    # "exponent":I
    .end local v30    # "result":D
    .restart local p1    # "d":D
    :cond_c
    :goto_5
    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->toHexString(D)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private index(Ljava/lang/String;)I
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 2761
    if-eqz p1, :cond_0

    .line 2765
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->index:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2768
    :goto_0
    goto :goto_1

    .line 2766
    :catch_0
    move-exception v0

    .line 2767
    .local v0, "x":Ljava/lang/NumberFormatException;
    goto :goto_0

    .line 2770
    .end local v0    # "x":Ljava/lang/NumberFormatException;
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->index:I

    .line 2772
    :goto_1
    iget v0, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->index:I

    return v0
.end method

.method private justify(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "s"    # Ljava/lang/String;

    .line 3065
    iget v0, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->width:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 3066
    return-object p1

    .line 3067
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3068
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->f:Landroid/util/HiLogFormatter$Flags;

    sget-object v2, Landroid/util/HiLogFormatter$Flags;->LEFT_JUSTIFY:Landroid/util/HiLogFormatter$Flags;

    invoke-virtual {v1, v2}, Landroid/util/HiLogFormatter$Flags;->contains(Landroid/util/HiLogFormatter$Flags;)Z

    move-result v1

    .line 3069
    .local v1, "pad":Z
    iget v2, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->width:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    .line 3070
    .local v2, "sp":I
    const/16 v3, 0x20

    const/4 v4, 0x0

    if-nez v1, :cond_1

    .line 3071
    move v5, v4

    .local v5, "i":I
    :goto_0
    if-ge v5, v2, :cond_1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 3072
    .end local v5    # "i":I
    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3073
    if-eqz v1, :cond_2

    .line 3074
    nop

    .local v4, "i":I
    :goto_1
    if-ge v4, v2, :cond_2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 3075
    .end local v4    # "i":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private leadingSign(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "neg"    # Z

    .line 3292
    if-nez p2, :cond_1

    .line 3293
    iget-object v0, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->f:Landroid/util/HiLogFormatter$Flags;

    sget-object v1, Landroid/util/HiLogFormatter$Flags;->PLUS:Landroid/util/HiLogFormatter$Flags;

    invoke-virtual {v0, v1}, Landroid/util/HiLogFormatter$Flags;->contains(Landroid/util/HiLogFormatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3294
    const/16 v0, 0x2b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 3295
    :cond_0
    iget-object v0, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->f:Landroid/util/HiLogFormatter$Flags;

    sget-object v1, Landroid/util/HiLogFormatter$Flags;->LEADING_SPACE:Landroid/util/HiLogFormatter$Flags;

    invoke-virtual {v0, v1}, Landroid/util/HiLogFormatter$Flags;->contains(Landroid/util/HiLogFormatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3296
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 3299
    :cond_1
    iget-object v0, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->f:Landroid/util/HiLogFormatter$Flags;

    sget-object v1, Landroid/util/HiLogFormatter$Flags;->PARENTHESES:Landroid/util/HiLogFormatter$Flags;

    invoke-virtual {v0, v1}, Landroid/util/HiLogFormatter$Flags;->contains(Landroid/util/HiLogFormatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3300
    const/16 v0, 0x28

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 3302
    :cond_2
    const/16 v0, 0x2d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3304
    :cond_3
    :goto_0
    return-object p1
.end method

.method private localizedMagnitude(Ljava/lang/StringBuilder;JLandroid/util/HiLogFormatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;
    .locals 7
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "value"    # J
    .param p4, "f"    # Landroid/util/HiLogFormatter$Flags;
    .param p5, "width"    # I
    .param p6, "l"    # Ljava/util/Locale;

    .line 4471
    const/16 v0, 0xa

    invoke-static {p2, p3, v0}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 4472
    .local v0, "va":[C
    move-object v1, p0

    move-object v2, p1

    move-object v3, v0

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v1 .. v6}, Landroid/util/HiLogFormatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;[CLandroid/util/HiLogFormatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v1

    return-object v1
.end method

.method private localizedMagnitude(Ljava/lang/StringBuilder;[CLandroid/util/HiLogFormatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;
    .locals 18
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "value"    # [C
    .param p3, "f"    # Landroid/util/HiLogFormatter$Flags;
    .param p4, "width"    # I
    .param p5, "l"    # Ljava/util/Locale;

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move/from16 v2, p4

    .line 4479
    move-object/from16 v3, p5

    if-nez p1, :cond_0

    .line 4480
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v5

    .end local p1    # "sb":Ljava/lang/StringBuilder;
    .local v4, "sb":Ljava/lang/StringBuilder;
    goto :goto_0

    .line 4481
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    .restart local p1    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    move-object/from16 v4, p1

    .end local p1    # "sb":Ljava/lang/StringBuilder;
    .restart local v4    # "sb":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    .line 4483
    .local v5, "begin":I
    move-object/from16 v6, p0

    invoke-direct {v6, v3}, Landroid/util/HiLogFormatter$FormatSpecifier;->getZero(Ljava/util/Locale;)C

    move-result v7

    .line 4486
    .local v7, "zero":C
    const/4 v8, 0x0

    .line 4487
    .local v8, "grpSep":C
    const/4 v9, -0x1

    .line 4488
    .local v9, "grpSize":I
    const/4 v10, 0x0

    .line 4490
    .local v10, "decSep":C
    array-length v11, v0

    .line 4491
    .local v11, "len":I
    move v12, v11

    .line 4492
    .local v12, "dot":I
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_1
    if-ge v14, v11, :cond_2

    .line 4493
    aget-char v15, v0, v14

    const/16 v13, 0x2e

    if-ne v15, v13, :cond_1

    .line 4494
    move v12, v14

    .line 4495
    goto :goto_2

    .line 4492
    :cond_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 4499
    .end local v14    # "j":I
    :cond_2
    :goto_2
    if-ge v12, v11, :cond_5

    .line 4500
    if-eqz v3, :cond_4

    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v13}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    goto :goto_3

    .line 4503
    :cond_3
    invoke-static/range {p5 .. p5}, Ljava/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    move-result-object v13

    .line 4504
    .local v13, "dfs":Ljava/text/DecimalFormatSymbols;
    invoke-virtual {v13}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v10

    .end local v13    # "dfs":Ljava/text/DecimalFormatSymbols;
    goto :goto_4

    .line 4501
    :cond_4
    :goto_3
    const/16 v10, 0x2e

    .line 4508
    :cond_5
    :goto_4
    sget-object v13, Landroid/util/HiLogFormatter$Flags;->GROUP:Landroid/util/HiLogFormatter$Flags;

    invoke-virtual {v1, v13}, Landroid/util/HiLogFormatter$Flags;->contains(Landroid/util/HiLogFormatter$Flags;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 4509
    if-eqz v3, :cond_8

    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v13}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    goto :goto_5

    .line 4513
    :cond_6
    invoke-static/range {p5 .. p5}, Ljava/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    move-result-object v13

    .line 4514
    .restart local v13    # "dfs":Ljava/text/DecimalFormatSymbols;
    invoke-virtual {v13}, Ljava/text/DecimalFormatSymbols;->getGroupingSeparator()C

    move-result v8

    .line 4515
    invoke-static/range {p5 .. p5}, Ljava/text/NumberFormat;->getIntegerInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v14

    check-cast v14, Ljava/text/DecimalFormat;

    .line 4516
    .local v14, "df":Ljava/text/DecimalFormat;
    invoke-virtual {v14}, Ljava/text/DecimalFormat;->getGroupingSize()I

    move-result v9

    .line 4521
    invoke-virtual {v14}, Ljava/text/DecimalFormat;->isGroupingUsed()Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-virtual {v14}, Ljava/text/DecimalFormat;->getGroupingSize()I

    move-result v15

    if-nez v15, :cond_9

    .line 4522
    :cond_7
    const/4 v8, 0x0

    .end local v13    # "dfs":Ljava/text/DecimalFormatSymbols;
    .end local v14    # "df":Ljava/text/DecimalFormat;
    goto :goto_6

    .line 4510
    :cond_8
    :goto_5
    const/16 v8, 0x2c

    .line 4511
    const/4 v9, 0x3

    .line 4529
    :cond_9
    :goto_6
    move v13, v8

    const/4 v8, 0x0

    .local v8, "j":I
    .local v13, "grpSep":C
    :goto_7
    if-ge v8, v11, :cond_c

    .line 4530
    if-ne v8, v12, :cond_a

    .line 4531
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4533
    const/4 v13, 0x0

    .line 4534
    goto :goto_8

    .line 4537
    :cond_a
    aget-char v14, v0, v8

    .line 4538
    .local v14, "c":C
    add-int/lit8 v15, v14, -0x30

    add-int/2addr v15, v7

    int-to-char v15, v15

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4539
    if-eqz v13, :cond_b

    add-int/lit8 v15, v12, -0x1

    if-eq v8, v15, :cond_b

    sub-int v15, v12, v8

    rem-int/2addr v15, v9

    const/4 v0, 0x1

    if-ne v15, v0, :cond_b

    .line 4540
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4529
    .end local v14    # "c":C
    :cond_b
    :goto_8
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p2

    goto :goto_7

    .line 4544
    .end local v8    # "j":I
    :cond_c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 4545
    .end local v11    # "len":I
    .local v0, "len":I
    const/4 v8, -0x1

    if-eq v2, v8, :cond_d

    sget-object v8, Landroid/util/HiLogFormatter$Flags;->ZERO_PAD:Landroid/util/HiLogFormatter$Flags;

    invoke-virtual {v1, v8}, Landroid/util/HiLogFormatter$Flags;->contains(Landroid/util/HiLogFormatter$Flags;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 4546
    const/16 v16, 0x0

    .local v16, "k":I
    :goto_9
    move/from16 v8, v16

    .end local v16    # "k":I
    .local v8, "k":I
    sub-int v11, v2, v0

    if-ge v8, v11, :cond_d

    .line 4547
    invoke-virtual {v4, v5, v7}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 4546
    add-int/lit8 v16, v8, 0x1

    .end local v8    # "k":I
    .restart local v16    # "k":I
    goto :goto_9

    .line 4549
    .end local v16    # "k":I
    :cond_d
    return-object v4
.end method

.method private precision(Ljava/lang/String;)I
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 2809
    const/4 v0, -0x1

    iput v0, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->precision:I

    .line 2810
    if-eqz p1, :cond_1

    .line 2814
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->precision:I

    .line 2815
    iget v0, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->precision:I

    if-ltz v0, :cond_0

    .line 2819
    goto :goto_0

    .line 2816
    :cond_0
    new-instance v0, Ljava/util/IllegalFormatPrecisionException;

    iget v1, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->precision:I

    invoke-direct {v0, v1}, Ljava/util/IllegalFormatPrecisionException;-><init>(I)V

    throw v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2817
    :catch_0
    move-exception v0

    .line 2818
    .local v0, "x":Ljava/lang/NumberFormatException;
    nop

    .line 2821
    .end local v0    # "x":Ljava/lang/NumberFormatException;
    :cond_1
    :goto_0
    iget v0, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->precision:I

    return v0
.end method

.method private print(Ljava/lang/StringBuilder;Ljava/time/temporal/TemporalAccessor;CLjava/util/Locale;)Ljava/lang/Appendable;
    .locals 11
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "t"    # Ljava/time/temporal/TemporalAccessor;
    .param p3, "c"    # C
    .param p4, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4224
    if-nez p1, :cond_0

    .line 4225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object p1, v0

    .line 4227
    :cond_0
    const/16 v0, 0x79

    const/16 v1, 0x6d

    const/16 v2, 0x54

    const/16 v3, 0x53

    const/16 v4, 0x4d

    const/4 v5, 0x0

    const/16 v6, 0x59

    const/4 v7, 0x1

    const/16 v8, 0x64

    packed-switch p3, :pswitch_data_0

    .line 4440
    :pswitch_0
    goto/16 :goto_9

    .line 4297
    :pswitch_1
    :try_start_0
    sget-object v0, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    invoke-interface {p2, v0}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    .line 4298
    .local v0, "i":I
    if-gez v0, :cond_1

    move v5, v7

    nop

    :cond_1
    move v1, v5

    .line 4299
    .local v1, "neg":Z
    if-eqz v1, :cond_2

    const/16 v2, 0x2d

    goto :goto_0

    :cond_2
    const/16 v2, 0x2b

    :goto_0
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4300
    if-eqz v1, :cond_3

    .line 4301
    neg-int v0, v0

    .line 4302
    :cond_3
    div-int/lit8 v2, v0, 0x3c

    .line 4304
    .local v2, "min":I
    div-int/lit8 v3, v2, 0x3c

    mul-int/2addr v3, v8

    rem-int/lit8 v4, v2, 0x3c

    add-int/2addr v3, v4

    .line 4305
    .local v3, "offset":I
    sget-object v8, Landroid/util/HiLogFormatter$Flags;->ZERO_PAD:Landroid/util/HiLogFormatter$Flags;

    .line 4306
    .local v8, "flags":Landroid/util/HiLogFormatter$Flags;
    const/4 v5, 0x0

    int-to-long v6, v3

    const/4 v9, 0x4

    move-object v4, p0

    move-object v10, p4

    invoke-direct/range {v4 .. v10}, Landroid/util/HiLogFormatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLandroid/util/HiLogFormatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4307
    goto/16 :goto_a

    .line 4285
    .end local v0    # "i":I
    .end local v1    # "neg":Z
    .end local v2    # "min":I
    .end local v3    # "offset":I
    .end local v8    # "flags":Landroid/util/HiLogFormatter$Flags;
    :pswitch_2
    sget-object v0, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    invoke-interface {p2, v0}, Ljava/time/temporal/TemporalAccessor;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v3

    .line 4286
    .local v3, "i":J
    sget-object v5, Landroid/util/HiLogFormatter$Flags;->NONE:Landroid/util/HiLogFormatter$Flags;

    .line 4287
    .local v5, "flags":Landroid/util/HiLogFormatter$Flags;
    const/4 v2, 0x0

    iget v6, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->width:I

    move-object v1, p0

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Landroid/util/HiLogFormatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLandroid/util/HiLogFormatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4288
    goto/16 :goto_a

    .line 4405
    .end local v3    # "i":J
    .end local v5    # "flags":Landroid/util/HiLogFormatter$Flags;
    :pswitch_3
    const/16 v0, 0x3a

    .line 4406
    .local v0, "sep":C
    const/16 v1, 0x49

    invoke-direct {p0, p1, p2, v1, p4}, Landroid/util/HiLogFormatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/time/temporal/TemporalAccessor;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 4407
    invoke-direct {p0, p1, p2, v4, p4}, Landroid/util/HiLogFormatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/time/temporal/TemporalAccessor;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 4408
    invoke-direct {p0, p1, p2, v3, p4}, Landroid/util/HiLogFormatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/time/temporal/TemporalAccessor;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v1

    const/16 v2, 0x20

    invoke-interface {v1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 4410
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4411
    .local v1, "tsb":Ljava/lang/StringBuilder;
    const/16 v2, 0x70

    invoke-direct {p0, v1, p2, v2, p4}, Landroid/util/HiLogFormatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/time/temporal/TemporalAccessor;CLjava/util/Locale;)Ljava/lang/Appendable;

    .line 4412
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz p4, :cond_4

    move-object v3, p4

    goto :goto_1

    :cond_4
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4413
    goto/16 :goto_a

    .line 4275
    .end local v0    # "sep":C
    .end local v1    # "tsb":Ljava/lang/StringBuilder;
    :pswitch_4
    const-string v0, "AM"

    const-string v1, "PM"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 4276
    .local v0, "ampm":[Ljava/lang/String;
    if-eqz p4, :cond_5

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    if-eq p4, v1, :cond_5

    .line 4277
    invoke-static {p4}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object v1

    .line 4278
    .local v1, "dfs":Ljava/text/DateFormatSymbols;
    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 4280
    .end local v1    # "dfs":Ljava/text/DateFormatSymbols;
    :cond_5
    sget-object v1, Ljava/time/temporal/ChronoField;->AMPM_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {p2, v1}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v1

    aget-object v1, v0, v1

    .line 4281
    .local v1, "s":Ljava/lang/String;
    if-eqz p4, :cond_6

    move-object v2, p4

    goto :goto_2

    :cond_6
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4282
    goto/16 :goto_a

    .line 4386
    .end local v0    # "ampm":[Ljava/lang/String;
    .end local v1    # "s":Ljava/lang/String;
    :pswitch_5
    sget-object v0, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p2, v0}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    .line 4387
    .local v0, "i":I
    sget-object v5, Landroid/util/HiLogFormatter$Flags;->ZERO_PAD:Landroid/util/HiLogFormatter$Flags;

    .line 4388
    .restart local v5    # "flags":Landroid/util/HiLogFormatter$Flags;
    const/4 v2, 0x0

    int-to-long v3, v0

    const/4 v6, 0x2

    move-object v1, p0

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Landroid/util/HiLogFormatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLandroid/util/HiLogFormatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4389
    goto/16 :goto_a

    .line 4244
    .end local v0    # "i":I
    .end local v5    # "flags":Landroid/util/HiLogFormatter$Flags;
    :pswitch_6
    sget-object v0, Ljava/time/temporal/ChronoField;->CLOCK_HOUR_OF_AMPM:Ljava/time/temporal/ChronoField;

    invoke-interface {p2, v0}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    .line 4245
    .restart local v0    # "i":I
    const/4 v2, 0x0

    int-to-long v3, v0

    sget-object v5, Landroid/util/HiLogFormatter$Flags;->NONE:Landroid/util/HiLogFormatter$Flags;

    const/4 v6, 0x2

    move-object v1, p0

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Landroid/util/HiLogFormatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLandroid/util/HiLogFormatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4246
    goto/16 :goto_a

    .line 4234
    .end local v0    # "i":I
    :pswitch_7
    sget-object v0, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {p2, v0}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    .line 4235
    .restart local v0    # "i":I
    const/4 v2, 0x0

    int-to-long v3, v0

    sget-object v5, Landroid/util/HiLogFormatter$Flags;->NONE:Landroid/util/HiLogFormatter$Flags;

    const/4 v6, 0x2

    move-object v1, p0

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Landroid/util/HiLogFormatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLandroid/util/HiLogFormatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4236
    goto/16 :goto_a

    .line 4380
    .end local v0    # "i":I
    :pswitch_8
    sget-object v0, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p2, v0}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    .line 4381
    .restart local v0    # "i":I
    sget-object v5, Landroid/util/HiLogFormatter$Flags;->ZERO_PAD:Landroid/util/HiLogFormatter$Flags;

    .line 4382
    .restart local v5    # "flags":Landroid/util/HiLogFormatter$Flags;
    const/4 v2, 0x0

    int-to-long v3, v0

    const/4 v6, 0x3

    move-object v1, p0

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Landroid/util/HiLogFormatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLandroid/util/HiLogFormatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4383
    goto/16 :goto_a

    .line 4372
    .end local v0    # "i":I
    .end local v5    # "flags":Landroid/util/HiLogFormatter$Flags;
    :pswitch_9
    sget-object v0, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-interface {p2, v0}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    .line 4373
    .restart local v0    # "i":I
    if-ne p3, v8, :cond_7

    .line 4374
    sget-object v1, Landroid/util/HiLogFormatter$Flags;->ZERO_PAD:Landroid/util/HiLogFormatter$Flags;

    goto :goto_3

    .line 4375
    :cond_7
    sget-object v1, Landroid/util/HiLogFormatter$Flags;->NONE:Landroid/util/HiLogFormatter$Flags;

    :goto_3
    move-object v6, v1

    .line 4376
    .local v6, "flags":Landroid/util/HiLogFormatter$Flags;
    const/4 v3, 0x0

    int-to-long v4, v0

    const/4 v7, 0x2

    move-object v2, p0

    move-object v8, p4

    invoke-direct/range {v2 .. v8}, Landroid/util/HiLogFormatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLandroid/util/HiLogFormatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4377
    goto/16 :goto_a

    .line 4416
    .end local v0    # "i":I
    .end local v6    # "flags":Landroid/util/HiLogFormatter$Flags;
    :pswitch_a
    const/16 v0, 0x20

    .line 4417
    .local v0, "sep":C
    const/16 v1, 0x61

    invoke-direct {p0, p1, p2, v1, p4}, Landroid/util/HiLogFormatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/time/temporal/TemporalAccessor;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 4418
    const/16 v1, 0x62

    invoke-direct {p0, p1, p2, v1, p4}, Landroid/util/HiLogFormatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/time/temporal/TemporalAccessor;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 4419
    invoke-direct {p0, p1, p2, v8, p4}, Landroid/util/HiLogFormatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/time/temporal/TemporalAccessor;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 4420
    invoke-direct {p0, p1, p2, v2, p4}, Landroid/util/HiLogFormatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/time/temporal/TemporalAccessor;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 4421
    const/16 v1, 0x5a

    invoke-direct {p0, p1, p2, v1, p4}, Landroid/util/HiLogFormatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/time/temporal/TemporalAccessor;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 4422
    invoke-direct {p0, p1, p2, v6, p4}, Landroid/util/HiLogFormatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/time/temporal/TemporalAccessor;CLjava/util/Locale;)Ljava/lang/Appendable;

    .line 4423
    goto/16 :goto_a

    .line 4310
    .end local v0    # "sep":C
    :pswitch_b
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->zone()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/time/temporal/TemporalAccessor;->query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/ZoneId;

    .line 4311
    .local v0, "zid":Ljava/time/ZoneId;
    if-eqz v0, :cond_a

    .line 4314
    instance-of v1, v0, Ljava/time/ZoneOffset;

    if-nez v1, :cond_9

    sget-object v1, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    .line 4315
    invoke-interface {p2, v1}, Ljava/time/temporal/TemporalAccessor;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 4316
    invoke-static {p2}, Ljava/time/Instant;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/Instant;

    move-result-object v1

    .line 4317
    .local v1, "instant":Ljava/time/Instant;
    invoke-virtual {v0}, Ljava/time/ZoneId;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    .line 4318
    invoke-virtual {v0}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/time/zone/ZoneRules;->isDaylightSavings(Ljava/time/Instant;)Z

    move-result v3

    .line 4320
    if-nez p4, :cond_8

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    goto :goto_4

    .line 4318
    :cond_8
    move-object v4, p4

    :goto_4
    invoke-virtual {v2, v3, v5, v4}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 4317
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4321
    goto/16 :goto_a

    .line 4323
    .end local v1    # "instant":Ljava/time/Instant;
    :cond_9
    invoke-virtual {v0}, Ljava/time/ZoneId;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4324
    goto/16 :goto_a

    .line 4312
    :cond_a
    new-instance v1, Ljava/util/IllegalFormatConversionException;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, p3, v2}, Ljava/util/IllegalFormatConversionException;-><init>(CLjava/lang/Class;)V

    throw v1

    .line 4291
    .end local v0    # "zid":Ljava/time/ZoneId;
    :pswitch_c
    sget-object v0, Ljava/time/temporal/ChronoField;->SECOND_OF_MINUTE:Ljava/time/temporal/ChronoField;

    invoke-interface {p2, v0}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    .line 4292
    .local v0, "i":I
    sget-object v5, Landroid/util/HiLogFormatter$Flags;->ZERO_PAD:Landroid/util/HiLogFormatter$Flags;

    .line 4293
    .restart local v5    # "flags":Landroid/util/HiLogFormatter$Flags;
    const/4 v2, 0x0

    int-to-long v3, v0

    const/4 v6, 0x2

    move-object v1, p0

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Landroid/util/HiLogFormatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLandroid/util/HiLogFormatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4294
    goto/16 :goto_a

    .line 4395
    .end local v0    # "i":I
    .end local v5    # "flags":Landroid/util/HiLogFormatter$Flags;
    :pswitch_d
    const/16 v0, 0x3a

    .line 4396
    .local v0, "sep":C
    const/16 v1, 0x48

    invoke-direct {p0, p1, p2, v1, p4}, Landroid/util/HiLogFormatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/time/temporal/TemporalAccessor;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 4397
    invoke-direct {p0, p1, p2, v4, p4}, Landroid/util/HiLogFormatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/time/temporal/TemporalAccessor;CLjava/util/Locale;)Ljava/lang/Appendable;

    .line 4398
    if-ne p3, v2, :cond_12

    .line 4399
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4400
    invoke-direct {p0, p1, p2, v3, p4}, Landroid/util/HiLogFormatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/time/temporal/TemporalAccessor;CLjava/util/Locale;)Ljava/lang/Appendable;

    goto/16 :goto_a

    .line 4267
    .end local v0    # "sep":C
    :pswitch_e
    sget-object v0, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    invoke-interface {p2, v0}, Ljava/time/temporal/TemporalAccessor;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    sget-object v2, Ljava/time/temporal/ChronoField;->MILLI_OF_SECOND:Ljava/time/temporal/ChronoField;

    .line 4268
    invoke-interface {p2, v2}, Ljava/time/temporal/TemporalAccessor;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 4269
    .local v0, "i":J
    sget-object v8, Landroid/util/HiLogFormatter$Flags;->NONE:Landroid/util/HiLogFormatter$Flags;

    .line 4270
    .restart local v8    # "flags":Landroid/util/HiLogFormatter$Flags;
    const/4 v5, 0x0

    iget v9, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->width:I

    move-object v4, p0

    move-wide v6, v0

    move-object v10, p4

    invoke-direct/range {v4 .. v10}, Landroid/util/HiLogFormatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLandroid/util/HiLogFormatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4271
    goto/16 :goto_a

    .line 4255
    .end local v0    # "i":J
    .end local v8    # "flags":Landroid/util/HiLogFormatter$Flags;
    :pswitch_f
    sget-object v0, Ljava/time/temporal/ChronoField;->MILLI_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {p2, v0}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    const v1, 0xf4240

    mul-int/2addr v0, v1

    .line 4256
    .local v0, "i":I
    sget-object v5, Landroid/util/HiLogFormatter$Flags;->ZERO_PAD:Landroid/util/HiLogFormatter$Flags;

    .line 4257
    .restart local v5    # "flags":Landroid/util/HiLogFormatter$Flags;
    const/4 v2, 0x0

    int-to-long v3, v0

    const/16 v6, 0x9

    move-object v1, p0

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Landroid/util/HiLogFormatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLandroid/util/HiLogFormatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4258
    goto/16 :goto_a

    .line 4249
    .end local v0    # "i":I
    .end local v5    # "flags":Landroid/util/HiLogFormatter$Flags;
    :pswitch_10
    sget-object v0, Ljava/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljava/time/temporal/ChronoField;

    invoke-interface {p2, v0}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    .line 4250
    .restart local v0    # "i":I
    sget-object v5, Landroid/util/HiLogFormatter$Flags;->ZERO_PAD:Landroid/util/HiLogFormatter$Flags;

    .line 4251
    .restart local v5    # "flags":Landroid/util/HiLogFormatter$Flags;
    const/4 v2, 0x0

    int-to-long v3, v0

    const/4 v6, 0x2

    move-object v1, p0

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Landroid/util/HiLogFormatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLandroid/util/HiLogFormatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4252
    goto/16 :goto_a

    .line 4261
    .end local v0    # "i":I
    .end local v5    # "flags":Landroid/util/HiLogFormatter$Flags;
    :pswitch_11
    sget-object v0, Ljava/time/temporal/ChronoField;->MILLI_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {p2, v0}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    .line 4262
    .restart local v0    # "i":I
    sget-object v5, Landroid/util/HiLogFormatter$Flags;->ZERO_PAD:Landroid/util/HiLogFormatter$Flags;

    .line 4263
    .restart local v5    # "flags":Landroid/util/HiLogFormatter$Flags;
    const/4 v2, 0x0

    int-to-long v3, v0

    const/4 v6, 0x3

    move-object v1, p0

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Landroid/util/HiLogFormatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLandroid/util/HiLogFormatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4264
    goto/16 :goto_a

    .line 4239
    .end local v0    # "i":I
    .end local v5    # "flags":Landroid/util/HiLogFormatter$Flags;
    :pswitch_12
    sget-object v0, Ljava/time/temporal/ChronoField;->CLOCK_HOUR_OF_AMPM:Ljava/time/temporal/ChronoField;

    invoke-interface {p2, v0}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    .line 4240
    .restart local v0    # "i":I
    const/4 v2, 0x0

    int-to-long v3, v0

    sget-object v5, Landroid/util/HiLogFormatter$Flags;->ZERO_PAD:Landroid/util/HiLogFormatter$Flags;

    const/4 v6, 0x2

    move-object v1, p0

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Landroid/util/HiLogFormatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLandroid/util/HiLogFormatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4241
    goto/16 :goto_a

    .line 4229
    .end local v0    # "i":I
    :pswitch_13
    sget-object v0, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {p2, v0}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    .line 4230
    .restart local v0    # "i":I
    const/4 v2, 0x0

    int-to-long v3, v0

    sget-object v5, Landroid/util/HiLogFormatter$Flags;->ZERO_PAD:Landroid/util/HiLogFormatter$Flags;

    const/4 v6, 0x2

    move-object v1, p0

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Landroid/util/HiLogFormatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLandroid/util/HiLogFormatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4231
    goto/16 :goto_a

    .line 4433
    .end local v0    # "i":I
    :pswitch_14
    const/16 v0, 0x2d

    .line 4434
    .local v0, "sep":C
    invoke-direct {p0, p1, p2, v6, p4}, Landroid/util/HiLogFormatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/time/temporal/TemporalAccessor;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 4435
    invoke-direct {p0, p1, p2, v1, p4}, Landroid/util/HiLogFormatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/time/temporal/TemporalAccessor;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 4436
    invoke-direct {p0, p1, p2, v8, p4}, Landroid/util/HiLogFormatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/time/temporal/TemporalAccessor;CLjava/util/Locale;)Ljava/lang/Appendable;

    .line 4437
    goto/16 :goto_a

    .line 4426
    .end local v0    # "sep":C
    :pswitch_15
    const/16 v2, 0x2f

    .line 4427
    .local v2, "sep":C
    invoke-direct {p0, p1, p2, v1, p4}, Landroid/util/HiLogFormatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/time/temporal/TemporalAccessor;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 4428
    invoke-direct {p0, p1, p2, v8, p4}, Landroid/util/HiLogFormatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/time/temporal/TemporalAccessor;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 4429
    invoke-direct {p0, p1, p2, v0, p4}, Landroid/util/HiLogFormatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/time/temporal/TemporalAccessor;CLjava/util/Locale;)Ljava/lang/Appendable;

    .line 4430
    goto/16 :goto_a

    .line 4353
    .end local v2    # "sep":C
    :pswitch_16
    sget-object v1, Ljava/time/temporal/ChronoField;->YEAR_OF_ERA:Ljava/time/temporal/ChronoField;

    invoke-interface {p2, v1}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v1

    .line 4354
    .local v1, "i":I
    const/4 v2, 0x2

    .line 4355
    .local v2, "size":I
    const/16 v3, 0x43

    if-eq p3, v3, :cond_d

    if-eq p3, v6, :cond_c

    if-eq p3, v0, :cond_b

    .line 4366
    .end local v2    # "size":I
    .local v0, "size":I
    :goto_5
    move v0, v2

    goto :goto_6

    .line 4360
    .end local v0    # "size":I
    .restart local v2    # "size":I
    :cond_b
    rem-int/lit8 v0, v1, 0x64

    move v1, v0

    .line 4361
    goto :goto_5

    .line 4363
    :cond_c
    const/4 v2, 0x4

    goto :goto_5

    .line 4357
    :cond_d
    div-int/lit8 v0, v1, 0x64

    move v1, v0

    .line 4358
    goto :goto_5

    .line 4366
    .end local v2    # "size":I
    .restart local v0    # "size":I
    :goto_6
    sget-object v6, Landroid/util/HiLogFormatter$Flags;->ZERO_PAD:Landroid/util/HiLogFormatter$Flags;

    .line 4367
    .restart local v6    # "flags":Landroid/util/HiLogFormatter$Flags;
    const/4 v3, 0x0

    int-to-long v4, v1

    move-object v2, p0

    move v7, v0

    move-object v8, p4

    invoke-direct/range {v2 .. v8}, Landroid/util/HiLogFormatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLandroid/util/HiLogFormatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4368
    goto :goto_a

    .line 4341
    .end local v0    # "size":I
    .end local v1    # "i":I
    .end local v6    # "flags":Landroid/util/HiLogFormatter$Flags;
    :pswitch_17
    sget-object v0, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p2, v0}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    sub-int/2addr v0, v7

    .line 4342
    .local v0, "i":I
    if-nez p4, :cond_e

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    goto :goto_7

    :cond_e
    move-object v1, p4

    .line 4343
    .local v1, "lt":Ljava/util/Locale;
    :goto_7
    invoke-static {v1}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object v2

    .line 4344
    .local v2, "dfs":Ljava/text/DateFormatSymbols;
    const/16 v3, 0x42

    if-ne p3, v3, :cond_f

    .line 4345
    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getMonths()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    .line 4347
    :cond_f
    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4348
    goto :goto_a

    .line 4329
    .end local v0    # "i":I
    .end local v1    # "lt":Ljava/util/Locale;
    .end local v2    # "dfs":Ljava/text/DateFormatSymbols;
    :pswitch_18
    sget-object v0, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-interface {p2, v0}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    rem-int/lit8 v0, v0, 0x7

    add-int/2addr v0, v7

    .line 4330
    .restart local v0    # "i":I
    if-nez p4, :cond_10

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    goto :goto_8

    :cond_10
    move-object v1, p4

    .line 4331
    .restart local v1    # "lt":Ljava/util/Locale;
    :goto_8
    invoke-static {v1}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object v2

    .line 4332
    .restart local v2    # "dfs":Ljava/text/DateFormatSymbols;
    const/16 v3, 0x41

    if-ne p3, v3, :cond_11

    .line 4333
    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    .line 4335
    :cond_11
    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/time/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4336
    goto :goto_a

    .line 4442
    .end local v0    # "i":I
    .end local v1    # "lt":Ljava/util/Locale;
    .end local v2    # "dfs":Ljava/text/DateFormatSymbols;
    :catch_0
    move-exception v0

    goto :goto_b

    .line 4440
    :goto_9
    nop

    .line 4444
    :cond_12
    :goto_a
    nop

    .line 4445
    return-object p1

    .line 4442
    :goto_b
    nop

    .line 4443
    .local v0, "x":Ljava/time/DateTimeException;
    new-instance v1, Ljava/util/IllegalFormatConversionException;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, p3, v2}, Ljava/util/IllegalFormatConversionException;-><init>(CLjava/lang/Class;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x41
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_0
        :pswitch_14
        :pswitch_0
        :pswitch_13
        :pswitch_12
        :pswitch_0
        :pswitch_0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_16
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_18
        :pswitch_17
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_17
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_16
        :pswitch_1
    .end packed-switch
.end method

.method private print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;
    .locals 18
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "t"    # Ljava/util/Calendar;
    .param p3, "c"    # C
    .param p4, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move/from16 v9, p3

    .line 4007
    move-object/from16 v10, p4

    if-nez p1, :cond_0

    .line 4008
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v1

    .line 4009
    .end local p1    # "sb":Ljava/lang/StringBuilder;
    .local v0, "sb":Ljava/lang/StringBuilder;
    move-object v11, v0

    goto :goto_0

    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .restart local p1    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    move-object/from16 v11, p1

    .end local p1    # "sb":Ljava/lang/StringBuilder;
    .local v11, "sb":Ljava/lang/StringBuilder;
    :goto_0
    const/16 v2, 0x48

    const/16 v3, 0x54

    const/4 v4, 0x2

    const/16 v5, 0x53

    const/16 v6, 0x4d

    const/16 v12, 0x10

    const/16 v13, 0x59

    const/16 v14, 0x49

    const/4 v15, 0x0

    const/4 v0, 0x1

    const/16 v1, 0x64

    packed-switch v9, :pswitch_data_0

    .line 4207
    :pswitch_0
    goto/16 :goto_12

    .line 4072
    :pswitch_1
    const/16 v2, 0xf

    invoke-virtual {v8, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v8, v12}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 4073
    .local v2, "i":I
    if-gez v2, :cond_1

    move v15, v0

    nop

    :cond_1
    move v12, v15

    .line 4074
    .local v12, "neg":Z
    if-eqz v12, :cond_2

    const/16 v0, 0x2d

    goto :goto_1

    :cond_2
    const/16 v0, 0x2b

    :goto_1
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4075
    if-eqz v12, :cond_3

    .line 4076
    neg-int v2, v2

    .line 4077
    .end local v2    # "i":I
    .local v13, "i":I
    :cond_3
    move v13, v2

    const v0, 0xea60

    div-int v14, v13, v0

    .line 4079
    .local v14, "min":I
    div-int/lit8 v0, v14, 0x3c

    mul-int/2addr v0, v1

    rem-int/lit8 v1, v14, 0x3c

    add-int v15, v0, v1

    .line 4080
    .local v15, "offset":I
    sget-object v16, Landroid/util/HiLogFormatter$Flags;->ZERO_PAD:Landroid/util/HiLogFormatter$Flags;

    .line 4082
    .local v16, "flags":Landroid/util/HiLogFormatter$Flags;
    const/4 v1, 0x0

    int-to-long v2, v15

    const/4 v5, 0x4

    move-object v0, v7

    move-object/from16 v4, v16

    move-object v6, v10

    invoke-direct/range {v0 .. v6}, Landroid/util/HiLogFormatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLandroid/util/HiLogFormatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4083
    goto/16 :goto_12

    .line 4060
    .end local v12    # "neg":Z
    .end local v13    # "i":I
    .end local v14    # "min":I
    .end local v15    # "offset":I
    .end local v16    # "flags":Landroid/util/HiLogFormatter$Flags;
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v12, v0, v2

    .line 4061
    .local v12, "i":J
    sget-object v14, Landroid/util/HiLogFormatter$Flags;->NONE:Landroid/util/HiLogFormatter$Flags;

    .line 4062
    .local v14, "flags":Landroid/util/HiLogFormatter$Flags;
    const/4 v1, 0x0

    iget v5, v7, Landroid/util/HiLogFormatter$FormatSpecifier;->width:I

    move-object v0, v7

    move-wide v2, v12

    move-object v4, v14

    move-object v6, v10

    invoke-direct/range {v0 .. v6}, Landroid/util/HiLogFormatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLandroid/util/HiLogFormatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4063
    goto/16 :goto_12

    .line 4172
    .end local v12    # "i":J
    .end local v14    # "flags":Landroid/util/HiLogFormatter$Flags;
    :pswitch_3
    const/16 v0, 0x3a

    .line 4173
    .local v0, "sep":C
    invoke-direct {v7, v11, v8, v14, v10}, Landroid/util/HiLogFormatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 4174
    invoke-direct {v7, v11, v8, v6, v10}, Landroid/util/HiLogFormatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 4175
    invoke-direct {v7, v11, v8, v5, v10}, Landroid/util/HiLogFormatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v1

    const/16 v2, 0x20

    invoke-interface {v1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 4177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4178
    .local v1, "tsb":Ljava/lang/StringBuilder;
    const/16 v2, 0x70

    invoke-direct {v7, v1, v8, v2, v10}, Landroid/util/HiLogFormatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    .line 4179
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v10, :cond_4

    move-object v3, v10

    goto :goto_2

    :cond_4
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    :goto_2
    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4180
    goto/16 :goto_12

    .line 4050
    .end local v0    # "sep":C
    .end local v1    # "tsb":Ljava/lang/StringBuilder;
    :pswitch_4
    const-string v0, "AM"

    const-string v1, "PM"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 4051
    .local v0, "ampm":[Ljava/lang/String;
    if-eqz v10, :cond_5

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    if-eq v10, v1, :cond_5

    .line 4052
    invoke-static/range {p4 .. p4}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object v1

    .line 4053
    .local v1, "dfs":Ljava/text/DateFormatSymbols;
    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v0

    .line 4055
    .end local v1    # "dfs":Ljava/text/DateFormatSymbols;
    :cond_5
    const/16 v1, 0x9

    invoke-virtual {v8, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    aget-object v1, v0, v1

    .line 4056
    .local v1, "s":Ljava/lang/String;
    if-eqz v10, :cond_6

    move-object v2, v10

    goto :goto_3

    :cond_6
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    :goto_3
    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4057
    goto/16 :goto_12

    .line 4153
    .end local v0    # "ampm":[Ljava/lang/String;
    .end local v1    # "s":Ljava/lang/String;
    :pswitch_5
    invoke-virtual {v8, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v12, v1, 0x1

    .line 4154
    .local v12, "i":I
    sget-object v13, Landroid/util/HiLogFormatter$Flags;->ZERO_PAD:Landroid/util/HiLogFormatter$Flags;

    .line 4155
    .local v13, "flags":Landroid/util/HiLogFormatter$Flags;
    const/4 v1, 0x0

    int-to-long v2, v12

    const/4 v5, 0x2

    move-object v0, v7

    move-object v4, v13

    move-object v6, v10

    invoke-direct/range {v0 .. v6}, Landroid/util/HiLogFormatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLandroid/util/HiLogFormatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4156
    goto/16 :goto_12

    .line 4147
    .end local v12    # "i":I
    .end local v13    # "flags":Landroid/util/HiLogFormatter$Flags;
    :pswitch_6
    const/4 v0, 0x6

    invoke-virtual {v8, v0}, Ljava/util/Calendar;->get(I)I

    move-result v12

    .line 4148
    .restart local v12    # "i":I
    sget-object v13, Landroid/util/HiLogFormatter$Flags;->ZERO_PAD:Landroid/util/HiLogFormatter$Flags;

    .line 4149
    .restart local v13    # "flags":Landroid/util/HiLogFormatter$Flags;
    const/4 v1, 0x0

    int-to-long v2, v12

    const/4 v5, 0x3

    move-object v0, v7

    move-object v4, v13

    move-object v6, v10

    invoke-direct/range {v0 .. v6}, Landroid/util/HiLogFormatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLandroid/util/HiLogFormatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4150
    goto/16 :goto_12

    .line 4139
    .end local v12    # "i":I
    .end local v13    # "flags":Landroid/util/HiLogFormatter$Flags;
    :pswitch_7
    const/4 v0, 0x5

    invoke-virtual {v8, v0}, Ljava/util/Calendar;->get(I)I

    move-result v12

    .line 4140
    .restart local v12    # "i":I
    if-ne v9, v1, :cond_7

    .line 4141
    sget-object v0, Landroid/util/HiLogFormatter$Flags;->ZERO_PAD:Landroid/util/HiLogFormatter$Flags;

    .line 4142
    :goto_4
    move-object v4, v0

    goto :goto_5

    :cond_7
    sget-object v0, Landroid/util/HiLogFormatter$Flags;->NONE:Landroid/util/HiLogFormatter$Flags;

    goto :goto_4

    .line 4143
    .local v4, "flags":Landroid/util/HiLogFormatter$Flags;
    :goto_5
    const/4 v1, 0x0

    int-to-long v2, v12

    const/4 v5, 0x2

    move-object v0, v7

    move-object v6, v10

    invoke-direct/range {v0 .. v6}, Landroid/util/HiLogFormatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLandroid/util/HiLogFormatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4144
    goto/16 :goto_12

    .line 4183
    .end local v4    # "flags":Landroid/util/HiLogFormatter$Flags;
    .end local v12    # "i":I
    :pswitch_8
    const/16 v0, 0x20

    .line 4184
    .local v0, "sep":C
    const/16 v2, 0x61

    invoke-direct {v7, v11, v8, v2, v10}, Landroid/util/HiLogFormatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 4185
    const/16 v2, 0x62

    invoke-direct {v7, v11, v8, v2, v10}, Landroid/util/HiLogFormatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 4186
    invoke-direct {v7, v11, v8, v1, v10}, Landroid/util/HiLogFormatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 4187
    invoke-direct {v7, v11, v8, v3, v10}, Landroid/util/HiLogFormatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 4188
    const/16 v1, 0x5a

    invoke-direct {v7, v11, v8, v1, v10}, Landroid/util/HiLogFormatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 4189
    invoke-direct {v7, v11, v8, v13, v10}, Landroid/util/HiLogFormatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    .line 4190
    goto/16 :goto_12

    .line 4086
    .end local v0    # "sep":C
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    .line 4087
    .local v1, "tz":Ljava/util/TimeZone;
    invoke-virtual {v8, v12}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_6

    :cond_8
    move v0, v15

    .line 4089
    :goto_6
    if-nez v10, :cond_9

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    goto :goto_7

    .line 4087
    :cond_9
    move-object v2, v10

    :goto_7
    invoke-virtual {v1, v0, v15, v2}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4090
    goto/16 :goto_12

    .line 4066
    .end local v1    # "tz":Ljava/util/TimeZone;
    :pswitch_a
    const/16 v0, 0xd

    invoke-virtual {v8, v0}, Ljava/util/Calendar;->get(I)I

    move-result v12

    .line 4067
    .restart local v12    # "i":I
    sget-object v13, Landroid/util/HiLogFormatter$Flags;->ZERO_PAD:Landroid/util/HiLogFormatter$Flags;

    .line 4068
    .restart local v13    # "flags":Landroid/util/HiLogFormatter$Flags;
    const/4 v1, 0x0

    int-to-long v2, v12

    const/4 v5, 0x2

    move-object v0, v7

    move-object v4, v13

    move-object v6, v10

    invoke-direct/range {v0 .. v6}, Landroid/util/HiLogFormatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLandroid/util/HiLogFormatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4069
    goto/16 :goto_12

    .line 4162
    .end local v12    # "i":I
    .end local v13    # "flags":Landroid/util/HiLogFormatter$Flags;
    :pswitch_b
    const/16 v0, 0x3a

    .line 4163
    .restart local v0    # "sep":C
    invoke-direct {v7, v11, v8, v2, v10}, Landroid/util/HiLogFormatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 4164
    invoke-direct {v7, v11, v8, v6, v10}, Landroid/util/HiLogFormatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    .line 4165
    if-ne v9, v3, :cond_17

    .line 4166
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4167
    invoke-direct {v7, v11, v8, v5, v10}, Landroid/util/HiLogFormatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    goto/16 :goto_12

    .line 4043
    .end local v0    # "sep":C
    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    .line 4044
    .local v12, "i":J
    sget-object v14, Landroid/util/HiLogFormatter$Flags;->NONE:Landroid/util/HiLogFormatter$Flags;

    .line 4045
    .restart local v14    # "flags":Landroid/util/HiLogFormatter$Flags;
    const/4 v1, 0x0

    iget v5, v7, Landroid/util/HiLogFormatter$FormatSpecifier;->width:I

    move-object v0, v7

    move-wide v2, v12

    move-object v4, v14

    move-object v6, v10

    invoke-direct/range {v0 .. v6}, Landroid/util/HiLogFormatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLandroid/util/HiLogFormatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4046
    goto/16 :goto_12

    .line 4031
    .end local v12    # "i":J
    .end local v14    # "flags":Landroid/util/HiLogFormatter$Flags;
    :pswitch_d
    const/16 v0, 0xe

    invoke-virtual {v8, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const v1, 0xf4240

    mul-int v12, v0, v1

    .line 4032
    .local v12, "i":I
    sget-object v13, Landroid/util/HiLogFormatter$Flags;->ZERO_PAD:Landroid/util/HiLogFormatter$Flags;

    .line 4033
    .restart local v13    # "flags":Landroid/util/HiLogFormatter$Flags;
    const/4 v1, 0x0

    int-to-long v2, v12

    const/16 v5, 0x9

    move-object v0, v7

    move-object v4, v13

    move-object v6, v10

    invoke-direct/range {v0 .. v6}, Landroid/util/HiLogFormatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLandroid/util/HiLogFormatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4034
    goto/16 :goto_12

    .line 4025
    .end local v12    # "i":I
    .end local v13    # "flags":Landroid/util/HiLogFormatter$Flags;
    :pswitch_e
    const/16 v0, 0xc

    invoke-virtual {v8, v0}, Ljava/util/Calendar;->get(I)I

    move-result v12

    .line 4026
    .restart local v12    # "i":I
    sget-object v13, Landroid/util/HiLogFormatter$Flags;->ZERO_PAD:Landroid/util/HiLogFormatter$Flags;

    .line 4027
    .restart local v13    # "flags":Landroid/util/HiLogFormatter$Flags;
    const/4 v1, 0x0

    int-to-long v2, v12

    const/4 v5, 0x2

    move-object v0, v7

    move-object v4, v13

    move-object v6, v10

    invoke-direct/range {v0 .. v6}, Landroid/util/HiLogFormatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLandroid/util/HiLogFormatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4028
    goto/16 :goto_12

    .line 4037
    .end local v12    # "i":I
    .end local v13    # "flags":Landroid/util/HiLogFormatter$Flags;
    :pswitch_f
    const/16 v0, 0xe

    invoke-virtual {v8, v0}, Ljava/util/Calendar;->get(I)I

    move-result v12

    .line 4038
    .restart local v12    # "i":I
    sget-object v13, Landroid/util/HiLogFormatter$Flags;->ZERO_PAD:Landroid/util/HiLogFormatter$Flags;

    .line 4039
    .restart local v13    # "flags":Landroid/util/HiLogFormatter$Flags;
    const/4 v1, 0x0

    int-to-long v2, v12

    const/4 v5, 0x3

    move-object v0, v7

    move-object v4, v13

    move-object v6, v10

    invoke-direct/range {v0 .. v6}, Landroid/util/HiLogFormatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLandroid/util/HiLogFormatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4040
    goto/16 :goto_12

    .line 4014
    .end local v12    # "i":I
    .end local v13    # "flags":Landroid/util/HiLogFormatter$Flags;
    :pswitch_10
    const/16 v0, 0xb

    invoke-virtual {v8, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 4015
    .local v0, "i":I
    if-eq v9, v14, :cond_b

    const/16 v1, 0x6c

    if-ne v9, v1, :cond_a

    goto :goto_9

    .line 4018
    .end local v0    # "i":I
    .restart local v12    # "i":I
    :cond_a
    :goto_8
    move v12, v0

    goto :goto_b

    .line 4016
    .end local v12    # "i":I
    .restart local v0    # "i":I
    :cond_b
    :goto_9
    if-eqz v0, :cond_d

    const/16 v1, 0xc

    if-ne v0, v1, :cond_c

    goto :goto_a

    :cond_c
    rem-int/lit8 v1, v0, 0xc

    goto :goto_a

    :cond_d
    const/16 v1, 0xc

    :goto_a
    move v0, v1

    goto :goto_8

    .line 4018
    .end local v0    # "i":I
    .restart local v12    # "i":I
    :goto_b
    if-eq v9, v2, :cond_f

    if-ne v9, v14, :cond_e

    goto :goto_c

    .line 4020
    :cond_e
    sget-object v0, Landroid/util/HiLogFormatter$Flags;->NONE:Landroid/util/HiLogFormatter$Flags;

    goto :goto_d

    .line 4019
    :cond_f
    :goto_c
    sget-object v0, Landroid/util/HiLogFormatter$Flags;->ZERO_PAD:Landroid/util/HiLogFormatter$Flags;

    .line 4020
    :goto_d
    move-object v4, v0

    .line 4021
    .restart local v4    # "flags":Landroid/util/HiLogFormatter$Flags;
    const/4 v1, 0x0

    int-to-long v2, v12

    const/4 v5, 0x2

    move-object v0, v7

    move-object v6, v10

    invoke-direct/range {v0 .. v6}, Landroid/util/HiLogFormatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLandroid/util/HiLogFormatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4022
    goto/16 :goto_12

    .line 4200
    .end local v4    # "flags":Landroid/util/HiLogFormatter$Flags;
    .end local v12    # "i":I
    :pswitch_11
    const/16 v0, 0x2d

    .line 4201
    .local v0, "sep":C
    invoke-direct {v7, v11, v8, v13, v10}, Landroid/util/HiLogFormatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 4202
    const/16 v2, 0x6d

    invoke-direct {v7, v11, v8, v2, v10}, Landroid/util/HiLogFormatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 4203
    invoke-direct {v7, v11, v8, v1, v10}, Landroid/util/HiLogFormatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    .line 4204
    goto/16 :goto_12

    .line 4193
    .end local v0    # "sep":C
    :pswitch_12
    const/16 v2, 0x6d

    const/16 v0, 0x2f

    .line 4194
    .restart local v0    # "sep":C
    invoke-direct {v7, v11, v8, v2, v10}, Landroid/util/HiLogFormatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 4195
    invoke-direct {v7, v11, v8, v1, v10}, Landroid/util/HiLogFormatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 4196
    const/16 v1, 0x79

    invoke-direct {v7, v11, v8, v1, v10}, Landroid/util/HiLogFormatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    .line 4197
    goto/16 :goto_12

    .line 4120
    .end local v0    # "sep":C
    :pswitch_13
    invoke-virtual {v8, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 4121
    .local v0, "i":I
    const/4 v1, 0x2

    .line 4122
    .local v1, "size":I
    const/16 v2, 0x43

    if-eq v9, v2, :cond_12

    if-eq v9, v13, :cond_11

    const/16 v2, 0x79

    if-eq v9, v2, :cond_10

    .line 4133
    .end local v0    # "i":I
    .end local v1    # "size":I
    .restart local v12    # "i":I
    .local v13, "size":I
    :goto_e
    move v12, v0

    move v13, v1

    goto :goto_f

    .line 4127
    .end local v12    # "i":I
    .end local v13    # "size":I
    .restart local v0    # "i":I
    .restart local v1    # "size":I
    :cond_10
    rem-int/lit8 v0, v0, 0x64

    .line 4128
    goto :goto_e

    .line 4130
    :cond_11
    const/4 v1, 0x4

    goto :goto_e

    .line 4124
    :cond_12
    div-int/lit8 v0, v0, 0x64

    .line 4125
    goto :goto_e

    .line 4133
    .end local v0    # "i":I
    .end local v1    # "size":I
    .restart local v12    # "i":I
    .restart local v13    # "size":I
    :goto_f
    sget-object v14, Landroid/util/HiLogFormatter$Flags;->ZERO_PAD:Landroid/util/HiLogFormatter$Flags;

    .line 4134
    .restart local v14    # "flags":Landroid/util/HiLogFormatter$Flags;
    const/4 v1, 0x0

    int-to-long v2, v12

    move-object v0, v7

    move-object v4, v14

    move v5, v13

    move-object v6, v10

    invoke-direct/range {v0 .. v6}, Landroid/util/HiLogFormatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;JLandroid/util/HiLogFormatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4135
    goto :goto_12

    .line 4108
    .end local v12    # "i":I
    .end local v13    # "size":I
    .end local v14    # "flags":Landroid/util/HiLogFormatter$Flags;
    :pswitch_14
    invoke-virtual {v8, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 4109
    .restart local v0    # "i":I
    if-nez v10, :cond_13

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    goto :goto_10

    :cond_13
    move-object v1, v10

    .line 4110
    .local v1, "lt":Ljava/util/Locale;
    :goto_10
    invoke-static {v1}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object v2

    .line 4111
    .local v2, "dfs":Ljava/text/DateFormatSymbols;
    const/16 v3, 0x42

    if-ne v9, v3, :cond_14

    .line 4112
    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getMonths()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_12

    .line 4114
    :cond_14
    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4115
    goto :goto_12

    .line 4096
    .end local v0    # "i":I
    .end local v1    # "lt":Ljava/util/Locale;
    .end local v2    # "dfs":Ljava/text/DateFormatSymbols;
    :pswitch_15
    const/4 v0, 0x7

    invoke-virtual {v8, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 4097
    .restart local v0    # "i":I
    if-nez v10, :cond_15

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    goto :goto_11

    :cond_15
    move-object v1, v10

    .line 4098
    .restart local v1    # "lt":Ljava/util/Locale;
    :goto_11
    invoke-static {v1}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object v2

    .line 4099
    .restart local v2    # "dfs":Ljava/text/DateFormatSymbols;
    const/16 v3, 0x41

    if-ne v9, v3, :cond_16

    .line 4100
    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_12

    .line 4102
    :cond_16
    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4103
    nop

    .line 4209
    .end local v0    # "i":I
    .end local v1    # "lt":Ljava/util/Locale;
    .end local v2    # "dfs":Ljava/text/DateFormatSymbols;
    :cond_17
    :goto_12
    return-object v11

    nop

    :pswitch_data_0
    .packed-switch 0x41
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_0
        :pswitch_11
        :pswitch_0
        :pswitch_10
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_13
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_15
        :pswitch_14
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_14
        :pswitch_0
        :pswitch_6
        :pswitch_10
        :pswitch_10
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_13
        :pswitch_1
    .end packed-switch
.end method

.method private print(BLjava/util/Locale;)V
    .locals 4
    .param p1, "value"    # B
    .param p2, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3202
    int-to-long v0, p1

    .line 3203
    .local v0, "v":J
    if-gez p1, :cond_1

    iget-char v2, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->c:C

    const/16 v3, 0x6f

    if-eq v2, v3, :cond_0

    iget-char v2, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->c:C

    const/16 v3, 0x78

    if-ne v2, v3, :cond_1

    .line 3206
    :cond_0
    const-wide/16 v2, 0x100

    add-long/2addr v0, v2

    .line 3207
    nop

    .line 3209
    :cond_1
    invoke-direct {p0, v0, v1, p2}, Landroid/util/HiLogFormatter$FormatSpecifier;->print(JLjava/util/Locale;)V

    .line 3210
    return-void
.end method

.method private print(DLjava/util/Locale;)V
    .locals 16
    .param p1, "value"    # D
    .param p3, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v9, p0

    .line 3375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v10, v0

    .line 3376
    .local v10, "sb":Ljava/lang/StringBuilder;
    const-wide/16 v0, 0x0

    move-wide/from16 v11, p1

    invoke-static {v11, v12, v0, v1}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v13, v0

    .line 3378
    .local v13, "neg":Z
    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3379
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    .line 3382
    .local v14, "v":D
    invoke-direct {v9, v10, v13}, Landroid/util/HiLogFormatter$FormatSpecifier;->leadingSign(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;

    .line 3385
    invoke-static {v14, v15}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3386
    iget-object v5, v9, Landroid/util/HiLogFormatter$FormatSpecifier;->f:Landroid/util/HiLogFormatter$Flags;

    iget-char v6, v9, Landroid/util/HiLogFormatter$FormatSpecifier;->c:C

    iget v7, v9, Landroid/util/HiLogFormatter$FormatSpecifier;->precision:I

    move-object v0, v9

    move-object v1, v10

    move-wide v2, v14

    move-object/from16 v4, p3

    move v8, v13

    invoke-direct/range {v0 .. v8}, Landroid/util/HiLogFormatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;DLjava/util/Locale;Landroid/util/HiLogFormatter$Flags;CIZ)V

    goto :goto_2

    .line 3388
    :cond_1
    iget-object v0, v9, Landroid/util/HiLogFormatter$FormatSpecifier;->f:Landroid/util/HiLogFormatter$Flags;

    sget-object v1, Landroid/util/HiLogFormatter$Flags;->UPPERCASE:Landroid/util/HiLogFormatter$Flags;

    invoke-virtual {v0, v1}, Landroid/util/HiLogFormatter$Flags;->contains(Landroid/util/HiLogFormatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3389
    const-string v0, "INFINITY"

    goto :goto_1

    :cond_2
    const-string v0, "Infinity"

    .line 3388
    :goto_1
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3392
    :goto_2
    invoke-direct {v9, v10, v13}, Landroid/util/HiLogFormatter$FormatSpecifier;->trailingSign(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;

    .line 3393
    .end local v14    # "v":D
    goto :goto_4

    .line 3394
    :cond_3
    iget-object v0, v9, Landroid/util/HiLogFormatter$FormatSpecifier;->f:Landroid/util/HiLogFormatter$Flags;

    sget-object v1, Landroid/util/HiLogFormatter$Flags;->UPPERCASE:Landroid/util/HiLogFormatter$Flags;

    invoke-virtual {v0, v1}, Landroid/util/HiLogFormatter$Flags;->contains(Landroid/util/HiLogFormatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "NAN"

    goto :goto_3

    :cond_4
    const-string v0, "NaN"

    :goto_3
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3398
    :goto_4
    iget-object v0, v9, Landroid/util/HiLogFormatter$FormatSpecifier;->this$0:Landroid/util/HiLogFormatter;

    invoke-static {v0}, Landroid/util/HiLogFormatter;->access$000(Landroid/util/HiLogFormatter;)Ljava/lang/Appendable;

    move-result-object v0

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, v1}, Landroid/util/HiLogFormatter$FormatSpecifier;->justify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 3399
    return-void
.end method

.method private print(FLjava/util/Locale;)V
    .locals 2
    .param p1, "value"    # F
    .param p2, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3371
    float-to-double v0, p1

    invoke-direct {p0, v0, v1, p2}, Landroid/util/HiLogFormatter$FormatSpecifier;->print(DLjava/util/Locale;)V

    .line 3372
    return-void
.end method

.method private print(ILjava/util/Locale;)V
    .locals 4
    .param p1, "value"    # I
    .param p2, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3224
    int-to-long v0, p1

    .line 3225
    .local v0, "v":J
    if-gez p1, :cond_1

    iget-char v2, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->c:C

    const/16 v3, 0x6f

    if-eq v2, v3, :cond_0

    iget-char v2, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->c:C

    const/16 v3, 0x78

    if-ne v2, v3, :cond_1

    .line 3228
    :cond_0
    const-wide v2, 0x100000000L

    add-long/2addr v0, v2

    .line 3229
    nop

    .line 3231
    :cond_1
    invoke-direct {p0, v0, v1, p2}, Landroid/util/HiLogFormatter$FormatSpecifier;->print(JLjava/util/Locale;)V

    .line 3232
    return-void
.end method

.method private print(JLjava/util/Locale;)V
    .locals 8
    .param p1, "value"    # J
    .param p3, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3238
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-char v1, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->c:C

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x64

    if-ne v1, v4, :cond_2

    .line 3239
    const-wide/16 v4, 0x0

    cmp-long v1, p1, v4

    if-gez v1, :cond_0

    move v2, v3

    nop

    :cond_0
    move v7, v2

    .line 3241
    .local v7, "neg":Z
    cmp-long v1, p1, v4

    const/16 v2, 0xa

    if-gez v1, :cond_1

    .line 3242
    invoke-static {p1, p2, v2}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 3244
    .local v3, "va":[C
    :goto_0
    move-object v3, v1

    goto :goto_1

    .end local v3    # "va":[C
    :cond_1
    invoke-static {p1, p2, v2}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    goto :goto_0

    .line 3247
    .restart local v3    # "va":[C
    :goto_1
    invoke-direct {p0, v0, v7}, Landroid/util/HiLogFormatter$FormatSpecifier;->leadingSign(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;

    .line 3250
    iget-object v4, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->f:Landroid/util/HiLogFormatter$Flags;

    iget v1, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->width:I

    iget-object v2, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->f:Landroid/util/HiLogFormatter$Flags;

    invoke-direct {p0, v1, v2, v7}, Landroid/util/HiLogFormatter$FormatSpecifier;->adjustWidth(ILandroid/util/HiLogFormatter$Flags;Z)I

    move-result v5

    move-object v1, p0

    move-object v2, v0

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Landroid/util/HiLogFormatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;[CLandroid/util/HiLogFormatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    .line 3253
    invoke-direct {p0, v0, v7}, Landroid/util/HiLogFormatter$FormatSpecifier;->trailingSign(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;

    .line 3254
    .end local v3    # "va":[C
    .end local v7    # "neg":Z
    goto/16 :goto_7

    :cond_2
    iget-char v1, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->c:C

    const/16 v4, 0x6f

    const/4 v5, 0x3

    const/16 v6, 0x30

    const/4 v7, 0x2

    if-ne v1, v4, :cond_6

    .line 3255
    new-array v1, v5, [Landroid/util/HiLogFormatter$Flags;

    sget-object v4, Landroid/util/HiLogFormatter$Flags;->PARENTHESES:Landroid/util/HiLogFormatter$Flags;

    aput-object v4, v1, v2

    sget-object v4, Landroid/util/HiLogFormatter$Flags;->LEADING_SPACE:Landroid/util/HiLogFormatter$Flags;

    aput-object v4, v1, v3

    sget-object v4, Landroid/util/HiLogFormatter$Flags;->PLUS:Landroid/util/HiLogFormatter$Flags;

    aput-object v4, v1, v7

    invoke-direct {p0, v1}, Landroid/util/HiLogFormatter$FormatSpecifier;->checkBadFlags([Landroid/util/HiLogFormatter$Flags;)V

    .line 3257
    invoke-static {p1, p2}, Ljava/lang/Long;->toOctalString(J)Ljava/lang/String;

    move-result-object v1

    .line 3258
    .local v1, "s":Ljava/lang/String;
    iget-object v4, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->f:Landroid/util/HiLogFormatter$Flags;

    sget-object v5, Landroid/util/HiLogFormatter$Flags;->ALTERNATE:Landroid/util/HiLogFormatter$Flags;

    invoke-virtual {v4, v5}, Landroid/util/HiLogFormatter$Flags;->contains(Landroid/util/HiLogFormatter$Flags;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3259
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v3

    goto :goto_2

    .line 3260
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    :goto_2
    move v3, v4

    .line 3263
    .local v3, "len":I
    iget-object v4, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->f:Landroid/util/HiLogFormatter$Flags;

    sget-object v5, Landroid/util/HiLogFormatter$Flags;->ALTERNATE:Landroid/util/HiLogFormatter$Flags;

    invoke-virtual {v4, v5}, Landroid/util/HiLogFormatter$Flags;->contains(Landroid/util/HiLogFormatter$Flags;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3264
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3265
    :cond_4
    iget-object v4, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->f:Landroid/util/HiLogFormatter$Flags;

    sget-object v5, Landroid/util/HiLogFormatter$Flags;->ZERO_PAD:Landroid/util/HiLogFormatter$Flags;

    invoke-virtual {v4, v5}, Landroid/util/HiLogFormatter$Flags;->contains(Landroid/util/HiLogFormatter$Flags;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 3266
    nop

    .local v2, "i":I
    :goto_3
    iget v4, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->width:I

    sub-int/2addr v4, v3

    if-ge v2, v4, :cond_5

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 3267
    .end local v2    # "i":I
    :cond_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3268
    .end local v1    # "s":Ljava/lang/String;
    .end local v3    # "len":I
    goto/16 :goto_7

    :cond_6
    iget-char v1, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->c:C

    const/16 v4, 0x78

    if-ne v1, v4, :cond_c

    .line 3269
    new-array v1, v5, [Landroid/util/HiLogFormatter$Flags;

    sget-object v4, Landroid/util/HiLogFormatter$Flags;->PARENTHESES:Landroid/util/HiLogFormatter$Flags;

    aput-object v4, v1, v2

    sget-object v4, Landroid/util/HiLogFormatter$Flags;->LEADING_SPACE:Landroid/util/HiLogFormatter$Flags;

    aput-object v4, v1, v3

    sget-object v3, Landroid/util/HiLogFormatter$Flags;->PLUS:Landroid/util/HiLogFormatter$Flags;

    aput-object v3, v1, v7

    invoke-direct {p0, v1}, Landroid/util/HiLogFormatter$FormatSpecifier;->checkBadFlags([Landroid/util/HiLogFormatter$Flags;)V

    .line 3271
    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    .line 3272
    .restart local v1    # "s":Ljava/lang/String;
    iget-object v3, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->f:Landroid/util/HiLogFormatter$Flags;

    sget-object v4, Landroid/util/HiLogFormatter$Flags;->ALTERNATE:Landroid/util/HiLogFormatter$Flags;

    invoke-virtual {v3, v4}, Landroid/util/HiLogFormatter$Flags;->contains(Landroid/util/HiLogFormatter$Flags;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 3273
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v7

    goto :goto_4

    .line 3274
    :cond_7
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    .line 3277
    .restart local v3    # "len":I
    :goto_4
    iget-object v4, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->f:Landroid/util/HiLogFormatter$Flags;

    sget-object v5, Landroid/util/HiLogFormatter$Flags;->ALTERNATE:Landroid/util/HiLogFormatter$Flags;

    invoke-virtual {v4, v5}, Landroid/util/HiLogFormatter$Flags;->contains(Landroid/util/HiLogFormatter$Flags;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 3278
    iget-object v4, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->f:Landroid/util/HiLogFormatter$Flags;

    sget-object v5, Landroid/util/HiLogFormatter$Flags;->UPPERCASE:Landroid/util/HiLogFormatter$Flags;

    invoke-virtual {v4, v5}, Landroid/util/HiLogFormatter$Flags;->contains(Landroid/util/HiLogFormatter$Flags;)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v4, "0X"

    goto :goto_5

    :cond_8
    const-string v4, "0x"

    :goto_5
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3279
    :cond_9
    iget-object v4, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->f:Landroid/util/HiLogFormatter$Flags;

    sget-object v5, Landroid/util/HiLogFormatter$Flags;->ZERO_PAD:Landroid/util/HiLogFormatter$Flags;

    invoke-virtual {v4, v5}, Landroid/util/HiLogFormatter$Flags;->contains(Landroid/util/HiLogFormatter$Flags;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 3280
    nop

    .restart local v2    # "i":I
    :goto_6
    iget v4, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->width:I

    sub-int/2addr v4, v3

    if-ge v2, v4, :cond_a

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 3281
    .end local v2    # "i":I
    :cond_a
    iget-object v2, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->f:Landroid/util/HiLogFormatter$Flags;

    sget-object v4, Landroid/util/HiLogFormatter$Flags;->UPPERCASE:Landroid/util/HiLogFormatter$Flags;

    invoke-virtual {v2, v4}, Landroid/util/HiLogFormatter$Flags;->contains(Landroid/util/HiLogFormatter$Flags;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 3282
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 3283
    :cond_b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3287
    .end local v1    # "s":Ljava/lang/String;
    .end local v3    # "len":I
    :cond_c
    :goto_7
    iget-object v1, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->this$0:Landroid/util/HiLogFormatter;

    invoke-static {v1}, Landroid/util/HiLogFormatter;->access$000(Landroid/util/HiLogFormatter;)Ljava/lang/Appendable;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/util/HiLogFormatter$FormatSpecifier;->justify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 3288
    return-void
.end method

.method private print(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3054
    iget v0, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->precision:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->precision:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3055
    const/4 v0, 0x0

    iget v1, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->precision:I

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 3056
    :cond_0
    iget-object v0, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->f:Landroid/util/HiLogFormatter$Flags;

    sget-object v1, Landroid/util/HiLogFormatter$Flags;->UPPERCASE:Landroid/util/HiLogFormatter$Flags;

    invoke-virtual {v0, v1}, Landroid/util/HiLogFormatter$Flags;->contains(Landroid/util/HiLogFormatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3059
    iget-object v0, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->this$0:Landroid/util/HiLogFormatter;

    invoke-static {v0}, Landroid/util/HiLogFormatter;->access$200(Landroid/util/HiLogFormatter;)Ljava/util/Locale;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->this$0:Landroid/util/HiLogFormatter;

    invoke-static {v0}, Landroid/util/HiLogFormatter;->access$200(Landroid/util/HiLogFormatter;)Ljava/util/Locale;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 3061
    :cond_2
    iget-object v0, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->this$0:Landroid/util/HiLogFormatter;

    invoke-static {v0}, Landroid/util/HiLogFormatter;->access$000(Landroid/util/HiLogFormatter;)Ljava/lang/Appendable;

    move-result-object v0

    invoke-direct {p0, p1}, Landroid/util/HiLogFormatter$FormatSpecifier;->justify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 3062
    return-void
.end method

.method private print(Ljava/lang/StringBuilder;DLjava/util/Locale;Landroid/util/HiLogFormatter$Flags;CIZ)V
    .locals 25
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "value"    # D
    .param p4, "l"    # Ljava/util/Locale;
    .param p5, "f"    # Landroid/util/HiLogFormatter$Flags;
    .param p6, "c"    # C
    .param p7, "precision"    # I
    .param p8, "neg"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-wide/from16 v8, p2

    move-object/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    .line 3406
    move/from16 v13, p8

    const-wide/16 v0, 0x0

    const/4 v2, 0x6

    const/16 v14, 0x65

    const/4 v3, -0x1

    const/4 v5, 0x1

    if-ne v11, v14, :cond_6

    .line 3409
    if-ne v12, v3, :cond_0

    goto :goto_0

    :cond_0
    move v2, v12

    :goto_0
    move v14, v2

    .line 3411
    .local v14, "prec":I
    sget-object v2, Lsun/misc/FormattedFloatingDecimal$Form;->SCIENTIFIC:Lsun/misc/FormattedFloatingDecimal$Form;

    .line 3412
    invoke-static {v8, v9, v14, v2}, Lsun/misc/FormattedFloatingDecimal;->valueOf(DILsun/misc/FormattedFloatingDecimal$Form;)Lsun/misc/FormattedFloatingDecimal;

    move-result-object v4

    .line 3415
    .local v4, "fd":Lsun/misc/FormattedFloatingDecimal;
    invoke-virtual {v4}, Lsun/misc/FormattedFloatingDecimal;->getMantissa()[C

    move-result-object v2

    invoke-direct {v6, v2, v14}, Landroid/util/HiLogFormatter$FormatSpecifier;->addZeros([CI)[C

    move-result-object v2

    .line 3419
    .local v2, "mant":[C
    sget-object v15, Landroid/util/HiLogFormatter$Flags;->ALTERNATE:Landroid/util/HiLogFormatter$Flags;

    invoke-virtual {v10, v15}, Landroid/util/HiLogFormatter$Flags;->contains(Landroid/util/HiLogFormatter$Flags;)Z

    move-result v15

    if-eqz v15, :cond_1

    if-nez v14, :cond_1

    .line 3420
    invoke-direct {v6, v2}, Landroid/util/HiLogFormatter$FormatSpecifier;->addDot([C)[C

    move-result-object v2

    .line 3422
    .end local v2    # "mant":[C
    .local v15, "mant":[C
    :cond_1
    move-object v15, v2

    cmpl-double v0, v8, v0

    if-nez v0, :cond_2

    .line 3423
    const/4 v0, 0x3

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Lsun/misc/FormattedFloatingDecimal;->getExponent()[C

    move-result-object v0

    :goto_1
    move-object v2, v0

    .line 3425
    .local v2, "exp":[C
    iget v0, v6, Landroid/util/HiLogFormatter$FormatSpecifier;->width:I

    .line 3426
    .local v0, "newW":I
    iget v1, v6, Landroid/util/HiLogFormatter$FormatSpecifier;->width:I

    if-eq v1, v3, :cond_3

    .line 3427
    iget v1, v6, Landroid/util/HiLogFormatter$FormatSpecifier;->width:I

    array-length v3, v2

    sub-int/2addr v1, v3

    sub-int/2addr v1, v5

    invoke-direct {v6, v1, v10, v13}, Landroid/util/HiLogFormatter$FormatSpecifier;->adjustWidth(ILandroid/util/HiLogFormatter$Flags;Z)I

    move-result v0

    .line 3428
    .end local v0    # "newW":I
    .local v17, "newW":I
    :cond_3
    move/from16 v17, v0

    move-object v0, v6

    move-object v1, v7

    move-object v3, v2

    move-object v2, v15

    .end local v2    # "exp":[C
    .local v3, "exp":[C
    move/from16 v18, v14

    move-object v14, v3

    move-object v3, v10

    .end local v3    # "exp":[C
    .local v14, "exp":[C
    .local v18, "prec":I
    move-object/from16 v19, v4

    move/from16 v4, v17

    .end local v4    # "fd":Lsun/misc/FormattedFloatingDecimal;
    .local v19, "fd":Lsun/misc/FormattedFloatingDecimal;
    move-object/from16 v20, v15

    move v15, v5

    move-object/from16 v5, p4

    .end local v15    # "mant":[C
    .local v20, "mant":[C
    invoke-direct/range {v0 .. v5}, Landroid/util/HiLogFormatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;[CLandroid/util/HiLogFormatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    .line 3431
    if-eqz p4, :cond_4

    move-object/from16 v0, p4

    goto :goto_2

    :cond_4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    :goto_2
    move-object v5, v0

    .line 3432
    .local v5, "separatorLocale":Ljava/util/Locale;
    invoke-static {v5}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v4

    .line 3433
    .local v4, "localeData":Llibcore/icu/LocaleData;
    sget-object v0, Landroid/util/HiLogFormatter$Flags;->UPPERCASE:Landroid/util/HiLogFormatter$Flags;

    invoke-virtual {v10, v0}, Landroid/util/HiLogFormatter$Flags;->contains(Landroid/util/HiLogFormatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3434
    iget-object v0, v4, Llibcore/icu/LocaleData;->exponentSeparator:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 3435
    :cond_5
    iget-object v0, v4, Llibcore/icu/LocaleData;->exponentSeparator:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 3433
    :goto_3
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3438
    invoke-virtual/range {p5 .. p5}, Landroid/util/HiLogFormatter$Flags;->dup()Landroid/util/HiLogFormatter$Flags;

    move-result-object v0

    sget-object v1, Landroid/util/HiLogFormatter$Flags;->GROUP:Landroid/util/HiLogFormatter$Flags;

    invoke-virtual {v0, v1}, Landroid/util/HiLogFormatter$Flags;->remove(Landroid/util/HiLogFormatter$Flags;)Landroid/util/HiLogFormatter$Flags;

    move-result-object v21

    .line 3439
    .local v21, "flags":Landroid/util/HiLogFormatter$Flags;
    const/4 v0, 0x0

    aget-char v3, v14, v0

    .line 3440
    .local v3, "sign":C
    nop

    .line 3441
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3443
    array-length v0, v14

    sub-int/2addr v0, v15

    new-array v2, v0, [C

    .line 3444
    .local v2, "tmp":[C
    array-length v0, v14

    sub-int/2addr v0, v15

    const/4 v1, 0x0

    invoke-static {v14, v15, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3445
    const/4 v1, 0x0

    const/4 v15, -0x1

    move-object v0, v6

    move-object/from16 v16, v2

    .end local v2    # "tmp":[C
    .local v16, "tmp":[C
    move/from16 v22, v3

    move-object/from16 v3, v21

    .end local v3    # "sign":C
    .local v22, "sign":C
    move-object/from16 v23, v4

    move v4, v15

    .end local v4    # "localeData":Llibcore/icu/LocaleData;
    .local v23, "localeData":Llibcore/icu/LocaleData;
    move-object v15, v5

    move-object/from16 v5, p4

    .end local v5    # "separatorLocale":Ljava/util/Locale;
    .local v15, "separatorLocale":Ljava/util/Locale;
    invoke-direct/range {v0 .. v5}, Landroid/util/HiLogFormatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;[CLandroid/util/HiLogFormatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 3446
    .end local v14    # "exp":[C
    .end local v15    # "separatorLocale":Ljava/util/Locale;
    .end local v16    # "tmp":[C
    .end local v17    # "newW":I
    .end local v18    # "prec":I
    .end local v19    # "fd":Lsun/misc/FormattedFloatingDecimal;
    .end local v20    # "mant":[C
    .end local v21    # "flags":Landroid/util/HiLogFormatter$Flags;
    .end local v22    # "sign":C
    .end local v23    # "localeData":Llibcore/icu/LocaleData;
    goto/16 :goto_f

    :cond_6
    move v15, v5

    const/16 v4, 0x66

    if-ne v11, v4, :cond_a

    .line 3449
    if-ne v12, v3, :cond_7

    goto :goto_4

    :cond_7
    move v2, v12

    :goto_4
    move v14, v2

    .line 3451
    .local v14, "prec":I
    sget-object v0, Lsun/misc/FormattedFloatingDecimal$Form;->DECIMAL_FLOAT:Lsun/misc/FormattedFloatingDecimal$Form;

    .line 3452
    invoke-static {v8, v9, v14, v0}, Lsun/misc/FormattedFloatingDecimal;->valueOf(DILsun/misc/FormattedFloatingDecimal$Form;)Lsun/misc/FormattedFloatingDecimal;

    move-result-object v15

    .line 3455
    .local v15, "fd":Lsun/misc/FormattedFloatingDecimal;
    invoke-virtual {v15}, Lsun/misc/FormattedFloatingDecimal;->getMantissa()[C

    move-result-object v0

    invoke-direct {v6, v0, v14}, Landroid/util/HiLogFormatter$FormatSpecifier;->addZeros([CI)[C

    move-result-object v0

    .line 3459
    .local v0, "mant":[C
    sget-object v1, Landroid/util/HiLogFormatter$Flags;->ALTERNATE:Landroid/util/HiLogFormatter$Flags;

    invoke-virtual {v10, v1}, Landroid/util/HiLogFormatter$Flags;->contains(Landroid/util/HiLogFormatter$Flags;)Z

    move-result v1

    if-eqz v1, :cond_8

    if-nez v14, :cond_8

    .line 3460
    invoke-direct {v6, v0}, Landroid/util/HiLogFormatter$FormatSpecifier;->addDot([C)[C

    move-result-object v0

    .line 3462
    .end local v0    # "mant":[C
    .local v16, "mant":[C
    :cond_8
    move-object/from16 v16, v0

    iget v0, v6, Landroid/util/HiLogFormatter$FormatSpecifier;->width:I

    .line 3463
    .local v0, "newW":I
    iget v1, v6, Landroid/util/HiLogFormatter$FormatSpecifier;->width:I

    if-eq v1, v3, :cond_9

    .line 3464
    iget v1, v6, Landroid/util/HiLogFormatter$FormatSpecifier;->width:I

    invoke-direct {v6, v1, v10, v13}, Landroid/util/HiLogFormatter$FormatSpecifier;->adjustWidth(ILandroid/util/HiLogFormatter$Flags;Z)I

    move-result v0

    .line 3465
    .end local v0    # "newW":I
    .restart local v17    # "newW":I
    :cond_9
    move/from16 v17, v0

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, v16

    move-object v3, v10

    move/from16 v4, v17

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/util/HiLogFormatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;[CLandroid/util/HiLogFormatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    .line 3466
    .end local v14    # "prec":I
    .end local v15    # "fd":Lsun/misc/FormattedFloatingDecimal;
    .end local v16    # "mant":[C
    .end local v17    # "newW":I
    goto/16 :goto_f

    :cond_a
    const/16 v2, 0x67

    const/16 v4, 0x30

    if-ne v11, v2, :cond_14

    .line 3467
    move v2, v12

    .line 3468
    .local v2, "prec":I
    if-ne v12, v3, :cond_b

    .line 3469
    const/4 v2, 0x6

    goto :goto_5

    .line 3470
    :cond_b
    if-nez v12, :cond_c

    .line 3471
    const/4 v2, 0x1

    .line 3476
    :cond_c
    :goto_5
    cmpl-double v0, v8, v0

    if-nez v0, :cond_d

    .line 3477
    const/4 v0, 0x0

    .line 3478
    .local v0, "exp":[C
    new-array v1, v15, [C

    const/4 v5, 0x0

    aput-char v4, v1, v5

    .line 3479
    .local v1, "mant":[C
    const/4 v4, 0x0

    .line 3486
    .local v4, "expRounded":I
    move-object v5, v0

    move v0, v4

    goto :goto_6

    .line 3481
    .end local v0    # "exp":[C
    .end local v1    # "mant":[C
    .end local v4    # "expRounded":I
    :cond_d
    sget-object v0, Lsun/misc/FormattedFloatingDecimal$Form;->GENERAL:Lsun/misc/FormattedFloatingDecimal$Form;

    .line 3482
    invoke-static {v8, v9, v2, v0}, Lsun/misc/FormattedFloatingDecimal;->valueOf(DILsun/misc/FormattedFloatingDecimal$Form;)Lsun/misc/FormattedFloatingDecimal;

    move-result-object v0

    .line 3484
    .local v0, "fd":Lsun/misc/FormattedFloatingDecimal;
    invoke-virtual {v0}, Lsun/misc/FormattedFloatingDecimal;->getExponent()[C

    move-result-object v1

    .line 3485
    .local v1, "exp":[C
    invoke-virtual {v0}, Lsun/misc/FormattedFloatingDecimal;->getMantissa()[C

    move-result-object v4

    .line 3486
    .local v4, "mant":[C
    invoke-virtual {v0}, Lsun/misc/FormattedFloatingDecimal;->getExponentRounded()I

    move-result v0

    .end local v0    # "fd":Lsun/misc/FormattedFloatingDecimal;
    move-object v5, v1

    move-object v1, v4

    .end local v4    # "mant":[C
    .local v0, "expRounded":I
    .local v1, "mant":[C
    .local v5, "exp":[C
    :goto_6
    move/from16 v17, v0

    .line 3489
    .end local v0    # "expRounded":I
    .local v17, "expRounded":I
    if-eqz v5, :cond_e

    .line 3490
    add-int/2addr v2, v3

    .line 3495
    .end local v2    # "prec":I
    .local v4, "prec":I
    :goto_7
    move v4, v2

    goto :goto_8

    .line 3492
    .end local v4    # "prec":I
    .restart local v2    # "prec":I
    :cond_e
    add-int/lit8 v0, v17, 0x1

    sub-int/2addr v2, v0

    goto :goto_7

    .line 3495
    .end local v2    # "prec":I
    .restart local v4    # "prec":I
    :goto_8
    invoke-direct {v6, v1, v4}, Landroid/util/HiLogFormatter$FormatSpecifier;->addZeros([CI)[C

    move-result-object v0

    .line 3498
    .end local v1    # "mant":[C
    .local v0, "mant":[C
    sget-object v1, Landroid/util/HiLogFormatter$Flags;->ALTERNATE:Landroid/util/HiLogFormatter$Flags;

    invoke-virtual {v10, v1}, Landroid/util/HiLogFormatter$Flags;->contains(Landroid/util/HiLogFormatter$Flags;)Z

    move-result v1

    if-eqz v1, :cond_f

    if-nez v4, :cond_f

    .line 3499
    invoke-direct {v6, v0}, Landroid/util/HiLogFormatter$FormatSpecifier;->addDot([C)[C

    move-result-object v0

    .line 3501
    .end local v0    # "mant":[C
    .local v18, "mant":[C
    :cond_f
    move-object/from16 v18, v0

    iget v0, v6, Landroid/util/HiLogFormatter$FormatSpecifier;->width:I

    .line 3502
    .local v0, "newW":I
    iget v1, v6, Landroid/util/HiLogFormatter$FormatSpecifier;->width:I

    if-eq v1, v3, :cond_11

    .line 3503
    if-eqz v5, :cond_10

    .line 3504
    iget v1, v6, Landroid/util/HiLogFormatter$FormatSpecifier;->width:I

    array-length v2, v5

    sub-int/2addr v1, v2

    sub-int/2addr v1, v15

    invoke-direct {v6, v1, v10, v13}, Landroid/util/HiLogFormatter$FormatSpecifier;->adjustWidth(ILandroid/util/HiLogFormatter$Flags;Z)I

    move-result v0

    goto :goto_9

    .line 3506
    :cond_10
    iget v1, v6, Landroid/util/HiLogFormatter$FormatSpecifier;->width:I

    invoke-direct {v6, v1, v10, v13}, Landroid/util/HiLogFormatter$FormatSpecifier;->adjustWidth(ILandroid/util/HiLogFormatter$Flags;Z)I

    move-result v0

    .line 3508
    .end local v0    # "newW":I
    .local v19, "newW":I
    :cond_11
    :goto_9
    move/from16 v19, v0

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, v18

    move-object v3, v10

    move/from16 v20, v4

    move/from16 v4, v19

    .end local v4    # "prec":I
    .local v20, "prec":I
    move-object v14, v5

    move-object/from16 v5, p4

    .end local v5    # "exp":[C
    .local v14, "exp":[C
    invoke-direct/range {v0 .. v5}, Landroid/util/HiLogFormatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;[CLandroid/util/HiLogFormatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    .line 3510
    if-eqz v14, :cond_13

    .line 3511
    sget-object v0, Landroid/util/HiLogFormatter$Flags;->UPPERCASE:Landroid/util/HiLogFormatter$Flags;

    invoke-virtual {v10, v0}, Landroid/util/HiLogFormatter$Flags;->contains(Landroid/util/HiLogFormatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0x45

    goto :goto_a

    :cond_12
    const/16 v0, 0x65

    :goto_a
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3513
    invoke-virtual/range {p5 .. p5}, Landroid/util/HiLogFormatter$Flags;->dup()Landroid/util/HiLogFormatter$Flags;

    move-result-object v0

    sget-object v1, Landroid/util/HiLogFormatter$Flags;->GROUP:Landroid/util/HiLogFormatter$Flags;

    invoke-virtual {v0, v1}, Landroid/util/HiLogFormatter$Flags;->remove(Landroid/util/HiLogFormatter$Flags;)Landroid/util/HiLogFormatter$Flags;

    move-result-object v21

    .line 3514
    .restart local v21    # "flags":Landroid/util/HiLogFormatter$Flags;
    const/4 v0, 0x0

    aget-char v5, v14, v0

    .line 3515
    .local v5, "sign":C
    nop

    .line 3516
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3518
    array-length v0, v14

    sub-int/2addr v0, v15

    new-array v4, v0, [C

    .line 3519
    .local v4, "tmp":[C
    array-length v0, v14

    sub-int/2addr v0, v15

    const/4 v1, 0x0

    invoke-static {v14, v15, v4, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3520
    const/4 v1, 0x0

    const/4 v15, -0x1

    move-object v0, v6

    move-object v2, v4

    move-object/from16 v3, v21

    move-object/from16 v16, v4

    move v4, v15

    .end local v4    # "tmp":[C
    .local v16, "tmp":[C
    move v15, v5

    move-object/from16 v5, p4

    .end local v5    # "sign":C
    .local v15, "sign":C
    invoke-direct/range {v0 .. v5}, Landroid/util/HiLogFormatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;[CLandroid/util/HiLogFormatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 3522
    .end local v14    # "exp":[C
    .end local v15    # "sign":C
    .end local v16    # "tmp":[C
    .end local v17    # "expRounded":I
    .end local v18    # "mant":[C
    .end local v19    # "newW":I
    .end local v20    # "prec":I
    .end local v21    # "flags":Landroid/util/HiLogFormatter$Flags;
    :cond_13
    goto/16 :goto_f

    :cond_14
    const/16 v0, 0x61

    if-ne v11, v0, :cond_1c

    .line 3523
    move v0, v12

    .line 3524
    .local v0, "prec":I
    if-ne v12, v3, :cond_15

    .line 3526
    const/4 v0, 0x0

    goto :goto_b

    .line 3527
    :cond_15
    if-nez v12, :cond_16

    .line 3528
    const/4 v0, 0x1

    .line 3530
    :cond_16
    :goto_b
    invoke-direct {v6, v8, v9, v0}, Landroid/util/HiLogFormatter$FormatSpecifier;->hexDouble(DI)Ljava/lang/String;

    move-result-object v1

    .line 3533
    .local v1, "s":Ljava/lang/String;
    sget-object v2, Landroid/util/HiLogFormatter$Flags;->UPPERCASE:Landroid/util/HiLogFormatter$Flags;

    invoke-virtual {v10, v2}, Landroid/util/HiLogFormatter$Flags;->contains(Landroid/util/HiLogFormatter$Flags;)Z

    move-result v2

    .line 3534
    .local v2, "upper":Z
    if-eqz v2, :cond_17

    const-string v3, "0X"

    goto :goto_c

    :cond_17
    const-string v3, "0x"

    :goto_c
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3536
    sget-object v3, Landroid/util/HiLogFormatter$Flags;->ZERO_PAD:Landroid/util/HiLogFormatter$Flags;

    invoke-virtual {v10, v3}, Landroid/util/HiLogFormatter$Flags;->contains(Landroid/util/HiLogFormatter$Flags;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 3537
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_d
    iget v5, v6, Landroid/util/HiLogFormatter$FormatSpecifier;->width:I

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v14

    sub-int/2addr v5, v14

    add-int/lit8 v5, v5, -0x2

    if-ge v3, v5, :cond_18

    .line 3538
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3537
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 3540
    .end local v3    # "i":I
    :cond_18
    const/16 v3, 0x70

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 3541
    .local v4, "idx":I
    const/4 v5, 0x0

    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    .line 3542
    .local v5, "va":[C
    if-eqz v2, :cond_19

    .line 3543
    new-instance v14, Ljava/lang/String;

    invoke-direct {v14, v5}, Ljava/lang/String;-><init>([C)V

    .line 3545
    .local v14, "tmp":Ljava/lang/String;
    sget-object v15, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v14, v15}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v14

    .line 3546
    invoke-virtual {v14}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    .line 3548
    .end local v14    # "tmp":Ljava/lang/String;
    :cond_19
    if-eqz v0, :cond_1a

    invoke-direct {v6, v5, v0}, Landroid/util/HiLogFormatter$FormatSpecifier;->addZeros([CI)[C

    move-result-object v14

    goto :goto_e

    :cond_1a
    move-object v14, v5

    :goto_e
    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 3549
    if-eqz v2, :cond_1b

    const/16 v3, 0x50

    nop

    :cond_1b
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3550
    add-int/lit8 v3, v4, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3552
    .end local v0    # "prec":I
    .end local v1    # "s":Ljava/lang/String;
    .end local v2    # "upper":Z
    .end local v4    # "idx":I
    .end local v5    # "va":[C
    :cond_1c
    :goto_f
    return-void

    :array_0
    .array-data 2
        0x2bs
        0x30s
        0x30s
    .end array-data
.end method

.method private print(Ljava/lang/StringBuilder;Ljava/math/BigDecimal;Ljava/util/Locale;Landroid/util/HiLogFormatter$Flags;CIZ)V
    .locals 27
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "value"    # Ljava/math/BigDecimal;
    .param p3, "l"    # Ljava/util/Locale;
    .param p4, "f"    # Landroid/util/HiLogFormatter$Flags;
    .param p5, "c"    # C
    .param p6, "precision"    # I
    .param p7, "neg"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p4

    move/from16 v12, p5

    move/from16 v13, p6

    .line 3700
    move/from16 v14, p7

    const/4 v0, 0x6

    const/16 v6, 0x65

    const/4 v1, -0x1

    if-ne v12, v6, :cond_7

    .line 3702
    if-ne v13, v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v13

    :goto_0
    move v5, v0

    .line 3703
    .local v5, "prec":I
    invoke-virtual/range {p2 .. p2}, Ljava/math/BigDecimal;->scale()I

    move-result v4

    .line 3704
    .local v4, "scale":I
    invoke-virtual/range {p2 .. p2}, Ljava/math/BigDecimal;->precision()I

    move-result v3

    .line 3705
    .local v3, "origPrec":I
    const/4 v0, 0x0

    .line 3708
    .local v0, "nzeros":I
    add-int/lit8 v2, v3, -0x1

    if-le v5, v2, :cond_1

    .line 3709
    move v2, v3

    .line 3710
    .local v2, "compPrec":I
    add-int/lit8 v16, v3, -0x1

    sub-int v0, v5, v16

    goto :goto_1

    .line 3712
    .end local v2    # "compPrec":I
    :cond_1
    add-int/lit8 v2, v5, 0x1

    .line 3715
    .restart local v2    # "compPrec":I
    :goto_1
    new-instance v6, Ljava/math/MathContext;

    invoke-direct {v6, v2}, Ljava/math/MathContext;-><init>(I)V

    .line 3716
    .local v6, "mc":Ljava/math/MathContext;
    new-instance v7, Ljava/math/BigDecimal;

    .line 3717
    invoke-virtual/range {p2 .. p2}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v7, v1, v4, v6}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;ILjava/math/MathContext;)V

    .line 3719
    .local v7, "v":Ljava/math/BigDecimal;
    new-instance v1, Landroid/util/HiLogFormatter$FormatSpecifier$BigDecimalLayout;

    .line 3720
    invoke-virtual {v7}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object v15

    move/from16 v21, v2

    invoke-virtual {v7}, Ljava/math/BigDecimal;->scale()I

    move-result v2

    .end local v2    # "compPrec":I
    .local v21, "compPrec":I
    move/from16 v22, v4

    sget-object v4, Landroid/util/HiLogFormatter$BigDecimalLayoutForm;->SCIENTIFIC:Landroid/util/HiLogFormatter$BigDecimalLayoutForm;

    .end local v4    # "scale":I
    .local v22, "scale":I
    invoke-direct {v1, v8, v15, v2, v4}, Landroid/util/HiLogFormatter$FormatSpecifier$BigDecimalLayout;-><init>(Landroid/util/HiLogFormatter$FormatSpecifier;Ljava/math/BigInteger;ILandroid/util/HiLogFormatter$BigDecimalLayoutForm;)V

    move-object v15, v1

    .line 3723
    .local v15, "bdl":Landroid/util/HiLogFormatter$FormatSpecifier$BigDecimalLayout;
    invoke-virtual {v15}, Landroid/util/HiLogFormatter$FormatSpecifier$BigDecimalLayout;->mantissa()[C

    move-result-object v1

    .line 3730
    .local v1, "mant":[C
    const/4 v2, 0x1

    if-eq v3, v2, :cond_2

    invoke-virtual {v15}, Landroid/util/HiLogFormatter$FormatSpecifier$BigDecimalLayout;->hasDot()Z

    move-result v2

    if-nez v2, :cond_4

    :cond_2
    if-gtz v0, :cond_3

    sget-object v2, Landroid/util/HiLogFormatter$Flags;->ALTERNATE:Landroid/util/HiLogFormatter$Flags;

    .line 3731
    invoke-virtual {v11, v2}, Landroid/util/HiLogFormatter$Flags;->contains(Landroid/util/HiLogFormatter$Flags;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3732
    :cond_3
    invoke-direct {v8, v1}, Landroid/util/HiLogFormatter$FormatSpecifier;->addDot([C)[C

    move-result-object v1

    .line 3736
    :cond_4
    invoke-direct {v8, v1, v0}, Landroid/util/HiLogFormatter$FormatSpecifier;->trailingZeros([CI)[C

    move-result-object v16

    .line 3738
    .end local v1    # "mant":[C
    .local v16, "mant":[C
    invoke-virtual {v15}, Landroid/util/HiLogFormatter$FormatSpecifier$BigDecimalLayout;->exponent()[C

    move-result-object v4

    .line 3739
    .local v4, "exp":[C
    iget v1, v8, Landroid/util/HiLogFormatter$FormatSpecifier;->width:I

    .line 3740
    .local v1, "newW":I
    iget v2, v8, Landroid/util/HiLogFormatter$FormatSpecifier;->width:I

    move/from16 v23, v0

    const/4 v0, -0x1

    if-eq v2, v0, :cond_5

    .line 3741
    .end local v0    # "nzeros":I
    .local v23, "nzeros":I
    iget v0, v8, Landroid/util/HiLogFormatter$FormatSpecifier;->width:I

    array-length v2, v4

    sub-int/2addr v0, v2

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-direct {v8, v0, v11, v14}, Landroid/util/HiLogFormatter$FormatSpecifier;->adjustWidth(ILandroid/util/HiLogFormatter$Flags;Z)I

    move-result v0

    .line 3742
    .end local v1    # "newW":I
    .local v0, "newW":I
    move/from16 v19, v0

    goto :goto_2

    .end local v0    # "newW":I
    .restart local v1    # "newW":I
    :cond_5
    move/from16 v19, v1

    .end local v1    # "newW":I
    .local v19, "newW":I
    :goto_2
    move-object v0, v8

    move-object v1, v9

    move-object/from16 v2, v16

    move/from16 v24, v3

    move-object v3, v11

    .end local v3    # "origPrec":I
    .local v24, "origPrec":I
    move-object/from16 v25, v6

    move-object v6, v4

    move/from16 v4, v19

    .end local v4    # "exp":[C
    .local v6, "exp":[C
    .local v25, "mc":Ljava/math/MathContext;
    move/from16 v26, v5

    move-object/from16 v5, p3

    .end local v5    # "prec":I
    .local v26, "prec":I
    invoke-direct/range {v0 .. v5}, Landroid/util/HiLogFormatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;[CLandroid/util/HiLogFormatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    .line 3744
    sget-object v0, Landroid/util/HiLogFormatter$Flags;->UPPERCASE:Landroid/util/HiLogFormatter$Flags;

    invoke-virtual {v11, v0}, Landroid/util/HiLogFormatter$Flags;->contains(Landroid/util/HiLogFormatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0x45

    goto :goto_3

    :cond_6
    const/16 v0, 0x65

    :goto_3
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3746
    invoke-virtual/range {p4 .. p4}, Landroid/util/HiLogFormatter$Flags;->dup()Landroid/util/HiLogFormatter$Flags;

    move-result-object v0

    sget-object v1, Landroid/util/HiLogFormatter$Flags;->GROUP:Landroid/util/HiLogFormatter$Flags;

    invoke-virtual {v0, v1}, Landroid/util/HiLogFormatter$Flags;->remove(Landroid/util/HiLogFormatter$Flags;)Landroid/util/HiLogFormatter$Flags;

    move-result-object v17

    .line 3747
    .local v17, "flags":Landroid/util/HiLogFormatter$Flags;
    const/4 v1, 0x0

    aget-char v18, v6, v1

    .line 3748
    .local v18, "sign":C
    nop

    .line 3749
    aget-char v0, v6, v1

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3751
    array-length v0, v6

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    new-array v5, v0, [C

    .line 3752
    .local v5, "tmp":[C
    array-length v0, v6

    sub-int/2addr v0, v2

    invoke-static {v6, v2, v5, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3753
    const/4 v1, 0x0

    const/4 v4, -0x1

    move-object v0, v8

    move-object v2, v5

    move-object/from16 v3, v17

    move-object/from16 v20, v5

    move-object/from16 v5, p3

    .end local v5    # "tmp":[C
    .local v20, "tmp":[C
    invoke-direct/range {v0 .. v5}, Landroid/util/HiLogFormatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;[CLandroid/util/HiLogFormatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 3754
    .end local v6    # "exp":[C
    .end local v7    # "v":Ljava/math/BigDecimal;
    .end local v15    # "bdl":Landroid/util/HiLogFormatter$FormatSpecifier$BigDecimalLayout;
    .end local v16    # "mant":[C
    .end local v17    # "flags":Landroid/util/HiLogFormatter$Flags;
    .end local v18    # "sign":C
    .end local v19    # "newW":I
    .end local v20    # "tmp":[C
    .end local v21    # "compPrec":I
    .end local v22    # "scale":I
    .end local v23    # "nzeros":I
    .end local v24    # "origPrec":I
    .end local v25    # "mc":Ljava/math/MathContext;
    .end local v26    # "prec":I
    goto/16 :goto_a

    :cond_7
    const/4 v1, 0x0

    const/16 v2, 0x66

    if-ne v12, v2, :cond_e

    .line 3756
    const/4 v2, -0x1

    if-ne v13, v2, :cond_8

    goto :goto_4

    :cond_8
    move v0, v13

    :goto_4
    move v6, v0

    .line 3757
    .local v6, "prec":I
    invoke-virtual/range {p2 .. p2}, Ljava/math/BigDecimal;->scale()I

    move-result v7

    .line 3759
    .local v7, "scale":I
    if-le v7, v6, :cond_a

    .line 3761
    invoke-virtual/range {p2 .. p2}, Ljava/math/BigDecimal;->precision()I

    move-result v0

    .line 3762
    .local v0, "compPrec":I
    if-gt v0, v7, :cond_9

    .line 3764
    sget-object v2, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {v10, v6, v2}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v2

    .line 3772
    .end local p2    # "value":Ljava/math/BigDecimal;
    .local v2, "value":Ljava/math/BigDecimal;
    move-object v10, v2

    goto :goto_5

    .line 3766
    .end local v2    # "value":Ljava/math/BigDecimal;
    .restart local p2    # "value":Ljava/math/BigDecimal;
    :cond_9
    sub-int v2, v7, v6

    sub-int/2addr v0, v2

    .line 3767
    new-instance v2, Ljava/math/BigDecimal;

    invoke-virtual/range {p2 .. p2}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object v3

    new-instance v4, Ljava/math/MathContext;

    invoke-direct {v4, v0}, Ljava/math/MathContext;-><init>(I)V

    invoke-direct {v2, v3, v7, v4}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;ILjava/math/MathContext;)V

    move-object v0, v2

    .line 3772
    .end local p2    # "value":Ljava/math/BigDecimal;
    .local v0, "value":Ljava/math/BigDecimal;
    move-object v10, v0

    .end local v0    # "value":Ljava/math/BigDecimal;
    .local v10, "value":Ljava/math/BigDecimal;
    :cond_a
    :goto_5
    new-instance v0, Landroid/util/HiLogFormatter$FormatSpecifier$BigDecimalLayout;

    .line 3773
    invoke-virtual {v10}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object v2

    .line 3774
    invoke-virtual {v10}, Ljava/math/BigDecimal;->scale()I

    move-result v3

    sget-object v4, Landroid/util/HiLogFormatter$BigDecimalLayoutForm;->DECIMAL_FLOAT:Landroid/util/HiLogFormatter$BigDecimalLayoutForm;

    invoke-direct {v0, v8, v2, v3, v4}, Landroid/util/HiLogFormatter$FormatSpecifier$BigDecimalLayout;-><init>(Landroid/util/HiLogFormatter$FormatSpecifier;Ljava/math/BigInteger;ILandroid/util/HiLogFormatter$BigDecimalLayoutForm;)V

    move-object v15, v0

    .line 3777
    .restart local v15    # "bdl":Landroid/util/HiLogFormatter$FormatSpecifier$BigDecimalLayout;
    invoke-virtual {v15}, Landroid/util/HiLogFormatter$FormatSpecifier$BigDecimalLayout;->mantissa()[C

    move-result-object v0

    .line 3778
    .local v0, "mant":[C
    invoke-virtual {v15}, Landroid/util/HiLogFormatter$FormatSpecifier$BigDecimalLayout;->scale()I

    move-result v2

    if-ge v2, v6, :cond_b

    invoke-virtual {v15}, Landroid/util/HiLogFormatter$FormatSpecifier$BigDecimalLayout;->scale()I

    move-result v1

    sub-int v1, v6, v1

    nop

    :cond_b
    move v5, v1

    .line 3785
    .local v5, "nzeros":I
    invoke-virtual {v15}, Landroid/util/HiLogFormatter$FormatSpecifier$BigDecimalLayout;->scale()I

    move-result v1

    if-nez v1, :cond_d

    sget-object v1, Landroid/util/HiLogFormatter$Flags;->ALTERNATE:Landroid/util/HiLogFormatter$Flags;

    invoke-virtual {v11, v1}, Landroid/util/HiLogFormatter$Flags;->contains(Landroid/util/HiLogFormatter$Flags;)Z

    move-result v1

    if-nez v1, :cond_c

    if-lez v5, :cond_d

    .line 3786
    :cond_c
    invoke-virtual {v15}, Landroid/util/HiLogFormatter$FormatSpecifier$BigDecimalLayout;->mantissa()[C

    move-result-object v1

    invoke-direct {v8, v1}, Landroid/util/HiLogFormatter$FormatSpecifier;->addDot([C)[C

    move-result-object v0

    .line 3790
    :cond_d
    invoke-direct {v8, v0, v5}, Landroid/util/HiLogFormatter$FormatSpecifier;->trailingZeros([CI)[C

    move-result-object v16

    .line 3792
    .end local v0    # "mant":[C
    .restart local v16    # "mant":[C
    iget v0, v8, Landroid/util/HiLogFormatter$FormatSpecifier;->width:I

    invoke-direct {v8, v0, v11, v14}, Landroid/util/HiLogFormatter$FormatSpecifier;->adjustWidth(ILandroid/util/HiLogFormatter$Flags;Z)I

    move-result v4

    move-object v0, v8

    move-object v1, v9

    move-object/from16 v2, v16

    move-object v3, v11

    move/from16 v17, v5

    move-object/from16 v5, p3

    .end local v5    # "nzeros":I
    .local v17, "nzeros":I
    invoke-direct/range {v0 .. v5}, Landroid/util/HiLogFormatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;[CLandroid/util/HiLogFormatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    .line 3793
    .end local v6    # "prec":I
    .end local v7    # "scale":I
    .end local v15    # "bdl":Landroid/util/HiLogFormatter$FormatSpecifier$BigDecimalLayout;
    .end local v16    # "mant":[C
    .end local v17    # "nzeros":I
    goto/16 :goto_a

    .end local v10    # "value":Ljava/math/BigDecimal;
    .restart local p2    # "value":Ljava/math/BigDecimal;
    :cond_e
    const/16 v0, 0x67

    if-ne v12, v0, :cond_13

    .line 3794
    move v0, v13

    .line 3795
    .local v0, "prec":I
    const/4 v1, -0x1

    if-ne v13, v1, :cond_10

    .line 3796
    const/4 v0, 0x6

    .line 3800
    .end local v0    # "prec":I
    .local v15, "prec":I
    :cond_f
    :goto_6
    move v15, v0

    goto :goto_7

    .line 3797
    .end local v15    # "prec":I
    .restart local v0    # "prec":I
    :cond_10
    if-nez v13, :cond_f

    .line 3798
    const/4 v0, 0x1

    goto :goto_6

    .line 3800
    .end local v0    # "prec":I
    .restart local v15    # "prec":I
    :goto_7
    const/4 v0, 0x4

    const-wide/16 v1, 0x1

    invoke-static {v1, v2, v0}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v7

    .line 3801
    .local v7, "tenToTheNegFour":Ljava/math/BigDecimal;
    neg-int v0, v15

    invoke-static {v1, v2, v0}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v6

    .line 3802
    .local v6, "tenToThePrec":Ljava/math/BigDecimal;
    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {v10, v0}, Ljava/math/BigDecimal;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 3803
    invoke-virtual {v10, v7}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_11

    .line 3804
    invoke-virtual {v10, v6}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-ne v0, v1, :cond_11

    .line 3806
    move-object/from16 v17, v6

    move-object/from16 v16, v7

    goto :goto_8

    .line 3824
    :cond_11
    const/16 v5, 0x65

    add-int/lit8 v16, v15, -0x1

    move-object v0, v8

    move-object v1, v9

    move-object v2, v10

    move-object/from16 v3, p3

    move-object v4, v11

    move-object/from16 v17, v6

    move/from16 v6, v16

    .end local v6    # "tenToThePrec":Ljava/math/BigDecimal;
    .local v17, "tenToThePrec":Ljava/math/BigDecimal;
    move-object/from16 v16, v7

    move v7, v14

    .end local v7    # "tenToTheNegFour":Ljava/math/BigDecimal;
    .local v16, "tenToTheNegFour":Ljava/math/BigDecimal;
    invoke-direct/range {v0 .. v7}, Landroid/util/HiLogFormatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/math/BigDecimal;Ljava/util/Locale;Landroid/util/HiLogFormatter$Flags;CIZ)V

    .end local v15    # "prec":I
    .end local v16    # "tenToTheNegFour":Ljava/math/BigDecimal;
    .end local v17    # "tenToThePrec":Ljava/math/BigDecimal;
    goto :goto_9

    .line 3806
    .restart local v6    # "tenToThePrec":Ljava/math/BigDecimal;
    .restart local v7    # "tenToTheNegFour":Ljava/math/BigDecimal;
    .restart local v15    # "prec":I
    :cond_12
    move-object/from16 v17, v6

    move-object/from16 v16, v7

    .end local v6    # "tenToThePrec":Ljava/math/BigDecimal;
    .end local v7    # "tenToTheNegFour":Ljava/math/BigDecimal;
    .restart local v16    # "tenToTheNegFour":Ljava/math/BigDecimal;
    .restart local v17    # "tenToThePrec":Ljava/math/BigDecimal;
    :goto_8
    invoke-virtual/range {p2 .. p2}, Ljava/math/BigDecimal;->scale()I

    move-result v0

    neg-int v0, v0

    .line 3807
    invoke-virtual/range {p2 .. p2}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    add-int v18, v0, v1

    .line 3819
    .local v18, "e":I
    sub-int v0, v15, v18

    add-int/lit8 v15, v0, -0x1

    .line 3821
    const/16 v5, 0x66

    move-object v0, v8

    move-object v1, v9

    move-object v2, v10

    move-object/from16 v3, p3

    move-object v4, v11

    move v6, v15

    move v7, v14

    invoke-direct/range {v0 .. v7}, Landroid/util/HiLogFormatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/math/BigDecimal;Ljava/util/Locale;Landroid/util/HiLogFormatter$Flags;CIZ)V

    .line 3823
    .end local v18    # "e":I
    nop

    .line 3826
    .end local v15    # "prec":I
    .end local v16    # "tenToTheNegFour":Ljava/math/BigDecimal;
    .end local v17    # "tenToThePrec":Ljava/math/BigDecimal;
    :goto_9
    goto :goto_a

    :cond_13
    const/16 v0, 0x61

    if-ne v12, v0, :cond_14

    .line 3829
    nop

    .line 3831
    .end local p2    # "value":Ljava/math/BigDecimal;
    .restart local v10    # "value":Ljava/math/BigDecimal;
    :cond_14
    :goto_a
    return-void
.end method

.method private print(Ljava/math/BigDecimal;Ljava/util/Locale;)V
    .locals 11
    .param p1, "value"    # Ljava/math/BigDecimal;
    .param p2, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3677
    iget-char v0, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->c:C

    const/16 v1, 0x61

    if-ne v0, v1, :cond_0

    .line 3678
    iget-char v0, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->c:C

    invoke-direct {p0, v0, p1}, Landroid/util/HiLogFormatter$FormatSpecifier;->failConversion(CLjava/lang/Object;)V

    .line 3679
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3680
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/math/BigDecimal;->signum()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    move v9, v1

    .line 3681
    .local v9, "neg":Z
    invoke-virtual {p1}, Ljava/math/BigDecimal;->abs()Ljava/math/BigDecimal;

    move-result-object v10

    .line 3683
    .local v10, "v":Ljava/math/BigDecimal;
    invoke-direct {p0, v0, v9}, Landroid/util/HiLogFormatter$FormatSpecifier;->leadingSign(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;

    .line 3686
    iget-object v5, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->f:Landroid/util/HiLogFormatter$Flags;

    iget-char v6, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->c:C

    iget v7, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->precision:I

    move-object v1, p0

    move-object v2, v0

    move-object v3, v10

    move-object v4, p2

    move v8, v9

    invoke-direct/range {v1 .. v8}, Landroid/util/HiLogFormatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/math/BigDecimal;Ljava/util/Locale;Landroid/util/HiLogFormatter$Flags;CIZ)V

    .line 3689
    invoke-direct {p0, v0, v9}, Landroid/util/HiLogFormatter$FormatSpecifier;->trailingSign(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;

    .line 3692
    iget-object v1, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->this$0:Landroid/util/HiLogFormatter;

    invoke-static {v1}, Landroid/util/HiLogFormatter;->access$000(Landroid/util/HiLogFormatter;)Ljava/lang/Appendable;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/util/HiLogFormatter$FormatSpecifier;->justify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 3693
    return-void
.end method

.method private print(Ljava/math/BigInteger;Ljava/util/Locale;)V
    .locals 13
    .param p1, "value"    # Ljava/math/BigInteger;
    .param p2, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3316
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v1

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-ne v1, v7, :cond_0

    move v1, v9

    goto :goto_0

    :cond_0
    move v1, v8

    :goto_0
    move v10, v1

    .line 3317
    .local v10, "neg":Z
    invoke-virtual {p1}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v11

    .line 3320
    .local v11, "v":Ljava/math/BigInteger;
    invoke-direct {p0, v0, v10}, Landroid/util/HiLogFormatter$FormatSpecifier;->leadingSign(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;

    .line 3323
    iget-char v1, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->c:C

    const/16 v2, 0x64

    if-ne v1, v2, :cond_1

    .line 3324
    invoke-virtual {v11}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v12

    .line 3325
    .local v12, "va":[C
    iget-object v4, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->f:Landroid/util/HiLogFormatter$Flags;

    iget v1, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->width:I

    iget-object v2, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->f:Landroid/util/HiLogFormatter$Flags;

    invoke-direct {p0, v1, v2, v10}, Landroid/util/HiLogFormatter$FormatSpecifier;->adjustWidth(ILandroid/util/HiLogFormatter$Flags;Z)I

    move-result v5

    move-object v1, p0

    move-object v2, v0

    move-object v3, v12

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Landroid/util/HiLogFormatter$FormatSpecifier;->localizedMagnitude(Ljava/lang/StringBuilder;[CLandroid/util/HiLogFormatter$Flags;ILjava/util/Locale;)Ljava/lang/StringBuilder;

    .line 3326
    .end local v12    # "va":[C
    goto/16 :goto_4

    :cond_1
    iget-char v1, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->c:C

    const/16 v2, 0x6f

    const/16 v3, 0x30

    if-ne v1, v2, :cond_5

    .line 3327
    const/16 v1, 0x8

    invoke-virtual {v11, v1}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 3329
    .local v1, "s":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/2addr v2, v4

    .line 3330
    .local v2, "len":I
    if-eqz v10, :cond_2

    iget-object v4, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->f:Landroid/util/HiLogFormatter$Flags;

    sget-object v5, Landroid/util/HiLogFormatter$Flags;->PARENTHESES:Landroid/util/HiLogFormatter$Flags;

    invoke-virtual {v4, v5}, Landroid/util/HiLogFormatter$Flags;->contains(Landroid/util/HiLogFormatter$Flags;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3331
    add-int/lit8 v2, v2, 0x1

    .line 3334
    :cond_2
    iget-object v4, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->f:Landroid/util/HiLogFormatter$Flags;

    sget-object v5, Landroid/util/HiLogFormatter$Flags;->ALTERNATE:Landroid/util/HiLogFormatter$Flags;

    invoke-virtual {v4, v5}, Landroid/util/HiLogFormatter$Flags;->contains(Landroid/util/HiLogFormatter$Flags;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3335
    add-int/lit8 v2, v2, 0x1

    .line 3336
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3338
    :cond_3
    iget-object v4, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->f:Landroid/util/HiLogFormatter$Flags;

    sget-object v5, Landroid/util/HiLogFormatter$Flags;->ZERO_PAD:Landroid/util/HiLogFormatter$Flags;

    invoke-virtual {v4, v5}, Landroid/util/HiLogFormatter$Flags;->contains(Landroid/util/HiLogFormatter$Flags;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3339
    move v4, v8

    .local v4, "i":I
    :goto_1
    iget v5, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->width:I

    sub-int/2addr v5, v2

    if-ge v4, v5, :cond_4

    .line 3340
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3339
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 3342
    .end local v4    # "i":I
    :cond_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3343
    .end local v1    # "s":Ljava/lang/String;
    .end local v2    # "len":I
    goto :goto_4

    :cond_5
    iget-char v1, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->c:C

    const/16 v2, 0x78

    if-ne v1, v2, :cond_b

    .line 3344
    const/16 v1, 0x10

    invoke-virtual {v11, v1}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 3346
    .restart local v1    # "s":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/2addr v2, v4

    .line 3347
    .restart local v2    # "len":I
    if-eqz v10, :cond_6

    iget-object v4, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->f:Landroid/util/HiLogFormatter$Flags;

    sget-object v5, Landroid/util/HiLogFormatter$Flags;->PARENTHESES:Landroid/util/HiLogFormatter$Flags;

    invoke-virtual {v4, v5}, Landroid/util/HiLogFormatter$Flags;->contains(Landroid/util/HiLogFormatter$Flags;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 3348
    add-int/lit8 v2, v2, 0x1

    .line 3351
    :cond_6
    iget-object v4, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->f:Landroid/util/HiLogFormatter$Flags;

    sget-object v5, Landroid/util/HiLogFormatter$Flags;->ALTERNATE:Landroid/util/HiLogFormatter$Flags;

    invoke-virtual {v4, v5}, Landroid/util/HiLogFormatter$Flags;->contains(Landroid/util/HiLogFormatter$Flags;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 3352
    add-int/lit8 v2, v2, 0x2

    .line 3353
    iget-object v4, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->f:Landroid/util/HiLogFormatter$Flags;

    sget-object v5, Landroid/util/HiLogFormatter$Flags;->UPPERCASE:Landroid/util/HiLogFormatter$Flags;

    invoke-virtual {v4, v5}, Landroid/util/HiLogFormatter$Flags;->contains(Landroid/util/HiLogFormatter$Flags;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "0X"

    goto :goto_2

    :cond_7
    const-string v4, "0x"

    :goto_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3355
    :cond_8
    iget-object v4, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->f:Landroid/util/HiLogFormatter$Flags;

    sget-object v5, Landroid/util/HiLogFormatter$Flags;->ZERO_PAD:Landroid/util/HiLogFormatter$Flags;

    invoke-virtual {v4, v5}, Landroid/util/HiLogFormatter$Flags;->contains(Landroid/util/HiLogFormatter$Flags;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 3356
    move v4, v8

    .restart local v4    # "i":I
    :goto_3
    iget v5, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->width:I

    sub-int/2addr v5, v2

    if-ge v4, v5, :cond_9

    .line 3357
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3356
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 3358
    .end local v4    # "i":I
    :cond_9
    iget-object v3, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->f:Landroid/util/HiLogFormatter$Flags;

    sget-object v4, Landroid/util/HiLogFormatter$Flags;->UPPERCASE:Landroid/util/HiLogFormatter$Flags;

    invoke-virtual {v3, v4}, Landroid/util/HiLogFormatter$Flags;->contains(Landroid/util/HiLogFormatter$Flags;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 3359
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 3360
    :cond_a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3364
    .end local v1    # "s":Ljava/lang/String;
    .end local v2    # "len":I
    :cond_b
    :goto_4
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v1

    if-ne v1, v7, :cond_c

    move v8, v9

    nop

    :cond_c
    invoke-direct {p0, v0, v8}, Landroid/util/HiLogFormatter$FormatSpecifier;->trailingSign(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;

    .line 3367
    iget-object v1, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->this$0:Landroid/util/HiLogFormatter;

    invoke-static {v1}, Landroid/util/HiLogFormatter;->access$000(Landroid/util/HiLogFormatter;)Ljava/lang/Appendable;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/util/HiLogFormatter$FormatSpecifier;->justify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 3368
    return-void
.end method

.method private print(Ljava/time/temporal/TemporalAccessor;CLjava/util/Locale;)V
    .locals 4
    .param p1, "t"    # Ljava/time/temporal/TemporalAccessor;
    .param p2, "c"    # C
    .param p3, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4214
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-direct {p0, v0, p1, p2, p3}, Landroid/util/HiLogFormatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/time/temporal/TemporalAccessor;CLjava/util/Locale;)Ljava/lang/Appendable;

    .line 4216
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/util/HiLogFormatter$FormatSpecifier;->justify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4217
    .local v1, "s":Ljava/lang/String;
    iget-object v2, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->f:Landroid/util/HiLogFormatter$Flags;

    sget-object v3, Landroid/util/HiLogFormatter$Flags;->UPPERCASE:Landroid/util/HiLogFormatter$Flags;

    invoke-virtual {v2, v3}, Landroid/util/HiLogFormatter$Flags;->contains(Landroid/util/HiLogFormatter$Flags;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4218
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 4219
    :cond_0
    iget-object v2, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->this$0:Landroid/util/HiLogFormatter;

    invoke-static {v2}, Landroid/util/HiLogFormatter;->access$000(Landroid/util/HiLogFormatter;)Ljava/lang/Appendable;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 4220
    return-void
.end method

.method private print(Ljava/util/Calendar;CLjava/util/Locale;)V
    .locals 4
    .param p1, "t"    # Ljava/util/Calendar;
    .param p2, "c"    # C
    .param p3, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3992
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3993
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-direct {p0, v0, p1, p2, p3}, Landroid/util/HiLogFormatter$FormatSpecifier;->print(Ljava/lang/StringBuilder;Ljava/util/Calendar;CLjava/util/Locale;)Ljava/lang/Appendable;

    .line 3996
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/util/HiLogFormatter$FormatSpecifier;->justify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3997
    .local v1, "s":Ljava/lang/String;
    iget-object v2, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->f:Landroid/util/HiLogFormatter$Flags;

    sget-object v3, Landroid/util/HiLogFormatter$Flags;->UPPERCASE:Landroid/util/HiLogFormatter$Flags;

    invoke-virtual {v2, v3}, Landroid/util/HiLogFormatter$Flags;->contains(Landroid/util/HiLogFormatter$Flags;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3998
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 4000
    :cond_0
    iget-object v2, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->this$0:Landroid/util/HiLogFormatter;

    invoke-static {v2}, Landroid/util/HiLogFormatter;->access$000(Landroid/util/HiLogFormatter;)Ljava/lang/Appendable;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 4001
    return-void
.end method

.method private print(SLjava/util/Locale;)V
    .locals 4
    .param p1, "value"    # S
    .param p2, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3213
    int-to-long v0, p1

    .line 3214
    .local v0, "v":J
    if-gez p1, :cond_1

    iget-char v2, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->c:C

    const/16 v3, 0x6f

    if-eq v2, v3, :cond_0

    iget-char v2, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->c:C

    const/16 v3, 0x78

    if-ne v2, v3, :cond_1

    .line 3217
    :cond_0
    const-wide/32 v2, 0x10000

    add-long/2addr v0, v2

    .line 3218
    nop

    .line 3220
    :cond_1
    invoke-direct {p0, v0, v1, p2}, Landroid/util/HiLogFormatter$FormatSpecifier;->print(JLjava/util/Locale;)V

    .line 3221
    return-void
.end method

.method private printBoolean(Ljava/lang/Object;)V
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3037
    if-eqz p1, :cond_1

    .line 3038
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 3039
    move-object v0, p1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3040
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    .local v0, "s":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 3042
    .end local v0    # "s":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    .line 3043
    .restart local v0    # "s":Ljava/lang/String;
    :goto_1
    invoke-direct {p0, v0}, Landroid/util/HiLogFormatter$FormatSpecifier;->print(Ljava/lang/String;)V

    .line 3044
    return-void
.end method

.method private printCharacter(Ljava/lang/Object;)V
    .locals 4
    .param p1, "arg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2995
    if-nez p1, :cond_0

    .line 2996
    const-string v0, "null"

    invoke-direct {p0, v0}, Landroid/util/HiLogFormatter$FormatSpecifier;->print(Ljava/lang/String;)V

    .line 2997
    return-void

    .line 2999
    :cond_0
    const/4 v0, 0x0

    .line 3000
    .local v0, "s":Ljava/lang/String;
    instance-of v1, p1, Ljava/lang/Character;

    if-eqz v1, :cond_1

    .line 3001
    move-object v1, p1

    check-cast v1, Ljava/lang/Character;

    invoke-virtual {v1}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 3002
    :cond_1
    instance-of v1, p1, Ljava/lang/Byte;

    if-eqz v1, :cond_3

    .line 3003
    move-object v1, p1

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    .line 3004
    .local v1, "i":B
    invoke-static {v1}, Ljava/lang/Character;->isValidCodePoint(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3005
    new-instance v2, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V

    move-object v0, v2

    .line 3008
    .end local v1    # "i":B
    goto :goto_0

    .line 3007
    .restart local v1    # "i":B
    :cond_2
    new-instance v2, Ljava/util/IllegalFormatCodePointException;

    invoke-direct {v2, v1}, Ljava/util/IllegalFormatCodePointException;-><init>(I)V

    throw v2

    .line 3008
    .end local v1    # "i":B
    :cond_3
    instance-of v1, p1, Ljava/lang/Short;

    if-eqz v1, :cond_5

    .line 3009
    move-object v1, p1

    check-cast v1, Ljava/lang/Short;

    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    .line 3010
    .local v1, "i":S
    invoke-static {v1}, Ljava/lang/Character;->isValidCodePoint(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3011
    new-instance v2, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V

    move-object v0, v2

    .line 3014
    .end local v1    # "i":S
    goto :goto_0

    .line 3013
    .restart local v1    # "i":S
    :cond_4
    new-instance v2, Ljava/util/IllegalFormatCodePointException;

    invoke-direct {v2, v1}, Ljava/util/IllegalFormatCodePointException;-><init>(I)V

    throw v2

    .line 3014
    .end local v1    # "i":S
    :cond_5
    instance-of v1, p1, Ljava/lang/Integer;

    if-eqz v1, :cond_7

    .line 3015
    move-object v1, p1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 3016
    .local v1, "i":I
    invoke-static {v1}, Ljava/lang/Character;->isValidCodePoint(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 3017
    new-instance v2, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V

    move-object v0, v2

    .line 3020
    .end local v1    # "i":I
    goto :goto_0

    .line 3019
    .restart local v1    # "i":I
    :cond_6
    new-instance v2, Ljava/util/IllegalFormatCodePointException;

    invoke-direct {v2, v1}, Ljava/util/IllegalFormatCodePointException;-><init>(I)V

    throw v2

    .line 3021
    .end local v1    # "i":I
    :cond_7
    iget-char v1, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->c:C

    invoke-direct {p0, v1, p1}, Landroid/util/HiLogFormatter$FormatSpecifier;->failConversion(CLjava/lang/Object;)V

    .line 3023
    :goto_0
    invoke-direct {p0, v0}, Landroid/util/HiLogFormatter$FormatSpecifier;->print(Ljava/lang/String;)V

    .line 3024
    return-void
.end method

.method private printDateTime(Ljava/lang/Object;Ljava/util/Locale;)V
    .locals 3
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2962
    if-nez p1, :cond_0

    .line 2963
    const-string v0, "null"

    invoke-direct {p0, v0}, Landroid/util/HiLogFormatter$FormatSpecifier;->print(Ljava/lang/String;)V

    .line 2964
    return-void

    .line 2966
    :cond_0
    const/4 v0, 0x0

    .line 2970
    .local v0, "cal":Ljava/util/Calendar;
    instance-of v1, p1, Ljava/lang/Long;

    if-eqz v1, :cond_2

    .line 2973
    if-nez p2, :cond_1

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    goto :goto_0

    :cond_1
    move-object v1, p2

    :goto_0
    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 2974
    move-object v1, p1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_2

    .line 2975
    :cond_2
    instance-of v1, p1, Ljava/util/Date;

    if-eqz v1, :cond_4

    .line 2978
    if-nez p2, :cond_3

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    goto :goto_1

    :cond_3
    move-object v1, p2

    :goto_1
    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 2979
    move-object v1, p1

    check-cast v1, Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    goto :goto_2

    .line 2980
    :cond_4
    instance-of v1, p1, Ljava/util/Calendar;

    if-eqz v1, :cond_5

    .line 2981
    move-object v1, p1

    check-cast v1, Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/Calendar;

    .line 2982
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setLenient(Z)V

    goto :goto_2

    .line 2983
    :cond_5
    instance-of v1, p1, Ljava/time/temporal/TemporalAccessor;

    if-eqz v1, :cond_6

    .line 2984
    move-object v1, p1

    check-cast v1, Ljava/time/temporal/TemporalAccessor;

    iget-char v2, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->c:C

    invoke-direct {p0, v1, v2, p2}, Landroid/util/HiLogFormatter$FormatSpecifier;->print(Ljava/time/temporal/TemporalAccessor;CLjava/util/Locale;)V

    .line 2985
    return-void

    .line 2987
    :cond_6
    iget-char v1, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->c:C

    invoke-direct {p0, v1, p1}, Landroid/util/HiLogFormatter$FormatSpecifier;->failConversion(CLjava/lang/Object;)V

    .line 2991
    :goto_2
    iget-char v1, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->c:C

    invoke-direct {p0, v0, v1, p2}, Landroid/util/HiLogFormatter$FormatSpecifier;->print(Ljava/util/Calendar;CLjava/util/Locale;)V

    .line 2992
    return-void
.end method

.method private printFloat(Ljava/lang/Object;Ljava/util/Locale;)V
    .locals 2
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2949
    if-nez p1, :cond_0

    .line 2950
    const-string v0, "null"

    invoke-direct {p0, v0}, Landroid/util/HiLogFormatter$FormatSpecifier;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 2951
    :cond_0
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_1

    .line 2952
    move-object v0, p1

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-direct {p0, v0, p2}, Landroid/util/HiLogFormatter$FormatSpecifier;->print(FLjava/util/Locale;)V

    goto :goto_0

    .line 2953
    :cond_1
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_2

    .line 2954
    move-object v0, p1

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Landroid/util/HiLogFormatter$FormatSpecifier;->print(DLjava/util/Locale;)V

    goto :goto_0

    .line 2955
    :cond_2
    instance-of v0, p1, Ljava/math/BigDecimal;

    if-eqz v0, :cond_3

    .line 2956
    move-object v0, p1

    check-cast v0, Ljava/math/BigDecimal;

    invoke-direct {p0, v0, p2}, Landroid/util/HiLogFormatter$FormatSpecifier;->print(Ljava/math/BigDecimal;Ljava/util/Locale;)V

    goto :goto_0

    .line 2958
    :cond_3
    iget-char v0, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->c:C

    invoke-direct {p0, v0, p1}, Landroid/util/HiLogFormatter$FormatSpecifier;->failConversion(CLjava/lang/Object;)V

    .line 2959
    :goto_0
    return-void
.end method

.method private printHashCode(Ljava/lang/Object;)V
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3047
    if-nez p1, :cond_0

    .line 3048
    const-string v0, "null"

    goto :goto_0

    .line 3049
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 3050
    .local v0, "s":Ljava/lang/String;
    :goto_0
    invoke-direct {p0, v0}, Landroid/util/HiLogFormatter$FormatSpecifier;->print(Ljava/lang/String;)V

    .line 3051
    return-void
.end method

.method private printInteger(Ljava/lang/Object;Ljava/util/Locale;)V
    .locals 2
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2932
    if-nez p1, :cond_0

    .line 2933
    const-string v0, "null"

    invoke-direct {p0, v0}, Landroid/util/HiLogFormatter$FormatSpecifier;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 2934
    :cond_0
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_1

    .line 2935
    move-object v0, p1

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-direct {p0, v0, p2}, Landroid/util/HiLogFormatter$FormatSpecifier;->print(BLjava/util/Locale;)V

    goto :goto_0

    .line 2936
    :cond_1
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_2

    .line 2937
    move-object v0, p1

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    invoke-direct {p0, v0, p2}, Landroid/util/HiLogFormatter$FormatSpecifier;->print(SLjava/util/Locale;)V

    goto :goto_0

    .line 2938
    :cond_2
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 2939
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0, p2}, Landroid/util/HiLogFormatter$FormatSpecifier;->print(ILjava/util/Locale;)V

    goto :goto_0

    .line 2940
    :cond_3
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_4

    .line 2941
    move-object v0, p1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Landroid/util/HiLogFormatter$FormatSpecifier;->print(JLjava/util/Locale;)V

    goto :goto_0

    .line 2942
    :cond_4
    instance-of v0, p1, Ljava/math/BigInteger;

    if-eqz v0, :cond_5

    .line 2943
    move-object v0, p1

    check-cast v0, Ljava/math/BigInteger;

    invoke-direct {p0, v0, p2}, Landroid/util/HiLogFormatter$FormatSpecifier;->print(Ljava/math/BigInteger;Ljava/util/Locale;)V

    goto :goto_0

    .line 2945
    :cond_5
    iget-char v0, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->c:C

    invoke-direct {p0, v0, p1}, Landroid/util/HiLogFormatter$FormatSpecifier;->failConversion(CLjava/lang/Object;)V

    .line 2946
    :goto_0
    return-void
.end method

.method private printString(Ljava/lang/Object;Ljava/util/Locale;)V
    .locals 2
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3027
    iget-object v0, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->f:Landroid/util/HiLogFormatter$Flags;

    sget-object v1, Landroid/util/HiLogFormatter$Flags;->ALTERNATE:Landroid/util/HiLogFormatter$Flags;

    invoke-virtual {v0, v1}, Landroid/util/HiLogFormatter$Flags;->contains(Landroid/util/HiLogFormatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3028
    sget-object v0, Landroid/util/HiLogFormatter$Flags;->ALTERNATE:Landroid/util/HiLogFormatter$Flags;

    const/16 v1, 0x73

    invoke-direct {p0, v0, v1}, Landroid/util/HiLogFormatter$FormatSpecifier;->failMismatch(Landroid/util/HiLogFormatter$Flags;C)V

    .line 3029
    :cond_0
    if-nez p1, :cond_1

    .line 3030
    const-string v0, "null"

    invoke-direct {p0, v0}, Landroid/util/HiLogFormatter$FormatSpecifier;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 3032
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/util/HiLogFormatter$FormatSpecifier;->print(Ljava/lang/String;)V

    .line 3033
    :goto_0
    return-void
.end method

.method private privacy(Ljava/lang/String;)V
    .locals 2
    .param p1, "privacyStr"    # Ljava/lang/String;

    .line 2751
    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 2752
    iput-boolean v0, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->privacy:Z

    goto :goto_0

    .line 2753
    :cond_0
    const-string v1, "public"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 2754
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->privacy:Z

    goto :goto_0

    .line 2756
    :cond_1
    iput-boolean v0, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->privacy:Z

    .line 2758
    :goto_0
    return-void
.end method

.method private trailingSign(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "neg"    # Z

    .line 3309
    if-eqz p2, :cond_0

    iget-object v0, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->f:Landroid/util/HiLogFormatter$Flags;

    sget-object v1, Landroid/util/HiLogFormatter$Flags;->PARENTHESES:Landroid/util/HiLogFormatter$Flags;

    invoke-virtual {v0, v1}, Landroid/util/HiLogFormatter$Flags;->contains(Landroid/util/HiLogFormatter$Flags;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3310
    const/16 v0, 0x29

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3311
    :cond_0
    return-object p1
.end method

.method private trailingZeros([CI)[C
    .locals 3
    .param p1, "mant"    # [C
    .param p2, "nzeros"    # I

    .line 3980
    move-object v0, p1

    .line 3981
    .local v0, "tmp":[C
    if-lez p2, :cond_0

    .line 3982
    array-length v1, p1

    add-int/2addr v1, p2

    new-array v0, v1, [C

    .line 3983
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3984
    array-length v1, p1

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 3985
    const/16 v2, 0x30

    aput-char v2, v0, v1

    .line 3984
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3987
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private width(Ljava/lang/String;)I
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 2791
    const/4 v0, -0x1

    iput v0, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->width:I

    .line 2792
    if-eqz p1, :cond_1

    .line 2794
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->width:I

    .line 2795
    iget v0, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->width:I

    if-ltz v0, :cond_0

    .line 2799
    goto :goto_0

    .line 2796
    :cond_0
    new-instance v0, Ljava/util/IllegalFormatWidthException;

    iget v1, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->width:I

    invoke-direct {v0, v1}, Ljava/util/IllegalFormatWidthException;-><init>(I)V

    throw v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2797
    :catch_0
    move-exception v0

    .line 2798
    .local v0, "x":Ljava/lang/NumberFormatException;
    nop

    .line 2801
    .end local v0    # "x":Ljava/lang/NumberFormatException;
    :cond_1
    :goto_0
    iget v0, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->width:I

    return v0
.end method


# virtual methods
.method flags()Landroid/util/HiLogFormatter$Flags;
    .locals 1

    .line 2787
    iget-object v0, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->f:Landroid/util/HiLogFormatter$Flags;

    return-object v0
.end method

.method public index()I
    .locals 1

    .line 2776
    iget v0, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->index:I

    return v0
.end method

.method precision()I
    .locals 1

    .line 2825
    iget v0, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->precision:I

    return v0
.end method

.method public print(Ljava/lang/Object;Ljava/util/Locale;)V
    .locals 2
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2890
    iget-boolean v0, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->dt:Z

    if-eqz v0, :cond_0

    .line 2891
    invoke-direct {p0, p1, p2}, Landroid/util/HiLogFormatter$FormatSpecifier;->printDateTime(Ljava/lang/Object;Ljava/util/Locale;)V

    .line 2892
    return-void

    .line 2895
    :cond_0
    iget-char v0, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->c:C

    const/16 v1, 0x25

    if-eq v0, v1, :cond_4

    const/16 v1, 0x43

    if-eq v0, v1, :cond_3

    const/16 v1, 0x73

    if-eq v0, v1, :cond_2

    const/16 v1, 0x78

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    .line 2927
    goto :goto_0

    .line 2921
    :pswitch_0
    iget-object v0, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->this$0:Landroid/util/HiLogFormatter;

    invoke-static {v0}, Landroid/util/HiLogFormatter;->access$000(Landroid/util/HiLogFormatter;)Ljava/lang/Appendable;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 2922
    goto :goto_0

    .line 2918
    :pswitch_1
    invoke-direct {p0, p1}, Landroid/util/HiLogFormatter$FormatSpecifier;->printHashCode(Ljava/lang/Object;)V

    .line 2919
    goto :goto_0

    .line 2912
    :pswitch_2
    invoke-direct {p0, p1}, Landroid/util/HiLogFormatter$FormatSpecifier;->printBoolean(Ljava/lang/Object;)V

    .line 2913
    goto :goto_0

    .line 2905
    :pswitch_3
    invoke-direct {p0, p1, p2}, Landroid/util/HiLogFormatter$FormatSpecifier;->printFloat(Ljava/lang/Object;Ljava/util/Locale;)V

    .line 2906
    goto :goto_0

    .line 2899
    :cond_1
    :pswitch_4
    invoke-direct {p0, p1, p2}, Landroid/util/HiLogFormatter$FormatSpecifier;->printInteger(Ljava/lang/Object;Ljava/util/Locale;)V

    .line 2900
    goto :goto_0

    .line 2915
    :cond_2
    invoke-direct {p0, p1, p2}, Landroid/util/HiLogFormatter$FormatSpecifier;->printString(Ljava/lang/Object;Ljava/util/Locale;)V

    .line 2916
    goto :goto_0

    .line 2909
    :cond_3
    :pswitch_5
    invoke-direct {p0, p1}, Landroid/util/HiLogFormatter$FormatSpecifier;->printCharacter(Ljava/lang/Object;)V

    .line 2910
    goto :goto_0

    .line 2924
    :cond_4
    iget-object v0, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->this$0:Landroid/util/HiLogFormatter;

    invoke-static {v0}, Landroid/util/HiLogFormatter;->access$000(Landroid/util/HiLogFormatter;)Ljava/lang/Appendable;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 2925
    nop

    .line 2929
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x61
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x6e
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public print(Ljava/lang/Object;Ljava/util/Locale;Z)V
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "l"    # Ljava/util/Locale;
    .param p3, "showPrivacy"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2882
    if-nez p3, :cond_0

    iget-boolean v0, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->privacy:Z

    if-eqz v0, :cond_0

    .line 2883
    const-string v0, "<private>"

    invoke-direct {p0, v0, p2}, Landroid/util/HiLogFormatter$FormatSpecifier;->printString(Ljava/lang/Object;Ljava/util/Locale;)V

    goto :goto_0

    .line 2885
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/util/HiLogFormatter$FormatSpecifier;->print(Ljava/lang/Object;Ljava/util/Locale;)V

    .line 2887
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 3079
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "%"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3081
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->f:Landroid/util/HiLogFormatter$Flags;

    invoke-virtual {v1}, Landroid/util/HiLogFormatter$Flags;->dup()Landroid/util/HiLogFormatter$Flags;

    move-result-object v1

    sget-object v2, Landroid/util/HiLogFormatter$Flags;->UPPERCASE:Landroid/util/HiLogFormatter$Flags;

    invoke-virtual {v1, v2}, Landroid/util/HiLogFormatter$Flags;->remove(Landroid/util/HiLogFormatter$Flags;)Landroid/util/HiLogFormatter$Flags;

    move-result-object v1

    .line 3082
    .local v1, "dupf":Landroid/util/HiLogFormatter$Flags;
    invoke-virtual {v1}, Landroid/util/HiLogFormatter$Flags;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3083
    iget v2, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->index:I

    if-lez v2, :cond_0

    .line 3084
    iget v2, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->index:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3085
    :cond_0
    iget v2, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->width:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 3086
    iget v2, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->width:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3087
    :cond_1
    iget v2, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->precision:I

    if-eq v2, v3, :cond_2

    .line 3088
    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->precision:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3089
    :cond_2
    iget-boolean v2, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->dt:Z

    if-eqz v2, :cond_4

    .line 3090
    iget-object v2, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->f:Landroid/util/HiLogFormatter$Flags;

    sget-object v3, Landroid/util/HiLogFormatter$Flags;->UPPERCASE:Landroid/util/HiLogFormatter$Flags;

    invoke-virtual {v2, v3}, Landroid/util/HiLogFormatter$Flags;->contains(Landroid/util/HiLogFormatter$Flags;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x54

    goto :goto_0

    :cond_3
    const/16 v2, 0x74

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3091
    :cond_4
    iget-object v2, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->f:Landroid/util/HiLogFormatter$Flags;

    sget-object v3, Landroid/util/HiLogFormatter$Flags;->UPPERCASE:Landroid/util/HiLogFormatter$Flags;

    invoke-virtual {v2, v3}, Landroid/util/HiLogFormatter$Flags;->contains(Landroid/util/HiLogFormatter$Flags;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3092
    iget-char v2, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->c:C

    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    goto :goto_1

    :cond_5
    iget-char v2, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->c:C

    .line 3091
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3093
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method width()I
    .locals 1

    .line 2805
    iget v0, p0, Landroid/util/HiLogFormatter$FormatSpecifier;->width:I

    return v0
.end method
