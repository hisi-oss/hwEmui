.class public final Landroid/util/HiLogFormatter;
.super Ljava/lang/Object;
.source "HiLogFormatter.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/HiLogFormatter$DateTime;,
        Landroid/util/HiLogFormatter$Conversion;,
        Landroid/util/HiLogFormatter$Flags;,
        Landroid/util/HiLogFormatter$FormatSpecifier;,
        Landroid/util/HiLogFormatter$BigDecimalLayoutForm;,
        Landroid/util/HiLogFormatter$FixedString;,
        Landroid/util/HiLogFormatter$FormatString;,
        Landroid/util/HiLogFormatter$FormatSpecifierParser;
    }
.end annotation


# static fields
.field private static final MAX_FD_CHARS:I = 0x1e

.field private static scaleUp:D


# instance fields
.field private a:Ljava/lang/Appendable;

.field private final l:Ljava/util/Locale;

.field private lastException:Ljava/io/IOException;

.field private final zero:C


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1946
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v0, v1}, Landroid/util/HiLogFormatter;-><init>(Ljava/util/Locale;Ljava/lang/Appendable;)V

    .line 1947
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 4
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 2139
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-direct {p0, v0, v1}, Landroid/util/HiLogFormatter;-><init>(Ljava/util/Locale;Ljava/lang/Appendable;)V

    .line 2141
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .param p2, "csn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 2178
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Landroid/util/HiLogFormatter;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/util/Locale;)V

    .line 2179
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Ljava/util/Locale;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .param p2, "csn"    # Ljava/lang/String;
    .param p3, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 2217
    invoke-static {p2}, Landroid/util/HiLogFormatter;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-direct {p0, v0, p3, p1}, Landroid/util/HiLogFormatter;-><init>(Ljava/nio/charset/Charset;Ljava/util/Locale;Ljava/io/File;)V

    .line 2218
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "os"    # Ljava/io/OutputStream;

    .line 2257
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    invoke-direct {v2, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-direct {p0, v0, v1}, Landroid/util/HiLogFormatter;-><init>(Ljava/util/Locale;Ljava/lang/Appendable;)V

    .line 2259
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "csn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 2284
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Landroid/util/HiLogFormatter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;Ljava/util/Locale;)V

    .line 2285
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/lang/String;Ljava/util/Locale;)V
    .locals 2
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "csn"    # Ljava/lang/String;
    .param p3, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 2310
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, p1, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-direct {p0, p3, v0}, Landroid/util/HiLogFormatter;-><init>(Ljava/util/Locale;Ljava/lang/Appendable;)V

    .line 2311
    return-void
.end method

.method public constructor <init>(Ljava/io/PrintStream;)V
    .locals 2
    .param p1, "ps"    # Ljava/io/PrintStream;

    .line 2236
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    .line 2237
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Appendable;

    .line 2236
    invoke-direct {p0, v0, v1}, Landroid/util/HiLogFormatter;-><init>(Ljava/util/Locale;Ljava/lang/Appendable;)V

    .line 2238
    return-void
.end method

.method public constructor <init>(Ljava/lang/Appendable;)V
    .locals 2
    .param p1, "a"    # Ljava/lang/Appendable;

    .line 1962
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    invoke-static {p1}, Landroid/util/HiLogFormatter;->nonNullAppendable(Ljava/lang/Appendable;)Ljava/lang/Appendable;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/util/HiLogFormatter;-><init>(Ljava/util/Locale;Ljava/lang/Appendable;)V

    .line 1963
    return-void
.end method

.method public constructor <init>(Ljava/lang/Appendable;Ljava/util/Locale;)V
    .locals 1
    .param p1, "a"    # Ljava/lang/Appendable;
    .param p2, "l"    # Ljava/util/Locale;

    .line 1995
    invoke-static {p1}, Landroid/util/HiLogFormatter;->nonNullAppendable(Ljava/lang/Appendable;)Ljava/lang/Appendable;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Landroid/util/HiLogFormatter;-><init>(Ljava/util/Locale;Ljava/lang/Appendable;)V

    .line 1996
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 2028
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-direct {p0, v0, v1}, Landroid/util/HiLogFormatter;-><init>(Ljava/util/Locale;Ljava/lang/Appendable;)V

    .line 2030
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "csn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 2067
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Landroid/util/HiLogFormatter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)V

    .line 2068
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)V
    .locals 2
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "csn"    # Ljava/lang/String;
    .param p3, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 2106
    invoke-static {p2}, Landroid/util/HiLogFormatter;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p3, v1}, Landroid/util/HiLogFormatter;-><init>(Ljava/nio/charset/Charset;Ljava/util/Locale;Ljava/io/File;)V

    .line 2107
    return-void
