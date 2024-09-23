.class Landroid/util/HiLogFormatter$Flags;
.super Ljava/lang/Object;
.source "HiLogFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/HiLogFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Flags"
.end annotation


# static fields
.field static final ALTERNATE:Landroid/util/HiLogFormatter$Flags;

.field static final GROUP:Landroid/util/HiLogFormatter$Flags;

.field static final LEADING_SPACE:Landroid/util/HiLogFormatter$Flags;

.field static final LEFT_JUSTIFY:Landroid/util/HiLogFormatter$Flags;

.field static final NONE:Landroid/util/HiLogFormatter$Flags;

.field static final PARENTHESES:Landroid/util/HiLogFormatter$Flags;

.field static final PLUS:Landroid/util/HiLogFormatter$Flags;

.field static final PREVIOUS:Landroid/util/HiLogFormatter$Flags;

.field static final UPPERCASE:Landroid/util/HiLogFormatter$Flags;

.field static final ZERO_PAD:Landroid/util/HiLogFormatter$Flags;


# instance fields
.field private flags:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 4556
    new-instance v0, Landroid/util/HiLogFormatter$Flags;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/util/HiLogFormatter$Flags;-><init>(I)V

    sput-object v0, Landroid/util/HiLogFormatter$Flags;->NONE:Landroid/util/HiLogFormatter$Flags;

    .line 4559
    new-instance v0, Landroid/util/HiLogFormatter$Flags;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/HiLogFormatter$Flags;-><init>(I)V

    sput-object v0, Landroid/util/HiLogFormatter$Flags;->LEFT_JUSTIFY:Landroid/util/HiLogFormatter$Flags;

    .line 4560
    new-instance v0, Landroid/util/HiLogFormatter$Flags;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/HiLogFormatter$Flags;-><init>(I)V

    sput-object v0, Landroid/util/HiLogFormatter$Flags;->UPPERCASE:Landroid/util/HiLogFormatter$Flags;

    .line 4561
    new-instance v0, Landroid/util/HiLogFormatter$Flags;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/util/HiLogFormatter$Flags;-><init>(I)V

    sput-object v0, Landroid/util/HiLogFormatter$Flags;->ALTERNATE:Landroid/util/HiLogFormatter$Flags;

    .line 4564
    new-instance v0, Landroid/util/HiLogFormatter$Flags;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroid/util/HiLogFormatter$Flags;-><init>(I)V

    sput-object v0, Landroid/util/HiLogFormatter$Flags;->PLUS:Landroid/util/HiLogFormatter$Flags;

    .line 4565
    new-instance v0, Landroid/util/HiLogFormatter$Flags;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/util/HiLogFormatter$Flags;-><init>(I)V

    sput-object v0, Landroid/util/HiLogFormatter$Flags;->LEADING_SPACE:Landroid/util/HiLogFormatter$Flags;

    .line 4566
    new-instance v0, Landroid/util/HiLogFormatter$Flags;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Landroid/util/HiLogFormatter$Flags;-><init>(I)V

    sput-object v0, Landroid/util/HiLogFormatter$Flags;->ZERO_PAD:Landroid/util/HiLogFormatter$Flags;

    .line 4567
    new-instance v0, Landroid/util/HiLogFormatter$Flags;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Landroid/util/HiLogFormatter$Flags;-><init>(I)V

    sput-object v0, Landroid/util/HiLogFormatter$Flags;->GROUP:Landroid/util/HiLogFormatter$Flags;

    .line 4568
    new-instance v0, Landroid/util/HiLogFormatter$Flags;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Landroid/util/HiLogFormatter$Flags;-><init>(I)V

    sput-object v0, Landroid/util/HiLogFormatter$Flags;->PARENTHESES:Landroid/util/HiLogFormatter$Flags;

    .line 4571
    new-instance v0, Landroid/util/HiLogFormatter$Flags;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Landroid/util/HiLogFormatter$Flags;-><init>(I)V

    sput-object v0, Landroid/util/HiLogFormatter$Flags;->PREVIOUS:Landroid/util/HiLogFormatter$Flags;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0
    .param p1, "f"    # I

    .line 4573
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4574
    iput p1, p0, Landroid/util/HiLogFormatter$Flags;->flags:I

    .line 4575
    return-void
.end method

.method static synthetic access$100(Landroid/util/HiLogFormatter$Flags;Landroid/util/HiLogFormatter$Flags;)Landroid/util/HiLogFormatter$Flags;
    .locals 1
    .param p0, "x0"    # Landroid/util/HiLogFormatter$Flags;
    .param p1, "x1"    # Landroid/util/HiLogFormatter$Flags;

    .line 4553
    invoke-direct {p0, p1}, Landroid/util/HiLogFormatter$Flags;->add(Landroid/util/HiLogFormatter$Flags;)Landroid/util/HiLogFormatter$Flags;

    move-result-object v0

    return-object v0
