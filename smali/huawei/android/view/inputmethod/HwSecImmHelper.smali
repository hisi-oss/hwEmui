.class public Lhuawei/android/view/inputmethod/HwSecImmHelper;
.super Ljava/lang/Object;
.source "HwSecImmHelper.java"

# interfaces
.implements Landroid/view/inputmethod/IHwSecImmHelper;


# static fields
.field private static final DEBUG:Z = false

.field private static final DESCRIPTOR:Ljava/lang/String; = "android.view.inputmethod.InputMethodManager"

.field public static final SECURE_IME_ID:Ljava/lang/String; = "com.huawei.secime/.SoftKeyboard"

.field public static final SECURE_IME_NAME:Ljava/lang/String; = "com.huawei.secime.SoftKeyboard"

.field public static final SECURE_IME_NO_HIDE_FLAG:I = 0x1000

.field public static final SECURE_IME_PACKAGENAME:Ljava/lang/String; = "com.huawei.secime"

.field private static final TAG:Ljava/lang/String; = "HwSecImmHelper"

.field private static final TRANSACTION_isUseSecureIME:I = 0x3e9


# instance fields
.field private mSecurityInputMethodService:Lcom/android/internal/view/IInputMethodManager;

.field final mService:Lcom/android/internal/view/IInputMethodManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/view/IInputMethodManager;)V
    .locals 1
    .param p1, "service"    # Lcom/android/internal/view/IInputMethodManager;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lhuawei/android/view/inputmethod/HwSecImmHelper;->mService:Lcom/android/internal/view/IInputMethodManager;

    .line 34
    invoke-direct {p0}, Lhuawei/android/view/inputmethod/HwSecImmHelper;->getSecurityInputMethodService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    iput-object v0, p0, Lhuawei/android/view/inputmethod/HwSecImmHelper;->mSecurityInputMethodService:Lcom/android/internal/view/IInputMethodManager;

    .line 35
    return-void
.end method

.method private getSecurityInputMethodService()Lcom/android/internal/view/IInputMethodManager;
    .locals 2

    .line 38
    iget-object v0, p0, Lhuawei/android/view/inputmethod/HwSecImmHelper;->mSecurityInputMethodService:Lcom/android/internal/view/IInputMethodManager;

    if-nez v0, :cond_0

    .line 39
    const-string v0, "input_method_secure"

    .line 40
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 39
    invoke-static {v0}, Lcom/android/internal/view/IInputMethodManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    iput-object v0, p0, Lhuawei/android/view/inputmethod/HwSecImmHelper;->mSecurityInputMethodService:Lcom/android/internal/view/IInputMethodManager;

    .line 43
    :cond_0
    iget-object v0, p0, Lhuawei/android/view/inputmethod/HwSecImmHelper;->mSecurityInputMethodService:Lcom/android/internal/view/IInputMethodManager;

    if-nez v0, :cond_1

    .line 44
    const-string v0, "HwSecImmHelper"

    const-string v1, "mSecurityInputMethodService is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :cond_1
    iget-object v0, p0, Lhuawei/android/view/inputmethod/HwSecImmHelper;->mSecurityInputMethodService:Lcom/android/internal/view/IInputMethodManager;

    return-object v0
.end method

.method public static isPasswordInputType(IZ)Z
    .locals 5
    .param p0, "inputType"    # I
    .param p1, "debug"    # Z

    .line 156
    and-int/lit16 v0, p0, 0xfff

    .line 159
    .local v0, "variation":I
    const/16 v1, 0x81

    if-eq v0, v1, :cond_1

    const/16 v1, 0x91

    if-eq v0, v1, :cond_1

    const/16 v1, 0xe1

    if-eq v0, v1, :cond_1

    const/16 v1, 0x12

    if-eq v0, v1, :cond_1

    const/16 v1, 0x80

    if-eq v0, v1, :cond_1

    const/16 v1, 0x90

    if-eq v0, v1, :cond_1

    const/16 v1, 0xe0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 167
    .local v1, "isPassword":Z
    :goto_1
    if-eqz p1, :cond_2

    if-eqz p0, :cond_2

    .line 168
    const-string v2, "HwSecImmHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isPasswordInputType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", inputType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_2
    return v1