.end method

.method private constructor <init>(Ljava/nio/charset/Charset;Ljava/util/Locale;Ljava/io/File;)V
    .locals 3
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .param p2, "l"    # Ljava/util/Locale;
    .param p3, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1930
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-direct {p0, p2, v0}, Landroid/util/HiLogFormatter;-><init>(Ljava/util/Locale;Ljava/lang/Appendable;)V

    .line 1932
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 1
    .param p1, "l"    # Ljava/util/Locale;

    .line 1979
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1, v0}, Landroid/util/HiLogFormatter;-><init>(Ljava/util/Locale;Ljava/lang/Appendable;)V

    .line 1980
    return-void
.end method

.method private constructor <init>(Ljava/util/Locale;Ljava/lang/Appendable;)V
    .locals 1
    .param p1, "l"    # Ljava/util/Locale;
    .param p2, "a"    # Ljava/lang/Appendable;

    .line 1921
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1922
    iput-object p2, p0, Landroid/util/HiLogFormatter;->a:Ljava/lang/Appendable;

    .line 1923
    iput-object p1, p0, Landroid/util/HiLogFormatter;->l:Ljava/util/Locale;

    .line 1924
    invoke-static {p1}, Landroid/util/HiLogFormatter;->getZero(Ljava/util/Locale;)C

    move-result v0

    iput-char v0, p0, Landroid/util/HiLogFormatter;->zero:C

    .line 1925
    return-void
.end method

.method static synthetic access$000(Landroid/util/HiLogFormatter;)Ljava/lang/Appendable;
    .locals 1
    .param p0, "x0"    # Landroid/util/HiLogFormatter;

    .line 1883
    iget-object v0, p0, Landroid/util/HiLogFormatter;->a:Ljava/lang/Appendable;

    return-object v0
.end method

.method static synthetic access$200(Landroid/util/HiLogFormatter;)Ljava/util/Locale;
    .locals 1
    .param p0, "x0"    # Landroid/util/HiLogFormatter;

    .line 1883
    iget-object v0, p0, Landroid/util/HiLogFormatter;->l:Ljava/util/Locale;

    return-object v0
.end method

.method static synthetic access$300()D
    .locals 2

    .line 1883
    sget-wide v0, Landroid/util/HiLogFormatter;->scaleUp:D

    return-wide v0
.end method

.method static synthetic access$302(D)D
    .locals 0
    .param p0, "x0"    # D

    .line 1883
    sput-wide p0, Landroid/util/HiLogFormatter;->scaleUp:D

    return-wide p0
.end method

.method static synthetic access$400(Landroid/util/HiLogFormatter;)C
    .locals 1
    .param p0, "x0"    # Landroid/util/HiLogFormatter;

    .line 1883
    iget-char v0, p0, Landroid/util/HiLogFormatter;->zero:C

    return v0
.end method

.method private ensureOpen()V
    .locals 1

    .line 2438
    iget-object v0, p0, Landroid/util/HiLogFormatter;->a:Ljava/lang/Appendable;

    if-eqz v0, :cond_0

    .line 2440
    return-void

    .line 2439
    :cond_0
    new-instance v0, Ljava/util/FormatterClosedException;

    invoke-direct {v0}, Ljava/util/FormatterClosedException;-><init>()V

    throw v0
.end method