.end method

.method private add(Landroid/util/HiLogFormatter$Flags;)Landroid/util/HiLogFormatter$Flags;
    .locals 2
    .param p1, "f"    # Landroid/util/HiLogFormatter$Flags;

    .line 4590
    iget v0, p0, Landroid/util/HiLogFormatter$Flags;->flags:I

    invoke-virtual {p1}, Landroid/util/HiLogFormatter$Flags;->valueOf()I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Landroid/util/HiLogFormatter$Flags;->flags:I

    .line 4591
    return-object p0
.end method

.method private static parse(C)Landroid/util/HiLogFormatter$Flags;
    .locals 2
    .param p0, "c"    # C

    .line 4613
    const/16 v0, 0x20

    if-eq p0, v0, :cond_4

    const/16 v0, 0x23

    if-eq p0, v0, :cond_3

    const/16 v0, 0x28

    if-eq p0, v0, :cond_2

    const/16 v0, 0x30

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3c

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 4623
    new-instance v0, Ljava/util/UnknownFormatFlagsException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/UnknownFormatFlagsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4614
    :pswitch_0
    sget-object v0, Landroid/util/HiLogFormatter$Flags;->LEFT_JUSTIFY:Landroid/util/HiLogFormatter$Flags;

    return-object v0

    .line 4619
    :pswitch_1
    sget-object v0, Landroid/util/HiLogFormatter$Flags;->GROUP:Landroid/util/HiLogFormatter$Flags;

    return-object v0

    .line 4616
    :pswitch_2
    sget-object v0, Landroid/util/HiLogFormatter$Flags;->PLUS:Landroid/util/HiLogFormatter$Flags;

    return-object v0

    .line 4621
    :cond_0
    sget-object v0, Landroid/util/HiLogFormatter$Flags;->PREVIOUS:Landroid/util/HiLogFormatter$Flags;

    return-object v0

    .line 4618
    :cond_1
    sget-object v0, Landroid/util/HiLogFormatter$Flags;->ZERO_PAD:Landroid/util/HiLogFormatter$Flags;

    return-object v0

    .line 4620
    :cond_2
    sget-object v0, Landroid/util/HiLogFormatter$Flags;->PARENTHESES:Landroid/util/HiLogFormatter$Flags;

    return-object v0

    .line 4615
    :cond_3
    sget-object v0, Landroid/util/HiLogFormatter$Flags;->ALTERNATE:Landroid/util/HiLogFormatter$Flags;

    return-object v0

    .line 4617
    :cond_4
    sget-object v0, Landroid/util/HiLogFormatter$Flags;->LEADING_SPACE:Landroid/util/HiLogFormatter$Flags;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x2b
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static parse(Ljava/lang/String;)Landroid/util/HiLogFormatter$Flags;
    .locals 6
    .param p0, "s"    # Ljava/lang/String;

    .line 4600
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 4601
    .local v0, "ca":[C
    new-instance v1, Landroid/util/HiLogFormatter$Flags;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/util/HiLogFormatter$Flags;-><init>(I)V

    .line 4602
    .local v1, "f":Landroid/util/HiLogFormatter$Flags;
    nop

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 4603
    aget-char v3, v0, v2

    invoke-static {v3}, Landroid/util/HiLogFormatter$Flags;->parse(C)Landroid/util/HiLogFormatter$Flags;

    move-result-object v3

    .line 4604
    .local v3, "v":Landroid/util/HiLogFormatter$Flags;
    invoke-virtual {v1, v3}, Landroid/util/HiLogFormatter$Flags;->contains(Landroid/util/HiLogFormatter$Flags;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 4606
    invoke-direct {v1, v3}, Landroid/util/HiLogFormatter$Flags;->add(Landroid/util/HiLogFormatter$Flags;)Landroid/util/HiLogFormatter$Flags;

    .line 4602
    .end local v3    # "v":Landroid/util/HiLogFormatter$Flags;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4605
    .restart local v3    # "v":Landroid/util/HiLogFormatter$Flags;
    :cond_0
    new-instance v4, Ljava/util/DuplicateFormatFlagsException;

    invoke-virtual {v3}, Landroid/util/HiLogFormatter$Flags;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/DuplicateFormatFlagsException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 4608
    .end local v2    # "i":I
    .end local v3    # "v":Landroid/util/HiLogFormatter$Flags;
    :cond_1
    return-object v1
.end method

.method public static toString(Landroid/util/HiLogFormatter$Flags;)Ljava/lang/String;
    .locals 1
    .param p0, "f"    # Landroid/util/HiLogFormatter$Flags;

    .line 4629
    invoke-virtual {p0}, Landroid/util/HiLogFormatter$Flags;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public contains(Landroid/util/HiLogFormatter$Flags;)Z
    .locals 2
    .param p1, "f"    # Landroid/util/HiLogFormatter$Flags;

    .line 4582
    iget v0, p0, Landroid/util/HiLogFormatter$Flags;->flags:I

    invoke-virtual {p1}, Landroid/util/HiLogFormatter$Flags;->valueOf()I

    move-result v1

    and-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/util/HiLogFormatter$Flags;->valueOf()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public dup()Landroid/util/HiLogFormatter$Flags;
    .locals 2

    .line 4586
    new-instance v0, Landroid/util/HiLogFormatter$Flags;

    iget v1, p0, Landroid/util/HiLogFormatter$Flags;->flags:I

    invoke-direct {v0, v1}, Landroid/util/HiLogFormatter$Flags;-><init>(I)V

    return-object v0
.end method

.method public remove(Landroid/util/HiLogFormatter$Flags;)Landroid/util/HiLogFormatter$Flags;
    .locals 2
    .param p1, "f"    # Landroid/util/HiLogFormatter$Flags;

    .line 4595
    iget v0, p0, Landroid/util/HiLogFormatter$Flags;->flags:I

    invoke-virtual {p1}, Landroid/util/HiLogFormatter$Flags;->valueOf()I

    move-result v1

    not-int v1, v1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/util/HiLogFormatter$Flags;->flags:I

    .line 4596
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 4633
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4634
    .local v0, "sb":Ljava/lang/StringBuilder;
    sget-object v1, Landroid/util/HiLogFormatter$Flags;->LEFT_JUSTIFY:Landroid/util/HiLogFormatter$Flags;

    invoke-virtual {p0, v1}, Landroid/util/HiLogFormatter$Flags;->contains(Landroid/util/HiLogFormatter$Flags;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4635
    :cond_0
    sget-object v1, Landroid/util/HiLogFormatter$Flags;->UPPERCASE:Landroid/util/HiLogFormatter$Flags;

    invoke-virtual {p0, v1}, Landroid/util/HiLogFormatter$Flags;->contains(Landroid/util/HiLogFormatter$Flags;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x5e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4636
    :cond_1
    sget-object v1, Landroid/util/HiLogFormatter$Flags;->ALTERNATE:Landroid/util/HiLogFormatter$Flags;

    invoke-virtual {p0, v1}, Landroid/util/HiLogFormatter$Flags;->contains(Landroid/util/HiLogFormatter$Flags;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4637
    :cond_2
    sget-object v1, Landroid/util/HiLogFormatter$Flags;->PLUS:Landroid/util/HiLogFormatter$Flags;

    invoke-virtual {p0, v1}, Landroid/util/HiLogFormatter$Flags;->contains(Landroid/util/HiLogFormatter$Flags;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x2b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4638
    :cond_3
    sget-object v1, Landroid/util/HiLogFormatter$Flags;->LEADING_SPACE:Landroid/util/HiLogFormatter$Flags;

    invoke-virtual {p0, v1}, Landroid/util/HiLogFormatter$Flags;->contains(Landroid/util/HiLogFormatter$Flags;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4639
    :cond_4
    sget-object v1, Landroid/util/HiLogFormatter$Flags;->ZERO_PAD:Landroid/util/HiLogFormatter$Flags;

    invoke-virtual {p0, v1}, Landroid/util/HiLogFormatter$Flags;->contains(Landroid/util/HiLogFormatter$Flags;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4640
    :cond_5
    sget-object v1, Landroid/util/HiLogFormatter$Flags;->GROUP:Landroid/util/HiLogFormatter$Flags;

    invoke-virtual {p0, v1}, Landroid/util/HiLogFormatter$Flags;->contains(Landroid/util/HiLogFormatter$Flags;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4641
    :cond_6
    sget-object v1, Landroid/util/HiLogFormatter$Flags;->PARENTHESES:Landroid/util/HiLogFormatter$Flags;

    invoke-virtual {p0, v1}, Landroid/util/HiLogFormatter$Flags;->contains(Landroid/util/HiLogFormatter$Flags;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4642
    :cond_7
    sget-object v1, Landroid/util/HiLogFormatter$Flags;->PREVIOUS:Landroid/util/HiLogFormatter$Flags;

    invoke-virtual {p0, v1}, Landroid/util/HiLogFormatter$Flags;->contains(Landroid/util/HiLogFormatter$Flags;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4643
    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public valueOf()I
    .locals 1

    .line 4578
    iget v0, p0, Landroid/util/HiLogFormatter$Flags;->flags:I

    return v0
.end method
