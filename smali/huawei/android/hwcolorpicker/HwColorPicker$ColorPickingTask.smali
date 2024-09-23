.class Lhuawei/android/hwcolorpicker/HwColorPicker$ColorPickingTask;
.super Landroid/os/AsyncTask;
.source "HwColorPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhuawei/android/hwcolorpicker/HwColorPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ColorPickingTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/ref/WeakReference<",
        "Lhuawei/android/hwcolorpicker/HwColorPicker$TaskParams;",
        ">;",
        "Ljava/lang/Integer;",
        "Lhuawei/android/hwcolorpicker/HwColorPicker$PickedColor;",
        ">;"
    }
.end annotation


# instance fields
.field mCallBack:Lhuawei/android/hwcolorpicker/HwColorPicker$AsyncProcessCallBack;


# direct methods
.method private constructor <init>(Lhuawei/android/hwcolorpicker/HwColorPicker$AsyncProcessCallBack;)V
    .locals 0
    .param p1, "cb"    # Lhuawei/android/hwcolorpicker/HwColorPicker$AsyncProcessCallBack;

    .line 768
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 769
    iput-object p1, p0, Lhuawei/android/hwcolorpicker/HwColorPicker$ColorPickingTask;->mCallBack:Lhuawei/android/hwcolorpicker/HwColorPicker$AsyncProcessCallBack;

    .line 770
    return-void
.end method

.method synthetic constructor <init>(Lhuawei/android/hwcolorpicker/HwColorPicker$AsyncProcessCallBack;Lhuawei/android/hwcolorpicker/HwColorPicker$1;)V
    .locals 0
    .param p1, "x0"    # Lhuawei/android/hwcolorpicker/HwColorPicker$AsyncProcessCallBack;
    .param p2, "x1"    # Lhuawei/android/hwcolorpicker/HwColorPicker$1;

    .line 765
    invoke-direct {p0, p1}, Lhuawei/android/hwcolorpicker/HwColorPicker$ColorPickingTask;-><init>(Lhuawei/android/hwcolorpicker/HwColorPicker$AsyncProcessCallBack;)V

    return-void
.end method


# virtual methods
.method protected final varargs doInBackground([Ljava/lang/ref/WeakReference;)Lhuawei/android/hwcolorpicker/HwColorPicker$PickedColor;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/ref/WeakReference<",
            "Lhuawei/android/hwcolorpicker/HwColorPicker$TaskParams;",
            ">;)",
            "Lhuawei/android/hwcolorpicker/HwColorPicker$PickedColor;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 775
    .local p1, "weakReferences":[Ljava/lang/ref/WeakReference;, "[Ljava/lang/ref/WeakReference<Lhuawei/android/hwcolorpicker/HwColorPicker$TaskParams;>;"
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .line 776
    .local v0, "taskParamsRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lhuawei/android/hwcolorpicker/HwColorPicker$TaskParams;>;"
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhuawei/android/hwcolorpicker/HwColorPicker$TaskParams;

    .line 777
    .local v1, "taskParams":Lhuawei/android/hwcolorpicker/HwColorPicker$TaskParams;
    if-eqz v1, :cond_1

    .line 778
    iget-object v2, v1, Lhuawei/android/hwcolorpicker/HwColorPicker$TaskParams;->rect:Landroid/graphics/Rect;

    if-nez v2, :cond_0

    .line 779
    iget-object v2, v1, Lhuawei/android/hwcolorpicker/HwColorPicker$TaskParams;->bitmap:Landroid/graphics/Bitmap;

    iget-object v3, v1, Lhuawei/android/hwcolorpicker/HwColorPicker$TaskParams;->clientType:Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;

    invoke-static {v2, v3}, Lhuawei/android/hwcolorpicker/HwColorPicker;->processBitmap(Landroid/graphics/Bitmap;Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;)Lhuawei/android/hwcolorpicker/HwColorPicker$PickedColor;

    move-result-object v2

    return-object v2

    .line 781
    :cond_0
    iget-object v2, v1, Lhuawei/android/hwcolorpicker/HwColorPicker$TaskParams;->bitmap:Landroid/graphics/Bitmap;

    iget-object v3, v1, Lhuawei/android/hwcolorpicker/HwColorPicker$TaskParams;->rect:Landroid/graphics/Rect;

    iget-object v4, v1, Lhuawei/android/hwcolorpicker/HwColorPicker$TaskParams;->clientType:Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;

    invoke-static {v2, v3, v4}, Lhuawei/android/hwcolorpicker/HwColorPicker;->processBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Lhuawei/android/hwcolorpicker/HwColorPicker$ClientType;)Lhuawei/android/hwcolorpicker/HwColorPicker$PickedColor;

    move-result-object v2

    return-object v2

    .line 784
    :cond_1
    invoke-static {}, Lhuawei/android/hwcolorpicker/HwColorPicker;->access$400()Lhuawei/android/hwcolorpicker/HwColorPicker$PickedColor;

    move-result-object v2

    return-object v2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 765
    check-cast p1, [Ljava/lang/ref/WeakReference;

    invoke-virtual {p0, p1}, Lhuawei/android/hwcolorpicker/HwColorPicker$ColorPickingTask;->doInBackground([Ljava/lang/ref/WeakReference;)Lhuawei/android/hwcolorpicker/HwColorPicker$PickedColor;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Lhuawei/android/hwcolorpicker/HwColorPicker$PickedColor;)V
    .locals 1
    .param p1, "pickedColor"    # Lhuawei/android/hwcolorpicker/HwColorPicker$PickedColor;

    .line 789
    iget-object v0, p0, Lhuawei/android/hwcolorpicker/HwColorPicker$ColorPickingTask;->mCallBack:Lhuawei/android/hwcolorpicker/HwColorPicker$AsyncProcessCallBack;

    if-eqz v0, :cond_0

    .line 790
    iget-object v0, p0, Lhuawei/android/hwcolorpicker/HwColorPicker$ColorPickingTask;->mCallBack:Lhuawei/android/hwcolorpicker/HwColorPicker$AsyncProcessCallBack;

    invoke-interface {v0, p1}, Lhuawei/android/hwcolorpicker/HwColorPicker$AsyncProcessCallBack;->onColorPicked(Lhuawei/android/hwcolorpicker/HwColorPicker$PickedColor;)V

    .line 792
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 765
    check-cast p1, Lhuawei/android/hwcolorpicker/HwColorPicker$PickedColor;

    invoke-virtual {p0, p1}, Lhuawei/android/hwcolorpicker/HwColorPicker$ColorPickingTask;->onPostExecute(Lhuawei/android/hwcolorpicker/HwColorPicker$PickedColor;)V

    return-void
.end method
