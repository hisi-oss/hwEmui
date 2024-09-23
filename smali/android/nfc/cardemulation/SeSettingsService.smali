.class public abstract Landroid/nfc/cardemulation/SeSettingsService;
.super Landroid/app/Service;
.source "SeSettingsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/cardemulation/SeSettingsService$ISeSettingsServiceWrapper;
    }
.end annotation


# static fields
.field public static final SESETTINGS_SERVICE_INTERFACE:Ljava/lang/String; = "android.nfc.cardemulation.SeSettingsService"


# instance fields
.field private final mStubWrapper:Landroid/nfc/cardemulation/ISeSettingsService$Stub;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 38
    new-instance v0, Landroid/nfc/cardemulation/SeSettingsService$ISeSettingsServiceWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/nfc/cardemulation/SeSettingsService$ISeSettingsServiceWrapper;-><init>(Landroid/nfc/cardemulation/SeSettingsService;Landroid/nfc/cardemulation/SeSettingsService$1;)V

    iput-object v0, p0, Landroid/nfc/cardemulation/SeSettingsService;->mStubWrapper:Landroid/nfc/cardemulation/ISeSettingsService$Stub;

    .line 39
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 57
    iget-object v0, p0, Landroid/nfc/cardemulation/SeSettingsService;->mStubWrapper:Landroid/nfc/cardemulation/ISeSettingsService$Stub;

    return-object v0
.end method

.method public abstract setSeacActive(Landroid/content/ComponentName;Z)V
.end method
