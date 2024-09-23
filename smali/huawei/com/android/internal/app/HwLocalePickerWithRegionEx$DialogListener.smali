.class Lhuawei/com/android/internal/app/HwLocalePickerWithRegionEx$DialogListener;
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
    name = "DialogListener"
.end annotation


# instance fields
.field locale:Lcom/android/internal/app/LocaleStore$LocaleInfo;

.field final synthetic this$0:Lhuawei/com/android/internal/app/HwLocalePickerWithRegionEx;


# direct methods
.method constructor <init>(Lhuawei/com/android/internal/app/HwLocalePickerWithRegionEx;Lcom/android/internal/app/LocaleStore$LocaleInfo;)V
    .locals 0
    .param p2, "locale"    # Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 135
    iput-object p1, p0, Lhuawei/com/android/internal/app/HwLocalePickerWithRegionEx$DialogListener;->this$0:Lhuawei/com/android/internal/app/HwLocalePickerWithRegionEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-object p2, p0, Lhuawei/com/android/internal/app/HwLocalePickerWithRegionEx$DialogListener;->locale:Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 137
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 141
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocalePickerWithRegionEx$DialogListener;->locale:Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-virtual {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getId()Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, "localeId":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 143
    .local v1, "region":Ljava/lang/String;
    new-instance v2, Ljava/util/Locale$Builder;

    invoke-direct {v2}, Ljava/util/Locale$Builder;-><init>()V

    const-string v3, "en"

    invoke-virtual {v2, v3}, Ljava/util/Locale$Builder;->setLanguageTag(Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object v2

    .line 145
    .local v2, "localeBuilder":Ljava/util/Locale$Builder;
    :try_start_0
    new-instance v3, Ljava/util/Locale$Builder;

    invoke-direct {v3}, Ljava/util/Locale$Builder;-><init>()V

    iget-object v4, p0, Lhuawei/com/android/internal/app/HwLocalePickerWithRegionEx$DialogListener;->locale:Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-virtual {v4}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Locale$Builder;->setLocale(Ljava/util/Locale;)Ljava/util/Locale$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/Locale$Builder;->setRegion(Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object v3
    :try_end_0
    .catch Ljava/util/IllformedLocaleException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    .line 148
    goto :goto_0

    .line 146
    :catch_0
    move-exception v3

    .line 147
    .local v3, "e":Ljava/util/IllformedLocaleException;
    const-string v4, "HwLocalePickerWithRegionEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error locale: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lhuawei/com/android/internal/app/HwLocalePickerWithRegionEx$DialogListener;->locale:Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-virtual {v6}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    .end local v3    # "e":Ljava/util/IllformedLocaleException;
    :goto_0
    const/16 v3, 0x75

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/util/Locale$Builder;->setExtension(CLjava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale$Builder;->build()Ljava/util/Locale;

    move-result-object v3

    .line 150
    .local v3, "newLocale":Ljava/util/Locale;
    invoke-static {v3}, Lcom/android/internal/app/LocaleStore;->getLocaleInfo(Ljava/util/Locale;)Lcom/android/internal/app/LocaleStore$LocaleInfo;

    move-result-object v4

    .line 151
    .local v4, "newLocaleInfo":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    const-string v5, "ar-XB"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "en-XA"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 152
    :cond_0
    iget-object v4, p0, Lhuawei/com/android/internal/app/HwLocalePickerWithRegionEx$DialogListener;->locale:Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 154
    :cond_1
    const/4 v5, -0x1

    if-eq p2, v5, :cond_2

    .line 160
    iget-object v5, p0, Lhuawei/com/android/internal/app/HwLocalePickerWithRegionEx$DialogListener;->this$0:Lhuawei/com/android/internal/app/HwLocalePickerWithRegionEx;

    iget-object v5, v5, Lhuawei/com/android/internal/app/HwLocalePickerWithRegionEx;->mHWlpsInner:Lcom/android/internal/app/IHwLocalePickerWithRegionInner;

    const/4 v6, 0x0

    invoke-interface {v5, v4, v6}, Lcom/android/internal/app/IHwLocalePickerWithRegionInner;->onLocaleSelectedEx(Lcom/android/internal/app/LocaleStore$LocaleInfo;Z)V

    .line 161
    iget-object v5, p0, Lhuawei/com/android/internal/app/HwLocalePickerWithRegionEx$DialogListener;->this$0:Lhuawei/com/android/internal/app/HwLocalePickerWithRegionEx;

    iget-object v5, v5, Lhuawei/com/android/internal/app/HwLocalePickerWithRegionEx;->mHWlpsInner:Lcom/android/internal/app/IHwLocalePickerWithRegionInner;

    invoke-interface {v5}, Lcom/android/internal/app/IHwLocalePickerWithRegionInner;->returnToParentFrameEx()V

    goto :goto_1

    .line 156
    :cond_2
    iget-object v5, p0, Lhuawei/com/android/internal/app/HwLocalePickerWithRegionEx$DialogListener;->this$0:Lhuawei/com/android/internal/app/HwLocalePickerWithRegionEx;

    iget-object v5, v5, Lhuawei/com/android/internal/app/HwLocalePickerWithRegionEx;->mHWlpsInner:Lcom/android/internal/app/IHwLocalePickerWithRegionInner;

    const/4 v6, 0x1

    invoke-interface {v5, v4, v6}, Lcom/android/internal/app/IHwLocalePickerWithRegionInner;->onLocaleSelectedEx(Lcom/android/internal/app/LocaleStore$LocaleInfo;Z)V

    .line 157
    iget-object v5, p0, Lhuawei/com/android/internal/app/HwLocalePickerWithRegionEx$DialogListener;->this$0:Lhuawei/com/android/internal/app/HwLocalePickerWithRegionEx;

    iget-object v5, v5, Lhuawei/com/android/internal/app/HwLocalePickerWithRegionEx;->mHWlpsInner:Lcom/android/internal/app/IHwLocalePickerWithRegionInner;

    invoke-interface {v5}, Lcom/android/internal/app/IHwLocalePickerWithRegionInner;->returnToParentFrameEx()V

    .line 158
    nop

    .line 164
    :goto_1
    return-void
.end method
