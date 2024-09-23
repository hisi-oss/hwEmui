.class public final enum Landroid/util/HwNormalizedSpline$BrightnessModeState;
.super Ljava/lang/Enum;
.source "HwNormalizedSpline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/HwNormalizedSpline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BrightnessModeState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/util/HwNormalizedSpline$BrightnessModeState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/util/HwNormalizedSpline$BrightnessModeState;

.field public static final enum CalibrtionMode:Landroid/util/HwNormalizedSpline$BrightnessModeState;

.field public static final enum CameraMode:Landroid/util/HwNormalizedSpline$BrightnessModeState;

.field public static final enum DarkAdaptMode:Landroid/util/HwNormalizedSpline$BrightnessModeState;

.field public static final enum DayMode:Landroid/util/HwNormalizedSpline$BrightnessModeState;

.field public static final enum DefaultMode:Landroid/util/HwNormalizedSpline$BrightnessModeState;

.field public static final enum EyeProtectionMode:Landroid/util/HwNormalizedSpline$BrightnessModeState;

.field public static final enum GameMode:Landroid/util/HwNormalizedSpline$BrightnessModeState;

.field public static final enum NewCurveMode:Landroid/util/HwNormalizedSpline$BrightnessModeState;

.field public static final enum OminLevelMode:Landroid/util/HwNormalizedSpline$BrightnessModeState;

.field public static final enum PowerSavingMode:Landroid/util/HwNormalizedSpline$BrightnessModeState;

