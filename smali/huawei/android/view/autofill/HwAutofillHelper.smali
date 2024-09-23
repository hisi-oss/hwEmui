.class public Lhuawei/android/view/autofill/HwAutofillHelper;
.super Ljava/lang/Object;
.source "HwAutofillHelper.java"

# interfaces
.implements Landroid/view/autofill/IHwAutofillHelper;


# static fields
.field private static final AUTOFILL_PACKAGE_VALUE_HW:Ljava/lang/String; = "com.huawei.securitymgr"

.field private static final AUTOFILL_SERVICE_KEY:Ljava/lang/String; = "autofill_service"

.field private static final AUTOFILL_SERVICE_VALUE_HW:Ljava/lang/String; = "com.huawei.securitymgr/com.huawei.keychain.service.HwAutofillService"

.field private static final FILL_TYPE_DEFAULT:I = 0x0

.field private static final FILL_TYPE_KEY:Ljava/lang/String; = "fillType"

.field private static final FILL_TYPE_PASSWORD_TWICE:I = 0x2

.field private static final FILL_TYPE_TWICE:I = 0x1

.field private static final HW_KEYCHAIN_PLUGIN_ID:I = 0x14

.field private static final INITIAL_VALUE_UNCHANGED_KEY:Ljava/lang/String; = "initialValueUnchanged"

.field private static final IS_SAVING_KEY:Ljava/lang/String; = "isSaving"

.field private static final SECURITY_SERVICE:Ljava/lang/String; = "securityserver"

.field private static final SHOULD_HANDLE_INITIAL_VALUE_UNCHANGED_KEY:Ljava/lang/String; = "shouldHandleInitialValueUnchanged"

.field private static final TAG:Ljava/lang/String; = "HwAutofillHelper"

.field private static final VALUE_ARRAY_KEY:Ljava/lang/String; = "values"

.field private static final mInstanceSync:Ljava/lang/Object;

.field private static sHwKeychainManager:Lhuawei/android/security/IHwKeychainManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lhuawei/android/view/autofill/HwAutofillHelper;->mInstanceSync:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    return-void
.end method

.method private getFillType(Landroid/os/Bundle;)I
    .locals 2
    .param p1, "clientState"    # Landroid/os/Bundle;

    .line 192
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 193
    const-string v1, "fillType"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 195
    :cond_0
    return v0
.end method

