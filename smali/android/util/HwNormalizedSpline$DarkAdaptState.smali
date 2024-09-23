.class public final enum Landroid/util/HwNormalizedSpline$DarkAdaptState;
.super Ljava/lang/Enum;
.source "HwNormalizedSpline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/HwNormalizedSpline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DarkAdaptState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/util/HwNormalizedSpline$DarkAdaptState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/util/HwNormalizedSpline$DarkAdaptState;

.field public static final enum ADAPTED:Landroid/util/HwNormalizedSpline$DarkAdaptState;

.field public static final enum ADAPTING:Landroid/util/HwNormalizedSpline$DarkAdaptState;

.field public static final enum UNADAPTED:Landroid/util/HwNormalizedSpline$DarkAdaptState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 247
    new-instance v0, Landroid/util/HwNormalizedSpline$DarkAdaptState;

    const-string v1, "UNADAPTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/util/HwNormalizedSpline$DarkAdaptState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/util/HwNormalizedSpline$DarkAdaptState;->UNADAPTED:Landroid/util/HwNormalizedSpline$DarkAdaptState;

    .line 248
    new-instance v0, Landroid/util/HwNormalizedSpline$DarkAdaptState;

    const-string v1, "ADAPTING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Landroid/util/HwNormalizedSpline$DarkAdaptState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/util/HwNormalizedSpline$DarkAdaptState;->ADAPTING:Landroid/util/HwNormalizedSpline$DarkAdaptState;

    .line 249
    new-instance v0, Landroid/util/HwNormalizedSpline$DarkAdaptState;

    const-string v1, "ADAPTED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Landroid/util/HwNormalizedSpline$DarkAdaptState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/util/HwNormalizedSpline$DarkAdaptState;->ADAPTED:Landroid/util/HwNormalizedSpline$DarkAdaptState;

    .line 246
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/util/HwNormalizedSpline$DarkAdaptState;

    sget-object v1, Landroid/util/HwNormalizedSpline$DarkAdaptState;->UNADAPTED:Landroid/util/HwNormalizedSpline$DarkAdaptState;

    aput-object v1, v0, v2

    sget-object v1, Landroid/util/HwNormalizedSpline$DarkAdaptState;->ADAPTING:Landroid/util/HwNormalizedSpline$DarkAdaptState;

    aput-object v1, v0, v3

    sget-object v1, Landroid/util/HwNormalizedSpline$DarkAdaptState;->ADAPTED:Landroid/util/HwNormalizedSpline$DarkAdaptState;

    aput-object v1, v0, v4

    sput-object v0, Landroid/util/HwNormalizedSpline$DarkAdaptState;->$VALUES:[Landroid/util/HwNormalizedSpline$DarkAdaptState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 246
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/util/HwNormalizedSpline$DarkAdaptState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 246
    const-class v0, Landroid/util/HwNormalizedSpline$DarkAdaptState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/util/HwNormalizedSpline$DarkAdaptState;

    return-object v0
.end method

.method public static values()[Landroid/util/HwNormalizedSpline$DarkAdaptState;
    .locals 1

    .line 246
    sget-object v0, Landroid/util/HwNormalizedSpline$DarkAdaptState;->$VALUES:[Landroid/util/HwNormalizedSpline$DarkAdaptState;

    invoke-virtual {v0}, [Landroid/util/HwNormalizedSpline$DarkAdaptState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/util/HwNormalizedSpline$DarkAdaptState;

    return-object v0
.end method
