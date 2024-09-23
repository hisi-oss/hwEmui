.class Landroid/util/HiLogFormatter$Conversion;
.super Ljava/lang/Object;
.source "HiLogFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/HiLogFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Conversion"
.end annotation


# static fields
.field static final BOOLEAN:C = 'b'

.field static final BOOLEAN_UPPER:C = 'B'

.field static final CHARACTER:C = 'c'

.field static final CHARACTER_UPPER:C = 'C'

.field static final DATE_TIME:C = 't'

.field static final DATE_TIME_UPPER:C = 'T'

.field static final DECIMAL_FLOAT:C = 'f'

.field static final DECIMAL_INTEGER:C = 'd'

.field static final GENERAL:C = 'g'

.field static final GENERAL_UPPER:C = 'G'

.field static final HASHCODE:C = 'h'

.field static final HASHCODE_UPPER:C = 'H'

.field static final HEXADECIMAL_FLOAT:C = 'a'

.field static final HEXADECIMAL_FLOAT_UPPER:C = 'A'

.field static final HEXADECIMAL_INTEGER:C = 'x'

.field static final HEXADECIMAL_INTEGER_UPPER:C = 'X'

.field static final LINE_SEPARATOR:C = 'n'

.field static final OCTAL_INTEGER:C = 'o'

.field static final PERCENT_SIGN:C = '%'

.field static final SCIENTIFIC:C = 'e'

.field static final SCIENTIFIC_UPPER:C = 'E'

.field static final STRING:C = 's'

.field static final STRING_UPPER:C = 'S'


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 4647
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static isCharacter(C)Z
    .locals 1
    .param p0, "c"    # C

    .line 4711
    const/16 v0, 0x43

    if-eq p0, v0, :cond_0

    const/16 v0, 0x63

    if-eq p0, v0, :cond_0

    .line 4716
    const/4 v0, 0x0

    return v0

    .line 4714
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method static isFloat(C)Z
    .locals 1
    .param p0, "c"    # C

    .line 4735
    const/16 v0, 0x41

    if-eq p0, v0, :cond_0

    const/16 v0, 0x45

    if-eq p0, v0, :cond_0

    const/16 v0, 0x47

    if-eq p0, v0, :cond_0

    const/16 v0, 0x61

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 4745
    const/4 v0, 0x0

    return v0

    .line 4743
    :cond_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static isGeneral(C)Z
    .locals 1
    .param p0, "c"    # C

    .line 4696
    const/16 v0, 0x42

    if-eq p0, v0, :cond_0

    const/16 v0, 0x48

    if-eq p0, v0, :cond_0

    const/16 v0, 0x53

    if-eq p0, v0, :cond_0

    const/16 v0, 0x62

    if-eq p0, v0, :cond_0

    const/16 v0, 0x68

    if-eq p0, v0, :cond_0

    const/16 v0, 0x73

    if-eq p0, v0, :cond_0

    .line 4705
    const/4 v0, 0x0

    return v0

    .line 4703
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method static isInteger(C)Z
    .locals 1
    .param p0, "c"    # C

    .line 4722
    const/16 v0, 0x58

    if-eq p0, v0, :cond_0

    const/16 v0, 0x64

    if-eq p0, v0, :cond_0

    const/16 v0, 0x6f

    if-eq p0, v0, :cond_0

    const/16 v0, 0x78

    if-eq p0, v0, :cond_0

    .line 4729
    const/4 v0, 0x0

    return v0

    .line 4727
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method static isText(C)Z
    .locals 1
    .param p0, "c"    # C

    .line 4751
    const/16 v0, 0x25

    if-eq p0, v0, :cond_0

    const/16 v0, 0x6e

    if-eq p0, v0, :cond_0

    .line 4756
    const/4 v0, 0x0

    return v0

    .line 4754
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method static isValid(C)Z
    .locals 1
    .param p0, "c"    # C

    .line 4690
    invoke-static {p0}, Landroid/util/HiLogFormatter$Conversion;->isGeneral(C)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Landroid/util/HiLogFormatter$Conversion;->isInteger(C)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Landroid/util/HiLogFormatter$Conversion;->isFloat(C)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Landroid/util/HiLogFormatter$Conversion;->isText(C)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x74

    if-eq p0, v0, :cond_1

    .line 4691
    invoke-static {p0}, Landroid/util/HiLogFormatter$Conversion;->isCharacter(C)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 4690
    :goto_1
    return v0
.end method
