.class Lhuawei/android/hwcolorpicker/HwColorPicker$TaskParams;
.super Ljava/lang/Object;
.source "HwColorPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhuawei/android/hwcolorpicker/HwColorPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TaskParams"
.end annotation


# instance fields
.field bitmap:Landroid/graphics/Bitmap;

.field clientType:Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;

.field rect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "rect"    # Landroid/graphics/Rect;
    .param p3, "clientType"    # Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;

    .line 758
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 756
    sget-object v0, Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;->Default:Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;

    iput-object v0, p0, Lhuawei/android/hwcolorpicker/HwColorPicker$TaskParams;->clientType:Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;

    .line 759
    iput-object p1, p0, Lhuawei/android/hwcolorpicker/HwColorPicker$TaskParams;->bitmap:Landroid/graphics/Bitmap;

    .line 760
    iput-object p2, p0, Lhuawei/android/hwcolorpicker/HwColorPicker$TaskParams;->rect:Landroid/graphics/Rect;

    .line 761
    iput-object p3, p0, Lhuawei/android/hwcolorpicker/HwColorPicker$TaskParams;->clientType:Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;

    .line 762
    return-void
.end method
