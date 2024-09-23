.class public Lcom/huawei/payments/Paytm;
.super Ljava/lang/Object;
.source "Paytm.java"

# interfaces
.implements Lcom/huawei/payments/Wallet;


# static fields
.field private static final HASHCODE:I = 0x365009bd

.field private static final PACKAGE:Ljava/lang/String; = "net.one97.paytm"

.field private static final SIGNATURE:Ljava/lang/String; = "3082024f308201b8a00302010202044f97d18e300d06092a864886f70d0101050500306b310b3009060355040613023931311630140603550408130d55747461722050726164657368310e300c060355040713054e6f696461310e300c060355040a1305506179746d31143012060355040b130b456e67696e656572696e67310e300c06035504031305506179746d3020170d3132303432353130323732365a180f32303632303431333130323732365a306b310b3009060355040613023931311630140603550408130d55747461722050726164657368310e300c060355040713054e6f696461310e300c060355040a1305506179746d31143012060355040b130b456e67696e656572696e67310e300c06035504031305506179746d30819f300d06092a864886f70d010101050003818d0030818902818100a08b85239755a1ab37a60db9696f1585a5f4ff24ff826869057d1ca97d7da2f7f91fe6ccc844da88ae98051437de2977ff1efe6bac47d5be7ab918a8e9dce1c59fa98396ededbca863561936d9bb79fb0b68be38f3aba9f71569d66b86ea43a47d06dab6907fbe39c88e80cc0cf6c1bcffd3b1eedd3eccd8c58cec8beaee76950203010001300d06092a864886f70d010105050003818100954804a6b32001c64f90f8d087652bd5e29d09cbfc069d54330b9b7cab90a2ec9a6dae1385579833583c5daf896b0ca58d3a02ccfbdb19f4c4c2dbec1a9a0bcc600ed6f766706af89dfa916610faa356ae53ad2e85278561f1f002fcb30f8c4e9e6736e5be385fb527a94ee889f9472f806ada177a342da412460f89dbdadc26"

.field private static final TAG:Ljava/lang/String; = "Paytm"

.field private static final URI:Ljava/lang/String; = "paytmmp://cash_wallet?featuretype=scanner"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/huawei/payments/Paytm;->mContext:Landroid/content/Context;

    .line 21
    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 3

    .line 36
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "paytmmp://cash_wallet?featuretype=scanner"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 37
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "net.one97.paytm"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 31
    const-string v0, "net.one97.paytm"

    return-object v0
.end method

.method public getWalletName()Ljava/lang/String;
    .locals 3

    .line 43
    iget-object v0, p0, Lcom/huawei/payments/Paytm;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 46
    .local v0, "packagemanager":Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v1, "net.one97.paytm"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .local v1, "appinfo":Landroid/content/pm/ApplicationInfo;
    goto :goto_0

    .line 47
    .end local v1    # "appinfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 48
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    .line 51
    .local v1, "appinfo":Landroid/content/pm/ApplicationInfo;
    :goto_0
    if-eqz v1, :cond_0

    .line 52
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_1

    .line 53
    :cond_0
    const-string v2, ""

    :goto_1
    check-cast v2, Ljava/lang/String;

    .line 54
    .local v2, "applicationName":Ljava/lang/String;
    return-object v2
.end method

.method public isVaildSignature()Z
    .locals 7

    .line 60
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/huawei/payments/Paytm;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "net.one97.paytm"

    const/16 v3, 0x40

    .line 61
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 62
    .local v1, "allSignatures":[Landroid/content/pm/Signature;
    array-length v2, v1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 63
    .local v4, "lsignature":Landroid/content/pm/Signature;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "3082024f308201b8a00302010202044f97d18e300d06092a864886f70d0101050500306b310b3009060355040613023931311630140603550408130d55747461722050726164657368310e300c060355040713054e6f696461310e300c060355040a1305506179746d31143012060355040b130b456e67696e656572696e67310e300c06035504031305506179746d3020170d3132303432353130323732365a180f32303632303431333130323732365a306b310b3009060355040613023931311630140603550408130d55747461722050726164657368310e300c060355040713054e6f696461310e300c060355040a1305506179746d31143012060355040b130b456e67696e656572696e67310e300c06035504031305506179746d30819f300d06092a864886f70d010101050003818d0030818902818100a08b85239755a1ab37a60db9696f1585a5f4ff24ff826869057d1ca97d7da2f7f91fe6ccc844da88ae98051437de2977ff1efe6bac47d5be7ab918a8e9dce1c59fa98396ededbca863561936d9bb79fb0b68be38f3aba9f71569d66b86ea43a47d06dab6907fbe39c88e80cc0cf6c1bcffd3b1eedd3eccd8c58cec8beaee76950203010001300d06092a864886f70d010105050003818100954804a6b32001c64f90f8d087652bd5e29d09cbfc069d54330b9b7cab90a2ec9a6dae1385579833583c5daf896b0ca58d3a02ccfbdb19f4c4c2dbec1a9a0bcc600ed6f766706af89dfa916610faa356ae53ad2e85278561f1f002fcb30f8c4e9e6736e5be385fb527a94ee889f9472f806ada177a342da412460f89dbdadc26"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 64
    invoke-virtual {v4}, Landroid/content/pm/Signature;->hashCode()I

    move-result v5
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const v6, 0x365009bd    # 3.1000084E-6f

    if-ne v5, v6, :cond_0

    .line 65
    const/4 v0, 0x1

    return v0

    .line 62
    .end local v4    # "lsignature":Landroid/content/pm/Signature;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 70
    .end local v1    # "allSignatures":[Landroid/content/pm/Signature;
    :cond_1
    goto :goto_1

    .line 68
    :catch_0
    move-exception v1

    .line 69
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "Paytm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Name not found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_1
    return v0
.end method
