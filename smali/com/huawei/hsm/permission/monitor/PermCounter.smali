.class public Lcom/huawei/hsm/permission/monitor/PermCounter;
.super Ljava/lang/Object;
.source "PermCounter.java"


# static fields
.field private static final DES:Ljava/lang/String; = "desStr"

.field private static final ISALLOW:Ljava/lang/String; = "isAllow"

.field private static final NUM:Ljava/lang/String; = "num"

.field private static final PERM_NAME:Ljava/lang/String; = "permission"

.field private static final PERM_TYPE:Ljava/lang/String; = "permType"

.field private static final PID:Ljava/lang/String; = "pid"

.field private static final PKG_NAME:Ljava/lang/String; = "pkgName"

.field private static final UID:Ljava/lang/String; = "uid"


# instance fields
.field private mPermBundle:Landroid/os/Bundle;


# direct methods
.method constructor <init>(ILjava/lang/String;II)V
    .locals 1
    .param p1, "permType"    # I
    .param p2, "desStr"    # Ljava/lang/String;
    .param p3, "validUid"    # I
    .param p4, "validPid"    # I

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/huawei/hsm/permission/monitor/PermCounter;->mPermBundle:Landroid/os/Bundle;

    .line 18
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/huawei/hsm/permission/monitor/PermCounter;->setData(ILjava/lang/String;II)V

    .line 19
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "permName"    # Ljava/lang/String;
    .param p3, "isAllow"    # Z
    .param p4, "desStr"    # Ljava/lang/String;

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/huawei/hsm/permission/monitor/PermCounter;->mPermBundle:Landroid/os/Bundle;

    .line 23
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/huawei/hsm/permission/monitor/PermCounter;->setData(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 24
    return-void
.end method

.method private getNumber()I
    .locals 3

    .line 47
    iget-object v0, p0, Lcom/huawei/hsm/permission/monitor/PermCounter;->mPermBundle:Landroid/os/Bundle;

    const-string v1, "num"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private setData(ILjava/lang/String;II)V
    .locals 3
    .param p1, "permType"    # I
    .param p2, "desStr"    # Ljava/lang/String;
    .param p3, "validUid"    # I
    .param p4, "validPid"    # I

    .line 27
    iget-object v0, p0, Lcom/huawei/hsm/permission/monitor/PermCounter;->mPermBundle:Landroid/os/Bundle;

    const-string v1, "uid"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 28
    iget-object v0, p0, Lcom/huawei/hsm/permission/monitor/PermCounter;->mPermBundle:Landroid/os/Bundle;

    const-string v1, "pid"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 29
    iget-object v0, p0, Lcom/huawei/hsm/permission/monitor/PermCounter;->mPermBundle:Landroid/os/Bundle;

    const-string v1, "permType"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 30
    iget-object v0, p0, Lcom/huawei/hsm/permission/monitor/PermCounter;->mPermBundle:Landroid/os/Bundle;

    const-string v1, "desStr"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/huawei/hsm/permission/monitor/PermCounter;->mPermBundle:Landroid/os/Bundle;

    const-string v1, "num"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 32
    return-void
.end method

.method private setData(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "permName"    # Ljava/lang/String;
    .param p3, "isAllow"    # Z
    .param p4, "desStr"    # Ljava/lang/String;

    .line 35
    iget-object v0, p0, Lcom/huawei/hsm/permission/monitor/PermCounter;->mPermBundle:Landroid/os/Bundle;

    const-string v1, "pkgName"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/huawei/hsm/permission/monitor/PermCounter;->mPermBundle:Landroid/os/Bundle;

    const-string v1, "permission"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/huawei/hsm/permission/monitor/PermCounter;->mPermBundle:Landroid/os/Bundle;

    const-string v1, "isAllow"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 38
    iget-object v0, p0, Lcom/huawei/hsm/permission/monitor/PermCounter;->mPermBundle:Landroid/os/Bundle;

    const-string v1, "desStr"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/huawei/hsm/permission/monitor/PermCounter;->mPermBundle:Landroid/os/Bundle;

    const-string v1, "num"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 40
    return-void
.end method

.method private setNumber(I)V
    .locals 2
    .param p1, "num"    # I

    .line 43
    iget-object v0, p0, Lcom/huawei/hsm/permission/monitor/PermCounter;->mPermBundle:Landroid/os/Bundle;

    const-string v1, "num"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 44
    return-void
.end method


# virtual methods
.method public count()V
    .locals 1

    .line 51
    invoke-direct {p0}, Lcom/huawei/hsm/permission/monitor/PermCounter;->getNumber()I

    move-result v0

    .line 52
    .local v0, "num":I
    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/huawei/hsm/permission/monitor/PermCounter;->setNumber(I)V

    .line 53
    return-void
.end method

.method public getData()Landroid/os/Bundle;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/huawei/hsm/permission/monitor/PermCounter;->mPermBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public isSamePerm(III)Z
    .locals 6
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "permType"    # I

    .line 75
    iget-object v0, p0, Lcom/huawei/hsm/permission/monitor/PermCounter;->mPermBundle:Landroid/os/Bundle;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/huawei/hsm/permission/monitor/PermCounter;->mPermBundle:Landroid/os/Bundle;

    const-string v2, "permission"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/huawei/hsm/permission/monitor/PermCounter;->mPermBundle:Landroid/os/Bundle;

    const-string v2, "uid"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 79
    .local v0, "mUid":I
    iget-object v2, p0, Lcom/huawei/hsm/permission/monitor/PermCounter;->mPermBundle:Landroid/os/Bundle;

    const-string v4, "pid"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 80
    .local v2, "mPid":I
    iget-object v4, p0, Lcom/huawei/hsm/permission/monitor/PermCounter;->mPermBundle:Landroid/os/Bundle;

    const-string v5, "permType"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 81
    .local v3, "mPermType":I
    if-ne v0, p1, :cond_1

    if-ne v2, p2, :cond_1

    if-ne v3, p3, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1

    .line 76
    .end local v0    # "mUid":I
    .end local v2    # "mPid":I
    .end local v3    # "mPermType":I
    :cond_2
    :goto_0
    return v1
.end method

.method public isSamePerm(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z
    .locals 7
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "permName"    # Ljava/lang/String;
    .param p3, "isAllow"    # Z
    .param p4, "desStr"    # Ljava/lang/String;

    .line 60
    iget-object v0, p0, Lcom/huawei/hsm/permission/monitor/PermCounter;->mPermBundle:Landroid/os/Bundle;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/huawei/hsm/permission/monitor/PermCounter;->mPermBundle:Landroid/os/Bundle;

    const-string v2, "permission"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 64
    :cond_0
    if-nez p4, :cond_1

    .line 65
    const-string p4, ""

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/huawei/hsm/permission/monitor/PermCounter;->mPermBundle:Landroid/os/Bundle;

    const-string v2, "pkgName"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "pkgName":Ljava/lang/String;
    iget-object v2, p0, Lcom/huawei/hsm/permission/monitor/PermCounter;->mPermBundle:Landroid/os/Bundle;

    const-string v3, "permission"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 69
    .local v2, "permission":Ljava/lang/String;
    iget-object v3, p0, Lcom/huawei/hsm/permission/monitor/PermCounter;->mPermBundle:Landroid/os/Bundle;

    const-string v4, "isAllow"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 70
    .local v3, "allow":Ljava/lang/Boolean;
    iget-object v4, p0, Lcom/huawei/hsm/permission/monitor/PermCounter;->mPermBundle:Landroid/os/Bundle;

    const-string v5, "desStr"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 71
    .local v4, "des":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-ne p3, v5, :cond_2

    invoke-virtual {v4, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v1, 0x1

    nop

    :cond_2
    return v1

    .line 61
    .end local v0    # "pkgName":Ljava/lang/String;
    .end local v2    # "permission":Ljava/lang/String;
    .end local v3    # "allow":Ljava/lang/Boolean;
    .end local v4    # "des":Ljava/lang/String;
    :cond_3
    :goto_0
    return v1
.end method