.method private static getZero(Ljava/util/Locale;)C
    .locals 2
    .param p0, "l"    # Ljava/util/Locale;

    .line 2314
    if-eqz p0, :cond_0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2315
    invoke-static {p0}, Ljava/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    move-result-object v0

    .line 2316
    .local v0, "dfs":Ljava/text/DecimalFormatSymbols;
    invoke-virtual {v0}, Ljava/text/DecimalFormatSymbols;->getZeroDigit()C

    move-result v1

    return v1

    .line 2318
    .end local v0    # "dfs":Ljava/text/DecimalFormatSymbols;
    :cond_0
    const/16 v0, 0x30

    return v0
.end method

.method private static final nonNullAppendable(Ljava/lang/Appendable;)Ljava/lang/Appendable;
    .locals 1
    .param p0, "a"    # Ljava/lang/Appendable;

    .line 1914
    if-nez p0, :cond_0

    .line 1915
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    return-object v0

    .line 1917
    :cond_0
    return-object p0
.end method

.method private parse(Ljava/lang/String;)[Landroid/util/HiLogFormatter$FormatString;
    .locals 8
    .param p1, "s"    # Ljava/lang/String;

    .line 2573
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2574
    .local v0, "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/HiLogFormatter$FormatString;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, "len":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 2575
    const/16 v3, 0x25

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 2576
    .local v4, "nextPercent":I
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v3, :cond_1

    .line 2579
    move v3, v1

    .line 2580
    .local v3, "plainTextStart":I
    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    move v5, v2

    goto :goto_1

    :cond_0
    move v5, v4

    .line 2581
    .local v5, "plainTextEnd":I
    :goto_1
    new-instance v6, Landroid/util/HiLogFormatter$FixedString;

    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, p0, v7}, Landroid/util/HiLogFormatter$FixedString;-><init>(Landroid/util/HiLogFormatter;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2583
    move v1, v5

    .line 2584
    .end local v3    # "plainTextStart":I
    .end local v5    # "plainTextEnd":I
    goto :goto_2

    .line 2586
    :cond_1
    new-instance v3, Landroid/util/HiLogFormatter$FormatSpecifierParser;

    add-int/lit8 v5, v1, 0x1

    invoke-direct {v3, p0, p1, v5}, Landroid/util/HiLogFormatter$FormatSpecifierParser;-><init>(Landroid/util/HiLogFormatter;Ljava/lang/String;I)V

    .line 2587
    .local v3, "fsp":Landroid/util/HiLogFormatter$FormatSpecifierParser;
    invoke-virtual {v3}, Landroid/util/HiLogFormatter$FormatSpecifierParser;->getFormatSpecifier()Landroid/util/HiLogFormatter$FormatSpecifier;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2588
    invoke-virtual {v3}, Landroid/util/HiLogFormatter$FormatSpecifierParser;->getEndIdx()I

    move-result v1

    .line 2590
    .end local v3    # "fsp":Landroid/util/HiLogFormatter$FormatSpecifierParser;
    .end local v4    # "nextPercent":I
    :goto_2
    goto :goto_0

    .line 2591
    .end local v1    # "i":I
    .end local v2    # "len":I
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/util/HiLogFormatter$FormatString;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/util/HiLogFormatter$FormatString;

    return-object v1
.end method

.method private static toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;
    .locals 2
    .param p0, "csn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 1904
    const-string v0, "charsetName"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1906
    :try_start_0
    invoke-static {p0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0
    :try_end_0
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1907
    :catch_0
    move-exception v0

    .line 1909
    .local v0, "unused":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v1, p0}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 2425
    iget-object v0, p0, Landroid/util/HiLogFormatter;->a:Ljava/lang/Appendable;

    if-nez v0, :cond_0

    .line 2426
    return-void

    .line 2428
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/util/HiLogFormatter;->a:Ljava/lang/Appendable;

    instance-of v1, v1, Ljava/io/Closeable;

    if-eqz v1, :cond_1

    .line 2429
    iget-object v1, p0, Landroid/util/HiLogFormatter;->a:Ljava/lang/Appendable;

    check-cast v1, Ljava/io/Closeable;

    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2433
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 2430
    :catch_0
    move-exception v1

    .line 2431
    .local v1, "ioe":Ljava/io/IOException;
    :try_start_1
    iput-object v1, p0, Landroid/util/HiLogFormatter;->lastException:Ljava/io/IOException;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2433
    .end local v1    # "ioe":Ljava/io/IOException;
    :cond_1
    :goto_0
    iput-object v0, p0, Landroid/util/HiLogFormatter;->a:Ljava/lang/Appendable;

    .line 2434
    nop

    .line 2435
    return-void

    .line 2433
    :goto_1
    iput-object v0, p0, Landroid/util/HiLogFormatter;->a:Ljava/lang/Appendable;

    throw v1
.end method

.method public flush()V
    .locals 1

    .line 2402
    invoke-direct {p0}, Landroid/util/HiLogFormatter;->ensureOpen()V

    .line 2403
    iget-object v0, p0, Landroid/util/HiLogFormatter;->a:Ljava/lang/Appendable;

    instance-of v0, v0, Ljava/io/Flushable;

    if-eqz v0, :cond_0

    .line 2405
    :try_start_0
    iget-object v0, p0, Landroid/util/HiLogFormatter;->a:Ljava/lang/Appendable;

    check-cast v0, Ljava/io/Flushable;

    invoke-interface {v0}, Ljava/io/Flushable;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2408
    goto :goto_0

    .line 2406
    :catch_0
    move-exception v0

    .line 2407
    .local v0, "ioe":Ljava/io/IOException;
    iput-object v0, p0, Landroid/util/HiLogFormatter;->lastException:Ljava/io/IOException;

    .line 2410
    .end local v0    # "ioe":Ljava/io/IOException;
    :cond_0
    :goto_0
    return-void
.end method

.method public varargs format(Ljava/util/Locale;ZLjava/lang/String;[Ljava/lang/Object;)Landroid/util/HiLogFormatter;
    .locals 8
    .param p1, "l"    # Ljava/util/Locale;
    .param p2, "showPrivacy"    # Z
    .param p3, "format"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/Object;

    .line 2526
    invoke-direct {p0}, Landroid/util/HiLogFormatter;->ensureOpen()V

    .line 2529
    const/4 v0, -0x1

    .line 2531
    .local v0, "last":I
    const/4 v1, -0x1

    .line 2533
    .local v1, "lasto":I
    invoke-direct {p0, p3}, Landroid/util/HiLogFormatter;->parse(Ljava/lang/String;)[Landroid/util/HiLogFormatter$FormatString;

    move-result-object v2

    .line 2534
    .local v2, "fsa":[Landroid/util/HiLogFormatter$FormatString;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_9

    .line 2535
    aget-object v4, v2, v3

    .line 2536
    .local v4, "fs":Landroid/util/HiLogFormatter$FormatString;
    invoke-interface {v4}, Landroid/util/HiLogFormatter$FormatString;->index()I

    move-result v5

    .line 2538
    .local v5, "index":I
    const/4 v6, 0x0

    packed-switch v5, :pswitch_data_0

    .line 2555
    add-int/lit8 v0, v5, -0x1

    .line 2556
    if-eqz p4, :cond_7

    :try_start_0
    array-length v7, p4

    goto :goto_4

    .line 2548
    :pswitch_0
    add-int/lit8 v1, v1, 0x1

    .line 2549
    move v0, v1

    .line 2550
    if-eqz p4, :cond_1

    array-length v7, p4

    add-int/lit8 v7, v7, -0x1

    if-gt v1, v7, :cond_0

    goto :goto_1

    .line 2551
    :cond_0
    new-instance v6, Ljava/util/MissingFormatArgumentException;

    invoke-interface {v4}, Landroid/util/HiLogFormatter$FormatString;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/MissingFormatArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2552
    :cond_1
    :goto_1
    move-object v7, v4

    check-cast v7, Landroid/util/HiLogFormatter$FormatSpecifier;

    if-nez p4, :cond_2

    goto :goto_2

    :cond_2
    aget-object v6, p4, v1

    :goto_2
    invoke-virtual {v7, v6, p1, p2}, Landroid/util/HiLogFormatter$FormatSpecifier;->print(Ljava/lang/Object;Ljava/util/Locale;Z)V

    .line 2553
    goto :goto_7

    .line 2543
    :pswitch_1
    if-ltz v0, :cond_5

    if-eqz p4, :cond_3

    array-length v7, p4

    add-int/lit8 v7, v7, -0x1

    if-gt v0, v7, :cond_5

    .line 2545
    :cond_3
    move-object v7, v4

    check-cast v7, Landroid/util/HiLogFormatter$FormatSpecifier;

    if-nez p4, :cond_4

    goto :goto_3

    :cond_4
    aget-object v6, p4, v0

    :goto_3
    invoke-virtual {v7, v6, p1, p2}, Landroid/util/HiLogFormatter$FormatSpecifier;->print(Ljava/lang/Object;Ljava/util/Locale;Z)V

    .line 2546
    goto :goto_7

    .line 2544
    :cond_5
    new-instance v6, Ljava/util/MissingFormatArgumentException;

    invoke-interface {v4}, Landroid/util/HiLogFormatter$FormatString;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/MissingFormatArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2540
    :pswitch_2
    invoke-interface {v4, v6, p1}, Landroid/util/HiLogFormatter$FormatString;->print(Ljava/lang/Object;Ljava/util/Locale;)V

    .line 2541
    goto :goto_7

    .line 2561
    :catch_0
    move-exception v6

    goto :goto_8

    .line 2556
    :goto_4
    add-int/lit8 v7, v7, -0x1

    if-gt v0, v7, :cond_6

    goto :goto_5

    .line 2557
    :cond_6
    new-instance v6, Ljava/util/MissingFormatArgumentException;

    invoke-interface {v4}, Landroid/util/HiLogFormatter$FormatString;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/MissingFormatArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2558
    :cond_7
    :goto_5
    move-object v7, v4

    check-cast v7, Landroid/util/HiLogFormatter$FormatSpecifier;

    if-nez p4, :cond_8

    goto :goto_6

    :cond_8
    aget-object v6, p4, v0

    :goto_6
    invoke-virtual {v7, v6, p1, p2}, Landroid/util/HiLogFormatter$FormatSpecifier;->print(Ljava/lang/Object;Ljava/util/Locale;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2563
    :goto_7
    goto :goto_9

    .line 2561
    :goto_8
    nop

    .line 2562
    .local v6, "x":Ljava/io/IOException;
    iput-object v6, p0, Landroid/util/HiLogFormatter;->lastException:Ljava/io/IOException;

    .line 2534
    .end local v4    # "fs":Landroid/util/HiLogFormatter$FormatString;
    .end local v5    # "index":I
    .end local v6    # "x":Ljava/io/IOException;
    :goto_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2565
    .end local v3    # "i":I
    :cond_9
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public varargs format(ZLjava/lang/String;[Ljava/lang/Object;)Landroid/util/HiLogFormatter;
    .locals 1
    .param p1, "showPrivacy"    # Z
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 2487
    iget-object v0, p0, Landroid/util/HiLogFormatter;->l:Ljava/util/Locale;

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/util/HiLogFormatter;->format(Ljava/util/Locale;ZLjava/lang/String;[Ljava/lang/Object;)Landroid/util/HiLogFormatter;

    move-result-object v0

    return-object v0
.end method

.method public ioException()Ljava/io/IOException;
    .locals 1

    .line 2453
    iget-object v0, p0, Landroid/util/HiLogFormatter;->lastException:Ljava/io/IOException;

    return-object v0
.end method

.method public locale()Ljava/util/Locale;
    .locals 1

    .line 2336
    invoke-direct {p0}, Landroid/util/HiLogFormatter;->ensureOpen()V

    .line 2337
    iget-object v0, p0, Landroid/util/HiLogFormatter;->l:Ljava/util/Locale;

    return-object v0
.end method

.method public out()Ljava/lang/Appendable;
    .locals 1

    .line 2350
    invoke-direct {p0}, Landroid/util/HiLogFormatter;->ensureOpen()V

    .line 2351
    iget-object v0, p0, Landroid/util/HiLogFormatter;->a:Ljava/lang/Appendable;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 2386
    invoke-direct {p0}, Landroid/util/HiLogFormatter;->ensureOpen()V

    .line 2387
    iget-object v0, p0, Landroid/util/HiLogFormatter;->a:Ljava/lang/Appendable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
