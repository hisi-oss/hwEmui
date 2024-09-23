.class public Landroid/bluetooth/BluetoothAddressNative;
.super Ljava/lang/Object;
.source "BluetoothAddressNative.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 5
    const-string v0, "btaddrjni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 6
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final native getMacAddress()Ljava/lang/String;
.end method

.method public static final native isLibReady()Z
.end method
