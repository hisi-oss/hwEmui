.class public abstract Lcom/huawei/common/service/IDecision$Stub;
.super Landroid/os/Binder;
.source "IDecision.java"

# interfaces
.implements Lcom/huawei/common/service/IDecision;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/common/service/IDecision;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/common/service/IDecision$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.huawei.common.service.IDecision"

.field static final TRANSACTION_batchLog:I = 0x8

.field static final TRANSACTION_executeEvent:I = 0x1

.field static final TRANSACTION_infer:I = 0x9

.field static final TRANSACTION_insertBusinessData:I = 0x2

.field static final TRANSACTION_log:I = 0x7

.field static final TRANSACTION_register:I = 0x4

.field static final TRANSACTION_removeBusinessData:I = 0x3

.field static final TRANSACTION_unRegister:I = 0x5

.field static final TRANSACTION_update:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 17
    const-string v0, "com.huawei.common.service.IDecision"

    invoke-virtual {p0, p0, v0}, Lcom/huawei/common/service/IDecision$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/huawei/common/service/IDecision;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 25
    if-nez p0, :cond_0

    .line 26
    const/4 v0, 0x0

    return-object v0

    .line 28
    :cond_0
    const-string v0, "com.huawei.common.service.IDecision"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 29
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/huawei/common/service/IDecision;

    if-eqz v1, :cond_1

    .line 30
    move-object v1, v0

    check-cast v1, Lcom/huawei/common/service/IDecision;

    return-object v1

    .line 32
    :cond_1
    new-instance v1, Lcom/huawei/common/service/IDecision$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/huawei/common/service/IDecision$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 36
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40
    const-string v0, "com.huawei.common.service.IDecision"

    .line 41
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 169
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 153
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 157
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 159
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 160
    .local v4, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v5

    .line 161
    .local v5, "_arg2":Ljava/util/Map;
    invoke-virtual {p0, v1, v3, v5}, Lcom/huawei/common/service/IDecision$Stub;->infer(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)I

    move-result v6

    .line 162
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 165
    return v2

    .line 138
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "cl":Ljava/lang/ClassLoader;
    .end local v5    # "_arg2":Ljava/util/Map;
    .end local v6    # "_result":I
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 142
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 143
    .local v3, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v4

    .line 145
    .local v4, "_arg1":Ljava/util/List;
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v5

    .line 146
    .local v5, "_arg2":Ljava/util/List;
    invoke-virtual {p0, v1, v4, v5}, Lcom/huawei/common/service/IDecision$Stub;->batchLog(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)I

    move-result v6

    .line 147
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    return v2

    .line 124
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "cl":Ljava/lang/ClassLoader;
    .end local v4    # "_arg1":Ljava/util/List;
    .end local v5    # "_arg2":Ljava/util/List;
    .end local v6    # "_result":I
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 128
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 130
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 131
    .local v4, "_arg2":I
    invoke-virtual {p0, v1, v3, v4}, Lcom/huawei/common/service/IDecision$Stub;->log(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    .line 132
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    return v2

    .line 112
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    .end local v5    # "_result":I
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 116
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 117
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v3}, Lcom/huawei/common/service/IDecision$Stub;->update(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 118
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    return v2

    .line 102
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 105
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/huawei/common/service/IDecision$Stub;->unRegister(Ljava/lang/String;)I

    move-result v3

    .line 106
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    return v2

    .line 85
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 89
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 91
    .local v3, "_arg1":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 92
    .local v4, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v5

    .line 94
    .local v5, "_arg2":Ljava/util/Map;
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v6

    .line 95
    .local v6, "_arg3":Ljava/util/Map;
    invoke-virtual {p0, v1, v3, v5, v6}, Lcom/huawei/common/service/IDecision$Stub;->register(Ljava/lang/String;ILjava/util/Map;Ljava/util/Map;)I

    move-result v7

    .line 96
    .local v7, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    return v2

    .line 73
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "cl":Ljava/lang/ClassLoader;
    .end local v5    # "_arg2":Ljava/util/Map;
    .end local v6    # "_arg3":Ljava/util/Map;
    .end local v7    # "_result":I
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 77
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 78
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v3}, Lcom/huawei/common/service/IDecision$Stub;->removeBusinessData(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 79
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    return v2

    .line 62
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 65
    .local v1, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v3

    .line 66
    .local v3, "_arg0":Ljava/util/Map;
    invoke-virtual {p0, v3}, Lcom/huawei/common/service/IDecision$Stub;->insertBusinessData(Ljava/util/Map;)I

    move-result v4

    .line 67
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    return v2

    .line 50
    .end local v1    # "cl":Ljava/lang/ClassLoader;
    .end local v3    # "_arg0":Ljava/util/Map;
    .end local v4    # "_result":I
    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 53
    .restart local v1    # "cl":Ljava/lang/ClassLoader;
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v3

    .line 55
    .restart local v3    # "_arg0":Ljava/util/Map;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/huawei/common/service/IDecisionCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/huawei/common/service/IDecisionCallback;

    move-result-object v4

    .line 56
    .local v4, "_arg1":Lcom/huawei/common/service/IDecisionCallback;
    invoke-virtual {p0, v3, v4}, Lcom/huawei/common/service/IDecision$Stub;->executeEvent(Ljava/util/Map;Lcom/huawei/common/service/IDecisionCallback;)V

    .line 57
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    return v2

    .line 45
    .end local v1    # "cl":Ljava/lang/ClassLoader;
    .end local v3    # "_arg0":Ljava/util/Map;
    .end local v4    # "_arg1":Lcom/huawei/common/service/IDecisionCallback;
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
