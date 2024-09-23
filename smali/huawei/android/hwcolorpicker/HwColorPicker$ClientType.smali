.class public final enum Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;
.super Ljava/lang/Enum;
.source "HwColorPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhuawei/android/hwcolorpicker/HwColorPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ClientType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;

.field public static final enum Debug:Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;

.field public static final enum Default:Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;

.field public static final enum Extend:Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;

.field public static final enum Music:Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;


# instance fields
.field private index:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 352
    new-instance v0, Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;

    const-string v1, "Default"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;->Default:Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;

    .line 353
    new-instance v0, Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;

    const-string v1, "Extend"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;->Extend:Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;

    .line 354
    new-instance v0, Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;

    const-string v1, "Debug"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v3}, Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;->Debug:Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;

    .line 355
    new-instance v0, Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;

    const-string v1, "Music"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v4}, Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;->Music:Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;

    .line 351
    const/4 v0, 0x4

    new-array v0, v0, [Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;

    sget-object v1, Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;->Default:Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;

    aput-object v1, v0, v2

    sget-object v1, Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;->Extend:Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;

    aput-object v1, v0, v3

    sget-object v1, Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;->Debug:Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;

    aput-object v1, v0, v4

    sget-object v1, Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;->Music:Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;

    aput-object v1, v0, v5

    sput-object v0, Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;->$VALUES:[Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;

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

    .line 359
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 360
    iput p3, p0, Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;->index:I

    .line 361
    return-void
.end method

.method static synthetic access$200(Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;)I
    .locals 1
    .param p0, "x0"    # Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;

    .line 351
    iget v0, p0, Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;->index:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 351
    const-class v0, Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;

    return-object v0
.end method

.method public static values()[Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;
    .locals 1

    .line 351
    sget-object v0, Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;->$VALUES:[Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;

    invoke-virtual {v0}, [Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;

    return-object v0
.end method
