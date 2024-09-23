.class public interface abstract Lhuawei/android/telephony/wrapper/HuaweiTelephonyManagerWrapper;
.super Ljava/lang/Object;
.source "HuaweiTelephonyManagerWrapper.java"


# static fields
.field public static final CT_NATIONAL_ROAMING_CARD:I = 0x29

.field public static final CU_DUAL_MODE_CARD:I = 0x2a

.field public static final DUAL_MODE_CG_CARD:I = 0x28

.field public static final DUAL_MODE_UG_CARD:I = 0x32

.field public static final SINGLE_MODE_RUIM_CARD:I = 0x1e

.field public static final SINGLE_MODE_SIM_CARD:I = 0xa

.field public static final SINGLE_MODE_USIM_CARD:I = 0x14

.field public static final UNKNOWN_CARD:I = -0x1


# virtual methods
.method public abstract getCardType(I)I
.end method

.method public abstract getDualCardMode()I
.end method

.method public abstract getSubidFromSlotId(I)I
.end method
