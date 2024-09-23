.class public final enum Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;
.super Ljava/lang/Enum;
.source "HwColorPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhuawei/android/hwcolorpicker/HwColorPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ResultType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;

.field public static final enum Domain:Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;

.field public static final enum DomainDark:Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;

.field public static final enum DomainDarkB:Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;

.field public static final enum DomainDarkC:Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;

.field public static final enum DomainLight:Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;

.field public static final enum DomainLightB:Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;

.field public static final enum DomainLightC:Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;

.field public static final enum MergedNum1:Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;

.field public static final enum MergedNum2:Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;

.field public static final enum MergedNum3:Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;

.field public static final enum MergedRgb1:Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;

.field public static final enum MergedRgb2:Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;

.field public static final enum MergedRgb3:Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;

.field public static final enum Music_Domain:Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;

.field public static final enum Music_Light:Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;

.field public static final enum Music_Title:Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;

.field public static final enum Music_Widget:Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;

.field public static final enum OriginNum1:Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;

.field public static final enum OriginNum2:Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;

.field public static final enum OriginNum3:Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;

.field public static final enum OriginRgb1:Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;

.field public static final enum OriginRgb2:Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;

.field public static final enum OriginRgb3:Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;

.field public static final enum Second:Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;

.field public static final enum SecondDark:Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;

.field public static final enum SecondLight:Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;

.field public static final enum Shadow:Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;

.field public static final enum Widget:Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;


# instance fields
.field private clientType:Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;

.field private flag:I