.method private static getHwKeychainManagerService()Lhuawei/android/security/IHwKeychainManager;
    .locals 6

    .line 143
    sget-object v0, Lhuawei/android/view/autofill/HwAutofillHelper;->mInstanceSync:Ljava/lang/Object;

    monitor-enter v0

    .line 144
    :try_start_0
    sget-object v1, Lhuawei/android/view/autofill/HwAutofillHelper;->sHwKeychainManager:Lhuawei/android/security/IHwKeychainManager;

    if-eqz v1, :cond_0

    .line 145
    sget-object v1, Lhuawei/android/view/autofill/HwAutofillHelper;->sHwKeychainManager:Lhuawei/android/security/IHwKeychainManager;

    monitor-exit v0

    return-object v1

    .line 147
    :cond_0
    const-string v1, "securityserver"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 148
    .local v1, "b":Landroid/os/IBinder;
    invoke-static {v1}, Lhuawei/android/security/IHwSecurityService$Stub;->asInterface(Landroid/os/IBinder;)Lhuawei/android/security/IHwSecurityService;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    .local v2, "secService":Lhuawei/android/security/IHwSecurityService;
    if-eqz v2, :cond_1

    .line 151
    const/16 v3, 0x14

    :try_start_1
    invoke-interface {v2, v3}, Lhuawei/android/security/IHwSecurityService;->querySecurityInterface(I)Landroid/os/IBinder;

    move-result-object v3

    .line 152
    .local v3, "secPlugin":Landroid/os/IBinder;
    invoke-static {v3}, Lhuawei/android/security/IHwKeychainManager$Stub;->asInterface(Landroid/os/IBinder;)Lhuawei/android/security/IHwKeychainManager;

    move-result-object v4

    sput-object v4, Lhuawei/android/view/autofill/HwAutofillHelper;->sHwKeychainManager:Lhuawei/android/security/IHwKeychainManager;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 155
    .end local v3    # "secPlugin":Landroid/os/IBinder;
    :goto_0
    goto :goto_1

    .line 153
    :catch_0
    move-exception v3

    .line 154
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v4, "HwAutofillHelper"

    const-string v5, "getHwKeychainManagerService failed!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 157
    :cond_1
    const-string v3, "HwAutofillHelper"

    const-string v4, "secService is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :goto_1
    sget-object v3, Lhuawei/android/view/autofill/HwAutofillHelper;->sHwKeychainManager:Lhuawei/android/security/IHwKeychainManager;

    monitor-exit v0

    return-object v3

    .line 160
    .end local v1    # "b":Landroid/os/IBinder;
    .end local v2    # "secService":Lhuawei/android/security/IHwSecurityService;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private isHwAutofillService(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 62
    const-string v0, "com.huawei.securitymgr"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static isPasswordInputType(I)Z
    .locals 2
    .param p0, "inputType"    # I

    .line 104
    and-int/lit16 v0, p0, 0xff0

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public cacheCurrentData(Landroid/os/Bundle;Ljava/lang/String;[Landroid/view/autofill/AutofillId;Landroid/util/ArrayMap;)V
    .locals 4
    .param p1, "clientState"    # Landroid/os/Bundle;
    .param p2, "serviceName"    # Ljava/lang/String;
    .param p3, "requiredIds"    # [Landroid/view/autofill/AutofillId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "[",
            "Landroid/view/autofill/AutofillId;",
            "Landroid/util/ArrayMap<",
            "Landroid/view/autofill/AutofillId;",
            "Landroid/view/autofill/AutofillValue;",
            ">;)V"
        }
    .end annotation

    .line 84
    .local p4, "currentValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;>;"
    if-eqz p1, :cond_4

    if-eqz p3, :cond_4

    array-length v0, p3

    if-lez v0, :cond_4

    if-nez p4, :cond_0

    goto :goto_2

    .line 87
    :cond_0
    invoke-direct {p0, p2}, Lhuawei/android/view/autofill/HwAutofillHelper;->isHwAutofillService(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 88
    return-void

    .line 90
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 91
    .local v0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p3

    if-ge v1, v2, :cond_3

    .line 92
    aget-object v2, p3, v1

    invoke-virtual {p4, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/autofill/AutofillValue;

    .line 93
    .local v2, "value":Landroid/view/autofill/AutofillValue;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 94
    invoke-virtual {v2}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 95
    .local v3, "textValue":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    .end local v3    # "textValue":Ljava/lang/String;
    goto :goto_1

    .line 97
    :cond_2
    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    .end local v2    # "value":Landroid/view/autofill/AutofillValue;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 100
    .end local v1    # "i":I
    :cond_3
    const-string v1, "values"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 101
    return-void

    .line 85
    .end local v0    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    :goto_2
    return-void
.end method

.method public isHwAutofillService(Landroid/content/Context;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 66
    if-nez p1, :cond_0

    .line 67
    const-string v0, "HwAutofillHelper"

    const-string v1, "context is null in isHwAutofillService"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const/4 v0, 0x0

    return v0

    .line 70
    :cond_0
    const/4 v0, 0x0

    .line 71
    .local v0, "resultValue":Z
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "autofill_service"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, "setting":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 73
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 74
    .local v2, "componentName":Landroid/content/ComponentName;
    if-eqz v2, :cond_1

    .line 75
    const-string v3, "com.huawei.securitymgr/com.huawei.keychain.service.HwAutofillService"

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 77
    :cond_1
    const/4 v0, 0x0

    .line 80
    .end local v2    # "componentName":Landroid/content/ComponentName;
    :cond_2
    :goto_0
    return v0
.end method

.method public recordCurrentInfo(Landroid/content/Context;Landroid/view/View;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;

    .line 110
    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto :goto_2

    .line 115
    :cond_0
    const-string v0, "HwAutofillHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "recordCurrentInfo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    const/4 v0, 0x0

    .line 118
    .local v0, "isPasswordInputType":Z
    instance-of v1, p2, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 119
    move-object v1, p2

    check-cast v1, Landroid/widget/TextView;

    .line 120
    .local v1, "textView":Landroid/widget/TextView;
    invoke-virtual {v1}, Landroid/widget/TextView;->getInputType()I

    move-result v2

    .line 121
    .local v2, "inputType":I
    const-string v3, "HwAutofillHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "inputType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-static {v2}, Lhuawei/android/view/autofill/HwAutofillHelper;->isPasswordInputType(I)Z

    move-result v0

    .line 125
    .end local v1    # "textView":Landroid/widget/TextView;
    .end local v2    # "inputType":I
    :cond_1
    if-nez v0, :cond_2

    .line 126
    return-void

    .line 129
    :cond_2
    const-string v1, "HwAutofillHelper"

    const-string v2, "inputType is password, now record"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-static {}, Lhuawei/android/view/autofill/HwAutofillHelper;->getHwKeychainManagerService()Lhuawei/android/security/IHwKeychainManager;

    move-result-object v1

    .line 131
    .local v1, "manager":Lhuawei/android/security/IHwKeychainManager;
    if-eqz v1, :cond_3

    .line 133
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-interface {v1, v2}, Lhuawei/android/security/IHwKeychainManager;->recordCurrentInfo(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 134
    :catch_0
    move-exception v2

    .line 135
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "HwAutofillHelper"

    const-string v4, "recordCurrentInfo failed!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    goto :goto_1

    .line 138
    :cond_3
    const-string v2, "HwAutofillHelper"

    const-string v3, "getHwKeychainManagerService = null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :goto_1
    return-void

    .line 111
    .end local v0    # "isPasswordInputType":Z
    .end local v1    # "manager":Lhuawei/android/security/IHwKeychainManager;
    :cond_4
    :goto_2
    const-string v0, "HwAutofillHelper"

    const-string v1, "context or view is null in remindAtFirstTime"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    return-void
.end method

.method public recordSavedState(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 2
    .param p1, "clientState"    # Landroid/os/Bundle;
    .param p2, "serviceName"    # Ljava/lang/String;

    .line 230
    if-nez p1, :cond_0

    .line 231
    return-void

    .line 233
    :cond_0
    invoke-direct {p0, p2}, Lhuawei/android/view/autofill/HwAutofillHelper;->isHwAutofillService(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 234
    return-void

    .line 236
    :cond_1
    const-string v0, "isSaving"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 237
    return-void
.end method

.method public resizeLayoutForLowResolution(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V
    .locals 4
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/WindowManager$LayoutParams;

    .line 241
    if-eqz p1, :cond_0

    .line 242
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 243
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 244
    .local v1, "widthPixels":I
    if-eqz v1, :cond_0

    .line 245
    iget v2, v0, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    int-to-float v2, v2

    int-to-float v3, v1

    div-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    .line 246
    .local v2, "ratio":F
    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 247
    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 250
    .end local v0    # "dm":Landroid/util/DisplayMetrics;
    .end local v1    # "widthPixels":I
    .end local v2    # "ratio":F
    :cond_0
    return-void
.end method

.method public shouldForbidFillRequest(Landroid/os/Bundle;Ljava/lang/String;)Z
    .locals 3
    .param p1, "clientState"    # Landroid/os/Bundle;
    .param p2, "serviceName"    # Ljava/lang/String;

    .line 216
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 217
    return v0

    .line 219
    :cond_0
    invoke-direct {p0, p2}, Lhuawei/android/view/autofill/HwAutofillHelper;->isHwAutofillService(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 220
    return v0

    .line 222
    :cond_1
    const-string v1, "isSaving"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 223
    .local v0, "result":Z
    if-eqz v0, :cond_2

    .line 224
    const-string v1, "HwAutofillHelper"

    const-string v2, "shouldForbiddenFillRequest"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_2
    return v0
.end method

.method public updateAutoFillManagerClient(Landroid/os/Bundle;Ljava/lang/String;Landroid/view/autofill/IAutoFillManagerClient;ILjava/util/List;Ljava/util/List;)V
    .locals 5
    .param p1, "clientState"    # Landroid/os/Bundle;
    .param p2, "serviceName"    # Ljava/lang/String;
    .param p3, "client"    # Landroid/view/autofill/IAutoFillManagerClient;
    .param p4, "sessionId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "Landroid/view/autofill/IAutoFillManagerClient;",
            "I",
            "Ljava/util/List<",
            "Landroid/view/autofill/AutofillId;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/autofill/AutofillValue;",
            ">;)V"
        }
    .end annotation

    .line 164
    .local p5, "ids":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    .local p6, "values":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillValue;>;"
    if-eqz p3, :cond_5

    if-eqz p5, :cond_5

    if-nez p6, :cond_0

    goto :goto_3

    .line 167
    :cond_0
    invoke-direct {p0, p2}, Lhuawei/android/view/autofill/HwAutofillHelper;->isHwAutofillService(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 168
    return-void

    .line 170
    :cond_1
    invoke-direct {p0, p1}, Lhuawei/android/view/autofill/HwAutofillHelper;->getFillType(Landroid/os/Bundle;)I

    move-result v0

    .line 171
    .local v0, "fillType":I
    if-nez v0, :cond_2

    .line 172
    return-void

    .line 175
    :cond_2
    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 176
    :try_start_0
    invoke-interface {p3, p4, p5, p6}, Landroid/view/autofill/IAutoFillManagerClient;->autofill(ILjava/util/List;Ljava/util/List;)V

    goto :goto_1

    .line 186
    :catch_0
    move-exception v1

    goto :goto_0

    .line 177
    :cond_3
    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    .line 178
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v2, :cond_4

    invoke-interface {p6}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v2, :cond_4

    .line 179
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 180
    .local v2, "newIds":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    invoke-interface {p5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/autofill/AutofillId;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 182
    .local v3, "newValues":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillValue;>;"
    invoke-interface {p6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/autofill/AutofillValue;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    invoke-interface {p3, p4, v2, v3}, Landroid/view/autofill/IAutoFillManagerClient;->autofill(ILjava/util/List;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "newIds":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    .end local v3    # "newValues":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillValue;>;"
    goto :goto_1

    .line 186
    :goto_0
    nop

    .line 187
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "HwAutofillHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception in updateAutoFillManagerClient:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_2

    .line 188
    :cond_4
    :goto_1
    nop

    .line 189
    :goto_2
    return-void

    .line 165
    .end local v0    # "fillType":I
    :cond_5
    :goto_3
    return-void
.end method

.method public updateInitialFlag(Landroid/os/Bundle;Ljava/lang/String;)Z
    .locals 3
    .param p1, "clientState"    # Landroid/os/Bundle;
    .param p2, "serviceName"    # Ljava/lang/String;

    .line 201
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 202
    return v0

    .line 204
    :cond_0
    invoke-direct {p0, p2}, Lhuawei/android/view/autofill/HwAutofillHelper;->isHwAutofillService(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 205
    return v0

    .line 207
    :cond_1
    const-string v1, "shouldHandleInitialValueUnchanged"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 208
    .local v0, "result":Z
    if-eqz v0, :cond_2

    .line 209
    const-string v1, "HwAutofillHelper"

    const-string v2, "updateChangedFlagForInitialValueUnchanged"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    const-string v1, "initialValueUnchanged"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 212
    :cond_2
    return v0
.end method
