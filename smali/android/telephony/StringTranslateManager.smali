.class public Landroid/telephony/StringTranslateManager;
.super Ljava/lang/Object;
.source "StringTranslateManager.java"


# static fields
.field private static final HTML40_UNESCAPED_ARRAY:[[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "StringTranslateManager"

.field private static sInstance:Landroid/telephony/StringTranslateManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 14
    new-instance v0, Landroid/telephony/StringTranslateManager;

    invoke-direct {v0}, Landroid/telephony/StringTranslateManager;-><init>()V

    sput-object v0, Landroid/telephony/StringTranslateManager;->sInstance:Landroid/telephony/StringTranslateManager;

    .line 56
    const/16 v0, 0xfd

    new-array v0, v0, [[Ljava/lang/String;

    const-string v1, "&quot;"

    const-string v2, "&#34;"

    const-string v3, "\""

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "&amp;"

    const-string v2, "&#38;"

    const-string v3, "&"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "&lt;"

    const-string v2, "&#60;"

    const-string v3, "<"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "&gt;"

    const-string v2, "&#62;"

    const-string v3, ">"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "&apos;"

    const-string v2, "&#39;"

    const-string v3, "\'"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "&nbsp;"

    const-string v2, "&#160;"

    const-string v3, "\u00a0"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "&iexcl;"

    const-string v2, "&#161;"

    const-string v3, "\u00a1"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "&cent;"

    const-string v2, "&#162;"

    const-string v3, "\u00a2"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "&pound;"

    const-string v2, "&#163;"

    const-string v3, "\u00a3"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string v1, "&curren;"

    const-string v2, "&#164;"

    const-string v3, "\u00a4"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string v1, "&yen;"

    const-string v2, "&#165;"

    const-string v3, "\u00a5"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string v1, "&brvbar;"

    const-string v2, "&#166;"

    const-string v3, "\u00a6"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string v1, "&sect;"

    const-string v2, "&#167;"

    const-string v3, "\u00a7"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string v1, "&uml;"

    const-string v2, "&#168;"

    const-string v3, "\u00a8"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string v1, "&copy;"

    const-string v2, "&#169;"

    const-string v3, "\u00a9"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string v1, "&ordf;"

    const-string v2, "&#170;"

    const-string v3, "\u00aa"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string v1, "&laquo;"

    const-string v2, "&#171;"

    const-string v3, "\u00ab"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string v1, "&not;"

    const-string v2, "&#172;"

    const-string v3, "\u00ac"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string v1, "&shy;"

    const-string v2, "&#173;"

    const-string v3, "\u00ad"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-string v1, "&reg;"

    const-string v2, "&#174;"

    const-string v3, "\u00ae"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-string v1, "&macr;"

    const-string v2, "&#175;"

    const-string v3, "\u00af"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const-string v1, "&deg;"

    const-string v2, "&#176;"

    const-string v3, "\u00b0"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const-string v1, "&plusmn;"

    const-string v2, "&#177;"

    const-string v3, "\u00b1"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x16

    aput-object v1, v0, v2

    const-string v1, "&sup2;"

    const-string v2, "&#178;"

    const-string v3, "\u00b2"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x17

    aput-object v1, v0, v2

    const-string v1, "&sup3;"

    const-string v2, "&#179;"

    const-string v3, "\u00b3"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x18

    aput-object v1, v0, v2

    const-string v1, "&acute;"

    const-string v2, "&#180;"

    const-string v3, "\u00b4"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x19

    aput-object v1, v0, v2

    const-string v1, "&micro;"

    const-string v2, "&#181;"

    const-string v3, "\u00b5"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    const-string v1, "&para;"

    const-string v2, "&#182;"

    const-string v3, "\u00b6"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    const-string v1, "&middot;"

    const-string v2, "&#183;"

    const-string v3, "\u00b7"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    const-string v1, "&cedil;"

    const-string v2, "&#184;"

    const-string v3, "\u00b8"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    const-string v1, "&sup1;"

    const-string v2, "&#185;"

    const-string v3, "\u00b9"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    const-string v1, "&ordm;"

    const-string v2, "&#186;"

    const-string v3, "\u00ba"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    const-string v1, "&raquo;"

    const-string v2, "&#187;"

    const-string v3, "\u00bb"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x20

    aput-object v1, v0, v2

    const-string v1, "&frac14;"

    const-string v2, "&#188;"

    const-string v3, "\u00bc"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x21

    aput-object v1, v0, v2

    const-string v1, "&frac12;"

    const-string v2, "&#189;"

    const-string v3, "\u00bd"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x22

    aput-object v1, v0, v2

    const-string v1, "&frac34;"

    const-string v2, "&#190;"

    const-string v3, "\u00be"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x23

    aput-object v1, v0, v2

    const-string v1, "&iquest;"

    const-string v2, "&#191;"

    const-string v3, "\u00bf"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x24

    aput-object v1, v0, v2

    const-string v1, "&Agrave;"

    const-string v2, "&#192;"

    const-string v3, "\u00c0"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x25

    aput-object v1, v0, v2

    const-string v1, "&Aacute;"

    const-string v2, "&#193;"

    const-string v3, "\u00c1"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x26

    aput-object v1, v0, v2

    const-string v1, "&Acirc;"

    const-string v2, "&#194;"

    const-string v3, "\u00c2"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x27

    aput-object v1, v0, v2

    const-string v1, "&Atilde;"

    const-string v2, "&#195;"

    const-string v3, "\u00c3"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x28

    aput-object v1, v0, v2

    const-string v1, "&Auml;"

    const-string v2, "&#196;"

    const-string v3, "\u00c4"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x29

    aput-object v1, v0, v2

    const-string v1, "&Aring;"

    const-string v2, "&#197;"

    const-string v3, "\u00c5"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    const-string v1, "&AElig;"

    const-string v2, "&#198;"

    const-string v3, "\u00c6"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    const-string v1, "&Ccedil;"

    const-string v2, "&#199;"

    const-string v3, "\u00c7"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    const-string v1, "&Egrave;"

    const-string v2, "&#200;"

    const-string v3, "\u00c8"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    const-string v1, "&Eacute;"

    const-string v2, "&#201;"

    const-string v3, "\u00c9"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    const-string v1, "&Ecirc;"

    const-string v2, "&#202;"

    const-string v3, "\u00ca"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    const-string v1, "&Euml;"

    const-string v2, "&#203;"

    const-string v3, "\u00cb"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x30

    aput-object v1, v0, v2

    const-string v1, "&Igrave;"

    const-string v2, "&#204;"

    const-string v3, "\u00cc"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x31

    aput-object v1, v0, v2

    const-string v1, "&Iacute;"

    const-string v2, "&#205;"

    const-string v3, "\u00cd"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x32

    aput-object v1, v0, v2

    const-string v1, "&Icirc;"

    const-string v2, "&#206;"

    const-string v3, "\u00ce"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x33

    aput-object v1, v0, v2

    const-string v1, "&Iuml;"

    const-string v2, "&#207;"

    const-string v3, "\u00cf"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x34

    aput-object v1, v0, v2

    const-string v1, "&ETH;"

    const-string v2, "&#208;"

    const-string v3, "\u00d0"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x35

    aput-object v1, v0, v2

    const-string v1, "&Ntilde;"

    const-string v2, "&#209;"

    const-string v3, "\u00d1"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x36

    aput-object v1, v0, v2

    const-string v1, "&Ograve;"

    const-string v2, "&#210;"

    const-string v3, "\u00d2"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x37

    aput-object v1, v0, v2

    const-string v1, "&Oacute;"

    const-string v2, "&#211;"

    const-string v3, "\u00d3"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x38

    aput-object v1, v0, v2

    const-string v1, "&Ocirc;"

    const-string v2, "&#212;"

    const-string v3, "\u00d4"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x39

    aput-object v1, v0, v2

    const-string v1, "&Otilde;"

    const-string v2, "&#213;"

    const-string v3, "\u00d5"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3a

    aput-object v1, v0, v2

    const-string v1, "&Ouml;"

    const-string v2, "&#214;"

    const-string v3, "\u00d6"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3b

    aput-object v1, v0, v2

    const-string v1, "&times;"

    const-string v2, "&#215;"

    const-string v3, "\u00d7"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3c

    aput-object v1, v0, v2

    const-string v1, "&Oslash;"

    const-string v2, "&#216;"

    const-string v3, "\u00d8"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3d

    aput-object v1, v0, v2

    const-string v1, "&Ugrave;"

    const-string v2, "&#217;"

    const-string v3, "\u00d9"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3e

    aput-object v1, v0, v2

    const-string v1, "&Uacute;"

    const-string v2, "&#218;"

    const-string v3, "\u00da"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3f

    aput-object v1, v0, v2

    const-string v1, "&Ucirc;"

    const-string v2, "&#219;"

    const-string v3, "\u00db"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x40

    aput-object v1, v0, v2

    const-string v1, "&Uuml;"

    const-string v2, "&#220;"

    const-string v3, "\u00dc"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x41

    aput-object v1, v0, v2

    const-string v1, "&Yacute;"

    const-string v2, "&#221;"

    const-string v3, "\u00dd"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x42

    aput-object v1, v0, v2

    const-string v1, "&THORN;"

    const-string v2, "&#222;"

    const-string v3, "\u00de"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x43

    aput-object v1, v0, v2

    const-string v1, "&szlig;"

    const-string v2, "&#223;"

    const-string v3, "\u00df"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x44

    aput-object v1, v0, v2

    const-string v1, "&agrave;"

    const-string v2, "&#224;"

    const-string v3, "\u00e0"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x45

    aput-object v1, v0, v2

    const-string v1, "&aacute;"

    const-string v2, "&#225;"

    const-string v3, "\u00e1"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x46

    aput-object v1, v0, v2

    const-string v1, "&acirc;"

    const-string v2, "&#226;"

    const-string v3, "\u00e2"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x47

    aput-object v1, v0, v2

    const-string v1, "&atilde;"

    const-string v2, "&#227;"

    const-string v3, "\u00e3"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x48

    aput-object v1, v0, v2

    const-string v1, "&auml;"

    const-string v2, "&#228;"

    const-string v3, "\u00e4"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x49

    aput-object v1, v0, v2

    const-string v1, "&aring;"

    const-string v2, "&#229;"

    const-string v3, "\u00e5"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x4a

    aput-object v1, v0, v2

    const-string v1, "&aelig;"

    const-string v2, "&#230;"

    const-string v3, "\u00e6"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x4b

    aput-object v1, v0, v2

    const-string v1, "&ccedil;"

    const-string v2, "&#231;"

    const-string v3, "\u00e7"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x4c

    aput-object v1, v0, v2

    const-string v1, "&egrave;"

    const-string v2, "&#232;"

    const-string v3, "\u00e8"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x4d

    aput-object v1, v0, v2

    const-string v1, "&eacute;"

    const-string v2, "&#233;"

    const-string v3, "\u00e9"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x4e

    aput-object v1, v0, v2

    const-string v1, "&ecirc;"

    const-string v2, "&#234;"

    const-string v3, "\u00ea"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x4f

    aput-object v1, v0, v2

    const-string v1, "&euml;"

    const-string v2, "&#235;"

    const-string v3, "\u00eb"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x50

    aput-object v1, v0, v2

    const-string v1, "&igrave;"

    const-string v2, "&#236;"

    const-string v3, "\u00ec"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x51

    aput-object v1, v0, v2

    const-string v1, "&iacute;"

    const-string v2, "&#237;"

    const-string v3, "\u00ed"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x52

    aput-object v1, v0, v2

    const-string v1, "&icirc;"

    const-string v2, "&#238;"

    const-string v3, "\u00ee"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x53

    aput-object v1, v0, v2

    const-string v1, "&iuml;"

    const-string v2, "&#239;"

    const-string v3, "\u00ef"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x54

    aput-object v1, v0, v2

    const-string v1, "&eth;"

    const-string v2, "&#240;"

    const-string v3, "\u00f0"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x55

    aput-object v1, v0, v2

    const-string v1, "&ntilde;"

    const-string v2, "&#241;"

    const-string v3, "\u00f1"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x56

    aput-object v1, v0, v2

    const-string v1, "&ograve;"

    const-string v2, "&#242;"

    const-string v3, "\u00f2"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x57

    aput-object v1, v0, v2

    const-string v1, "&oacute;"

    const-string v2, "&#243;"

    const-string v3, "\u00f3"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x58

    aput-object v1, v0, v2

    const-string v1, "&ocirc;"

    const-string v2, "&#244;"

    const-string v3, "\u00f4"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x59

    aput-object v1, v0, v2

    const-string v1, "&otilde;"

    const-string v2, "&#245;"

    const-string v3, "\u00f5"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x5a

    aput-object v1, v0, v2

    const-string v1, "&ouml;"

    const-string v2, "&#246;"

    const-string v3, "\u00f6"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x5b

    aput-object v1, v0, v2

    const-string v1, "&divide;"

    const-string v2, "&#247;"

    const-string v3, "\u00f7"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x5c

    aput-object v1, v0, v2

    const-string v1, "&oslash;"

    const-string v2, "&#248;"

    const-string v3, "\u00f8"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x5d

    aput-object v1, v0, v2

    const-string v1, "&ugrave;"

    const-string v2, "&#249;"

    const-string v3, "\u00f9"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x5e

    aput-object v1, v0, v2

    const-string v1, "&uacute;"

    const-string v2, "&#250;"

    const-string v3, "\u00fa"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x5f

    aput-object v1, v0, v2

    const-string v1, "&ucirc;"

    const-string v2, "&#251;"

    const-string v3, "\u00fb"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x60

    aput-object v1, v0, v2

    const-string v1, "&uuml;"

    const-string v2, "&#252;"

    const-string v3, "\u00fc"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x61

    aput-object v1, v0, v2

    const-string v1, "&yacute;"

    const-string v2, "&#253;"

    const-string v3, "\u00fd"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x62

    aput-object v1, v0, v2

    const-string v1, "&thorn;"

    const-string v2, "&#254;"

    const-string v3, "\u00fe"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x63

    aput-object v1, v0, v2

    const-string v1, "&yuml;"

    const-string v2, "&#255;"

    const-string v3, "\u00ff"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x64

    aput-object v1, v0, v2

    const-string v1, "&fnof;"

    const-string v2, "&#402;"

    const-string v3, "\u0192"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x65

    aput-object v1, v0, v2

    const-string v1, "&Alpha;"

    const-string v2, "&#913;"

    const-string v3, "\u0391"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x66

    aput-object v1, v0, v2

    const-string v1, "&Beta;"

    const-string v2, "&#914;"

    const-string v3, "\u0392"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x67

    aput-object v1, v0, v2

    const-string v1, "&Gamma;"

    const-string v2, "&#915;"

    const-string v3, "\u0393"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x68

    aput-object v1, v0, v2

    const-string v1, "&Delta;"

    const-string v2, "&#916;"

    const-string v3, "\u0394"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x69

    aput-object v1, v0, v2

    const-string v1, "&Epsilon;"

    const-string v2, "&#917;"

    const-string v3, "\u0395"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x6a

    aput-object v1, v0, v2

    const-string v1, "&Zeta;"

    const-string v2, "&#918;"

    const-string v3, "\u0396"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x6b

    aput-object v1, v0, v2

    const-string v1, "&Eta;"

    const-string v2, "&#919;"

    const-string v3, "\u0397"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x6c

    aput-object v1, v0, v2

    const-string v1, "&Theta;"

    const-string v2, "&#920;"

    const-string v3, "\u0398"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x6d

    aput-object v1, v0, v2

    const-string v1, "&Iota;"

    const-string v2, "&#921;"

    const-string v3, "\u0399"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x6e

    aput-object v1, v0, v2

    const-string v1, "&Kappa;"

    const-string v2, "&#922;"

    const-string v3, "\u039a"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x6f

    aput-object v1, v0, v2

    const-string v1, "&Lambda;"

    const-string v2, "&#923;"

    const-string v3, "\u039b"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x70

    aput-object v1, v0, v2

    const-string v1, "&Mu;"

    const-string v2, "&#924;"

    const-string v3, "\u039c"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x71

    aput-object v1, v0, v2

    const-string v1, "&Nu;"

    const-string v2, "&#925;"

    const-string v3, "\u039d"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x72

    aput-object v1, v0, v2

    const-string v1, "&Xi;"

    const-string v2, "&#926;"

    const-string v3, "\u039e"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x73

    aput-object v1, v0, v2

    const-string v1, "&Omicron;"

    const-string v2, "&#927;"

    const-string v3, "\u039f"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x74

    aput-object v1, v0, v2

    const-string v1, "&Pi;"

    const-string v2, "&#928;"

    const-string v3, "\u03a0"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x75

    aput-object v1, v0, v2

    const-string v1, "&Rho;"

    const-string v2, "&#929;"

    const-string v3, "\u03a1"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x76

    aput-object v1, v0, v2

    const-string v1, "&Sigma;"

    const-string v2, "&#931;"

    const-string v3, "\u03a3"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x77

    aput-object v1, v0, v2

    const-string v1, "&Tau;"

    const-string v2, "&#932;"

    const-string v3, "\u03a4"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x78

    aput-object v1, v0, v2

    const-string v1, "&Upsilon;"

    const-string v2, "&#933;"

    const-string v3, "\u03a5"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x79

    aput-object v1, v0, v2

    const-string v1, "&Phi;"

    const-string v2, "&#934;"

    const-string v3, "\u03a6"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x7a

    aput-object v1, v0, v2

    const-string v1, "&Chi;"

    const-string v2, "&#935;"

    const-string v3, "\u03a7"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x7b

    aput-object v1, v0, v2

    const-string v1, "&Psi;"

    const-string v2, "&#936;"

    const-string v3, "\u03a8"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x7c

    aput-object v1, v0, v2

    const-string v1, "&Omega;"

    const-string v2, "&#937;"

    const-string v3, "\u03a9"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x7d

    aput-object v1, v0, v2

    const-string v1, "&alpha;"

    const-string v2, "&#945;"

    const-string v3, "\u03b1"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x7e

    aput-object v1, v0, v2

    const-string v1, "&beta;"

    const-string v2, "&#946;"

    const-string v3, "\u03b2"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x7f

    aput-object v1, v0, v2

    const-string v1, "&gamma;"

    const-string v2, "&#947;"

    const-string v3, "\u03b3"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    aput-object v1, v0, v2

    const-string v1, "&delta;"

    const-string v2, "&#948;"

    const-string v3, "\u03b4"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x81

    aput-object v1, v0, v2

    const-string v1, "&epsilon;"

    const-string v2, "&#949;"

    const-string v3, "\u03b5"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x82

    aput-object v1, v0, v2

    const-string v1, "&zeta;"

    const-string v2, "&#950;"

    const-string v3, "\u03b6"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x83

    aput-object v1, v0, v2

    const-string v1, "&eta;"

    const-string v2, "&#951;"

    const-string v3, "\u03b7"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x84

    aput-object v1, v0, v2

    const-string v1, "&theta;"

    const-string v2, "&#952;"

    const-string v3, "\u03b8"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x85

    aput-object v1, v0, v2

    const-string v1, "&iota;"

    const-string v2, "&#953;"

    const-string v3, "\u03b9"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x86

    aput-object v1, v0, v2

    const-string v1, "&kappa;"

    const-string v2, "&#954;"

    const-string v3, "\u03ba"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x87

    aput-object v1, v0, v2

    const-string v1, "&lambda;"

    const-string v2, "&#955;"

    const-string v3, "\u03bb"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x88

    aput-object v1, v0, v2

    const-string v1, "&mu;"

    const-string v2, "&#956;"

    const-string v3, "\u03bc"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x89

    aput-object v1, v0, v2

    const-string v1, "&nu;"

    const-string v2, "&#957;"

    const-string v3, "\u03bd"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8a

    aput-object v1, v0, v2

    const-string v1, "&xi;"

    const-string v2, "&#958;"

    const-string v3, "\u03be"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8b

    aput-object v1, v0, v2

    const-string v1, "&omicron;"

    const-string v2, "&#959;"

    const-string v3, "\u03bf"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8c

    aput-object v1, v0, v2

    const-string v1, "&pi;"

    const-string v2, "&#960;"

    const-string v3, "\u03c0"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8d

    aput-object v1, v0, v2

    const-string v1, "&rho;"

    const-string v2, "&#961;"

    const-string v3, "\u03c1"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8e

    aput-object v1, v0, v2

    const-string v1, "&sigmaf;"

    const-string v2, "&#962;"

    const-string v3, "\u03c2"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8f

    aput-object v1, v0, v2

    const-string v1, "&sigma;"

    const-string v2, "&#963;"

    const-string v3, "\u03c3"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x90

    aput-object v1, v0, v2

    const-string v1, "&tau;"

    const-string v2, "&#964;"

    const-string v3, "\u03c4"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x91

    aput-object v1, v0, v2

    const-string v1, "&upsilon;"

    const-string v2, "&#965;"

    const-string v3, "\u03c5"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x92

    aput-object v1, v0, v2

    const-string v1, "&phi;"

    const-string v2, "&#966;"

    const-string v3, "\u03c6"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x93

    aput-object v1, v0, v2

    const-string v1, "&chi;"

    const-string v2, "&#967;"

    const-string v3, "\u03c7"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x94

    aput-object v1, v0, v2

    const-string v1, "&psi;"

    const-string v2, "&#968;"

    const-string v3, "\u03c8"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x95

    aput-object v1, v0, v2

    const-string v1, "&omega;"

    const-string v2, "&#969;"

    const-string v3, "\u03c9"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x96

    aput-object v1, v0, v2

    const-string v1, "&thetasym;"

    const-string v2, "&#977;"

    const-string v3, "\u03d1"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x97

    aput-object v1, v0, v2

    const-string v1, "&upsih;"

    const-string v2, "&#978;"

    const-string v3, "\u03d2"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x98

    aput-object v1, v0, v2

    const-string v1, "&piv;"

    const-string v2, "&#982;"

    const-string v3, "\u03d6"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x99

    aput-object v1, v0, v2

    const-string v1, "&bull;"

    const-string v2, "&#8226;"

    const-string v3, "\u2022"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9a

    aput-object v1, v0, v2

    const-string v1, "&hellip;"

    const-string v2, "&#8230;"

    const-string v3, "\u2026"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9b

    aput-object v1, v0, v2

    const-string v1, "&prime;"

    const-string v2, "&#8242;"

    const-string v3, "\u2032"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9c

    aput-object v1, v0, v2

    const-string v1, "&Prime;"

    const-string v2, "&#8243;"

    const-string v3, "\u2033"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9d

    aput-object v1, v0, v2

    const-string v1, "&oline;"

    const-string v2, "&#8254;"

    const-string v3, "\u203e"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9e

    aput-object v1, v0, v2

    const-string v1, "&frasl;"

    const-string v2, "&#8260;"

    const-string v3, "\u2044"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9f

    aput-object v1, v0, v2

    const-string v1, "&weierp;"

    const-string v2, "&#8472;"

    const-string v3, "\u2118"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa0

    aput-object v1, v0, v2

    const-string v1, "&image;"

    const-string v2, "&#8465;"

    const-string v3, "\u2111"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa1

    aput-object v1, v0, v2

    const-string v1, "&real;"

    const-string v2, "&#8476;"

    const-string v3, "\u211c"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa2

    aput-object v1, v0, v2

    const-string v1, "&trade;"

    const-string v2, "&#8482;"

    const-string v3, "\u2122"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa3

    aput-object v1, v0, v2

    const-string v1, "&alefsym;"

    const-string v2, "&#8501;"

    const-string v3, "\u2135"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa4

    aput-object v1, v0, v2

    const-string v1, "&larr;"

    const-string v2, "&#8592;"

    const-string v3, "\u2190"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa5

    aput-object v1, v0, v2

    const-string v1, "&uarr;"

    const-string v2, "&#8593;"

    const-string v3, "\u2191"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa6

    aput-object v1, v0, v2

    const-string v1, "&rarr;"

    const-string v2, "&#8594;"

    const-string v3, "\u2192"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa7

    aput-object v1, v0, v2

    const-string v1, "&darr;"

    const-string v2, "&#8595;"

    const-string v3, "\u2193"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa8

    aput-object v1, v0, v2

    const-string v1, "&harr;"

    const-string v2, "&#8596;"

    const-string v3, "\u2194"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa9

    aput-object v1, v0, v2

    const-string v1, "&crarr;"

    const-string v2, "&#8629;"

    const-string v3, "\u21b5"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xaa

    aput-object v1, v0, v2

    const-string v1, "&lArr;"

    const-string v2, "&#8656;"

    const-string v3, "\u21d0"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xab

    aput-object v1, v0, v2

    const-string v1, "&uArr;"

    const-string v2, "&#8657;"

    const-string v3, "\u21d1"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xac

    aput-object v1, v0, v2

    const-string v1, "&rArr;"

    const-string v2, "&#8658;"

    const-string v3, "\u21d2"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xad

    aput-object v1, v0, v2

    const-string v1, "&dArr;"

    const-string v2, "&#8659;"

    const-string v3, "\u21d3"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xae

    aput-object v1, v0, v2

    const-string v1, "&hArr;"

    const-string v2, "&#8660;"

    const-string v3, "\u21d4"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xaf

    aput-object v1, v0, v2

    const-string v1, "&forall;"

    const-string v2, "&#8704;"

    const-string v3, "\u2200"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb0

    aput-object v1, v0, v2

    const-string v1, "&part;"

    const-string v2, "&#8706;"

    const-string v3, "\u2202"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb1

    aput-object v1, v0, v2

    const-string v1, "&exist;"

    const-string v2, "&#8707;"

    const-string v3, "\u2203"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb2

    aput-object v1, v0, v2

    const-string v1, "&empty;"

    const-string v2, "&#8709;"

    const-string v3, "\u2205"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb3

    aput-object v1, v0, v2

    const-string v1, "&nabla;"

    const-string v2, "&#8711;"

    const-string v3, "\u2207"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb4

    aput-object v1, v0, v2

    const-string v1, "&isin;"

    const-string v2, "&#8712;"

    const-string v3, "\u2208"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb5

    aput-object v1, v0, v2

    const-string v1, "&notin;"

    const-string v2, "&#8713;"

    const-string v3, "\u2209"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb6

    aput-object v1, v0, v2

    const-string v1, "&ni;"

    const-string v2, "&#8715;"

    const-string v3, "\u220b"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb7

    aput-object v1, v0, v2

    const-string v1, "&prod;"

    const-string v2, "&#8719;"

    const-string v3, "\u220f"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb8

    aput-object v1, v0, v2

    const-string v1, "&sum;"

    const-string v2, "&#8721;"

    const-string v3, "\u2211"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb9

    aput-object v1, v0, v2

    const-string v1, "&minus;"

    const-string v2, "&#8722;"

    const-string v3, "\u2212"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xba

    aput-object v1, v0, v2

    const-string v1, "&lowast;"

    const-string v2, "&#8727;"

    const-string v3, "\u2217"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xbb

    aput-object v1, v0, v2

    const-string v1, "&radic;"

    const-string v2, "&#8730;"

    const-string v3, "\u221a"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xbc

    aput-object v1, v0, v2

    const-string v1, "&prop;"

    const-string v2, "&#8733;"

    const-string v3, "\u221d"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xbd

    aput-object v1, v0, v2

    const-string v1, "&infin;"

    const-string v2, "&#8734;"

    const-string v3, "\u221e"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xbe

    aput-object v1, v0, v2

    const-string v1, "&ang;"

    const-string v2, "&#8736;"

    const-string v3, "\u2220"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xbf

    aput-object v1, v0, v2

    const-string v1, "&and;"

    const-string v2, "&#8743;"

    const-string v3, "\u2227"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc0

    aput-object v1, v0, v2

    const-string v1, "&or;"

    const-string v2, "&#8744;"

    const-string v3, "\u2228"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc1

    aput-object v1, v0, v2

    const-string v1, "&cap;"

    const-string v2, "&#8745;"

    const-string v3, "\u2229"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc2

    aput-object v1, v0, v2

    const-string v1, "&cup;"

    const-string v2, "&#8746;"

    const-string v3, "\u222a"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc3

    aput-object v1, v0, v2

    const-string v1, "&int;"

    const-string v2, "&#8747;"

    const-string v3, "\u222b"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc4

    aput-object v1, v0, v2

    const-string v1, "&there4;"

    const-string v2, "&#8756;"

    const-string v3, "\u2234"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc5

    aput-object v1, v0, v2

    const-string v1, "&sim;"

    const-string v2, "&#8764;"

    const-string v3, "\u223c"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc6

    aput-object v1, v0, v2

    const-string v1, "&cong;"

    const-string v2, "&#8773;"

    const-string v3, "\u2245"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc7

    aput-object v1, v0, v2

    const-string v1, "&asymp;"

    const-string v2, "&#8776;"

    const-string v3, "\u2248"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc8

    aput-object v1, v0, v2

    const-string v1, "&ne;"

    const-string v2, "&#8800;"

    const-string v3, "\u2260"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc9

    aput-object v1, v0, v2

    const-string v1, "&equiv;"

    const-string v2, "&#8801;"

    const-string v3, "\u2261"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xca

    aput-object v1, v0, v2

    const-string v1, "&le;"

    const-string v2, "&#8804;"

    const-string v3, "\u2264"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xcb

    aput-object v1, v0, v2

    const-string v1, "&ge;"

    const-string v2, "&#8805;"

    const-string v3, "\u2265"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xcc

    aput-object v1, v0, v2

    const-string v1, "&sub;"

    const-string v2, "&#8834;"

    const-string v3, "\u2282"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xcd

    aput-object v1, v0, v2

    const-string v1, "&sup;"

    const-string v2, "&#8835;"

    const-string v3, "\u2283"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xce

    aput-object v1, v0, v2

    const-string v1, "&nsub;"

    const-string v2, "&#8836;"

    const-string v3, "\u2284"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xcf

    aput-object v1, v0, v2

    const-string v1, "&sube;"

    const-string v2, "&#8838;"

    const-string v3, "\u2286"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xd0

    aput-object v1, v0, v2

    const-string v1, "&supe;"

    const-string v2, "&#8839;"

    const-string v3, "\u2287"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xd1

    aput-object v1, v0, v2

    const-string v1, "&oplus;"

    const-string v2, "&#8853;"

    const-string v3, "\u2295"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xd2

    aput-object v1, v0, v2

    const-string v1, "&otimes;"

    const-string v2, "&#8855;"

    const-string v3, "\u2297"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xd3

    aput-object v1, v0, v2

    const-string v1, "&perp;"

    const-string v2, "&#8869;"

    const-string v3, "\u22a5"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xd4

    aput-object v1, v0, v2

    const-string v1, "&sdot;"

    const-string v2, "&#8901;"

    const-string v3, "\u22c5"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xd5

    aput-object v1, v0, v2

    const-string v1, "&lceil;"

    const-string v2, "&#8968;"

    const-string v3, "\u2308"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xd6

    aput-object v1, v0, v2

    const-string v1, "&rceil;"

    const-string v2, "&#8969;"

    const-string v3, "\u2309"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xd7

    aput-object v1, v0, v2

    const-string v1, "&lfloor;"

    const-string v2, "&#8970;"

    const-string v3, "\u230a"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xd8

    aput-object v1, v0, v2

    const-string v1, "&rfloor;"

    const-string v2, "&#8971;"

    const-string v3, "\u230b"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xd9

    aput-object v1, v0, v2

    const-string v1, "&lang;"

    const-string v2, "&#9001;"

    const-string v3, "\u2329"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xda

    aput-object v1, v0, v2

    const-string v1, "&rang;"

    const-string v2, "&#9002;"

    const-string v3, "\u232a"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xdb

    aput-object v1, v0, v2

    const-string v1, "&loz;"

    const-string v2, "&#9674;"

    const-string v3, "\u25ca"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xdc

    aput-object v1, v0, v2

    const-string v1, "&spades;"

    const-string v2, "&#9824;"

    const-string v3, "\u2660"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xdd

    aput-object v1, v0, v2

    const-string v1, "&clubs;"

    const-string v2, "&#9827;"

    const-string v3, "\u2663"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xde

    aput-object v1, v0, v2

    const-string v1, "&hearts;"

    const-string v2, "&#9829;"

    const-string v3, "\u2665"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xdf

    aput-object v1, v0, v2

    const-string v1, "&diams;"

    const-string v2, "&#9830;"

    const-string v3, "\u2666"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xe0

    aput-object v1, v0, v2

    const-string v1, "&OElig;"

    const-string v2, "&#338;"

    const-string v3, "\u0152"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xe1

    aput-object v1, v0, v2

    const-string v1, "&oelig;"

    const-string v2, "&#339;"

    const-string v3, "\u0153"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xe2

    aput-object v1, v0, v2

    const-string v1, "&Scaron;"

    const-string v2, "&#352;"

    const-string v3, "\u0160"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xe3

    aput-object v1, v0, v2

    const-string v1, "&scaron;"

    const-string v2, "&#353;"

    const-string v3, "\u0161"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xe4

    aput-object v1, v0, v2

    const-string v1, "&Yuml;"

    const-string v2, "&#376;"

    const-string v3, "\u0178"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xe5

    aput-object v1, v0, v2

    const-string v1, "&circ;"

    const-string v2, "&#710;"

    const-string v3, "\u02c6"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xe6

    aput-object v1, v0, v2

    const-string v1, "&tilde;"

    const-string v2, "&#732;"

    const-string v3, "\u02dc"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xe7

    aput-object v1, v0, v2

    const-string v1, "&ensp;"

    const-string v2, "&#8194;"

    const-string v3, "\u2002"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xe8

    aput-object v1, v0, v2

    const-string v1, "&emsp;"

    const-string v2, "&#8195;"

    const-string v3, "\u2003"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xe9

    aput-object v1, v0, v2

    const-string v1, "&thinsp;"

    const-string v2, "&#8201;"

    const-string v3, "\u2009"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xea

    aput-object v1, v0, v2

    const-string v1, "&zwnj;"

    const-string v2, "&#8204;"

    const-string v3, "\u200c"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xeb

    aput-object v1, v0, v2

    const-string v1, "&zwj;"

    const-string v2, "&#8205;"

    const-string v3, "\u200d"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xec

    aput-object v1, v0, v2

    const-string v1, "&lrm;"

    const-string v2, "&#8206;"

    const-string v3, "\u200e"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xed

    aput-object v1, v0, v2

    const-string v1, "&rlm;"

    const-string v2, "&#8207;"

    const-string v3, "\u200f"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xee

    aput-object v1, v0, v2

    const-string v1, "&ndash;"

    const-string v2, "&#8211;"

    const-string v3, "\u2013"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xef

    aput-object v1, v0, v2

    const-string v1, "&mdash;"

    const-string v2, "&#8212;"

    const-string v3, "\u2014"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xf0

    aput-object v1, v0, v2

    const-string v1, "&lsquo;"

    const-string v2, "&#8216;"

    const-string v3, "\u2018"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xf1

    aput-object v1, v0, v2

    const-string v1, "&rsquo;"

    const-string v2, "&#8217;"

    const-string v3, "\u2019"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xf2

    aput-object v1, v0, v2

    const-string v1, "&sbquo;"

    const-string v2, "&#8218;"

    const-string v3, "\u201a"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xf3

    aput-object v1, v0, v2

    const-string v1, "&ldquo;"

    const-string v2, "&#8220;"

    const-string v3, "\u201c"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xf4

    aput-object v1, v0, v2

    const-string v1, "&rdquo;"

    const-string v2, "&#8221;"

    const-string v3, "\u201d"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xf5

    aput-object v1, v0, v2

    const-string v1, "&bdquo;"

    const-string v2, "&#8222;"

    const-string v3, "\u201e"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xf6

    aput-object v1, v0, v2

    const-string v1, "&dagger;"

    const-string v2, "&#8224;"

    const-string v3, "\u2020"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xf7

    aput-object v1, v0, v2

    const-string v1, "&Dagger;"

    const-string v2, "&#8225;"

    const-string v3, "\u2021"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xf8

    aput-object v1, v0, v2

    const-string v1, "&permil;"

    const-string v2, "&#8240;"

    const-string v3, "\u2030"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xf9

    aput-object v1, v0, v2

    const-string v1, "&lsaquo;"

    const-string v2, "&#8249;"

    const-string v3, "\u2039"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xfa

    aput-object v1, v0, v2

    const-string v1, "&rsaquo;"

    const-string v2, "&#8250;"

    const-string v3, "\u203a"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xfb

    aput-object v1, v0, v2

    const-string v1, "&euro;"

    const-string v2, "&#8364;"

    const-string v3, "\u20ac"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xfc

    aput-object v1, v0, v2

    sput-object v0, Landroid/telephony/StringTranslateManager;->HTML40_UNESCAPED_ARRAY:[[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method public static getDefault()Landroid/telephony/StringTranslateManager;
    .locals 1

    .line 18
    sget-object v0, Landroid/telephony/StringTranslateManager;->sInstance:Landroid/telephony/StringTranslateManager;

    return-object v0
.end method

.method public static getHtml4UnescapedArray()[[Ljava/lang/String;
    .locals 1

    .line 355
    sget-object v0, Landroid/telephony/StringTranslateManager;->HTML40_UNESCAPED_ARRAY:[[Ljava/lang/String;

    invoke-virtual {v0}, [[Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/String;

    return-object v0
.end method

.method public static final unEscapeHtml4(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "input"    # Ljava/lang/String;

    .line 34
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    return-object p0

    .line 39
    :cond_0
    invoke-static {}, Landroid/telephony/StringTranslateManager;->getHtml4UnescapedArray()[[Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, "array":[[Ljava/lang/String;
    array-length v1, v0

    .line 41
    .local v1, "arrayLength":I
    const/4 v2, 0x0

    move-object v3, p0

    move p0, v2

    .local v3, "input":Ljava/lang/String;
    .local p0, "i":I
    :goto_0
    if-ge p0, v1, :cond_3

    .line 43
    aget-object v4, v0, p0

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x2

    if-eqz v4, :cond_1

    .line 44
    aget-object v4, v0, p0

    aget-object v4, v4, v2

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    aget-object v6, v0, p0

    aget-object v5, v6, v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 47
    :cond_1
    aget-object v4, v0, p0

    const/4 v6, 0x1

    aget-object v4, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 48
    aget-object v4, v0, p0

    aget-object v4, v4, v6

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    aget-object v6, v0, p0

    aget-object v5, v6, v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 41
    :cond_2
    :goto_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 52
    .end local p0    # "i":I
    :cond_3
    return-object v3
.end method
