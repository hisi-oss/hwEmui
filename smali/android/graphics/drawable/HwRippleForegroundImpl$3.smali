.class Landroid/graphics/drawable/HwRippleForegroundImpl$3;
.super Landroid/util/FloatProperty;
.source "HwRippleForegroundImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/HwRippleForegroundImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/FloatProperty<",
        "Landroid/graphics/drawable/HwRippleForegroundImpl;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;

    .line 434
    invoke-direct {p0, p1}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Landroid/graphics/drawable/HwRippleForegroundImpl;)Ljava/lang/Float;
    .locals 1
    .param p1, "object"    # Landroid/graphics/drawable/HwRippleForegroundImpl;

    .line 444
    invoke-static {p1}, Landroid/graphics/drawable/HwRippleForegroundImpl;->access$700(Landroid/graphics/drawable/HwRippleForegroundImpl;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 434
    check-cast p1, Landroid/graphics/drawable/HwRippleForegroundImpl;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/HwRippleForegroundImpl$3;->get(Landroid/graphics/drawable/HwRippleForegroundImpl;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Landroid/graphics/drawable/HwRippleForegroundImpl;F)V
    .locals 0
    .param p1, "object"    # Landroid/graphics/drawable/HwRippleForegroundImpl;
    .param p2, "value"    # F

    .line 437
    invoke-static {p1, p2}, Landroid/graphics/drawable/HwRippleForegroundImpl;->access$702(Landroid/graphics/drawable/HwRippleForegroundImpl;F)F

    .line 438
    invoke-static {p1, p2}, Landroid/graphics/drawable/HwRippleForegroundImpl;->access$802(Landroid/graphics/drawable/HwRippleForegroundImpl;F)F

    .line 439
    invoke-static {p1}, Landroid/graphics/drawable/HwRippleForegroundImpl;->access$600(Landroid/graphics/drawable/HwRippleForegroundImpl;)V

    .line 440
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 434
    check-cast p1, Landroid/graphics/drawable/HwRippleForegroundImpl;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/drawable/HwRippleForegroundImpl$3;->setValue(Landroid/graphics/drawable/HwRippleForegroundImpl;F)V

    return-void
.end method