.end method

.method private isUseSecureIMEInner()Z
    .locals 6

    .line 101
    iget-object v0, p0, Lhuawei/android/view/inputmethod/HwSecImmHelper;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v0}, Lcom/android/internal/view/IInputMethodManager;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 102
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 103
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 104
    .local v2, "reply":Landroid/os/Parcel;
    const/4 v3, 0x0

    move v4, v3

    .line 106
    .local v4, "result":Z
    if-eqz v0, :cond_1

    .line 110
    :try_start_0
    const-string v5, "android.view.inputmethod.InputMethodManager"

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 111
    const/16 v5, 0x3e9

    invoke-interface {v0, v5, v1, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 112
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 113
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_0

    const/4 v3, 0x1

    nop

    .line 118
    .end local v4    # "result":Z
    .local v3, "result":Z
    :cond_0
    move v4, v3

    goto :goto_1

    .end local v3    # "result":Z
    .restart local v4    # "result":Z
    :catchall_0
    move-exception v3

    goto :goto_0

    .line 115
    :catch_0
    move-exception v3

    .line 116
    .local v3, "localRemoteException":Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v3    # "localRemoteException":Landroid/os/RemoteException;
    goto :goto_1

    .line 118
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 119
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v3

    .line 118
    :cond_1
    :goto_1
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 119
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 120
    nop

    .line 121
    return v4
.end method


# virtual methods
.method public hideSoftInputFromWindow(Landroid/os/IBinder;ILandroid/os/ResultReceiver;Landroid/view/View;Lcom/android/internal/view/IInputMethodClient$Stub;)Z
    .locals 3
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "flags"    # I
    .param p3, "resultReceiver"    # Landroid/os/ResultReceiver;
    .param p4, "mServedView"    # Landroid/view/View;
    .param p5, "mClient"    # Lcom/android/internal/view/IInputMethodClient$Stub;

    .line 64
    invoke-virtual {p0}, Lhuawei/android/view/inputmethod/HwSecImmHelper;->isUseSecureIME()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    invoke-virtual {p0, p4}, Lhuawei/android/view/inputmethod/HwSecImmHelper;->isPasswordInputType(Landroid/view/View;)Z

    move-result v0

    .line 67
    .local v0, "isPwTextView":Z
    if-eqz v0, :cond_0

    .line 71
    :try_start_0
    iget-object v1, p0, Lhuawei/android/view/inputmethod/HwSecImmHelper;->mService:Lcom/android/internal/view/IInputMethodManager;

    const/16 v2, 0x1000

    invoke-interface {v1, p5, v2, p3}, Lcom/android/internal/view/IInputMethodManager;->hideSoftInput(Lcom/android/internal/view/IInputMethodClient;ILandroid/os/ResultReceiver;)Z

    .line 73
    iget-object v1, p0, Lhuawei/android/view/inputmethod/HwSecImmHelper;->mSecurityInputMethodService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1, p5, p2, p3}, Lcom/android/internal/view/IInputMethodManager;->hideSoftInput(Lcom/android/internal/view/IInputMethodClient;ILandroid/os/ResultReceiver;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 75
    :catch_0
    move-exception v1

    .line 76
    goto :goto_0

    .line 79
    :cond_0
    :try_start_1
    iget-object v1, p0, Lhuawei/android/view/inputmethod/HwSecImmHelper;->mSecurityInputMethodService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1, p5, p2, p3}, Lcom/android/internal/view/IInputMethodManager;->hideSoftInput(Lcom/android/internal/view/IInputMethodClient;ILandroid/os/ResultReceiver;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 81
    goto :goto_0

    .line 80
    :catch_1
    move-exception v1

    .line 85
    .end local v0    # "isPwTextView":Z
    :cond_1
    :goto_0
    :try_start_2
    iget-object v0, p0, Lhuawei/android/view/inputmethod/HwSecImmHelper;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v0, p5, p2, p3}, Lcom/android/internal/view/IInputMethodManager;->hideSoftInput(Lcom/android/internal/view/IInputMethodClient;ILandroid/os/ResultReceiver;)Z

    move-result v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    return v0

    .line 86
    :catch_2
    move-exception v0

    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public isPasswordInputType(Landroid/view/View;)Z
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .line 125
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 126
    return v0

    .line 129
    :cond_0
    const/4 v1, 0x0

    .line 130
    .local v1, "isPwType":Z
    instance-of v2, p1, Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 131
    move-object v2, p1

    check-cast v2, Landroid/widget/TextView;

    .line 132
    .local v2, "pt":Landroid/widget/TextView;
    invoke-virtual {v2}, Landroid/widget/TextView;->getInputType()I

    move-result v3

    .line 134
    .local v3, "inputType":I
    invoke-static {v3, v0}, Lhuawei/android/view/inputmethod/HwSecImmHelper;->isPasswordInputType(IZ)Z

    move-result v0

    .line 136
    .end local v1    # "isPwType":Z
    .end local v2    # "pt":Landroid/widget/TextView;
    .end local v3    # "inputType":I
    .local v0, "isPwType":Z
    goto :goto_1

    .line 137
    .end local v0    # "isPwType":Z
    .restart local v1    # "isPwType":Z
    :cond_1
    new-instance v2, Landroid/view/inputmethod/EditorInfo;

    invoke-direct {v2}, Landroid/view/inputmethod/EditorInfo;-><init>()V

    .line 138
    .local v2, "tba":Landroid/view/inputmethod/EditorInfo;
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    .line 139
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    iput v3, v2, Landroid/view/inputmethod/EditorInfo;->fieldId:I

    .line 142
    :try_start_0
    invoke-virtual {p1, v2}, Landroid/view/View;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    goto :goto_0

    .line 143
    :catch_0
    move-exception v3

    .line 144
    .local v3, "e":Ljava/lang/RuntimeException;
    const-string v4, "HwSecImmHelper"

    const-string v5, "Avoiding individual browser to crashes because webview null pointer"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    .end local v3    # "e":Ljava/lang/RuntimeException;
    :goto_0
    iget v3, v2, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-static {v3, v0}, Lhuawei/android/view/inputmethod/HwSecImmHelper;->isPasswordInputType(IZ)Z

    move-result v0

    .line 152
    .end local v1    # "isPwType":Z
    .end local v2    # "tba":Landroid/view/inputmethod/EditorInfo;
    .restart local v0    # "isPwType":Z
    :goto_1
    return v0
