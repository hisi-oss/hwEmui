.class public Lcom/huawei/i18n/taboo/FindTargetRules;
.super Ljava/lang/Object;
.source "FindTargetRules.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/i18n/taboo/FindTargetRules$SystemParam;
    }
.end annotation


# static fields
.field private static final CITY_NAME_REGEX:Ljava/lang/String; = "[^a-zA-Z0-9]+"

.field private static final CITY_NAME_REPLACE:Ljava/lang/String; = "_"

.field private static final DEFAULT_VALUE:Ljava/lang/String; = ""

.field private static final DIALECTS_SIZE:I = 0xc8

.field private static final FILTER_SIZE:I = 0x64

.field private static final HANT_PARENTS:[[Ljava/lang/String;

.field private static final LATN_PARENTS:[[Ljava/lang/String;

.field private static final MCC_SUBSTRING_SIZE:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 38
    const/4 v0, 0x1

    new-array v1, v0, [[Ljava/lang/String;

    const-string v2, "zh-MO"

    const-string v3, "zh-Hant-HK"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sput-object v1, Lcom/huawei/i18n/taboo/FindTargetRules;->HANT_PARENTS:[[Ljava/lang/String;

    .line 42
    const/16 v1, 0x5e

    new-array v1, v1, [[Ljava/lang/String;

    const-string v2, "en-150"

    const-string v4, "en-001"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, "en-AG"

    const-string v3, "en-001"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "en-AI"

    const-string v2, "en-001"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v1, v2

    const-string v0, "en-AU"

    const-string v2, "en-001"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    aput-object v0, v1, v2

    const-string v0, "en-BB"

    const-string v2, "en-001"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x4

    aput-object v0, v1, v2

    const-string v0, "en-BE"

    const-string v2, "en-001"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x5

    aput-object v0, v1, v2

    const-string v0, "en-BM"

    const-string v2, "en-001"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x6

    aput-object v0, v1, v2

    const-string v0, "en-BS"

    const-string v2, "en-001"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x7

    aput-object v0, v1, v2

    const-string v0, "en-BZ"

    const-string v2, "en-001"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x8

    aput-object v0, v1, v2

    const-string v0, "en-CC"

    const-string v2, "en-001"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x9

    aput-object v0, v1, v2

    const-string v0, "en-CK"

    const-string v2, "en-001"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xa

    aput-object v0, v1, v2

    const-string v0, "en-CX"

    const-string v2, "en-001"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xb

    aput-object v0, v1, v2

    const-string v0, "en-DG"

    const-string v2, "en-001"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xc

    aput-object v0, v1, v2

    const-string v0, "en-ER"

    const-string v2, "en-001"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xd

    aput-object v0, v1, v2

    const-string v0, "en-FK"

    const-string v2, "en-001"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xe

    aput-object v0, v1, v2

    const-string v0, "en-FM"

    const-string v2, "en-001"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xf

    aput-object v0, v1, v2

    const-string v0, "en-GB"

    const-string v2, "en-001"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x10

    aput-object v0, v1, v2

    const-string v0, "en-GD"

    const-string v2, "en-001"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x11

    aput-object v0, v1, v2

    const-string v0, "en-GG"

    const-string v2, "en-001"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x12

    aput-object v0, v1, v2

    const-string v0, "en-GI"

    const-string v2, "en-001"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x13

    aput-object v0, v1, v2

    const-string v0, "en-GY"

    const-string v2, "en-001"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x14

    aput-object v0, v1, v2

    const-string v0, "en-HK"

    const-string v2, "en-001"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x15

    aput-object v0, v1, v2

    const-string v0, "en-IE"

    const-string v2, "en-001"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x16

    aput-object v0, v1, v2

    const-string v0, "en-IM"

    const-string v2, "en-001"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x17

    aput-object v0, v1, v2

    const-string v0, "en-IN"

    const-string v2, "en-001"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x18

    aput-object v0, v1, v2

    const-string v0, "en-IO"

    const-string v2, "en-001"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x19

    aput-object v0, v1, v2

    const-string v0, "en-JE"

    const-string v2, "en-001"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x1a

    aput-object v0, v1, v2

    const-string v0, "en-KI"

    const-string v2, "en-001"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x1b

    aput-object v0, v1, v2

    const-string v0, "en-KN"

    const-string v2, "en-001"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x1c

    aput-object v0, v1, v2

    const-string v0, "en-KY"

    const-string v2, "en-001"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x1d

    aput-object v0, v1, v2

    const-string v0, "en-LC"

    const-string v2, "en-001"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x1e

    aput-object v0, v1, v2

    const-string v0, "en-LR"

    const-string v2, "en-001"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x1f

    aput-object v0, v1, v2

    const-string v0, "en-LS"

    const-string v2, "en-001"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x20

    aput-object v0, v1, v2

    const-string v0, "en-MM"

    const-string v2, "en-001"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x21

    aput-object v0, v1, v2

    const-string v0, "en-MO"

    const-string v2, "en-001"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x22

    aput-object v0, v1, v2

    const-string v0, "en-MS"

    const-string v2, "en-001"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x23

    aput-object v0, v1, v2

    const-string v0, "en-MT"

    const-string v2, "en-001"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x24

    aput-object v0, v1, v2

    const-string v0, "en-MY"

    const-string v2, "en-001"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x25

    aput-object v0, v1, v2

    const-string v0, "en-NF"

    const-string v2, "en-001"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x26

    aput-object v0, v1, v2

    const-string v0, "en-NR"

    const-string v2, "en-001"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x27

    aput-object v0, v1, v2

    const-string v0, "en-NU"

    const-string v2, "en-001"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x28

    aput-object v0, v1, v2

    const-string v0, "en-NZ"

    const-string v2, "en-001"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x29

    aput-object v0, v1, v2

    const-string v0, "en-PG"

    const-string v2, "en-001"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x2a

    aput-object v0, v1, v2

    const-string v0, "en-PK"

    const-string v2, "en-001"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x2b

    aput-object v0, v1, v2

    const-string v0, "en-PN"

    const-string v2, "en-001"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x2c

    aput-object v0, v1, v2

    const-string v0, "en-PW"

    const-string v2, "en-001"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x2d

    aput-object v0, v1, v2

    const-string v0, "en-SB"

    const-string v2, "en-001"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x2e

    aput-object v0, v1, v2

    const-string v0, "en-SC"

    const-string v2, "en-001"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x2f

    aput-object v0, v1, v2

    const-string v0, "en-SD"

    const-string v2, "en-001"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x30

    aput-object v0, v1, v2

    const-string v0, "en-SG"

    const-string v2, "en-001"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x31

    aput-object v0, v1, v2

    const-string v0, "en-SH"

    const-string v2, "en-001"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x32

    aput-object v0, v1, v2

    const-string v0, "en-SL"

    const-string v2, "en-001"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x33

    aput-object v0, v1, v2

    const-string v0, "en-SS"

    const-string v2, "en-001"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x34

    aput-object v0, v1, v2

    const-string v0, "en-SX"

    const-string v2, "en-001"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x35

    aput-object v0, v1, v2

    const-string v0, "en-SZ"

    const-string v2, "en-001"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x36

    aput-object v0, v1, v2

    const-string v0, "en-TC"

    const-string v2, "en-001"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x37

    aput-object v0, v1, v2

    const-string v0, "en-TK"

    const-string v2, "en-001"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x38

    aput-object v0, v1, v2

    const-string v0, "en-TT"

    const-string v2, "en-001"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x39

    aput-object v0, v1, v2

    const-string v0, "en-TV"

    const-string v2, "en-001"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x3a

    aput-object v0, v1, v2

    const-string v0, "en-VC"

    const-string v2, "en-001"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x3b

    aput-object v0, v1, v2

    const-string v0, "en-VG"

    const-string v2, "en-001"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x3c

    aput-object v0, v1, v2

    const-string v0, "en-WS"

    const-string v2, "en-001"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x3d

    aput-object v0, v1, v2

    const-string v0, "en-ZG"

    const-string v2, "en-001"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x3e

    aput-object v0, v1, v2

    const-string v0, "es-AR"

    const-string v2, "es-419"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x3f

    aput-object v0, v1, v2

    const-string v0, "es-BO"

    const-string v2, "es-419"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x40

    aput-object v0, v1, v2

    const-string v0, "es-BR"

    const-string v2, "es-419"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x41

    aput-object v0, v1, v2

    const-string v0, "es-CL"

    const-string v2, "es-419"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x42

    aput-object v0, v1, v2

    const-string v0, "es-CO"

    const-string v2, "es-419"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x43

    aput-object v0, v1, v2

    const-string v0, "es-CR"

    const-string v2, "es-419"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x44

    aput-object v0, v1, v2

    const-string v0, "es-CU"

    const-string v2, "es-419"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x45

    aput-object v0, v1, v2

    const-string v0, "es-DO"

    const-string v2, "es-419"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x46

    aput-object v0, v1, v2

    const-string v0, "es-EC"

    const-string v2, "es-419"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x47

    aput-object v0, v1, v2

    const-string v0, "es-GT"

    const-string v2, "es-419"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x48

    aput-object v0, v1, v2

    const-string v0, "es-HN"

    const-string v2, "es-419"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x49

    aput-object v0, v1, v2

    const-string v0, "es-MX"

    const-string v2, "es-419"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x4a

    aput-object v0, v1, v2

    const-string v0, "es-NI"

    const-string v2, "es-419"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x4b

    aput-object v0, v1, v2

    const-string v0, "es-PA"

    const-string v2, "es-419"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x4c

    aput-object v0, v1, v2

    const-string v0, "es-PE"

    const-string v2, "es-419"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x4d

    aput-object v0, v1, v2

    const-string v0, "es-PR"

    const-string v2, "es-419"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x4e

    aput-object v0, v1, v2

    const-string v0, "es-PY"

    const-string v2, "es-419"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x4f

    aput-object v0, v1, v2

    const-string v0, "es-SV"

    const-string v2, "es-419"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x50

    aput-object v0, v1, v2

    const-string v0, "es-US"

    const-string v2, "es-419"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x51

    aput-object v0, v1, v2

    const-string v0, "es-UY"

    const-string v2, "es-419"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x52

    aput-object v0, v1, v2

    const-string v0, "es-VE"

    const-string v2, "es-419"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x53

    aput-object v0, v1, v2

    const-string v0, "pt-AO"

    const-string v2, "pt-PT"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x54

    aput-object v0, v1, v2

    const-string v0, "pt-CH"

    const-string v2, "pt-PT"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x55

    aput-object v0, v1, v2

    const-string v0, "pt-CV"

    const-string v2, "pt-PT"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x56

    aput-object v0, v1, v2

    const-string v0, "pt-GQ"

    const-string v2, "pt-PT"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x57

    aput-object v0, v1, v2

    const-string v0, "pt-GW"

    const-string v2, "pt-PT"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x58

    aput-object v0, v1, v2

    const-string v0, "pt-LU"

    const-string v2, "pt-PT"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x59

    aput-object v0, v1, v2

    const-string v0, "pt-MO"

    const-string v2, "pt-PT"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x5a

    aput-object v0, v1, v2

    const-string v0, "pt-MZ"

    const-string v2, "pt-PT"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x5b

    aput-object v0, v1, v2

    const-string v0, "pt-ST"

    const-string v2, "pt-PT"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x5c

    aput-object v0, v1, v2

    const-string v0, "pt-TL"

    const-string v2, "pt-PT"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x5d

    aput-object v0, v1, v2

    sput-object v1, Lcom/huawei/i18n/taboo/FindTargetRules;->LATN_PARENTS:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/List;
    .locals 1

    .line 28
    invoke-static {}, Lcom/huawei/i18n/taboo/FindTargetRules;->getMccsList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/List;
    .locals 1

    .line 28
    invoke-static {}, Lcom/huawei/i18n/taboo/FindTargetRules;->getMccmncsList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static cityNameNormalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .line 297
    if-nez p0, :cond_0

    .line 298
    return-object p0

    .line 300
    :cond_0
    const-string v0, "[^a-zA-Z0-9]+"

    const-string v1, "_"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static computeMatchScore(Ljava/util/Locale;Ljava/util/Locale;)I
    .locals 16
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "res"    # Ljava/util/Locale;

    .line 410
    const-string v0, "en"

    .line 411
    .local v0, "ENGLISH":Ljava/lang/String;
    const/4 v1, 0x3

    .line 412
    .local v1, "SEGMENT_SCORE":I
    const/16 v2, 0x8

    .line 413
    .local v2, "MAP_SCORE":I
    const/4 v3, 0x0

    .line 414
    .local v3, "score":I
    const-string v4, "my"

    invoke-virtual/range {p0 .. p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "ZG"

    invoke-virtual/range {p0 .. p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 415
    const-string v4, "my-Qaag-MM"

    invoke-static {v4}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v4

    .end local p0    # "locale":Ljava/util/Locale;
    .local v4, "locale":Ljava/util/Locale;
    goto :goto_0

    .line 417
    .end local v4    # "locale":Ljava/util/Locale;
    .restart local p0    # "locale":Ljava/util/Locale;
    :cond_0
    move-object/from16 v4, p0

    .end local p0    # "locale":Ljava/util/Locale;
    .restart local v4    # "locale":Ljava/util/Locale;
    :goto_0
    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    .line 418
    .local v5, "localeLanguage":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    .line 419
    .local v6, "resLanguage":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    const/4 v8, -0x1

    if-nez v7, :cond_a

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_a

    invoke-static {v5, v6}, Lcom/huawei/i18n/taboo/FindTargetRules;->isSameLanguage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    goto/16 :goto_1

    .line 422
    :cond_1
    add-int/lit8 v3, v3, 0x3

    .line 424
    invoke-virtual {v4}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v7

    .line 425
    .local v7, "localeTag":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v9

    .line 426
    .local v9, "resTag":Ljava/lang/String;
    invoke-static {}, Lcom/huawei/i18n/taboo/FindTargetRules;->getDialectMap()Ljava/util/HashMap;

    move-result-object v10

    .line 428
    .local v10, "dialects":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v10, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 429
    invoke-virtual {v10, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 430
    const/16 v8, 0x8

    return v8

    .line 433
    :cond_2
    invoke-virtual {v4}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    move-result-object v11

    .line 435
    .local v11, "localeScript":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 436
    invoke-static {v4}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v12

    invoke-static {v12}, Landroid/icu/util/ULocale;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    move-result-object v12

    invoke-virtual {v12}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v11

    .line 438
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    move-result-object v12

    .line 439
    .local v12, "resScript":Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 440
    invoke-static/range {p1 .. p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v13

    invoke-static {v13}, Landroid/icu/util/ULocale;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    move-result-object v13

    invoke-virtual {v13}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v12

    .line 442
    :cond_4
    invoke-virtual/range {p1 .. p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v13

    .line 443
    .local v13, "resRegion":Ljava/lang/String;
    const/4 v14, 0x1

    .line 444
    .local v14, "PLUS_SCORE":I
    const-string v15, "en"

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-static {v11, v12}, Lcom/huawei/i18n/taboo/FindTargetRules;->isSameEnglishScript(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_6

    .line 445
    :cond_5
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 446
    :cond_6
    add-int/lit8 v3, v3, 0x3

    .line 448
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 449
    add-int/lit8 v3, v3, 0x1

    .line 454
    :cond_7
    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v8

    .line 455
    .local v8, "localeRegion":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_8

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 456
    add-int/lit8 v3, v3, 0x3

    .line 458
    :cond_8
    return v3

    .line 452
    .end local v8    # "localeRegion":Ljava/lang/String;
    :cond_9
    return v8

    .line 420
    .end local v7    # "localeTag":Ljava/lang/String;
    .end local v9    # "resTag":Ljava/lang/String;
    .end local v10    # "dialects":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11    # "localeScript":Ljava/lang/String;
    .end local v12    # "resScript":Ljava/lang/String;
    .end local v13    # "resRegion":Ljava/lang/String;
    .end local v14    # "PLUS_SCORE":I
    :cond_a
    :goto_1
    return v8
.end method

.method public static getChain(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 10
    .param p0, "localeId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 310
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 311
    .local v0, "dialects":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v1, Lcom/huawei/i18n/taboo/FindTargetRules;->HANT_PARENTS:[[Ljava/lang/String;

    array-length v1, v1

    .line 312
    .local v1, "hantSize":I
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_1

    .line 313
    sget-object v5, Lcom/huawei/i18n/taboo/FindTargetRules;->HANT_PARENTS:[[Ljava/lang/String;

    aget-object v5, v5, v3

    aget-object v5, v5, v2

    .line 314
    .local v5, "keyStr":Ljava/lang/String;
    sget-object v6, Lcom/huawei/i18n/taboo/FindTargetRules;->HANT_PARENTS:[[Ljava/lang/String;

    aget-object v6, v6, v3

    aget-object v6, v6, v4

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 316
    .local v6, "keyArray":[Ljava/lang/String;
    array-length v7, v6

    if-le v7, v4, :cond_0

    .line 317
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v8, v6, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "-Hant-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v6, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 318
    .local v7, "keyStr1":Ljava/lang/String;
    sget-object v8, Lcom/huawei/i18n/taboo/FindTargetRules;->HANT_PARENTS:[[Ljava/lang/String;

    aget-object v8, v8, v3

    aget-object v4, v8, v4

    invoke-virtual {v0, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    .end local v5    # "keyStr":Ljava/lang/String;
    .end local v6    # "keyArray":[Ljava/lang/String;
    .end local v7    # "keyStr1":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 321
    .end local v3    # "i":I
    :cond_1
    sget-object v3, Lcom/huawei/i18n/taboo/FindTargetRules;->LATN_PARENTS:[[Ljava/lang/String;

    array-length v3, v3

    .line 322
    .local v3, "latnSize":I
    move v5, v2

    .local v5, "i":I
    :goto_1
    if-ge v5, v3, :cond_3

    .line 323
    sget-object v6, Lcom/huawei/i18n/taboo/FindTargetRules;->LATN_PARENTS:[[Ljava/lang/String;

    aget-object v6, v6, v5

    aget-object v6, v6, v2

    .line 324
    .local v6, "keyStr":Ljava/lang/String;
    sget-object v7, Lcom/huawei/i18n/taboo/FindTargetRules;->LATN_PARENTS:[[Ljava/lang/String;

    aget-object v7, v7, v5

    aget-object v7, v7, v4

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 326
    .local v7, "keyArray":[Ljava/lang/String;
    array-length v8, v7

    if-le v8, v4, :cond_2

    .line 327
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v9, v7, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "-Latn-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v9, v7, v4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 328
    .local v8, "keyStr1":Ljava/lang/String;
    sget-object v9, Lcom/huawei/i18n/taboo/FindTargetRules;->LATN_PARENTS:[[Ljava/lang/String;

    aget-object v9, v9, v5

    aget-object v9, v9, v4

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    .end local v6    # "keyStr":Ljava/lang/String;
    .end local v7    # "keyArray":[Ljava/lang/String;
    .end local v8    # "keyStr1":Ljava/lang/String;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 331
    .end local v5    # "i":I
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 332
    .local v2, "chain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 333
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/huawei/i18n/taboo/FindTargetRules;->getNormalChain(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 336
    :cond_4
    invoke-static {p0}, Lcom/huawei/i18n/taboo/FindTargetRules;->getNormalChain(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 338
    :goto_2
    return-object v2
.end method

.method private static getDialectMap()Ljava/util/HashMap;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 462
    const-string v0, "en-"

    .line 463
    .local v0, "ENGLISH":Ljava/lang/String;
    const-string v1, "-Hant-"

    .line 464
    .local v1, "HANT_SEGMENT":Ljava/lang/String;
    const-string v2, "-Latn-"

    .line 465
    .local v2, "LATN_SEGMENT":Ljava/lang/String;
    const-string v3, "-Qaag-"

    .line 466
    .local v3, "QAAG_SEGMENT":Ljava/lang/String;
    const-string v4, "-"

    .line 467
    .local v4, "SYMBOL":Ljava/lang/String;
    new-instance v5, Ljava/util/HashMap;

    const/16 v6, 0xc8

    invoke-direct {v5, v6}, Ljava/util/HashMap;-><init>(I)V

    .line 468
    .local v5, "dialects":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v6, Lcom/huawei/i18n/taboo/FindTargetRules;->HANT_PARENTS:[[Ljava/lang/String;

    array-length v6, v6

    .line 469
    .local v6, "leng1":I
    const/4 v7, 0x0

    move v8, v7

    .local v8, "i":I
    :goto_0
    const/4 v9, 0x1

    if-ge v8, v6, :cond_1

    .line 470
    sget-object v10, Lcom/huawei/i18n/taboo/FindTargetRules;->HANT_PARENTS:[[Ljava/lang/String;

    aget-object v10, v10, v8

    aget-object v10, v10, v7

    .line 471
    .local v10, "keyStr":Ljava/lang/String;
    sget-object v11, Lcom/huawei/i18n/taboo/FindTargetRules;->HANT_PARENTS:[[Ljava/lang/String;

    aget-object v11, v11, v8

    aget-object v11, v11, v9

    .line 472
    .local v11, "valueStr":Ljava/lang/String;
    invoke-virtual {v5, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    const-string v12, "-"

    invoke-virtual {v10, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 474
    .local v12, "keyArray":[Ljava/lang/String;
    array-length v13, v12

    if-le v13, v9, :cond_0

    .line 475
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v14, v12, v7

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "-Hant-"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v9, v12, v9

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 476
    .local v9, "keyStr1":Ljava/lang/String;
    invoke-virtual {v5, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    .end local v9    # "keyStr1":Ljava/lang/String;
    .end local v10    # "keyStr":Ljava/lang/String;
    .end local v11    # "valueStr":Ljava/lang/String;
    .end local v12    # "keyArray":[Ljava/lang/String;
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 479
    .end local v8    # "i":I
    :cond_1
    sget-object v8, Lcom/huawei/i18n/taboo/FindTargetRules;->LATN_PARENTS:[[Ljava/lang/String;

    array-length v8, v8

    .line 480
    .local v8, "leng2":I
    move v10, v7

    .local v10, "i":I
    :goto_1
    if-ge v10, v8, :cond_4

    .line 481
    sget-object v11, Lcom/huawei/i18n/taboo/FindTargetRules;->LATN_PARENTS:[[Ljava/lang/String;

    aget-object v11, v11, v10

    aget-object v11, v11, v7

    .line 482
    .local v11, "keyStr":Ljava/lang/String;
    sget-object v12, Lcom/huawei/i18n/taboo/FindTargetRules;->LATN_PARENTS:[[Ljava/lang/String;

    aget-object v12, v12, v10

    aget-object v12, v12, v9

    .line 483
    .local v12, "valueStr":Ljava/lang/String;
    invoke-virtual {v5, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    const-string v13, "-"

    invoke-virtual {v11, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 485
    .local v13, "keyArray":[Ljava/lang/String;
    array-length v14, v13

    if-le v14, v9, :cond_2

    .line 486
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v15, v13, v7

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "-Latn-"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v15, v13, v9

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 487
    .local v14, "keyStr1":Ljava/lang/String;
    invoke-virtual {v5, v14, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    .end local v14    # "keyStr1":Ljava/lang/String;
    :cond_2
    const-string v14, "en-"

    invoke-virtual {v11, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_3

    array-length v14, v13

    if-le v14, v9, :cond_3

    .line 490
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v15, v13, v7

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "-Qaag-"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v15, v13, v9

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 491
    .local v14, "keyStr2":Ljava/lang/String;
    invoke-virtual {v5, v14, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    .end local v11    # "keyStr":Ljava/lang/String;
    .end local v12    # "valueStr":Ljava/lang/String;
    .end local v13    # "keyArray":[Ljava/lang/String;
    .end local v14    # "keyStr2":Ljava/lang/String;
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 494
    .end local v10    # "i":I
    :cond_4
    return-object v5
.end method

.method public static getFilterList(Ljava/util/List;Ljava/util/Locale;)Ljava/util/List;
    .locals 4
    .param p1, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Locale;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 391
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 392
    .local v0, "filter":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 393
    .local v2, "loc":Ljava/lang/String;
    invoke-static {v2}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/huawei/i18n/taboo/FindTargetRules;->computeMatchScore(Ljava/util/Locale;Ljava/util/Locale;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    .end local v2    # "loc":Ljava/lang/String;
    goto :goto_0

    .line 395
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 396
    .local v1, "sortList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    new-instance v2, Lcom/huawei/i18n/taboo/FindTargetRules$1;

    invoke-direct {v2}, Lcom/huawei/i18n/taboo/FindTargetRules$1;-><init>()V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 406
    return-object v1
.end method

.method private static getMccmncsList()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 229
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 230
    .local v0, "mccmncList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "gsm.sim.operator.numeric"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 231
    .local v1, "mccmnc":Ljava/lang/String;
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 232
    .local v5, "mc":Ljava/lang/String;
    if-eqz v5, :cond_0

    const-string v6, ""

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 233
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    .end local v5    # "mc":Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 236
    :cond_1
    return-object v0
.end method

.method private static getMccsList()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 214
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 215
    .local v0, "mccList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "persist.sys.mcc_match_fyrom"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 216
    .local v1, "mccStr":Ljava/lang/String;
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 217
    .local v2, "mccs":[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, v2, v5

    .line 218
    .local v6, "mcc":Ljava/lang/String;
    if-eqz v6, :cond_0

    const-string v7, ""

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 219
    const/4 v7, 0x3

    invoke-virtual {v6, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 220
    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 221
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    .end local v6    # "mcc":Ljava/lang/String;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 225
    :cond_1
    return-object v0
.end method

.method private static getNormalChain(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .param p0, "localeId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 342
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 343
    .local v0, "specialLanguages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v1, "sr-Latn"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 344
    const-string v1, "zh-Hant"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 345
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 346
    .local v1, "chain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 347
    .local v2, "index":I
    :goto_0
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 348
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 349
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 351
    goto :goto_1

    .line 353
    :cond_0
    const-string v3, "-"

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    .line 355
    :cond_1
    :goto_1
    return-object v1
.end method

.method public static getSequentialFallBack(Lcom/huawei/i18n/taboo/FindTargetRules$SystemParam;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p0, "param"    # Lcom/huawei/i18n/taboo/FindTargetRules$SystemParam;
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/i18n/taboo/FindTargetRules$SystemParam;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 248
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 249
    .local v0, "sequentialFallBack":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p0, :cond_9

    if-nez p1, :cond_0

    goto/16 :goto_2

    .line 253
    :cond_0
    invoke-static {p0}, Lcom/huawei/i18n/taboo/FindTargetRules$SystemParam;->access$200(Lcom/huawei/i18n/taboo/FindTargetRules$SystemParam;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 254
    .local v2, "mccmnc":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_mccmnc_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 255
    .local v3, "mccmncStr":Ljava/lang/String;
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    .end local v2    # "mccmnc":Ljava/lang/String;
    .end local v3    # "mccmncStr":Ljava/lang/String;
    goto :goto_0

    .line 257
    :cond_1
    invoke-static {p0}, Lcom/huawei/i18n/taboo/FindTargetRules$SystemParam;->access$300(Lcom/huawei/i18n/taboo/FindTargetRules$SystemParam;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 258
    .local v2, "mcc":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_mcc_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 259
    .local v3, "mccStr":Ljava/lang/String;
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    .end local v2    # "mcc":Ljava/lang/String;
    .end local v3    # "mccStr":Ljava/lang/String;
    goto :goto_1

    .line 261
    :cond_2
    invoke-static {p0}, Lcom/huawei/i18n/taboo/FindTargetRules$SystemParam;->access$400(Lcom/huawei/i18n/taboo/FindTargetRules$SystemParam;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v1, ""

    invoke-static {p0}, Lcom/huawei/i18n/taboo/FindTargetRules$SystemParam;->access$400(Lcom/huawei/i18n/taboo/FindTargetRules$SystemParam;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 262
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_optbopta_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/huawei/i18n/taboo/FindTargetRules$SystemParam;->access$400(Lcom/huawei/i18n/taboo/FindTargetRules$SystemParam;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 263
    .local v1, "optboptaStr":Ljava/lang/String;
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    .end local v1    # "optboptaStr":Ljava/lang/String;
    :cond_3
    invoke-static {p0}, Lcom/huawei/i18n/taboo/FindTargetRules$SystemParam;->access$500(Lcom/huawei/i18n/taboo/FindTargetRules$SystemParam;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v1, ""

    invoke-static {p0}, Lcom/huawei/i18n/taboo/FindTargetRules$SystemParam;->access$500(Lcom/huawei/i18n/taboo/FindTargetRules$SystemParam;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 266
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_optb_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/huawei/i18n/taboo/FindTargetRules$SystemParam;->access$500(Lcom/huawei/i18n/taboo/FindTargetRules$SystemParam;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 267
    .local v1, "optb":Ljava/lang/String;
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    .end local v1    # "optb":Ljava/lang/String;
    :cond_4
    invoke-static {p0}, Lcom/huawei/i18n/taboo/FindTargetRules$SystemParam;->access$600(Lcom/huawei/i18n/taboo/FindTargetRules$SystemParam;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string v1, ""

    invoke-static {p0}, Lcom/huawei/i18n/taboo/FindTargetRules$SystemParam;->access$600(Lcom/huawei/i18n/taboo/FindTargetRules$SystemParam;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 270
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_hc_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/huawei/i18n/taboo/FindTargetRules$SystemParam;->access$600(Lcom/huawei/i18n/taboo/FindTargetRules$SystemParam;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 271
    .local v1, "hbcCountry":Ljava/lang/String;
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    .end local v1    # "hbcCountry":Ljava/lang/String;
    :cond_5
    invoke-static {p0}, Lcom/huawei/i18n/taboo/FindTargetRules$SystemParam;->access$700(Lcom/huawei/i18n/taboo/FindTargetRules$SystemParam;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    const-string v1, ""

    invoke-static {p0}, Lcom/huawei/i18n/taboo/FindTargetRules$SystemParam;->access$700(Lcom/huawei/i18n/taboo/FindTargetRules$SystemParam;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 274
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_vc_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/huawei/i18n/taboo/FindTargetRules$SystemParam;->access$700(Lcom/huawei/i18n/taboo/FindTargetRules$SystemParam;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 275
    .local v1, "vendorCountry":Ljava/lang/String;
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    .end local v1    # "vendorCountry":Ljava/lang/String;
    :cond_6
    invoke-static {p0}, Lcom/huawei/i18n/taboo/FindTargetRules$SystemParam;->access$800(Lcom/huawei/i18n/taboo/FindTargetRules$SystemParam;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    const-string v1, ""

    invoke-static {p0}, Lcom/huawei/i18n/taboo/FindTargetRules$SystemParam;->access$800(Lcom/huawei/i18n/taboo/FindTargetRules$SystemParam;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 278
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_c_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/huawei/i18n/taboo/FindTargetRules$SystemParam;->access$800(Lcom/huawei/i18n/taboo/FindTargetRules$SystemParam;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 279
    .local v1, "country":Ljava/lang/String;
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    .end local v1    # "country":Ljava/lang/String;
    :cond_7
    invoke-static {p0}, Lcom/huawei/i18n/taboo/FindTargetRules$SystemParam;->access$900(Lcom/huawei/i18n/taboo/FindTargetRules$SystemParam;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    const-string v1, ""

    invoke-static {p0}, Lcom/huawei/i18n/taboo/FindTargetRules$SystemParam;->access$900(Lcom/huawei/i18n/taboo/FindTargetRules$SystemParam;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 283
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_r_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/huawei/i18n/taboo/FindTargetRules$SystemParam;->access$900(Lcom/huawei/i18n/taboo/FindTargetRules$SystemParam;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 284
    .local v1, "region":Ljava/lang/String;
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    .end local v1    # "region":Ljava/lang/String;
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_r_all"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    return-object v0

    .line 250
    :cond_9
    :goto_2
    return-object v0
.end method

.method private static isSameEnglishScript(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "script1"    # Ljava/lang/String;
    .param p1, "script2"    # Ljava/lang/String;

    .line 498
    const-string v0, "Qaag"

    const-string v1, "Latn"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 499
    .local v0, "filterScript1":Ljava/lang/String;
    const-string v1, "Qaag"

    const-string v2, "Latn"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 500
    .local v1, "filterScript2":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method private static isSameLanguage(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "language1"    # Ljava/lang/String;
    .param p1, "langauge2"    # Ljava/lang/String;

    .line 504
    const-string v0, "tl"

    const-string v1, "fil"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 505
    .local v0, "filterLang1":Ljava/lang/String;
    const-string v1, "tl"

    const-string v2, "fil"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 506
    .local v1, "filterLang2":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method public static langTagFormat(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "localeId"    # Ljava/lang/String;

    .line 363
    const/4 v0, 0x0

    .line 364
    .local v0, "result":Ljava/lang/String;
    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 367
    :cond_0
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLanguageTag(Ljava/lang/String;)Landroid/icu/util/ULocale;

    move-result-object v1

    .line 368
    .local v1, "locale":Landroid/icu/util/ULocale;
    if-nez v1, :cond_1

    .line 369
    return-object v0

    .line 371
    :cond_1
    invoke-virtual {v1}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 372
    :cond_2
    invoke-static {v1}, Landroid/icu/util/ULocale;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    move-result-object v2

    .line 373
    .local v2, "scriptLocale":Landroid/icu/util/ULocale;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 374
    .local v3, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {v1}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 375
    invoke-virtual {v1}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v1}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 376
    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 378
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 380
    .end local v2    # "scriptLocale":Landroid/icu/util/ULocale;
    .end local v3    # "sb":Ljava/lang/StringBuffer;
    :cond_4
    return-object v0

    .line 365
    .end local v1    # "locale":Landroid/icu/util/ULocale;
    :cond_5
    :goto_0
    return-object v0
.end method
