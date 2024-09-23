.class public Lcom/huawei/utils/reflect/EasyInvokeUtils;
.super Ljava/lang/Object;
.source "EasyInvokeUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EasyInvokeUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-direct {p0}, Lcom/huawei/utils/reflect/EasyInvokeUtils;->loadReflectMethods()V

    .line 21
    return-void
.end method

.method private loadGetFieldInfo(Ljava/lang/reflect/Method;Lcom/huawei/utils/reflect/annotation/GetField;)V
    .locals 7
    .param p1, "m"    # Ljava/lang/reflect/Method;
    .param p2, "targetFieldInfo"    # Lcom/huawei/utils/reflect/annotation/GetField;

    .line 68
    if-eqz p2, :cond_3

    .line 69
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    .line 70
    .local v0, "originParams":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v1, v0

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    .line 71
    const-string v1, "EasyInvokeUtils"

    const-string v3, "no target class"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_0
    const/4 v1, 0x0

    aget-object v1, v0, v1

    .line 74
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface {p2}, Lcom/huawei/utils/reflect/annotation/GetField;->fieldName()Ljava/lang/String;

    move-result-object v3

    .line 75
    .local v3, "fieldName":Ljava/lang/String;
    invoke-interface {p2}, Lcom/huawei/utils/reflect/annotation/GetField;->fieldObject()Ljava/lang/String;

    move-result-object v4

    .line 77
    .local v4, "fieldObjectName":Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2

    .line 78
    :cond_1
    move-object v3, v4

    .line 79
    const-string v5, "EasyInvokeUtils"

    const-string v6, "no target fieldName"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_2
    :try_start_0
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 85
    .local v5, "targetFiled":Ljava/lang/reflect/Field;
    invoke-virtual {v5, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 86
    invoke-direct {p0, p1, v5, p2}, Lcom/huawei/utils/reflect/EasyInvokeUtils;->setFieldObject(Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Lcom/huawei/utils/reflect/annotation/GetField;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 89
    .end local v5    # "targetFiled":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v2

    .line 90
    .local v2, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v2}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    .end local v0    # "originParams":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "e":Ljava/lang/NoSuchFieldException;
    .end local v3    # "fieldName":Ljava/lang/String;
    .end local v4    # "fieldObjectName":Ljava/lang/String;
    goto :goto_1

    .line 87
    .restart local v0    # "originParams":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v3    # "fieldName":Ljava/lang/String;
    .restart local v4    # "fieldObjectName":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 88
    .local v2, "e":Ljava/lang/SecurityException;
    invoke-virtual {v2}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 91
    .end local v0    # "originParams":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "e":Ljava/lang/SecurityException;
    .end local v3    # "fieldName":Ljava/lang/String;
    .end local v4    # "fieldObjectName":Ljava/lang/String;
    :goto_0
    nop

    .line 93
    :cond_3
    :goto_1
    return-void
.end method

.method private loadInvokeMethodInfo(Ljava/lang/reflect/Method;Lcom/huawei/utils/reflect/annotation/InvokeMethod;)V
    .locals 6
    .param p1, "m"    # Ljava/lang/reflect/Method;
    .param p2, "targetMethodInfo"    # Lcom/huawei/utils/reflect/annotation/InvokeMethod;

    .line 41
    if-eqz p2, :cond_4

    .line 42
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    .line 43
    .local v0, "originParams":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 44
    .local v1, "targetParams":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v2, v0

    const/4 v3, 0x1

    if-ge v2, v3, :cond_0

    .line 45
    const-string v2, "EasyInvokeUtils"

    const-string v4, "no target class"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :cond_0
    const/4 v2, 0x0

    aget-object v2, v0, v2

    .line 48
    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    array-length v4, v0

    if-le v4, v3, :cond_1

    .line 49
    array-length v4, v0

    invoke-static {v0, v3, v4}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    check-cast v1, [Ljava/lang/Class;

    .line 52
    :cond_1
    :try_start_0
    invoke-interface {p2}, Lcom/huawei/utils/reflect/annotation/InvokeMethod;->methodName()Ljava/lang/String;

    move-result-object v4

    .line 53
    .local v4, "targetMethodName":Ljava/lang/String;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_3

    .line 54
    :cond_2
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 56
    :cond_3
    invoke-virtual {v2, v4, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 57
    .local v5, "targetMethod":Ljava/lang/reflect/Method;
    invoke-virtual {v5, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 58
    invoke-direct {p0, p1, v5, p2}, Lcom/huawei/utils/reflect/EasyInvokeUtils;->setMethodObject(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lcom/huawei/utils/reflect/annotation/InvokeMethod;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4    # "targetMethodName":Ljava/lang/String;
    .end local v5    # "targetMethod":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 61
    :catch_0
    move-exception v3

    .line 62
    .local v3, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v3}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .end local v0    # "originParams":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v1    # "targetParams":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "e":Ljava/lang/NoSuchMethodException;
    goto :goto_1

    .line 59
    .restart local v0    # "originParams":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v1    # "targetParams":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1
    move-exception v3

    .line 60
    .local v3, "e":Ljava/lang/SecurityException;
    invoke-virtual {v3}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 63
    .end local v0    # "originParams":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v1    # "targetParams":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "e":Ljava/lang/SecurityException;
    :goto_0
    nop

    .line 65
    :cond_4
    :goto_1
    return-void
.end method

.method private loadReflectMethods()V
    .locals 8

    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    .line 25
    .local v0, "methods":[Ljava/lang/reflect/Method;
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    .line 26
    .local v4, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v5

    .line 27
    .local v5, "annotations":[Ljava/lang/annotation/Annotation;
    if-eqz v5, :cond_2

    array-length v6, v5

    if-lez v6, :cond_2

    .line 28
    aget-object v6, v5, v2

    .line 29
    .local v6, "target":Ljava/lang/annotation/Annotation;
    instance-of v7, v6, Lcom/huawei/utils/reflect/annotation/InvokeMethod;

    if-eqz v7, :cond_0

    .line 30
    move-object v7, v6

    check-cast v7, Lcom/huawei/utils/reflect/annotation/InvokeMethod;

    invoke-direct {p0, v4, v7}, Lcom/huawei/utils/reflect/EasyInvokeUtils;->loadInvokeMethodInfo(Ljava/lang/reflect/Method;Lcom/huawei/utils/reflect/annotation/InvokeMethod;)V

    goto :goto_1

    .line 31
    :cond_0
    instance-of v7, v6, Lcom/huawei/utils/reflect/annotation/GetField;

    if-eqz v7, :cond_1

    .line 32
    move-object v7, v6

    check-cast v7, Lcom/huawei/utils/reflect/annotation/GetField;

    invoke-direct {p0, v4, v7}, Lcom/huawei/utils/reflect/EasyInvokeUtils;->loadGetFieldInfo(Ljava/lang/reflect/Method;Lcom/huawei/utils/reflect/annotation/GetField;)V

    goto :goto_1

    .line 33
    :cond_1
    instance-of v7, v6, Lcom/huawei/utils/reflect/annotation/SetField;

    if-eqz v7, :cond_2

    .line 34
    move-object v7, v6

    check-cast v7, Lcom/huawei/utils/reflect/annotation/SetField;

    invoke-direct {p0, v4, v7}, Lcom/huawei/utils/reflect/EasyInvokeUtils;->loadSetFieldInfo(Ljava/lang/reflect/Method;Lcom/huawei/utils/reflect/annotation/SetField;)V

    .line 25
    .end local v4    # "m":Ljava/lang/reflect/Method;
    .end local v5    # "annotations":[Ljava/lang/annotation/Annotation;
    .end local v6    # "target":Ljava/lang/annotation/Annotation;
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 38
    :cond_3
    return-void
.end method

.method private loadSetFieldInfo(Ljava/lang/reflect/Method;Lcom/huawei/utils/reflect/annotation/SetField;)V
    .locals 7
    .param p1, "m"    # Ljava/lang/reflect/Method;
    .param p2, "targetFieldInfo"    # Lcom/huawei/utils/reflect/annotation/SetField;

    .line 96
    if-eqz p2, :cond_3

    .line 97
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    .line 98
    .local v0, "originParams":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v1, v0

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    .line 99
    const-string v1, "EasyInvokeUtils"

    const-string v2, "no target class"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    return-void

    .line 104
    :cond_0
    const/4 v1, 0x0

    aget-object v1, v0, v1

    .line 105
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface {p2}, Lcom/huawei/utils/reflect/annotation/SetField;->fieldName()Ljava/lang/String;

    move-result-object v3

    .line 106
    .local v3, "fieldName":Ljava/lang/String;
    invoke-interface {p2}, Lcom/huawei/utils/reflect/annotation/SetField;->fieldObject()Ljava/lang/String;

    move-result-object v4

    .line 108
    .local v4, "fieldObjectName":Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2

    .line 109
    :cond_1
    move-object v3, v4

    .line 110
    const-string v5, "EasyInvokeUtils"

    const-string v6, "no target fieldName"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_2
    :try_start_0
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 116
    .local v5, "targetFiled":Ljava/lang/reflect/Field;
    invoke-virtual {v5, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 117
    invoke-direct {p0, p1, v5, p2}, Lcom/huawei/utils/reflect/EasyInvokeUtils;->setFieldObject(Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Lcom/huawei/utils/reflect/annotation/SetField;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 120
    .end local v5    # "targetFiled":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v2

    .line 121
    .local v2, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v2}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    .end local v0    # "originParams":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "e":Ljava/lang/NoSuchFieldException;
    .end local v3    # "fieldName":Ljava/lang/String;
    .end local v4    # "fieldObjectName":Ljava/lang/String;
    goto :goto_1

    .line 118
    .restart local v0    # "originParams":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v3    # "fieldName":Ljava/lang/String;
    .restart local v4    # "fieldObjectName":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 119
    .local v2, "e":Ljava/lang/SecurityException;
    invoke-virtual {v2}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 122
    .end local v0    # "originParams":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "e":Ljava/lang/SecurityException;
    .end local v3    # "fieldName":Ljava/lang/String;
    .end local v4    # "fieldObjectName":Ljava/lang/String;
    :goto_0
    nop

    .line 124
    :cond_3
    :goto_1
    return-void
.end method

.method private setFieldObject(Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Lcom/huawei/utils/reflect/annotation/GetField;)V
    .locals 2
    .param p1, "m"    # Ljava/lang/reflect/Method;
    .param p2, "targetField"    # Ljava/lang/reflect/Field;
    .param p3, "targetFieldInfo"    # Lcom/huawei/utils/reflect/annotation/GetField;

    .line 127
    if-eqz p3, :cond_2

    .line 128
    invoke-interface {p3}, Lcom/huawei/utils/reflect/annotation/GetField;->fieldObject()Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "fieldName":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 130
    :cond_0
    invoke-interface {p3}, Lcom/huawei/utils/reflect/annotation/GetField;->fieldName()Ljava/lang/String;

    move-result-object v0

    .line 132
    :cond_1
    invoke-direct {p0, p1, p2, v0}, Lcom/huawei/utils/reflect/EasyInvokeUtils;->setFieldObject(Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/String;)V

    .line 133
    return-void

    .line 136
    .end local v0    # "fieldName":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private setFieldObject(Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Lcom/huawei/utils/reflect/annotation/SetField;)V
    .locals 2
    .param p1, "m"    # Ljava/lang/reflect/Method;
    .param p2, "targetField"    # Ljava/lang/reflect/Field;
    .param p3, "targetFieldInfo"    # Lcom/huawei/utils/reflect/annotation/SetField;

    .line 139
    if-eqz p3, :cond_2

    .line 140
    invoke-interface {p3}, Lcom/huawei/utils/reflect/annotation/SetField;->fieldObject()Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, "fieldName":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 142
    :cond_0
    invoke-interface {p3}, Lcom/huawei/utils/reflect/annotation/SetField;->fieldName()Ljava/lang/String;

    move-result-object v0

    .line 144
    :cond_1
    invoke-direct {p0, p1, p2, v0}, Lcom/huawei/utils/reflect/EasyInvokeUtils;->setFieldObject(Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/String;)V

    .line 145
    return-void

    .line 148
    .end local v0    # "fieldName":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private setFieldObject(Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/String;)V
    .locals 3
    .param p1, "m"    # Ljava/lang/reflect/Method;
    .param p2, "targetFiled"    # Ljava/lang/reflect/Field;
    .param p3, "fieldName"    # Ljava/lang/String;

    .line 151
    new-instance v0, Lcom/huawei/utils/reflect/FieldObject;

    invoke-direct {v0}, Lcom/huawei/utils/reflect/FieldObject;-><init>()V

    .line 152
    .local v0, "fieldObject":Lcom/huawei/utils/reflect/FieldObject;
    iput-object p2, v0, Lcom/huawei/utils/reflect/FieldObject;->field:Ljava/lang/reflect/Field;

    .line 154
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 155
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 156
    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "field":Ljava/lang/reflect/Field;
    goto :goto_0

    .line 163
    :catch_0
    move-exception v1

    .line 164
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_1

    .line 161
    :catch_1
    move-exception v1

    .line 162
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_0

    .line 159
    :catch_2
    move-exception v1

    .line 160
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v1}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/NoSuchFieldException;
    goto :goto_0

    .line 157
    :catch_3
    move-exception v1

    .line 158
    .local v1, "e":Ljava/lang/SecurityException;
    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 165
    .end local v1    # "e":Ljava/lang/SecurityException;
    :goto_0
    nop

    .line 166
    :goto_1
    return-void
.end method

.method private setMethodObject(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lcom/huawei/utils/reflect/annotation/InvokeMethod;)V
    .locals 3
    .param p1, "m"    # Ljava/lang/reflect/Method;
    .param p2, "targetMethod"    # Ljava/lang/reflect/Method;
    .param p3, "targetMethodInfo"    # Lcom/huawei/utils/reflect/annotation/InvokeMethod;

    .line 169
    invoke-interface {p3}, Lcom/huawei/utils/reflect/annotation/InvokeMethod;->methodObject()Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, "methodObjectName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 172
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 173
    new-instance v2, Lcom/huawei/utils/reflect/MethodObject;

    invoke-direct {v2}, Lcom/huawei/utils/reflect/MethodObject;-><init>()V

    .line 174
    .local v2, "methodObject":Lcom/huawei/utils/reflect/MethodObject;
    iput-object p2, v2, Lcom/huawei/utils/reflect/MethodObject;->method:Ljava/lang/reflect/Method;

    .line 175
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v2    # "methodObject":Lcom/huawei/utils/reflect/MethodObject;
    goto :goto_0

    .line 182
    :catch_0
    move-exception v1

    .line 183
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_1

    .line 180
    :catch_1
    move-exception v1

    .line 181
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_0

    .line 178
    :catch_2
    move-exception v1

    .line 179
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v1}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/NoSuchFieldException;
    goto :goto_0

    .line 176
    :catch_3
    move-exception v1

    .line 177
    .local v1, "e":Ljava/lang/SecurityException;
    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 184
    .end local v1    # "e":Ljava/lang/SecurityException;
    :goto_0
    nop

    .line 185
    :goto_1
    return-void
.end method


# virtual methods
.method protected getField(Lcom/huawei/utils/reflect/FieldObject;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p2, "target"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/huawei/utils/reflect/FieldObject<",
            "TT;>;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 210
    .local p1, "filedObject":Lcom/huawei/utils/reflect/FieldObject;, "Lcom/huawei/utils/reflect/FieldObject<TT;>;"
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object v1, p1, Lcom/huawei/utils/reflect/FieldObject;->field:Ljava/lang/reflect/Field;

    if-nez v1, :cond_0

    goto :goto_1

    .line 218
    :cond_0
    :try_start_0
    iget-object v1, p1, Lcom/huawei/utils/reflect/FieldObject;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 221
    :catch_0
    move-exception v1

    .line 222
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_0

    .line 219
    :catch_1
    move-exception v1

    .line 220
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 223
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    nop

    .line 224
    :goto_0
    return-object v0

    .line 211
    :cond_1
    :goto_1
    const-string v1, "EasyInvokeUtils"

    const-string v2, "field is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    return-object v0
.end method

.method protected varargs invokeMethod(Lcom/huawei/utils/reflect/MethodObject;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p2, "target"    # Ljava/lang/Object;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/huawei/utils/reflect/MethodObject<",
            "TT;>;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 191
    .local p1, "methodObject":Lcom/huawei/utils/reflect/MethodObject;, "Lcom/huawei/utils/reflect/MethodObject<TT;>;"
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object v1, p1, Lcom/huawei/utils/reflect/MethodObject;->method:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    goto :goto_2

    .line 198
    :cond_0
    :try_start_0
    iget-object v1, p1, Lcom/huawei/utils/reflect/MethodObject;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v1, p2, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 203
    :catch_0
    move-exception v1

    .line 204
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    goto :goto_1

    .line 201
    :catch_1
    move-exception v1

    .line 202
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_0

    .line 199
    :catch_2
    move-exception v1

    .line 200
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 205
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    nop

    .line 206
    :goto_1
    return-object v0

    .line 192
    :cond_1
    :goto_2
    const-string v1, "EasyInvokeUtils"

    const-string v2, "method is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    return-object v0
.end method

.method protected setField(Lcom/huawei/utils/reflect/FieldObject;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "filedObject"    # Lcom/huawei/utils/reflect/FieldObject;
    .param p2, "target"    # Ljava/lang/Object;
    .param p3, "value"    # Ljava/lang/Object;

    .line 228
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/huawei/utils/reflect/FieldObject;->field:Ljava/lang/reflect/Field;

    if-nez v0, :cond_0

    goto :goto_2

    .line 235
    :cond_0
    :try_start_0
    iget-object v0, p1, Lcom/huawei/utils/reflect/FieldObject;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p2, p3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 238
    :catch_0
    move-exception v0

    .line 239
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_1

    .line 236
    :catch_1
    move-exception v0

    .line 237
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 240
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    nop

    .line 241
    :goto_1
    return-void

    .line 229
    :cond_1
    :goto_2
    const-string v0, "EasyInvokeUtils"

    const-string v1, "field is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    return-void
.end method
