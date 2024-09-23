.class public Lhuawei/android/hwcolorpicker/HwColorPicker$PickedColor;
.super Ljava/lang/Object;
.source "HwColorPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhuawei/android/hwcolorpicker/HwColorPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PickedColor"
.end annotation


# static fields
.field private static final WIDGET_DEFAULT_COLOR:I = -0x33000001


# instance fields
.field private mClientType:I

.field private mColorPicked:[I

.field private mResultState:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 635
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 627
    const/4 v0, -0x1

    iput v0, p0, Lhuawei/android/hwcolorpicker/HwColorPicker$PickedColor;->mClientType:I

    .line 631
    iput v0, p0, Lhuawei/android/hwcolorpicker/HwColorPicker$PickedColor;->mResultState:I

    .line 636
    return-void
.end method

.method synthetic constructor <init>(Lhuawei/android/hwcolorpicker/HwColorPicker$1;)V
    .locals 0
    .param p1, "x0"    # Lhuawei/android/hwcolorpicker/HwColorPicker$1;

    .line 625
    invoke-direct {p0}, Lhuawei/android/hwcolorpicker/HwColorPicker$PickedColor;-><init>()V

    return-void
.end method

.method private constructor <init>([I)V
    .locals 5
    .param p1, "colorResult"    # [I

    .line 638
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 627
    const/4 v0, -0x1

    iput v0, p0, Lhuawei/android/hwcolorpicker/HwColorPicker$PickedColor;->mClientType:I

    .line 631
    iput v0, p0, Lhuawei/android/hwcolorpicker/HwColorPicker$PickedColor;->mResultState:I

    .line 639
    if-eqz p1, :cond_1

    array-length v0, p1

    if-lez v0, :cond_1

    .line 643
    const/4 v0, 0x0

    aget v1, p1, v0

    .line 644
    .local v1, "flag":I
    const/high16 v2, -0x1000000

    and-int/2addr v2, v1

    shr-int/lit8 v2, v2, 0x18

    iput v2, p0, Lhuawei/android/hwcolorpicker/HwColorPicker$PickedColor;->mClientType:I

    .line 645
    const/high16 v2, 0xff0000

    and-int/2addr v2, v1

    shr-int/lit8 v2, v2, 0x10

    iput v2, p0, Lhuawei/android/hwcolorpicker/HwColorPicker$PickedColor;->mResultState:I

    .line 647
    iget v2, p0, Lhuawei/android/hwcolorpicker/HwColorPicker$PickedColor;->mClientType:I

    invoke-static {v2}, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;->getRequestedColorNum(I)I

    move-result v2

    .line 649
    .local v2, "requestedNum":I
    array-length v3, p1

    add-int/lit8 v4, v2, 0x1

    if-ne v3, v4, :cond_0

    .line 655
    new-array v3, v2, [I

    iput-object v3, p0, Lhuawei/android/hwcolorpicker/HwColorPicker$PickedColor;->mColorPicked:[I

    .line 657
    iget-object v3, p0, Lhuawei/android/hwcolorpicker/HwColorPicker$PickedColor;->mColorPicked:[I

    const/4 v4, 0x1

    invoke-static {p1, v4, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 658
    return-void

    .line 650
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "colorResult\'s length : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", requestedNum : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mClientType : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lhuawei/android/hwcolorpicker/HwColorPicker$PickedColor;->mClientType:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mResultState : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lhuawei/android/hwcolorpicker/HwColorPicker$PickedColor;->mResultState:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "HwColorPicker"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v3, "Illegal result, colorResult\'s length must be (requestedNum + 1)!"

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 640
    .end local v1    # "flag":I
    .end local v2    # "requestedNum":I
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Illegal result, colorResult is null or Empty!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor <init>([ILhuawei/android/hwcolorpicker/HwColorPicker$1;)V
    .locals 0
    .param p1, "x0"    # [I
    .param p2, "x1"    # Lhuawei/android/hwcolorpicker/HwColorPicker$1;

    .line 625
    invoke-direct {p0, p1}, Lhuawei/android/hwcolorpicker/HwColorPicker$PickedColor;-><init>([I)V

    return-void
.end method


# virtual methods
.method public get(Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;)I
    .locals 3
    .param p1, "resultType"    # Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;

    .line 712
    iget-object v0, p0, Lhuawei/android/hwcolorpicker/HwColorPicker$PickedColor;->mColorPicked:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lhuawei/android/hwcolorpicker/HwColorPicker$PickedColor;->mColorPicked:[I

    array-length v0, v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 716
    :cond_0
    invoke-static {p1}, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;->access$300(Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;)I

    move-result v0

    const v2, 0xffff

    and-int/2addr v0, v2

    .line 718
    .local v0, "index":I
    iget-object v2, p0, Lhuawei/android/hwcolorpicker/HwColorPicker$PickedColor;->mColorPicked:[I

    array-length v2, v2

    if-lt v0, v2, :cond_1

    .line 719
    return v1

    .line 722
    :cond_1
    iget-object v1, p0, Lhuawei/android/hwcolorpicker/HwColorPicker$PickedColor;->mColorPicked:[I

    aget v1, v1, v0

    return v1

    .line 713
    .end local v0    # "index":I
    :cond_2
    :goto_0
    return v1
.end method

.method public getDomainColor()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 677
    sget-object v0, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;->Domain:Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;

    invoke-virtual {p0, v0}, Lhuawei/android/hwcolorpicker/HwColorPicker$PickedColor;->get(Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;)I

    move-result v0

    return v0
.end method

.method public getShadowColor()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 702
    sget-object v0, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;->Shadow:Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;

    invoke-virtual {p0, v0}, Lhuawei/android/hwcolorpicker/HwColorPicker$PickedColor;->get(Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;)I

    move-result v0

    return v0
.end method

.method public getState()I
    .locals 1

    .line 666
    iget v0, p0, Lhuawei/android/hwcolorpicker/HwColorPicker$PickedColor;->mResultState:I

    return v0
.end method

.method public getWidgetColor()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 688
    invoke-static {}, Lhuawei/android/hwcolorpicker/HwColorPicker;->isEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 689
    const v0, -0x33000001    # -1.3421772E8f

    return v0

    .line 691
    :cond_0
    sget-object v0, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;->Widget:Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;

    invoke-virtual {p0, v0}, Lhuawei/android/hwcolorpicker/HwColorPicker$PickedColor;->get(Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 731
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 732
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "PickedColor{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lhuawei/android/hwcolorpicker/HwColorPicker$PickedColor;->mClientType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lhuawei/android/hwcolorpicker/HwColorPicker$PickedColor;->mResultState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ", ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 734
    iget-object v1, p0, Lhuawei/android/hwcolorpicker/HwColorPicker$PickedColor;->mColorPicked:[I

    if-eqz v1, :cond_1

    .line 735
    iget-object v1, p0, Lhuawei/android/hwcolorpicker/HwColorPicker$PickedColor;->mColorPicked:[I

    array-length v1, v1

    .line 736
    .local v1, "length":I
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 737
    const-string v4, "0x%08x"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lhuawei/android/hwcolorpicker/HwColorPicker$PickedColor;->mColorPicked:[I

    aget v6, v6, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 738
    add-int/lit8 v4, v1, -0x1

    if-eq v3, v4, :cond_0

    .line 739
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 736
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 743
    .end local v1    # "length":I
    .end local v3    # "i":I
    :cond_1
    const-string v1, "]}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 745
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
