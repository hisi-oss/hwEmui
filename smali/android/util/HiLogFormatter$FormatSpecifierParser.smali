.class Landroid/util/HiLogFormatter$FormatSpecifierParser;
.super Ljava/lang/Object;
.source "HiLogFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/HiLogFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FormatSpecifierParser"
.end annotation


# static fields
.field private static final FLAGS:Ljava/lang/String; = ",-(+# 0<"


# instance fields
.field private conv:Ljava/lang/String;

.field private cursor:I

.field private flags:Ljava/lang/String;

.field private final format:Ljava/lang/String;

.field private fs:Landroid/util/HiLogFormatter$FormatSpecifier;

.field private index:Ljava/lang/String;

.field private precision:Ljava/lang/String;

.field private tT:Ljava/lang/String;

.field final synthetic this$0:Landroid/util/HiLogFormatter;

.field private width:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/util/HiLogFormatter;Ljava/lang/String;I)V
    .locals 12
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "startIdx"    # I

    .line 2613
    iput-object p1, p0, Landroid/util/HiLogFormatter$FormatSpecifierParser;->this$0:Landroid/util/HiLogFormatter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2614
    iput-object p2, p0, Landroid/util/HiLogFormatter$FormatSpecifierParser;->format:Ljava/lang/String;

    .line 2615
    iput p3, p0, Landroid/util/HiLogFormatter$FormatSpecifierParser;->cursor:I

    .line 2617
    const/4 v0, 0x0

    .line 2619
    .local v0, "privacyStr":Ljava/lang/String;
    iget v1, p0, Landroid/util/HiLogFormatter$FormatSpecifierParser;->cursor:I

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x7b

    if-ne v1, v2, :cond_0

    .line 2620
    const/16 v1, 0x7d

    iget v2, p0, Landroid/util/HiLogFormatter$FormatSpecifierParser;->cursor:I

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 2621
    .local v1, "flagEndIndex":I
    const/4 v2, -0x1

    if-eq v2, v1, :cond_0

    .line 2622
    iget v2, p0, Landroid/util/HiLogFormatter$FormatSpecifierParser;->cursor:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p2, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2623
    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/util/HiLogFormatter$FormatSpecifierParser;->cursor:I

    .line 2627
    .end local v1    # "flagEndIndex":I
    :cond_0
    invoke-direct {p0}, Landroid/util/HiLogFormatter$FormatSpecifierParser;->nextIsInt()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2628
    invoke-direct {p0}, Landroid/util/HiLogFormatter$FormatSpecifierParser;->nextInt()Ljava/lang/String;

    move-result-object v1

    .line 2629
    .local v1, "nint":Ljava/lang/String;
    invoke-direct {p0}, Landroid/util/HiLogFormatter$FormatSpecifierParser;->peek()C

    move-result v2

    const/16 v3, 0x24

    if-ne v2, v3, :cond_1

    .line 2630
    iput-object v1, p0, Landroid/util/HiLogFormatter$FormatSpecifierParser;->index:Ljava/lang/String;

    .line 2631
    invoke-direct {p0}, Landroid/util/HiLogFormatter$FormatSpecifierParser;->advance()C

    goto :goto_0

    .line 2632
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-ne v2, v3, :cond_2

    .line 2634
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/util/HiLogFormatter$FormatSpecifierParser;->back(I)V

    goto :goto_0

    .line 2637
    :cond_2
    iput-object v1, p0, Landroid/util/HiLogFormatter$FormatSpecifierParser;->width:Ljava/lang/String;

    .line 2641
    .end local v1    # "nint":Ljava/lang/String;
    :cond_3
    :goto_0
    const-string v1, ""

    iput-object v1, p0, Landroid/util/HiLogFormatter$FormatSpecifierParser;->flags:Ljava/lang/String;

    .line 2642
    :goto_1
    iget-object v1, p0, Landroid/util/HiLogFormatter$FormatSpecifierParser;->width:Ljava/lang/String;

    if-nez v1, :cond_4

    const-string v1, ",-(+# 0<"

    invoke-direct {p0}, Landroid/util/HiLogFormatter$FormatSpecifierParser;->peek()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_4

    .line 2643
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/util/HiLogFormatter$FormatSpecifierParser;->flags:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Landroid/util/HiLogFormatter$FormatSpecifierParser;->advance()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/util/HiLogFormatter$FormatSpecifierParser;->flags:Ljava/lang/String;

    goto :goto_1

    .line 2646
    :cond_4
    iget-object v1, p0, Landroid/util/HiLogFormatter$FormatSpecifierParser;->width:Ljava/lang/String;

    if-nez v1, :cond_5

    invoke-direct {p0}, Landroid/util/HiLogFormatter$FormatSpecifierParser;->nextIsInt()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2647
    invoke-direct {p0}, Landroid/util/HiLogFormatter$FormatSpecifierParser;->nextInt()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/util/HiLogFormatter$FormatSpecifierParser;->width:Ljava/lang/String;

    .line 2650
    :cond_5
    invoke-direct {p0}, Landroid/util/HiLogFormatter$FormatSpecifierParser;->peek()C

    move-result v1

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_7

    .line 2651
    invoke-direct {p0}, Landroid/util/HiLogFormatter$FormatSpecifierParser;->advance()C

    .line 2652
    invoke-direct {p0}, Landroid/util/HiLogFormatter$FormatSpecifierParser;->nextIsInt()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2655
    invoke-direct {p0}, Landroid/util/HiLogFormatter$FormatSpecifierParser;->nextInt()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/util/HiLogFormatter$FormatSpecifierParser;->precision:Ljava/lang/String;

    goto :goto_2

    .line 2653
    :cond_6
    new-instance p1, Ljava/util/IllegalFormatPrecisionException;

    invoke-direct {p0}, Landroid/util/HiLogFormatter$FormatSpecifierParser;->peek()C

    move-result v1

    invoke-direct {p1, v1}, Ljava/util/IllegalFormatPrecisionException;-><init>(I)V

    throw p1

    .line 2658
    :cond_7
    :goto_2
    invoke-direct {p0}, Landroid/util/HiLogFormatter$FormatSpecifierParser;->peek()C

    move-result v1

    const/16 v2, 0x74

    if-eq v1, v2, :cond_8

    invoke-direct {p0}, Landroid/util/HiLogFormatter$FormatSpecifierParser;->peek()C

    move-result v1

    const/16 v2, 0x54

    if-ne v1, v2, :cond_9

    .line 2659
    :cond_8
    invoke-direct {p0}, Landroid/util/HiLogFormatter$FormatSpecifierParser;->advance()C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/util/HiLogFormatter$FormatSpecifierParser;->tT:Ljava/lang/String;

    .line 2662
    :cond_9
    invoke-direct {p0}, Landroid/util/HiLogFormatter$FormatSpecifierParser;->advance()C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/util/HiLogFormatter$FormatSpecifierParser;->conv:Ljava/lang/String;

    .line 2664
    new-instance v1, Landroid/util/HiLogFormatter$FormatSpecifier;

    iget-object v5, p0, Landroid/util/HiLogFormatter$FormatSpecifierParser;->index:Ljava/lang/String;

    iget-object v6, p0, Landroid/util/HiLogFormatter$FormatSpecifierParser;->flags:Ljava/lang/String;

    iget-object v7, p0, Landroid/util/HiLogFormatter$FormatSpecifierParser;->width:Ljava/lang/String;

    iget-object v8, p0, Landroid/util/HiLogFormatter$FormatSpecifierParser;->precision:Ljava/lang/String;

    iget-object v9, p0, Landroid/util/HiLogFormatter$FormatSpecifierParser;->tT:Ljava/lang/String;

    iget-object v10, p0, Landroid/util/HiLogFormatter$FormatSpecifierParser;->conv:Ljava/lang/String;

    move-object v3, v1

    move-object v4, p1

    move-object v11, v0

    invoke-direct/range {v3 .. v11}, Landroid/util/HiLogFormatter$FormatSpecifier;-><init>(Landroid/util/HiLogFormatter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Landroid/util/HiLogFormatter$FormatSpecifierParser;->fs:Landroid/util/HiLogFormatter$FormatSpecifier;

    .line 2665
    return-void
.end method

.method private advance()C
    .locals 3

    .line 2687
    invoke-direct {p0}, Landroid/util/HiLogFormatter$FormatSpecifierParser;->isEnd()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2690
    iget-object v0, p0, Landroid/util/HiLogFormatter$FormatSpecifierParser;->format:Ljava/lang/String;

    iget v1, p0, Landroid/util/HiLogFormatter$FormatSpecifierParser;->cursor:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/util/HiLogFormatter$FormatSpecifierParser;->cursor:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0

    .line 2688
    :cond_0
    new-instance v0, Ljava/util/UnknownFormatConversionException;

    const-string v1, "End of String"

    invoke-direct {v0, v1}, Ljava/util/UnknownFormatConversionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private back(I)V
    .locals 1
    .param p1, "len"    # I

    .line 2694
    iget v0, p0, Landroid/util/HiLogFormatter$FormatSpecifierParser;->cursor:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroid/util/HiLogFormatter$FormatSpecifierParser;->cursor:I

    .line 2695
    return-void
.end method

.method private isEnd()Z
    .locals 2

    .line 2698
    iget v0, p0, Landroid/util/HiLogFormatter$FormatSpecifierParser;->cursor:I

    iget-object v1, p0, Landroid/util/HiLogFormatter$FormatSpecifierParser;->format:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private nextInt()Ljava/lang/String;
    .locals 3

    .line 2668
    iget v0, p0, Landroid/util/HiLogFormatter$FormatSpecifierParser;->cursor:I

    .line 2669
    .local v0, "strBegin":I
    :goto_0
    invoke-direct {p0}, Landroid/util/HiLogFormatter$FormatSpecifierParser;->nextIsInt()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2670
    invoke-direct {p0}, Landroid/util/HiLogFormatter$FormatSpecifierParser;->advance()C

    goto :goto_0

    .line 2672
    :cond_0
    iget-object v1, p0, Landroid/util/HiLogFormatter$FormatSpecifierParser;->format:Ljava/lang/String;

    iget v2, p0, Landroid/util/HiLogFormatter$FormatSpecifierParser;->cursor:I

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private nextIsInt()Z
    .locals 1

    .line 2676
    invoke-direct {p0}, Landroid/util/HiLogFormatter$FormatSpecifierParser;->isEnd()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/util/HiLogFormatter$FormatSpecifierParser;->peek()C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private peek()C
    .locals 2

    .line 2680
    invoke-direct {p0}, Landroid/util/HiLogFormatter$FormatSpecifierParser;->isEnd()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2683
    iget-object v0, p0, Landroid/util/HiLogFormatter$FormatSpecifierParser;->format:Ljava/lang/String;

    iget v1, p0, Landroid/util/HiLogFormatter$FormatSpecifierParser;->cursor:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0

    .line 2681
    :cond_0
    new-instance v0, Ljava/util/UnknownFormatConversionException;

    const-string v1, "End of String"

    invoke-direct {v0, v1}, Ljava/util/UnknownFormatConversionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getEndIdx()I
    .locals 1

    .line 2706
    iget v0, p0, Landroid/util/HiLogFormatter$FormatSpecifierParser;->cursor:I

    return v0
.end method

.method public getFormatSpecifier()Landroid/util/HiLogFormatter$FormatSpecifier;
    .locals 1

    .line 2702
    iget-object v0, p0, Landroid/util/HiLogFormatter$FormatSpecifierParser;->fs:Landroid/util/HiLogFormatter$FormatSpecifier;

    return-object v0
.end method