.field private index:I


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 431
    new-instance v0, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;

    const-string v1, "Domain"

    sget-object v2, Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;->Default:Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2, v3}, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;-><init>(Ljava/lang/String;ILhuawei/android/hwcolorpicker/HwColorPicker$ClientType;I)V

    sput-object v0, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;->Domain:Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;

    .line 437
    new-instance v0, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;

    const-string v1, "DomainDark"

    sget-object v2, Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;->Default:Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2, v4}, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;-><init>(Ljava/lang/String;ILhuawei/android/hwcolorpicker/HwColorPicker$ClientType;I)V

    sput-object v0, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;->DomainDark:Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;

    .line 443
    new-instance v0, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;

    const-string v1, "DomainDarkB"

    sget-object v2, Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;->Default:Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2, v5}, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;-><init>(Ljava/lang/String;ILhuawei/android/hwcolorpicker/HwColorPicker$ClientType;I)V

    sput-object v0, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;->DomainDarkB:Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;

    .line 449
    new-instance v0, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;

    const-string v1, "DomainDarkC"

    sget-object v2, Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;->Default:Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2, v6}, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;-><init>(Ljava/lang/String;ILhuawei/android/hwcolorpicker/HwColorPicker$ClientType;I)V

    sput-object v0, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;->DomainDarkC:Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;

    .line 455
    new-instance v0, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;

    const-string v1, "DomainLight"

    sget-object v2, Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;->Default:Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v2, v7}, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;-><init>(Ljava/lang/String;ILhuawei/android/hwcolorpicker/HwColorPicker$ClientType;I)V

    sput-object v0, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;->DomainLight:Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;

    .line 461
    new-instance v0, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;

    const-string v1, "DomainLightB"

    sget-object v2, Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;->Default:Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;

    const/4 v8, 0x5

    invoke-direct {v0, v1, v8, v2, v8}, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;-><init>(Ljava/lang/String;ILhuawei/android/hwcolorpicker/HwColorPicker$ClientType;I)V

    sput-object v0, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;->DomainLightB:Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;

    .line 467
    new-instance v0, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;

    const-string v1, "DomainLightC"

    sget-object v2, Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;->Default:Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;

    const/4 v9, 0x6

    invoke-direct {v0, v1, v9, v2, v9}, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;-><init>(Ljava/lang/String;ILhuawei/android/hwcolorpicker/HwColorPicker$ClientType;I)V

    sput-object v0, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;->DomainLightC:Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;

    .line 473
    new-instance v0, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;

    const-string v1, "Second"

    sget-object v2, Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;->Default:Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;

    const/4 v10, 0x7

    invoke-direct {v0, v1, v10, v2, v10}, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;-><init>(Ljava/lang/String;ILhuawei/android/hwcolorpicker/HwColorPicker$ClientType;I)V

    sput-object v0, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;->Second:Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;

    .line 479
    new-instance v0, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;

    const-string v1, "SecondDark"

    sget-object v2, Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;->Default:Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;

    const/16 v11, 0x8

    invoke-direct {v0, v1, v11, v2, v11}, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;-><init>(Ljava/lang/String;ILhuawei/android/hwcolorpicker/HwColorPicker$ClientType;I)V

    sput-object v0, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;->SecondDark:Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;

    .line 485
    new-instance v0, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;

    const-string v1, "SecondLight"

    sget-object v2, Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;->Default:Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;

    const/16 v12, 0x9

    invoke-direct {v0, v1, v12, v2, v12}, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;-><init>(Ljava/lang/String;ILhuawei/android/hwcolorpicker/HwColorPicker$ClientType;I)V

    sput-object v0, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;->SecondLight:Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;

    .line 491
    new-instance v0, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;

    const-string v1, "Widget"

    sget-object v2, Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;->Default:Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;

    const/16 v13, 0xa

    invoke-direct {v0, v1, v13, v2, v13}, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;-><init>(Ljava/lang/String;ILhuawei/android/hwcolorpicker/HwColorPicker$ClientType;I)V

    sput-object v0, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;->Widget:Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;

    .line 497
    new-instance v0, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;

    const-string v1, "Shadow"

    sget-object v2, Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;->Default:Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;

    const/16 v14, 0xb

    invoke-direct {v0, v1, v14, v2, v14}, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;-><init>(Ljava/lang/String;ILhuawei/android/hwcolorpicker/HwColorPicker$ClientType;I)V

    sput-object v0, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;->Shadow:Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;

    .line 504
    new-instance v0, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;

    const-string v1, "OriginRgb1"

    sget-object v2, Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;->Extend:Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;

    const/16 v15, 0xc

    invoke-direct {v0, v1, v15, v2, v3}, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;-><init>(Ljava/lang/String;ILhuawei/android/hwcolorpicker/HwColorPicker$ClientType;I)V

    sput-object v0, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;->OriginRgb1:Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;

    .line 510
    new-instance v0, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;

    const-string v1, "OriginRgb2"

    sget-object v2, Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;->Extend:Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15, v2, v4}, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;-><init>(Ljava/lang/String;ILhuawei/android/hwcolorpicker/HwColorPicker$ClientType;I)V

    sput-object v0, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;->OriginRgb2:Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;

    .line 516
    new-instance v0, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;

    const-string v1, "OriginRgb3"

    sget-object v2, Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;->Extend:Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15, v2, v5}, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;-><init>(Ljava/lang/String;ILhuawei/android/hwcolorpicker/HwColorPicker$ClientType;I)V

    sput-object v0, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;->OriginRgb3:Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;

    .line 522
    new-instance v0, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;

    const-string v1, "OriginNum1"

    sget-object v2, Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;->Extend:Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;

    const/16 v15, 0xf

    invoke-direct {v0, v1, v15, v2, v6}, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;-><init>(Ljava/lang/String;ILhuawei/android/hwcolorpicker/HwColorPicker$ClientType;I)V

    sput-object v0, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;->OriginNum1:Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;

    .line 528
    new-instance v0, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;

    const-string v1, "OriginNum2"

    sget-object v2, Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;->Extend:Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;

    const/16 v15, 0x10

    invoke-direct {v0, v1, v15, v2, v7}, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;-><init>(Ljava/lang/String;ILhuawei/android/hwcolorpicker/HwColorPicker$ClientType;I)V

    sput-object v0, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;->OriginNum2:Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;

    .line 534
    new-instance v0, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;

    const-string v1, "OriginNum3"

    sget-object v2, Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;->Extend:Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;

    const/16 v15, 0x11

    invoke-direct {v0, v1, v15, v2, v8}, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;-><init>(Ljava/lang/String;ILhuawei/android/hwcolorpicker/HwColorPicker$ClientType;I)V

    sput-object v0, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;->OriginNum3:Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;

    .line 540
    new-instance v0, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;

    const-string v1, "MergedRgb1"

    sget-object v2, Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;->Extend:Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;

    const/16 v15, 0x12

    invoke-direct {v0, v1, v15, v2, v9}, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;-><init>(Ljava/lang/String;ILhuawei/android/hwcolorpicker/HwColorPicker$ClientType;I)V

    sput-object v0, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;->MergedRgb1:Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;

    .line 546
    new-instance v0, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;

    const-string v1, "MergedRgb2"

    sget-object v2, Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;->Extend:Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;

    const/16 v15, 0x13

    invoke-direct {v0, v1, v15, v2, v10}, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;-><init>(Ljava/lang/String;ILhuawei/android/hwcolorpicker/HwColorPicker$ClientType;I)V

    sput-object v0, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;->MergedRgb2:Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;

    .line 552
    new-instance v0, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;

    const-string v1, "MergedRgb3"

    sget-object v2, Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;->Extend:Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;

    const/16 v15, 0x14

    invoke-direct {v0, v1, v15, v2, v11}, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;-><init>(Ljava/lang/String;ILhuawei/android/hwcolorpicker/HwColorPicker$ClientType;I)V

    sput-object v0, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;->MergedRgb3:Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;

    .line 558
    new-instance v0, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;

    const-string v1, "MergedNum1"

    sget-object v2, Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;->Extend:Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;

    const/16 v15, 0x15

    invoke-direct {v0, v1, v15, v2, v12}, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;-><init>(Ljava/lang/String;ILhuawei/android/hwcolorpicker/HwColorPicker$ClientType;I)V

    sput-object v0, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;->MergedNum1:Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;

    .line 564
    new-instance v0, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;

    const-string v1, "MergedNum2"

    sget-object v2, Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;->Extend:Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;

    const/16 v15, 0x16

    invoke-direct {v0, v1, v15, v2, v13}, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;-><init>(Ljava/lang/String;ILhuawei/android/hwcolorpicker/HwColorPicker$ClientType;I)V

    sput-object v0, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;->MergedNum2:Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;

    .line 570
    new-instance v0, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;

    const-string v1, "MergedNum3"

    sget-object v2, Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;->Extend:Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;

    const/16 v15, 0x17

    invoke-direct {v0, v1, v15, v2, v14}, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;-><init>(Ljava/lang/String;ILhuawei/android/hwcolorpicker/HwColorPicker$ClientType;I)V

    sput-object v0, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;->MergedNum3:Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;

    .line 577
    new-instance v0, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;

    const-string v1, "Music_Domain"

    sget-object v2, Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;->Music:Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;

    const/16 v15, 0x18

    invoke-direct {v0, v1, v15, v2, v3}, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;-><init>(Ljava/lang/String;ILhuawei/android/hwcolorpicker/HwColorPicker$ClientType;I)V

    sput-object v0, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;->Music_Domain:Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;

    .line 583
    new-instance v0, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;

    const-string v1, "Music_Light"

    sget-object v2, Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;->Music:Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;

    const/16 v15, 0x19

    invoke-direct {v0, v1, v15, v2, v4}, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;-><init>(Ljava/lang/String;ILhuawei/android/hwcolorpicker/HwColorPicker$ClientType;I)V

    sput-object v0, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;->Music_Light:Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;

    .line 589
    new-instance v0, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;

    const-string v1, "Music_Widget"

    sget-object v2, Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;->Music:Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;

    const/16 v15, 0x1a

    invoke-direct {v0, v1, v15, v2, v5}, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;-><init>(Ljava/lang/String;ILhuawei/android/hwcolorpicker/HwColorPicker$ClientType;I)V

    sput-object v0, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;->Music_Widget:Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;

    .line 595
    new-instance v0, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;

    const-string v1, "Music_Title"

    sget-object v2, Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;->Music:Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;

    const/16 v15, 0x1b

    invoke-direct {v0, v1, v15, v2, v6}, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;-><init>(Ljava/lang/String;ILhuawei/android/hwcolorpicker/HwColorPicker$ClientType;I)V

    sput-object v0, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;->Music_Title:Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;

    .line 425
    const/16 v0, 0x1c

    new-array v0, v0, [Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;

    sget-object v1, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;->Domain:Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;

    aput-object v1, v0, v3

    sget-object v1, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;->DomainDark:Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;

    aput-object v1, v0, v4

    sget-object v1, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;->DomainDarkB:Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;

    aput-object v1, v0, v5

    sget-object v1, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;->DomainDarkC:Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;

    aput-object v1, v0, v6

    sget-object v1, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;->DomainLight:Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;

    aput-object v1, v0, v7

    sget-object v1, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;->DomainLightB:Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;

    aput-object v1, v0, v8

    sget-object v1, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;->DomainLightC:Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;

    aput-object v1, v0, v9

    sget-object v1, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;->Second:Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;

    aput-object v1, v0, v10

    sget-object v1, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;->SecondDark:Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;

    aput-object v1, v0, v11

    sget-object v1, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;->SecondLight:Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;

    aput-object v1, v0, v12

    sget-object v1, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;->Widget:Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;

    aput-object v1, v0, v13

    sget-object v1, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;->Shadow:Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;

    aput-object v1, v0, v14

    sget-object v1, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;->OriginRgb1:Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;->OriginRgb2:Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;->OriginRgb3:Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;->OriginNum1:Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;->OriginNum2:Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;->OriginNum3:Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;->MergedRgb1:Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;->MergedRgb2:Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;->MergedRgb3:Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;->MergedNum1:Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;->MergedNum2:Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;->MergedNum3:Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;->Music_Domain:Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;->Music_Light:Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;->Music_Widget:Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;->Music_Title:Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sput-object v0, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;->$VALUES:[Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILhuawei/android/hwcolorpicker/HwColorPicker$ClientType;I)V
    .locals 1
    .param p3, "clientType"    # Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;
    .param p4, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;",
            "I)V"
        }
    .end annotation

    .line 601
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 602
    iput-object p3, p0, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;->clientType:Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;

    .line 603
    const p1, 0xffff

    and-int p2, p4, p1

    iput p2, p0, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;->index:I

    .line 604
    invoke-static {p3}, Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;->access$200(Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;)I

    move-result p2

    shl-int/lit8 p2, p2, 0x18

    const/high16 v0, -0x1000000

    and-int/2addr p2, v0

    and-int/2addr p1, p4

    or-int/2addr p1, p2

    iput p1, p0, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;->flag:I

    .line 605
    return-void
.end method

.method static synthetic access$300(Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;)I
    .locals 1
    .param p0, "x0"    # Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;

    .line 425
    iget v0, p0, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;->index:I

    return v0
.end method

.method public static getRequestedColorNum(I)I
    .locals 5
    .param p0, "clientType"    # I

    .line 608
    invoke-static {}, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;->values()[Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;

    move-result-object v0

    .line 609
    .local v0, "types":[Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;
    const/4 v1, 0x0

    .line 610
    .local v1, "num":I
    array-length v2, v0

    .line 611
    .local v2, "length":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 612
    aget-object v4, v0, v3

    iget-object v4, v4, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;->clientType:Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;

    invoke-static {v4}, Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;->access$200(Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;)I

    move-result v4

    if-ne p0, v4, :cond_0

    .line 613
    add-int/lit8 v1, v1, 0x1

    .line 611
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 616
    .end local v3    # "i":I
    :cond_1
    return v1
.end method

.method public static valueOf(Ljava/lang/String;)Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 425
    const-class v0, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;

    return-object v0
.end method

.method public static values()[Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;
    .locals 1

    .line 425
    sget-object v0, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;->$VALUES:[Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;

    invoke-virtual {v0}, [Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 5

    .line 621
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;->clientType:Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "0x%08x"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;->flag:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
