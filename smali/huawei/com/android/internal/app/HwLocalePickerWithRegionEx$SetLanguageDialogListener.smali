.class Lhuawei/com/android/internal/app/HwLocalePickerWithRegionEx$SetLanguageDialogListener;
.super Ljava/lang/Object;
.source "HwLocalePickerWithRegionEx.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhuawei/com/android/internal/app/HwLocalePickerWithRegionEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetLanguageDialogListener"
.end annotation


# instance fields
.field locale:Lcom/android/internal/app/LocaleStore$LocaleInfo;

.field final synthetic this$0:Lhuawei/com/android/internal/app/HwLocalePickerWithRegionEx;


# direct methods
.method constructor <init>(Lhuawei/com/android/internal/app/HwLocalePickerWithRegionEx;Lcom/android/internal/app/LocaleStore$LocaleInfo;)V
    .locals 0
    .param p2, "locale"    # Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 113
    iput-object p1, p0, Lhuawei/com/android/internal/app/HwLocalePickerWithRegionEx$SetLanguageDialogListener;->this$0:Lhuawei/com/android/internal/app/HwLocalePickerWithRegionEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p2, p0, Lhuawei/com/android/internal/app/HwLocalePickerWithRegionEx$SetLanguageDialogListener;->locale:Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 115
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 119
    const/4 v0, -0x2

    if-eq p2, v0, :cond_0

    .line 125
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocalePickerWithRegionEx$SetLanguageDialogListener;->this$0:Lhuawei/com/android/internal/app/HwLocalePickerWithRegionEx;

    iget-object v0, v0, Lhuawei/com/android/internal/app/HwLocalePickerWithRegionEx;->mHWlpsInner:Lcom/android/internal/app/IHwLocalePickerWithRegionInner;

    iget-object v1, p0, Lhuawei/com/android/internal/app/HwLocalePickerWithRegionEx$SetLanguageDialogListener;->locale:Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-interface {v0, v1}, Lcom/android/internal/app/IHwLocalePickerWithRegionInner;->createCountry(Lcom/android/internal/app/LocaleStore$LocaleInfo;)V

    goto :goto_0

    .line 121
    :cond_0
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocalePickerWithRegionEx$SetLanguageDialogListener;->this$0:Lhuawei/com/android/internal/app/HwLocalePickerWithRegionEx;

    iget-object v0, v0, Lhuawei/com/android/internal/app/HwLocalePickerWithRegionEx;->mHWlpsInner:Lcom/android/internal/app/IHwLocalePickerWithRegionInner;

    iget-object v1, p0, Lhuawei/com/android/internal/app/HwLocalePickerWithRegionEx$SetLanguageDialogListener;->locale:Lcom/android/internal/app/LocaleStore$LocaleInfo;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/app/IHwLocalePickerWithRegionInner;->onLocaleSelectedEx(Lcom/android/internal/app/LocaleStore$LocaleInfo;Z)V

    .line 122
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocalePickerWithRegionEx$SetLanguageDialogListener;->this$0:Lhuawei/com/android/internal/app/HwLocalePickerWithRegionEx;

    iget-object v0, v0, Lhuawei/com/android/internal/app/HwLocalePickerWithRegionEx;->mHWlpsInner:Lcom/android/internal/app/IHwLocalePickerWithRegionInner;

    invoke-interface {v0}, Lcom/android/internal/app/IHwLocalePickerWithRegionInner;->returnToParentFrameEx()V

    .line 123
    nop

    .line 129
    :goto_0
    return-void
.end method