.field public static final enum ReadingMode:Landroid/util/HwNormalizedSpline$BrightnessModeState;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 2101
    new-instance v0, Landroid/util/HwNormalizedSpline$BrightnessModeState;

    const-string v1, "CameraMode"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/util/HwNormalizedSpline$BrightnessModeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/util/HwNormalizedSpline$BrightnessModeState;->CameraMode:Landroid/util/HwNormalizedSpline$BrightnessModeState;

    .line 2102
    new-instance v0, Landroid/util/HwNormalizedSpline$BrightnessModeState;

    const-string v1, "ReadingMode"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Landroid/util/HwNormalizedSpline$BrightnessModeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/util/HwNormalizedSpline$BrightnessModeState;->ReadingMode:Landroid/util/HwNormalizedSpline$BrightnessModeState;

    .line 2103
    new-instance v0, Landroid/util/HwNormalizedSpline$BrightnessModeState;

    const-string v1, "GameMode"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Landroid/util/HwNormalizedSpline$BrightnessModeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/util/HwNormalizedSpline$BrightnessModeState;->GameMode:Landroid/util/HwNormalizedSpline$BrightnessModeState;

    .line 2104
    new-instance v0, Landroid/util/HwNormalizedSpline$BrightnessModeState;

    const-string v1, "NewCurveMode"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Landroid/util/HwNormalizedSpline$BrightnessModeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/util/HwNormalizedSpline$BrightnessModeState;->NewCurveMode:Landroid/util/HwNormalizedSpline$BrightnessModeState;

    .line 2105
    new-instance v0, Landroid/util/HwNormalizedSpline$BrightnessModeState;

    const-string v1, "PowerSavingMode"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Landroid/util/HwNormalizedSpline$BrightnessModeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/util/HwNormalizedSpline$BrightnessModeState;->PowerSavingMode:Landroid/util/HwNormalizedSpline$BrightnessModeState;

    .line 2106
    new-instance v0, Landroid/util/HwNormalizedSpline$BrightnessModeState;

    const-string v1, "EyeProtectionMode"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Landroid/util/HwNormalizedSpline$BrightnessModeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/util/HwNormalizedSpline$BrightnessModeState;->EyeProtectionMode:Landroid/util/HwNormalizedSpline$BrightnessModeState;

    .line 2107
    new-instance v0, Landroid/util/HwNormalizedSpline$BrightnessModeState;

    const-string v1, "CalibrtionMode"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Landroid/util/HwNormalizedSpline$BrightnessModeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/util/HwNormalizedSpline$BrightnessModeState;->CalibrtionMode:Landroid/util/HwNormalizedSpline$BrightnessModeState;

    .line 2108
    new-instance v0, Landroid/util/HwNormalizedSpline$BrightnessModeState;

    const-string v1, "DarkAdaptMode"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Landroid/util/HwNormalizedSpline$BrightnessModeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/util/HwNormalizedSpline$BrightnessModeState;->DarkAdaptMode:Landroid/util/HwNormalizedSpline$BrightnessModeState;

    .line 2109
    new-instance v0, Landroid/util/HwNormalizedSpline$BrightnessModeState;

    const-string v1, "OminLevelMode"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Landroid/util/HwNormalizedSpline$BrightnessModeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/util/HwNormalizedSpline$BrightnessModeState;->OminLevelMode:Landroid/util/HwNormalizedSpline$BrightnessModeState;

    .line 2110
    new-instance v0, Landroid/util/HwNormalizedSpline$BrightnessModeState;

    const-string v1, "DayMode"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Landroid/util/HwNormalizedSpline$BrightnessModeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/util/HwNormalizedSpline$BrightnessModeState;->DayMode:Landroid/util/HwNormalizedSpline$BrightnessModeState;

    .line 2111
    new-instance v0, Landroid/util/HwNormalizedSpline$BrightnessModeState;

    const-string v1, "DefaultMode"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Landroid/util/HwNormalizedSpline$BrightnessModeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/util/HwNormalizedSpline$BrightnessModeState;->DefaultMode:Landroid/util/HwNormalizedSpline$BrightnessModeState;

    .line 2100
    const/16 v0, 0xb

    new-array v0, v0, [Landroid/util/HwNormalizedSpline$BrightnessModeState;

    sget-object v1, Landroid/util/HwNormalizedSpline$BrightnessModeState;->CameraMode:Landroid/util/HwNormalizedSpline$BrightnessModeState;

    aput-object v1, v0, v2

    sget-object v1, Landroid/util/HwNormalizedSpline$BrightnessModeState;->ReadingMode:Landroid/util/HwNormalizedSpline$BrightnessModeState;

    aput-object v1, v0, v3

    sget-object v1, Landroid/util/HwNormalizedSpline$BrightnessModeState;->GameMode:Landroid/util/HwNormalizedSpline$BrightnessModeState;

    aput-object v1, v0, v4

    sget-object v1, Landroid/util/HwNormalizedSpline$BrightnessModeState;->NewCurveMode:Landroid/util/HwNormalizedSpline$BrightnessModeState;

    aput-object v1, v0, v5

    sget-object v1, Landroid/util/HwNormalizedSpline$BrightnessModeState;->PowerSavingMode:Landroid/util/HwNormalizedSpline$BrightnessModeState;

    aput-object v1, v0, v6

    sget-object v1, Landroid/util/HwNormalizedSpline$BrightnessModeState;->EyeProtectionMode:Landroid/util/HwNormalizedSpline$BrightnessModeState;

    aput-object v1, v0, v7

    sget-object v1, Landroid/util/HwNormalizedSpline$BrightnessModeState;->CalibrtionMode:Landroid/util/HwNormalizedSpline$BrightnessModeState;

    aput-object v1, v0, v8

    sget-object v1, Landroid/util/HwNormalizedSpline$BrightnessModeState;->DarkAdaptMode:Landroid/util/HwNormalizedSpline$BrightnessModeState;

    aput-object v1, v0, v9

    sget-object v1, Landroid/util/HwNormalizedSpline$BrightnessModeState;->OminLevelMode:Landroid/util/HwNormalizedSpline$BrightnessModeState;

    aput-object v1, v0, v10

    sget-object v1, Landroid/util/HwNormalizedSpline$BrightnessModeState;->DayMode:Landroid/util/HwNormalizedSpline$BrightnessModeState;

    aput-object v1, v0, v11

    sget-object v1, Landroid/util/HwNormalizedSpline$BrightnessModeState;->DefaultMode:Landroid/util/HwNormalizedSpline$BrightnessModeState;

    aput-object v1, v0, v12

    sput-object v0, Landroid/util/HwNormalizedSpline$BrightnessModeState;->$VALUES:[Landroid/util/HwNormalizedSpline$BrightnessModeState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2100
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/util/HwNormalizedSpline$BrightnessModeState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 2100
    const-class v0, Landroid/util/HwNormalizedSpline$BrightnessModeState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/util/HwNormalizedSpline$BrightnessModeState;

    return-object v0
.end method

.method public static values()[Landroid/util/HwNormalizedSpline$BrightnessModeState;
    .locals 1

    .line 2100
    sget-object v0, Landroid/util/HwNormalizedSpline$BrightnessModeState;->$VALUES:[Landroid/util/HwNormalizedSpline$BrightnessModeState;

    invoke-virtual {v0}, [Landroid/util/HwNormalizedSpline$BrightnessModeState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/util/HwNormalizedSpline$BrightnessModeState;

    return-object v0
.end method
