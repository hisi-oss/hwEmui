.class public Lhuawei/android/hwclipboarddelayread/HwClipboardReadDelayerFactoryImpl;
.super Ljava/lang/Object;
.source "HwClipboardReadDelayerFactoryImpl.java"

# interfaces
.implements Landroid/hwclipboarddelayread/IHwClipboardReadDelayerFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHwClipboardReadDelayerInstance()Landroid/hwclipboarddelayread/HwClipboardReadDelayer$IHwClipboardReadDelayer;
    .locals 1

    .line 14
    new-instance v0, Lhuawei/android/hwclipboarddelayread/HwClipboardReadDelayerImpl;

    invoke-direct {v0}, Lhuawei/android/hwclipboarddelayread/HwClipboardReadDelayerImpl;-><init>()V

    return-object v0
.end method