.end method

.method public isUseSecureIME()Z
    .locals 3

    .line 92
    const/4 v0, 0x0

    move v1, v0

    .line 94
    .local v1, "isEnabled":Z
    :try_start_0
    invoke-direct {p0}, Lhuawei/android/view/inputmethod/HwSecImmHelper;->getSecurityInputMethodService()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lhuawei/android/view/inputmethod/HwSecImmHelper;->isUseSecureIMEInner()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    :cond_0
    move v1, v0

    .line 96
    goto :goto_0

    .line 95
    :catch_0
    move-exception v0

    .line 97
    :goto_0
    return v1
.end method

.method public showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;Lcom/android/internal/view/IInputMethodClient$Stub;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "flags"    # I
    .param p3, "resultReceiver"    # Landroid/os/ResultReceiver;
    .param p4, "mClient"    # Lcom/android/internal/view/IInputMethodClient$Stub;

    .line 55
    :try_start_0
    iget-object v0, p0, Lhuawei/android/view/inputmethod/HwSecImmHelper;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v0, p4, p2, p3}, Lcom/android/internal/view/IInputMethodManager;->showSoftInput(Lcom/android/internal/view/IInputMethodClient;ILandroid/os/ResultReceiver;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 56
    :catch_0
    move-exception v0

    .line 58
    const/4 v0, 0x0

    return v0
.end method
