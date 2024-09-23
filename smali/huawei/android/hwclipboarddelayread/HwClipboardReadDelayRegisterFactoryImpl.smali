.class public Lhuawei/android/hwclipboarddelayread/HwClipboardReadDelayRegisterFactoryImpl;
.super Ljava/lang/Object;
.source "HwClipboardReadDelayRegisterFactoryImpl.java"

# interfaces
.implements Landroid/hwclipboarddelayread/IHwClipboardReadDelayRegisterFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHwClipboardReadDelayRegisterInstance()Landroid/hwclipboarddelayread/HwClipboardReadDelayRegister$IHwClipboardReadDelayRegister;
    .locals 1

    .line 19
    new-instance v0, Lhuawei/android/hwclipboarddelayread/HwClipboardReadDelayRegisterImpl;

    invoke-direct {v0}, Lhuawei/android/hwclipboarddelayread/HwClipboardReadDelayRegisterImpl;-><init>()V

    return-object v0
.end method
