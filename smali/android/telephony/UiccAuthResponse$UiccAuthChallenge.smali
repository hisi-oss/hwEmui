.class public Landroid/telephony/UiccAuthResponse$UiccAuthChallenge;
.super Ljava/lang/Object;
.source "UiccAuthResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/UiccAuthResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UiccAuthChallenge"
.end annotation


# instance fields
.field public mCkData:Landroid/telephony/UiccAuthResponse$UiccAuthResponseData;

.field public mIkData:Landroid/telephony/UiccAuthResponse$UiccAuthResponseData;

.field public mResData:Landroid/telephony/UiccAuthResponse$UiccAuthResponseData;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
