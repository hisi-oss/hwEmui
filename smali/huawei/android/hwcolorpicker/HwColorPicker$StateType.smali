.class public final enum Lhuawei/android/hwcolorpicker/HwColorPicker$StateType;
.super Ljava/lang/Enum;
.source "HwColorPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhuawei/android/hwcolorpicker/HwColorPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StateType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lhuawei/android/hwcolorpicker/HwColorPicker$StateType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lhuawei/android/hwcolorpicker/HwColorPicker$StateType;

.field public static final enum Common:Lhuawei/android/hwcolorpicker/HwColorPicker$StateType;

.field public static final enum Error:Lhuawei/android/hwcolorpicker/HwColorPicker$StateType;

.field public static final enum Gray:Lhuawei/android/hwcolorpicker/HwColorPicker$StateType;

.field public static final enum None:Lhuawei/android/hwcolorpicker/HwColorPicker$StateType;

.field public static final enum OK:Lhuawei/android/hwcolorpicker/HwColorPicker$StateType;

.field public static final enum Single:Lhuawei/android/hwcolorpicker/HwColorPicker$StateType;

.field public static final enum UnDefined:Lhuawei/android/hwcolorpicker/HwColorPicker$StateType;


# instance fields
.field private index:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 375
    new-instance v0, Lhuawei/android/hwcolorpicker/HwColorPicker$StateType;

    const-string v1, "UnDefined"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lhuawei/android/hwcolorpicker/HwColorPicker$StateType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lhuawei/android/hwcolorpicker/HwColorPicker$StateType;->UnDefined:Lhuawei/android/hwcolorpicker/HwColorPicker$StateType;

    .line 381
    new-instance v0, Lhuawei/android/hwcolorpicker/HwColorPicker$StateType;

    const-string v1, "OK"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Lhuawei/android/hwcolorpicker/HwColorPicker$StateType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lhuawei/android/hwcolorpicker/HwColorPicker$StateType;->OK:Lhuawei/android/hwcolorpicker/HwColorPicker$StateType;

    .line 387
    new-instance v0, Lhuawei/android/hwcolorpicker/HwColorPicker$StateType;

    const-string v1, "Error"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v3}, Lhuawei/android/hwcolorpicker/HwColorPicker$StateType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lhuawei/android/hwcolorpicker/HwColorPicker$StateType;->Error:Lhuawei/android/hwcolorpicker/HwColorPicker$StateType;

    .line 393
    new-instance v0, Lhuawei/android/hwcolorpicker/HwColorPicker$StateType;

    const-string v1, "None"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v4}, Lhuawei/android/hwcolorpicker/HwColorPicker$StateType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lhuawei/android/hwcolorpicker/HwColorPicker$StateType;->None:Lhuawei/android/hwcolorpicker/HwColorPicker$StateType;

    .line 399
    new-instance v0, Lhuawei/android/hwcolorpicker/HwColorPicker$StateType;

    const-string v1, "Common"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v5}, Lhuawei/android/hwcolorpicker/HwColorPicker$StateType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lhuawei/android/hwcolorpicker/HwColorPicker$StateType;->Common:Lhuawei/android/hwcolorpicker/HwColorPicker$StateType;

    .line 405
    new-instance v0, Lhuawei/android/hwcolorpicker/HwColorPicker$StateType;

    const-string v1, "Single"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v6}, Lhuawei/android/hwcolorpicker/HwColorPicker$StateType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lhuawei/android/hwcolorpicker/HwColorPicker$StateType;->Single:Lhuawei/android/hwcolorpicker/HwColorPicker$StateType;

    .line 411
    new-instance v0, Lhuawei/android/hwcolorpicker/HwColorPicker$StateType;

    const-string v1, "Gray"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v7}, Lhuawei/android/hwcolorpicker/HwColorPicker$StateType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lhuawei/android/hwcolorpicker/HwColorPicker$StateType;->Gray:Lhuawei/android/hwcolorpicker/HwColorPicker$StateType;

    .line 367
    const/4 v0, 0x7

    new-array v0, v0, [Lhuawei/android/hwcolorpicker/HwColorPicker$StateType;

    sget-object v1, Lhuawei/android/hwcolorpicker/HwColorPicker$StateType;->UnDefined:Lhuawei/android/hwcolorpicker/HwColorPicker$StateType;

    aput-object v1, v0, v2

    sget-object v1, Lhuawei/android/hwcolorpicker/HwColorPicker$StateType;->OK:Lhuawei/android/hwcolorpicker/HwColorPicker$StateType;

    aput-object v1, v0, v3

    sget-object v1, Lhuawei/android/hwcolorpicker/HwColorPicker$StateType;->Error:Lhuawei/android/hwcolorpicker/HwColorPicker$StateType;

    aput-object v1, v0, v4

    sget-object v1, Lhuawei/android/hwcolorpicker/HwColorPicker$StateType;->None:Lhuawei/android/hwcolorpicker/HwColorPicker$StateType;

    aput-object v1, v0, v5

    sget-object v1, Lhuawei/android/hwcolorpicker/HwColorPicker$StateType;->Common:Lhuawei/android/hwcolorpicker/HwColorPicker$StateType;

    aput-object v1, v0, v6

    sget-object v1, Lhuawei/android/hwcolorpicker/HwColorPicker$StateType;->Single:Lhuawei/android/hwcolorpicker/HwColorPicker$StateType;

    aput-object v1, v0, v7

    sget-object v1, Lhuawei/android/hwcolorpicker/HwColorPicker$StateType;->Gray:Lhuawei/android/hwcolorpicker/HwColorPicker$StateType;

    aput-object v1, v0, v8

    sput-object v0, Lhuawei/android/hwcolorpicker/HwColorPicker$StateType;->$VALUES:[Lhuawei/android/hwcolorpicker/HwColorPicker$StateType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 415
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 416
    iput p3, p0, Lhuawei/android/hwcolorpicker/HwColorPicker$StateType;->index:I

    .line 417
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lhuawei/android/hwcolorpicker/HwColorPicker$StateType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 367
    const-class v0, Lhuawei/android/hwcolorpicker/HwColorPicker$StateType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lhuawei/android/hwcolorpicker/HwColorPicker$StateType;

    return-object v0
.end method

.method public static values()[Lhuawei/android/hwcolorpicker/HwColorPicker$StateType;
    .locals 1

    .line 367
    sget-object v0, Lhuawei/android/hwcolorpicker/HwColorPicker$StateType;->$VALUES:[Lhuawei/android/hwcolorpicker/HwColorPicker$StateType;

    invoke-virtual {v0}, [Lhuawei/android/hwcolorpicker/HwColorPicker$StateType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lhuawei/android/hwcolorpicker/HwColorPicker$StateType;

    return-object v0
.end method
