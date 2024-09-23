.class Landroid/nfc/cardemulation/SeSettingsService$ISeSettingsServiceWrapper;
.super Landroid/nfc/cardemulation/ISeSettingsService$Stub;
.source "SeSettingsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/cardemulation/SeSettingsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ISeSettingsServiceWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/nfc/cardemulation/SeSettingsService;


# direct methods
.method private constructor <init>(Landroid/nfc/cardemulation/SeSettingsService;)V
    .locals 0

    .line 64
    iput-object p1, p0, Landroid/nfc/cardemulation/SeSettingsService$ISeSettingsServiceWrapper;->this$0:Landroid/nfc/cardemulation/SeSettingsService;

    invoke-direct {p0}, Landroid/nfc/cardemulation/ISeSettingsService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/nfc/cardemulation/SeSettingsService;Landroid/nfc/cardemulation/SeSettingsService$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/nfc/cardemulation/SeSettingsService;
    .param p2, "x1"    # Landroid/nfc/cardemulation/SeSettingsService$1;

    .line 64
    invoke-direct {p0, p1}, Landroid/nfc/cardemulation/SeSettingsService$ISeSettingsServiceWrapper;-><init>(Landroid/nfc/cardemulation/SeSettingsService;)V

    return-void
.end method


# virtual methods
.method public setSeacActive(Landroid/content/ComponentName;Z)V
    .locals 1
    .param p1, "service"    # Landroid/content/ComponentName;
    .param p2, "foreground"    # Z

    .line 67
    iget-object v0, p0, Landroid/nfc/cardemulation/SeSettingsService$ISeSettingsServiceWrapper;->this$0:Landroid/nfc/cardemulation/SeSettingsService;

    invoke-virtual {v0, p1, p2}, Landroid/nfc/cardemulation/SeSettingsService;->setSeacActive(Landroid/content/ComponentName;Z)V

    .line 68
    return-void
.end method
