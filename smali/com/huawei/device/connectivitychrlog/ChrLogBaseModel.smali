.class public Lcom/huawei/device/connectivitychrlog/ChrLogBaseModel;
.super Ljava/lang/Object;
.source "ChrLogBaseModel.java"


# static fields
.field protected static final ENCRYPT_LENGTH:I = 0x2

.field private static final GET_LENGTH:Ljava/lang/String; = "getLength"

.field private static final SET_BYTE_VALUE:Ljava/lang/String; = "setByByteArray"

.field private static final TO_BYTE_ARRAY:Ljava/lang/String; = "toByteArray"


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field fieldMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field lengthMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChrLogBaseModel_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/ChrLogBaseModel;->LOG_TAG:Ljava/lang/String;

    .line 27
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/ChrLogBaseModel;->lengthMap:Ljava/util/Map;

    .line 28
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/ChrLogBaseModel;->fieldMap:Ljava/util/Map;

    return-void
.end method

.method private getArrayListLength(Ljava/util/ArrayList;)I
    .locals 3
    .param p1, "list"    # Ljava/util/ArrayList;

    .line 344
    if-eqz p1, :cond_0

    .line 346
    :try_start_0
    const-class v0, Ljava/util/ArrayList;

    const-string v1, "array"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 347
    .local v0, "f":Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 348
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 349
    .local v1, "array":[Ljava/lang/Object;
    array-length v2, v1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 352
    .end local v0    # "f":Ljava/lang/reflect/Field;
    .end local v1    # "array":[Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 353
    .local v0, "ex":Ljava/lang/NoSuchFieldException;
    iget-object v1, p0, Lcom/huawei/device/connectivitychrlog/ChrLogBaseModel;->LOG_TAG:Ljava/lang/String;

    const-string v2, "getArrayListLength NoSuchFieldException"

    invoke-static {v1, v2}, Lcom/huawei/device/connectivitychrlog/ChrLog;->chrLogE(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "ex":Ljava/lang/NoSuchFieldException;
    goto :goto_0

    .line 350
    :catch_1
    move-exception v0

    .line 351
    .local v0, "ex":Ljava/lang/IllegalAccessException;
    iget-object v1, p0, Lcom/huawei/device/connectivitychrlog/ChrLogBaseModel;->LOG_TAG:Ljava/lang/String;

    const-string v2, "getArrayListLength IllegalAccessException"

    invoke-static {v1, v2}, Lcom/huawei/device/connectivitychrlog/ChrLog;->chrLogE(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    .end local v0    # "ex":Ljava/lang/IllegalAccessException;
    nop

    .line 357
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/ChrLogBaseModel;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getArrayListLength failed , please check the xml"

    invoke-static {v0, v1}, Lcom/huawei/device/connectivitychrlog/ChrLog;->chrLogE(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    const/4 v0, 0x0

    return v0
.end method

.method private getListElementClassByHashMapKey(Ljava/lang/String;)Ljava/lang/Class;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 325
    const-class v0, Lcom/huawei/device/connectivitychrlog/ChrLogBaseModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    .line 330
    .local v0, "packageName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".CSub"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 333
    .local v1, "classFullName":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    return-object v2

    .line 335
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v2

    .line 336
    .local v2, "ex":Ljava/lang/ClassNotFoundException;
    iget-object v3, p0, Lcom/huawei/device/connectivitychrlog/ChrLogBaseModel;->LOG_TAG:Ljava/lang/String;

    const-string v4, "getListElementClassByHashMapKey ClassNotFoundException"

    invoke-static {v3, v4}, Lcom/huawei/device/connectivitychrlog/ChrLog;->chrLogE(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    .end local v2    # "ex":Ljava/lang/ClassNotFoundException;
    iget-object v2, p0, Lcom/huawei/device/connectivitychrlog/ChrLogBaseModel;->LOG_TAG:Ljava/lang/String;

    const-string v3, "getListElementClassByHashMapKey failed , class is null"

    invoke-static {v2, v3}, Lcom/huawei/device/connectivitychrlog/ChrLog;->chrLogE(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    const/4 v2, 0x0

    return-object v2
.end method

.method private getObjectClassByHashMapKey(Ljava/lang/String;)Ljava/lang/Class;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 306
    const-class v0, Lcom/huawei/device/connectivitychrlog/ChrLogBaseModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    .line 311
    .local v0, "packageName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".CSub"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 314
    .local v1, "classFullName":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    return-object v2

    .line 316
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v2

    .line 317
    .local v2, "ex":Ljava/lang/ClassNotFoundException;
    iget-object v3, p0, Lcom/huawei/device/connectivitychrlog/ChrLogBaseModel;->LOG_TAG:Ljava/lang/String;

    const-string v4, "getObjectClassByHashMapKey ClassNotFoundException"

    invoke-static {v3, v4}, Lcom/huawei/device/connectivitychrlog/ChrLog;->chrLogE(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    .end local v2    # "ex":Ljava/lang/ClassNotFoundException;
    iget-object v2, p0, Lcom/huawei/device/connectivitychrlog/ChrLogBaseModel;->LOG_TAG:Ljava/lang/String;

    const-string v3, "getObjectClassByHashMapKey failed , class is null"

    invoke-static {v2, v3}, Lcom/huawei/device/connectivitychrlog/ChrLog;->chrLogE(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    const/4 v2, 0x0

    return-object v2
.end method

.method private setObjectByteValue([BLjava/lang/Object;I)I
    .locals 11
    .param p1, "src"    # [B
    .param p2, "key"    # Ljava/lang/Object;
    .param p3, "start"    # I

    .line 176
    const/4 v0, 0x0

    move v1, v0

    .line 178
    .local v1, "len":I
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getLength"

    new-array v4, v0, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 179
    .local v2, "methodGetLen":Ljava/lang/reflect/Method;
    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v2, p2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move v1, v3

    .line 180
    if-lez v1, :cond_0

    .line 181
    new-array v3, v1, [B

    .line 182
    .local v3, "b":[B
    nop

    .line 183
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "setByByteArray"

    const/4 v6, 0x3

    new-array v7, v6, [Ljava/lang/Class;

    const-class v8, [B

    aput-object v8, v7, v0

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x1

    aput-object v8, v7, v9

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x2

    aput-object v8, v7, v10

    invoke-virtual {v4, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 186
    .local v4, "methodSetByteValue":Ljava/lang/reflect/Method;
    invoke-static {p1, p3, v3, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 189
    new-array v5, v6, [Ljava/lang/Object;

    aput-object v3, v5, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v5, v10

    invoke-virtual {v4, p2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    .end local v3    # "b":[B
    .end local v4    # "methodSetByteValue":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/ChrLogBaseModel;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setObjectByteValue failed len = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", class = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/huawei/device/connectivitychrlog/ChrLog;->chrLogE(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "methodGetLen":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, "ex":Ljava/lang/reflect/InvocationTargetException;
    iget-object v2, p0, Lcom/huawei/device/connectivitychrlog/ChrLogBaseModel;->LOG_TAG:Ljava/lang/String;

    const-string v3, "setObjectByteValue InvocationTargetException"

    invoke-static {v2, v3}, Lcom/huawei/device/connectivitychrlog/ChrLog;->chrLogE(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "ex":Ljava/lang/reflect/InvocationTargetException;
    goto :goto_1

    .line 196
    :catch_1
    move-exception v0

    .line 197
    .local v0, "ex":Ljava/lang/IllegalAccessException;
    iget-object v2, p0, Lcom/huawei/device/connectivitychrlog/ChrLogBaseModel;->LOG_TAG:Ljava/lang/String;

    const-string v3, "setObjectByteValue IllegalAccessException"

    invoke-static {v2, v3}, Lcom/huawei/device/connectivitychrlog/ChrLog;->chrLogE(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "ex":Ljava/lang/IllegalAccessException;
    goto :goto_0

    .line 194
    :catch_2
    move-exception v0

    .line 195
    .local v0, "ex":Ljava/lang/NoSuchMethodException;
    iget-object v2, p0, Lcom/huawei/device/connectivitychrlog/ChrLogBaseModel;->LOG_TAG:Ljava/lang/String;

    const-string v3, "setObjectByteValue NoSuchMethodException"

    invoke-static {v2, v3}, Lcom/huawei/device/connectivitychrlog/ChrLog;->chrLogE(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    .end local v0    # "ex":Ljava/lang/NoSuchMethodException;
    :goto_0
    nop

    .line 201
    :goto_1
    return v1
.end method

.method private setSubClass(Ljava/lang/String;Lcom/huawei/device/connectivitychrlog/ChrLogBaseModel;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "model"    # Lcom/huawei/device/connectivitychrlog/ChrLogBaseModel;

    .line 363
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCSub"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 364
    .local v0, "funcName":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v2, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 365
    .local v2, "methodSetClass":Ljava/lang/reflect/Method;
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v5

    invoke-virtual {v2, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "funcName":Ljava/lang/String;
    .end local v2    # "methodSetClass":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 370
    :catch_0
    move-exception v0

    .line 371
    .local v0, "ex":Ljava/lang/reflect/InvocationTargetException;
    iget-object v1, p0, Lcom/huawei/device/connectivitychrlog/ChrLogBaseModel;->LOG_TAG:Ljava/lang/String;

    const-string v2, "setSubClass InvocationTargetException"

    invoke-static {v1, v2}, Lcom/huawei/device/connectivitychrlog/ChrLog;->chrLogE(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "ex":Ljava/lang/reflect/InvocationTargetException;
    goto :goto_1

    .line 368
    :catch_1
    move-exception v0

    .line 369
    .local v0, "ex":Ljava/lang/IllegalAccessException;
    iget-object v1, p0, Lcom/huawei/device/connectivitychrlog/ChrLogBaseModel;->LOG_TAG:Ljava/lang/String;

    const-string v2, "setSubClass IllegalAccessException"

    invoke-static {v1, v2}, Lcom/huawei/device/connectivitychrlog/ChrLog;->chrLogE(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "ex":Ljava/lang/IllegalAccessException;
    goto :goto_0

    .line 366
    :catch_2
    move-exception v0

    .line 367
    .local v0, "ex":Ljava/lang/NoSuchMethodException;
    iget-object v1, p0, Lcom/huawei/device/connectivitychrlog/ChrLogBaseModel;->LOG_TAG:Ljava/lang/String;

    const-string v2, "setSubClass NoSuchMethodException"

    invoke-static {v1, v2}, Lcom/huawei/device/connectivitychrlog/ChrLog;->chrLogE(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    .end local v0    # "ex":Ljava/lang/NoSuchMethodException;
    :goto_0
    nop

    .line 373
    :goto_1
    return-void
.end method


# virtual methods
.method public getLength()I
    .locals 11

    .line 206
    const/4 v0, 0x0

    .line 207
    .local v0, "totalLen":I
    iget-object v1, p0, Lcom/huawei/device/connectivitychrlog/ChrLogBaseModel;->fieldMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 209
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 211
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 212
    .local v2, "entry":Ljava/util/Map$Entry;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 214
    .local v3, "key":Ljava/lang/Object;
    const/4 v4, 0x0

    if-nez v3, :cond_1

    .line 217
    :try_start_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/huawei/device/connectivitychrlog/ChrLogBaseModel;->getObjectClassByHashMapKey(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 218
    .local v5, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v5, :cond_0

    .line 219
    iget-object v4, p0, Lcom/huawei/device/connectivitychrlog/ChrLogBaseModel;->LOG_TAG:Ljava/lang/String;

    const-string v6, "getLength failed clazz is null"

    invoke-static {v4, v6}, Lcom/huawei/device/connectivitychrlog/ChrLog;->chrLogE(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    return v0

    .line 223
    :cond_0
    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/huawei/device/connectivitychrlog/ChrLogBaseModel;

    .line 224
    .local v6, "model":Lcom/huawei/device/connectivitychrlog/ChrLogBaseModel;
    const-string v7, "getLength"

    new-array v8, v4, [Ljava/lang/Class;

    invoke-virtual {v5, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 227
    .local v7, "methodGetLen":Ljava/lang/reflect/Method;
    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v7, v6, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    .local v4, "len":I
    add-int/2addr v0, v4

    .line 239
    .end local v2    # "entry":Ljava/util/Map$Entry;
    .end local v3    # "key":Ljava/lang/Object;
    .end local v4    # "len":I
    .end local v5    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "model":Lcom/huawei/device/connectivitychrlog/ChrLogBaseModel;
    .end local v7    # "methodGetLen":Ljava/lang/reflect/Method;
    :goto_1
    goto/16 :goto_5

    .line 237
    .restart local v2    # "entry":Ljava/util/Map$Entry;
    .restart local v3    # "key":Ljava/lang/Object;
    :catch_0
    move-exception v4

    .line 238
    .local v4, "ex":Ljava/lang/reflect/InvocationTargetException;
    iget-object v5, p0, Lcom/huawei/device/connectivitychrlog/ChrLogBaseModel;->LOG_TAG:Ljava/lang/String;

    const-string v6, "getLength InvocationTargetException"

    invoke-static {v5, v6}, Lcom/huawei/device/connectivitychrlog/ChrLog;->chrLogE(Ljava/lang/String;Ljava/lang/String;)V

    .end local v4    # "ex":Ljava/lang/reflect/InvocationTargetException;
    goto :goto_1

    .line 235
    :catch_1
    move-exception v4

    .line 236
    .local v4, "ex":Ljava/lang/InstantiationException;
    iget-object v5, p0, Lcom/huawei/device/connectivitychrlog/ChrLogBaseModel;->LOG_TAG:Ljava/lang/String;

    const-string v6, "getLength InstantiationException"

    invoke-static {v5, v6}, Lcom/huawei/device/connectivitychrlog/ChrLog;->chrLogE(Ljava/lang/String;Ljava/lang/String;)V

    .end local v4    # "ex":Ljava/lang/InstantiationException;
    goto :goto_1

    .line 233
    :catch_2
    move-exception v4

    .line 234
    .local v4, "ex":Ljava/lang/IllegalAccessException;
    iget-object v5, p0, Lcom/huawei/device/connectivitychrlog/ChrLogBaseModel;->LOG_TAG:Ljava/lang/String;

    const-string v6, "getLength IllegalAccessException"

    invoke-static {v5, v6}, Lcom/huawei/device/connectivitychrlog/ChrLog;->chrLogE(Ljava/lang/String;Ljava/lang/String;)V

    .end local v4    # "ex":Ljava/lang/IllegalAccessException;
    goto :goto_1

    .line 231
    :catch_3
    move-exception v4

    .line 232
    .local v4, "ex":Ljava/lang/NoSuchMethodException;
    iget-object v5, p0, Lcom/huawei/device/connectivitychrlog/ChrLogBaseModel;->LOG_TAG:Ljava/lang/String;

    const-string v6, "getLength NoSuchMethodException"

    invoke-static {v5, v6}, Lcom/huawei/device/connectivitychrlog/ChrLog;->chrLogE(Ljava/lang/String;Ljava/lang/String;)V

    .end local v4    # "ex":Ljava/lang/NoSuchMethodException;
    goto :goto_1

    .line 240
    :cond_1
    const-string v5, "enSubEventId"

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 242
    goto :goto_0

    .line 243
    :cond_2
    instance-of v5, v3, Ljava/util/ArrayList;

    if-eqz v5, :cond_4

    .line 244
    move-object v5, v3

    check-cast v5, Ljava/util/ArrayList;

    .line 245
    .local v5, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<+Lcom/huawei/device/connectivitychrlog/ChrLogBaseModel;>;"
    invoke-direct {p0, v5}, Lcom/huawei/device/connectivitychrlog/ChrLogBaseModel;->getArrayListLength(Ljava/util/ArrayList;)I

    move-result v6

    .line 248
    .local v6, "listSize":I
    if-lez v6, :cond_3

    .line 250
    :try_start_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/huawei/device/connectivitychrlog/ChrLogBaseModel;->getListElementClassByHashMapKey(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 251
    .local v7, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v7}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/huawei/device/connectivitychrlog/ChrLogBaseModel;

    .line 252
    .local v8, "model":Lcom/huawei/device/connectivitychrlog/ChrLogBaseModel;
    const-string v9, "getLength"

    new-array v10, v4, [Ljava/lang/Class;

    invoke-virtual {v7, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    .line 256
    .local v9, "methodGetLen":Ljava/lang/reflect/Method;
    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v9, v8, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_4

    .line 257
    .local v4, "len":I
    mul-int v10, v4, v6

    add-int/2addr v0, v10

    .line 267
    .end local v4    # "len":I
    .end local v5    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<+Lcom/huawei/device/connectivitychrlog/ChrLogBaseModel;>;"
    .end local v6    # "listSize":I
    .end local v7    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v8    # "model":Lcom/huawei/device/connectivitychrlog/ChrLogBaseModel;
    .end local v9    # "methodGetLen":Ljava/lang/reflect/Method;
    :goto_2
    goto :goto_3

    .line 265
    .restart local v5    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<+Lcom/huawei/device/connectivitychrlog/ChrLogBaseModel;>;"
    .restart local v6    # "listSize":I
    :catch_4
    move-exception v4

    .line 266
    .local v4, "ex":Ljava/lang/InstantiationException;
    iget-object v7, p0, Lcom/huawei/device/connectivitychrlog/ChrLogBaseModel;->LOG_TAG:Ljava/lang/String;

    const-string v8, "getLength InstantiationException"

    invoke-static {v7, v8}, Lcom/huawei/device/connectivitychrlog/ChrLog;->chrLogE(Ljava/lang/String;Ljava/lang/String;)V

    .end local v4    # "ex":Ljava/lang/InstantiationException;
    .end local v5    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<+Lcom/huawei/device/connectivitychrlog/ChrLogBaseModel;>;"
    .end local v6    # "listSize":I
    goto :goto_3

    .line 263
    .restart local v5    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<+Lcom/huawei/device/connectivitychrlog/ChrLogBaseModel;>;"
    .restart local v6    # "listSize":I
    :catch_5
    move-exception v4

    .line 264
    .local v4, "ex":Ljava/lang/reflect/InvocationTargetException;
    iget-object v7, p0, Lcom/huawei/device/connectivitychrlog/ChrLogBaseModel;->LOG_TAG:Ljava/lang/String;

    const-string v8, "getLength InvocationTargetException"

    invoke-static {v7, v8}, Lcom/huawei/device/connectivitychrlog/ChrLog;->chrLogE(Ljava/lang/String;Ljava/lang/String;)V

    .end local v4    # "ex":Ljava/lang/reflect/InvocationTargetException;
    goto :goto_2

    .line 261
    :catch_6
    move-exception v4

    .line 262
    .local v4, "ex":Ljava/lang/IllegalAccessException;
    iget-object v7, p0, Lcom/huawei/device/connectivitychrlog/ChrLogBaseModel;->LOG_TAG:Ljava/lang/String;

    const-string v8, "getLength IllegalAccessException"

    invoke-static {v7, v8}, Lcom/huawei/device/connectivitychrlog/ChrLog;->chrLogE(Ljava/lang/String;Ljava/lang/String;)V

    .end local v4    # "ex":Ljava/lang/IllegalAccessException;
    goto :goto_2

    .line 259
    :catch_7
    move-exception v4

    .line 260
    .local v4, "ex":Ljava/lang/NoSuchMethodException;
    iget-object v7, p0, Lcom/huawei/device/connectivitychrlog/ChrLogBaseModel;->LOG_TAG:Ljava/lang/String;

    const-string v8, "getLength NoSuchMethodException"

    invoke-static {v7, v8}, Lcom/huawei/device/connectivitychrlog/ChrLog;->chrLogE(Ljava/lang/String;Ljava/lang/String;)V

    .end local v4    # "ex":Ljava/lang/NoSuchMethodException;
    goto :goto_2

    .line 269
    .end local v5    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<+Lcom/huawei/device/connectivitychrlog/ChrLogBaseModel;>;"
    .end local v6    # "listSize":I
    :cond_3
    :goto_3
    goto :goto_5

    .line 271
    :cond_4
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "getLength"

    new-array v7, v4, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 272
    .local v5, "methodGetLen":Ljava/lang/reflect/Method;
    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v5, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_8

    .line 273
    .local v4, "len":I
    add-int/2addr v0, v4

    .line 283
    .end local v2    # "entry":Ljava/util/Map$Entry;
    .end local v3    # "key":Ljava/lang/Object;
    .end local v4    # "len":I
    .end local v5    # "methodGetLen":Ljava/lang/reflect/Method;
    :goto_4
    goto :goto_5

    .line 281
    .restart local v2    # "entry":Ljava/util/Map$Entry;
    .restart local v3    # "key":Ljava/lang/Object;
    :catch_8
    move-exception v4

    .line 282
    .local v4, "ex":Ljava/lang/reflect/InvocationTargetException;
    iget-object v5, p0, Lcom/huawei/device/connectivitychrlog/ChrLogBaseModel;->LOG_TAG:Ljava/lang/String;

    const-string v6, "getLength InvocationTargetException"

    invoke-static {v5, v6}, Lcom/huawei/device/connectivitychrlog/ChrLog;->chrLogE(Ljava/lang/String;Ljava/lang/String;)V

    .end local v2    # "entry":Ljava/util/Map$Entry;
    .end local v3    # "key":Ljava/lang/Object;
    .end local v4    # "ex":Ljava/lang/reflect/InvocationTargetException;
    goto :goto_5

    .line 279
    .restart local v2    # "entry":Ljava/util/Map$Entry;
    .restart local v3    # "key":Ljava/lang/Object;
    :catch_9
    move-exception v4

    .line 280
    .local v4, "ex":Ljava/lang/IllegalAccessException;
    iget-object v5, p0, Lcom/huawei/device/connectivitychrlog/ChrLogBaseModel;->LOG_TAG:Ljava/lang/String;

    const-string v6, "getLength IllegalAccessException"

    invoke-static {v5, v6}, Lcom/huawei/device/connectivitychrlog/ChrLog;->chrLogE(Ljava/lang/String;Ljava/lang/String;)V

    .end local v4    # "ex":Ljava/lang/IllegalAccessException;
    goto :goto_4

    .line 277
    :catch_a
    move-exception v4

    .line 278
    .local v4, "ex":Ljava/lang/NoSuchMethodException;
    iget-object v5, p0, Lcom/huawei/device/connectivitychrlog/ChrLogBaseModel;->LOG_TAG:Ljava/lang/String;

    const-string v6, "getLength NoSuchMethodException"

    invoke-static {v5, v6}, Lcom/huawei/device/connectivitychrlog/ChrLog;->chrLogE(Ljava/lang/String;Ljava/lang/String;)V

    .end local v4    # "ex":Ljava/lang/NoSuchMethodException;
    goto :goto_4

    .line 285
    .end local v2    # "entry":Ljava/util/Map$Entry;
    .end local v3    # "key":Ljava/lang/Object;
    :goto_5
    goto/16 :goto_0

    .line 287
    :cond_5
    return v0
.end method

.method getTotalBytes()I
    .locals 4

    .line 295
    const/4 v0, 0x0

    .line 296
    .local v0, "totalBytes":I
    iget-object v1, p0, Lcom/huawei/device/connectivitychrlog/ChrLogBaseModel;->lengthMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 297
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 299
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 300
    .local v2, "entry":Ljava/util/Map$Entry;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v0, v3

    .line 301
    .end local v2    # "entry":Ljava/util/Map$Entry;
    goto :goto_0

    .line 302
    :cond_0
    return v0
.end method

.method public getfieldMap()Ljava/util/Map;
    .locals 1

    .line 376
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/ChrLogBaseModel;->fieldMap:Ljava/util/Map;

    return-object v0
.end method

.method public setByByteArray([BIZ)V
    .locals 11
    .param p1, "src"    # [B
    .param p2, "len"    # I
    .param p3, "bIsLittleEndian"    # Z

    .line 90
    const/4 v0, 0x0

    .line 91
    .local v0, "i":I
    invoke-virtual {p0}, Lcom/huawei/device/connectivitychrlog/ChrLogBaseModel;->getLength()I

    move-result v1

    .line 93
    .local v1, "totalLen":I
    if-eq v1, p2, :cond_0

    .line 94
    iget-object v2, p0, Lcom/huawei/device/connectivitychrlog/ChrLogBaseModel;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setByByteArray totalLen = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", len = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/device/connectivitychrlog/ChrLog;->chrLogW(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :cond_0
    if-le v1, p2, :cond_1

    .line 98
    return-void

    .line 101
    :cond_1
    iget-object v2, p0, Lcom/huawei/device/connectivitychrlog/ChrLogBaseModel;->fieldMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 103
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 105
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 107
    .local v3, "entry":Ljava/util/Map$Entry;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 109
    .local v4, "key":Ljava/lang/Object;
    if-lt v0, p2, :cond_2

    .line 110
    iget-object v5, p0, Lcom/huawei/device/connectivitychrlog/ChrLogBaseModel;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setByByteArray error, please check the xml and the vcom data struct , i = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", len = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/huawei/device/connectivitychrlog/ChrLog;->chrLogE(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    return-void

    .line 115
    :cond_2
    if-nez v4, :cond_4

    .line 117
    iget-object v5, p0, Lcom/huawei/device/connectivitychrlog/ChrLogBaseModel;->LOG_TAG:Ljava/lang/String;

    const-string v6, "setByByteArray handle class"

    invoke-static {v5, v6}, Lcom/huawei/device/connectivitychrlog/ChrLog;->chrLogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :try_start_0
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/huawei/device/connectivitychrlog/ChrLogBaseModel;->getObjectClassByHashMapKey(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 120
    .local v5, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v5, :cond_3

    .line 121
    iget-object v6, p0, Lcom/huawei/device/connectivitychrlog/ChrLogBaseModel;->LOG_TAG:Ljava/lang/String;

    const-string v7, "setByByteArray failed , can not find class when key is null"

    invoke-static {v6, v7}, Lcom/huawei/device/connectivitychrlog/ChrLog;->chrLogE(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    return-void

    .line 125
    :cond_3
    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/huawei/device/connectivitychrlog/ChrLogBaseModel;

    .line 127
    .local v6, "model":Lcom/huawei/device/connectivitychrlog/ChrLogBaseModel;
    invoke-direct {p0, p1, v6, v0}, Lcom/huawei/device/connectivitychrlog/ChrLogBaseModel;->setObjectByteValue([BLjava/lang/Object;I)I

    move-result v7

    add-int/2addr v0, v7

    .line 129
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {p0, v7, v6}, Lcom/huawei/device/connectivitychrlog/ChrLogBaseModel;->setSubClass(Ljava/lang/String;Lcom/huawei/device/connectivitychrlog/ChrLogBaseModel;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v5    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "model":Lcom/huawei/device/connectivitychrlog/ChrLogBaseModel;
    goto :goto_1

    .line 132
    :catch_0
    move-exception v5

    .line 133
    .local v5, "ex":Ljava/lang/InstantiationException;
    iget-object v6, p0, Lcom/huawei/device/connectivitychrlog/ChrLogBaseModel;->LOG_TAG:Ljava/lang/String;

    const-string v7, "setByByteArray InstantiationException"

    invoke-static {v6, v7}, Lcom/huawei/device/connectivitychrlog/ChrLog;->chrLogE(Ljava/lang/String;Ljava/lang/String;)V

    .end local v5    # "ex":Ljava/lang/InstantiationException;
    goto :goto_1

    .line 130
    :catch_1
    move-exception v5

    .line 131
    .local v5, "ex":Ljava/lang/IllegalAccessException;
    iget-object v6, p0, Lcom/huawei/device/connectivitychrlog/ChrLogBaseModel;->LOG_TAG:Ljava/lang/String;

    const-string v7, "setByByteArray IllegalAccessException"

    invoke-static {v6, v7}, Lcom/huawei/device/connectivitychrlog/ChrLog;->chrLogE(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    .end local v3    # "entry":Ljava/util/Map$Entry;
    .end local v4    # "key":Ljava/lang/Object;
    .end local v5    # "ex":Ljava/lang/IllegalAccessException;
    :goto_1
    goto/16 :goto_4

    .line 135
    .restart local v3    # "entry":Ljava/util/Map$Entry;
    .restart local v4    # "key":Ljava/lang/Object;
    :cond_4
    const-string v5, "enSubEventId"

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 136
    iget-object v5, p0, Lcom/huawei/device/connectivitychrlog/ChrLogBaseModel;->LOG_TAG:Ljava/lang/String;

    const-string v6, "setByByteArray ingnore enSubEventId"

    invoke-static {v5, v6}, Lcom/huawei/device/connectivitychrlog/ChrLog;->chrLogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    goto/16 :goto_0

    .line 138
    :cond_5
    instance-of v5, v4, Ljava/util/ArrayList;

    if-eqz v5, :cond_9

    .line 139
    iget-object v5, p0, Lcom/huawei/device/connectivitychrlog/ChrLogBaseModel;->LOG_TAG:Ljava/lang/String;

    const-string v6, "setByByteArray handle ArrayList"

    invoke-static {v5, v6}, Lcom/huawei/device/connectivitychrlog/ChrLog;->chrLogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    move-object v5, v4

    check-cast v5, Ljava/util/ArrayList;

    .line 142
    .local v5, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/device/connectivitychrlog/ChrLogBaseModel;>;"
    invoke-direct {p0, v5}, Lcom/huawei/device/connectivitychrlog/ChrLogBaseModel;->getArrayListLength(Ljava/util/ArrayList;)I

    move-result v6

    .line 143
    .local v6, "listSize":I
    if-lez v6, :cond_8

    .line 145
    :try_start_1
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/huawei/device/connectivitychrlog/ChrLogBaseModel;->getListElementClassByHashMapKey(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 146
    .local v7, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v7, :cond_6

    .line 147
    iget-object v8, p0, Lcom/huawei/device/connectivitychrlog/ChrLogBaseModel;->LOG_TAG:Ljava/lang/String;

    const-string v9, "setByByteArray failed , can not find class when key is ArrayList"

    invoke-static {v8, v9}, Lcom/huawei/device/connectivitychrlog/ChrLog;->chrLogE(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    return-void

    .line 150
    :cond_6
    const/4 v8, 0x0

    .local v8, "k":I
    :goto_2
    if-ge v8, v6, :cond_7

    .line 151
    invoke-virtual {v7}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/huawei/device/connectivitychrlog/ChrLogBaseModel;

    .line 152
    .local v9, "model":Lcom/huawei/device/connectivitychrlog/ChrLogBaseModel;
    invoke-direct {p0, p1, v9, v0}, Lcom/huawei/device/connectivitychrlog/ChrLogBaseModel;->setObjectByteValue([BLjava/lang/Object;I)I

    move-result v10

    add-int/2addr v0, v10

    .line 153
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-direct {p0, v10, v9}, Lcom/huawei/device/connectivitychrlog/ChrLogBaseModel;->setSubClass(Ljava/lang/String;Lcom/huawei/device/connectivitychrlog/ChrLogBaseModel;)V

    .line 150
    .end local v9    # "model":Lcom/huawei/device/connectivitychrlog/ChrLogBaseModel;
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 156
    .end local v8    # "k":I
    :cond_7
    iget-object v8, p0, Lcom/huawei/device/connectivitychrlog/ChrLogBaseModel;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setByByteArray handle ArrayList clazz = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ", listSize = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/huawei/device/connectivitychrlog/ChrLog;->chrLogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2

    .end local v7    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_3

    .line 160
    :catch_2
    move-exception v7

    .line 161
    .local v7, "ex":Ljava/lang/IllegalAccessException;
    iget-object v8, p0, Lcom/huawei/device/connectivitychrlog/ChrLogBaseModel;->LOG_TAG:Ljava/lang/String;

    const-string v9, "setByByteArray IllegalAccessException"

    invoke-static {v8, v9}, Lcom/huawei/device/connectivitychrlog/ChrLog;->chrLogE(Ljava/lang/String;Ljava/lang/String;)V

    .end local v7    # "ex":Ljava/lang/IllegalAccessException;
    goto :goto_3

    .line 158
    :catch_3
    move-exception v7

    .line 159
    .local v7, "ex":Ljava/lang/InstantiationException;
    iget-object v8, p0, Lcom/huawei/device/connectivitychrlog/ChrLogBaseModel;->LOG_TAG:Ljava/lang/String;

    const-string v9, "setByByteArray InstantiationException"

    invoke-static {v8, v9}, Lcom/huawei/device/connectivitychrlog/ChrLog;->chrLogE(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    .end local v5    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/device/connectivitychrlog/ChrLogBaseModel;>;"
    .end local v6    # "listSize":I
    .end local v7    # "ex":Ljava/lang/InstantiationException;
    :goto_3
    nop

    .line 167
    goto :goto_4

    .line 164
    .restart local v5    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/device/connectivitychrlog/ChrLogBaseModel;>;"
    .restart local v6    # "listSize":I
    :cond_8
    iget-object v7, p0, Lcom/huawei/device/connectivitychrlog/ChrLogBaseModel;->LOG_TAG:Ljava/lang/String;

    const-string v8, "setByByteArray handle null ArrayList, this should not happen, please check the xml"

    invoke-static {v7, v8}, Lcom/huawei/device/connectivitychrlog/ChrLog;->chrLogE(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    return-void

    .line 169
    .end local v5    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/device/connectivitychrlog/ChrLogBaseModel;>;"
    .end local v6    # "listSize":I
    :cond_9
    iget-object v5, p0, Lcom/huawei/device/connectivitychrlog/ChrLogBaseModel;->LOG_TAG:Ljava/lang/String;

    const-string v6, "setByByteArray handle base element"

    invoke-static {v5, v6}, Lcom/huawei/device/connectivitychrlog/ChrLog;->chrLogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-direct {p0, p1, v4, v0}, Lcom/huawei/device/connectivitychrlog/ChrLogBaseModel;->setObjectByteValue([BLjava/lang/Object;I)I

    move-result v5

    add-int/2addr v0, v5

    .line 172
    .end local v3    # "entry":Ljava/util/Map$Entry;
    .end local v4    # "key":Ljava/lang/Object;
    :goto_4
    goto/16 :goto_0

    .line 173
    :cond_a
    return-void
.end method

.method public toByteArray()[B
    .locals 14

    .line 36
    invoke-virtual {p0}, Lcom/huawei/device/connectivitychrlog/ChrLogBaseModel;->getTotalBytes()I

    move-result v0

    .line 38
    .local v0, "totalLength":I
    new-array v1, v0, [B

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 40
    .local v1, "bytebuf":Ljava/nio/ByteBuffer;
    iget-object v2, p0, Lcom/huawei/device/connectivitychrlog/ChrLogBaseModel;->fieldMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 41
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    iget-object v3, p0, Lcom/huawei/device/connectivitychrlog/ChrLogBaseModel;->lengthMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 43
    .local v3, "lenthIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 45
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 46
    .local v4, "entry":Ljava/util/Map$Entry;
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 48
    .local v5, "lengthEntry":Ljava/util/Map$Entry;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    .line 49
    .local v6, "key":Ljava/lang/Object;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 52
    .local v7, "lengthKey":I
    const/4 v8, -0x1

    if-nez v6, :cond_2

    .line 53
    const/4 v9, 0x1

    if-ne v7, v9, :cond_0

    .line 54
    :try_start_0
    invoke-virtual {v1, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto/16 :goto_3

    .line 55
    :cond_0
    const/4 v9, 0x2

    if-ne v7, v9, :cond_1

    .line 56
    invoke-static {v8}, Lcom/huawei/device/connectivitychrlog/ByteConvert;->shortToBytes(S)[B

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto/16 :goto_3

    .line 58
    :cond_1
    iget-object v8, p0, Lcom/huawei/device/connectivitychrlog/ChrLogBaseModel;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "toByteArray exception, invalid class key length  = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/huawei/device/connectivitychrlog/ChrLog;->chrLogE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 60
    :cond_2
    instance-of v9, v6, Ljava/util/ArrayList;

    const/4 v10, 0x0

    if-eqz v9, :cond_4

    .line 61
    move-object v9, v6

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_3

    .line 62
    move-object v8, v6

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    int-to-short v8, v8

    invoke-static {v8}, Lcom/huawei/device/connectivitychrlog/ByteConvert;->shortToBytes(S)[B

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 64
    :cond_3
    invoke-static {v8}, Lcom/huawei/device/connectivitychrlog/ByteConvert;->shortToBytes(S)[B

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 67
    :goto_1
    move-object v8, v6

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 68
    .local v9, "item":Ljava/lang/Object;
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    const-string v12, "toByteArray"

    new-array v13, v10, [Ljava/lang/Class;

    invoke-virtual {v11, v12, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    .line 69
    .local v11, "method":Ljava/lang/reflect/Method;
    new-array v12, v10, [Ljava/lang/Object;

    invoke-virtual {v11, v9, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [B

    invoke-virtual {v1, v12}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 70
    .end local v9    # "item":Ljava/lang/Object;
    .end local v11    # "method":Ljava/lang/reflect/Method;
    goto :goto_2

    .line 72
    :cond_4
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-string v9, "toByteArray"

    new-array v11, v10, [Ljava/lang/Class;

    invoke-virtual {v8, v9, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 73
    .local v8, "method":Ljava/lang/reflect/Method;
    new-array v9, v10, [Ljava/lang/Object;

    invoke-virtual {v8, v6, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [B

    invoke-virtual {v1, v9}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .end local v8    # "method":Ljava/lang/reflect/Method;
    :cond_5
    :goto_3
    goto :goto_4

    .line 75
    :catch_0
    move-exception v8

    .line 77
    .local v8, "e":Ljava/lang/Exception;
    iget-object v9, p0, Lcom/huawei/device/connectivitychrlog/ChrLogBaseModel;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "toByteArray exception"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/huawei/device/connectivitychrlog/ChrLog;->chrLogE(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .end local v4    # "entry":Ljava/util/Map$Entry;
    .end local v5    # "lengthEntry":Ljava/util/Map$Entry;
    .end local v6    # "key":Ljava/lang/Object;
    .end local v7    # "lengthKey":I
    .end local v8    # "e":Ljava/lang/Exception;
    :goto_4
    goto/16 :goto_0

    .line 81
    :cond_6
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    return-object v4
.end method
