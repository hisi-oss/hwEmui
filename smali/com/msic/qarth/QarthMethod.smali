.class public Lcom/msic/qarth/QarthMethod;
.super Ljava/lang/Object;
.source "QarthMethod.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static disFilesSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected className:Ljava/lang/String;

.field private disabled:Z

.field private mQC:Lcom/msic/qarth/QarthContext;

.field protected name:Ljava/lang/String;

.field protected parameterTypes:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field protected recordProcessUtil:Lcom/msic/qarth/RecordProcessUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const-class v0, Lcom/msic/qarth/QarthMethod;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/msic/qarth/QarthMethod;->TAG:Ljava/lang/String;

    .line 18
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/msic/qarth/QarthMethod;->disFilesSet:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/msic/qarth/QarthMethod;->mQC:Lcom/msic/qarth/QarthContext;

    return-void
.end method

.method private native hookMethod(Ljava/lang/reflect/Member;Ljava/lang/Class;ILjava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Member;",
            "Ljava/lang/Class<",
            "*>;I",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation
.end method

.method public static hookedMethodCallback(Ljava/lang/reflect/Member;Ljava/lang/reflect/Member;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p0, "method"    # Ljava/lang/reflect/Member;
    .param p1, "caller"    # Ljava/lang/reflect/Member;
    .param p2, "additionalInfoObj"    # Ljava/lang/Object;
    .param p3, "thisObject"    # Ljava/lang/Object;
    .param p4, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 36
    sget-object v0, Lcom/msic/qarth/QarthMethod;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hookedMethodCallback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/msic/qarth/QarthLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    move-object v0, p2

    check-cast v0, Lcom/msic/qarth/QarthMethod;

    .line 38
    .local v0, "m":Lcom/msic/qarth/QarthMethod;
    invoke-direct {v0, p0, p3, p4}, Lcom/msic/qarth/QarthMethod;->invokeInternal(Ljava/lang/reflect/Member;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method private invokeInternal(Ljava/lang/reflect/Member;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "method"    # Ljava/lang/reflect/Member;
    .param p2, "thiz"    # Ljava/lang/Object;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 44
    sget-object v0, Lcom/msic/qarth/QarthMethod;->TAG:Ljava/lang/String;

    const-string v1, "invokeInternal"

    invoke-static {v0, v1}, Lcom/msic/qarth/QarthLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const/4 v0, 0x0

    .line 47
    .local v0, "o":Ljava/lang/Object;
    iget-boolean v1, p0, Lcom/msic/qarth/QarthMethod;->disabled:Z

    if-eqz v1, :cond_0

    .line 48
    invoke-static {p1, p2, p3}, Lcom/msic/qarth/QarthMethod;->invokeOriginalMethod(Ljava/lang/reflect/Member;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/msic/qarth/QarthMethod;->invoke(Ljava/lang/reflect/Member;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 51
    iget-object v1, p0, Lcom/msic/qarth/QarthMethod;->recordProcessUtil:Lcom/msic/qarth/RecordProcessUtil;

    invoke-virtual {v1}, Lcom/msic/qarth/RecordProcessUtil;->createInvokeFileSuccess()V

    .line 54
    :goto_0
    return-object v0
.end method

.method private static native invokeOriginalMethod(Ljava/lang/reflect/Member;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation
.end method


# virtual methods
.method public disable()Z
    .locals 1

    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/msic/qarth/QarthMethod;->disabled:Z

    .line 121
    return v0
.end method

.method public hook(Lcom/msic/qarth/QarthContext;)Z
    .locals 2
    .param p1, "qc"    # Lcom/msic/qarth/QarthContext;

    .line 66
    sget-object v0, Lcom/msic/qarth/QarthMethod;->TAG:Ljava/lang/String;

    const-string v1, "QarthMethod: hook QarthContext and update status file to loading."

    invoke-static {v0, v1}, Lcom/msic/qarth/QarthLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v0, p1, Lcom/msic/qarth/QarthContext;->recordProcessUtil:Lcom/msic/qarth/RecordProcessUtil;

    iput-object v0, p0, Lcom/msic/qarth/QarthMethod;->recordProcessUtil:Lcom/msic/qarth/RecordProcessUtil;

    .line 69
    iget-object v0, p0, Lcom/msic/qarth/QarthMethod;->recordProcessUtil:Lcom/msic/qarth/RecordProcessUtil;

    invoke-virtual {v0}, Lcom/msic/qarth/RecordProcessUtil;->updateRecordFileLoading()V

    .line 71
    iput-object p1, p0, Lcom/msic/qarth/QarthMethod;->mQC:Lcom/msic/qarth/QarthContext;

    .line 73
    iget-object v0, p1, Lcom/msic/qarth/QarthContext;->qarthClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {p0, v0}, Lcom/msic/qarth/QarthMethod;->hook(Ljava/lang/ClassLoader;)Z

    move-result v0

    return v0
.end method

.method public hook(Ljava/lang/ClassLoader;)Z
    .locals 7
    .param p1, "cl"    # Ljava/lang/ClassLoader;

    .line 80
    sget-object v0, Lcom/msic/qarth/QarthMethod;->TAG:Ljava/lang/String;

    const-string v1, "QarthMethod: hook"

    invoke-static {v0, v1}, Lcom/msic/qarth/QarthLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const/4 v0, 0x0

    .line 82
    .local v0, "hookMethod":Ljava/lang/reflect/Member;
    const/4 v1, 0x0

    .line 84
    .local v1, "targetClass":Ljava/lang/Class;
    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/msic/qarth/QarthMethod;->className:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    move-object v1, v3

    .line 86
    if-nez v1, :cond_0

    .line 87
    sget-object v3, Lcom/msic/qarth/QarthMethod;->TAG:Ljava/lang/String;

    const-string v4, "cannot find target class and update status file to class_err."

    invoke-static {v3, v4}, Lcom/msic/qarth/QarthLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v3, p0, Lcom/msic/qarth/QarthMethod;->recordProcessUtil:Lcom/msic/qarth/RecordProcessUtil;

    iget-object v4, p0, Lcom/msic/qarth/QarthMethod;->recordProcessUtil:Lcom/msic/qarth/RecordProcessUtil;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/msic/qarth/RecordProcessUtil;->updateRecordFileHookStatus(I)V

    .line 89
    return v2

    .line 91
    :cond_0
    const-string v3, "<init>"

    iget-object v4, p0, Lcom/msic/qarth/QarthMethod;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/msic/qarth/QarthMethod;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 94
    :cond_1
    iget-object v3, p0, Lcom/msic/qarth/QarthMethod;->name:Ljava/lang/String;

    iget-object v4, p0, Lcom/msic/qarth/QarthMethod;->parameterTypes:[Ljava/lang/Class;

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    move-object v0, v3

    goto :goto_1

    .line 92
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/msic/qarth/QarthMethod;->parameterTypes:[Ljava/lang/Class;

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    goto :goto_1

    .line 98
    :catch_0
    move-exception v3

    .line 99
    .local v3, "e":Ljava/lang/NoSuchMethodException;
    sget-object v4, Lcom/msic/qarth/QarthMethod;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ClassNotFoundException"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/msic/qarth/QarthLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .end local v3    # "e":Ljava/lang/NoSuchMethodException;
    goto :goto_2

    .line 96
    :catch_1
    move-exception v3

    .line 97
    .local v3, "e":Ljava/lang/ClassNotFoundException;
    sget-object v4, Lcom/msic/qarth/QarthMethod;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ClassNotFoundException"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/msic/qarth/QarthLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .end local v3    # "e":Ljava/lang/ClassNotFoundException;
    :goto_1
    nop

    .line 101
    :goto_2
    sget-object v3, Lcom/msic/qarth/QarthMethod;->TAG:Ljava/lang/String;

    const-string v4, "QarthMethod: hook2"

    invoke-static {v3, v4}, Lcom/msic/qarth/QarthLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    if-nez v0, :cond_3

    .line 103
    sget-object v3, Lcom/msic/qarth/QarthMethod;->TAG:Ljava/lang/String;

    const-string v4, "cannot find target method and update status file to method_err."

    invoke-static {v3, v4}, Lcom/msic/qarth/QarthLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v3, p0, Lcom/msic/qarth/QarthMethod;->recordProcessUtil:Lcom/msic/qarth/RecordProcessUtil;

    iget-object v4, p0, Lcom/msic/qarth/QarthMethod;->recordProcessUtil:Lcom/msic/qarth/RecordProcessUtil;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/msic/qarth/RecordProcessUtil;->updateRecordFileHookStatus(I)V

    .line 105
    return v2

    .line 107
    :cond_3
    sget-object v3, Lcom/msic/qarth/QarthMethod;->TAG:Ljava/lang/String;

    const-string v4, "QarthMethod: hook3"

    invoke-static {v3, v4}, Lcom/msic/qarth/QarthLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-direct {p0, v0, v1, v2, p0}, Lcom/msic/qarth/QarthMethod;->hookMethod(Ljava/lang/reflect/Member;Ljava/lang/Class;ILjava/lang/Object;)I

    move-result v3

    .line 110
    .local v3, "isHook":I
    sget-object v4, Lcom/msic/qarth/QarthMethod;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "QarthMethod: hook result is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " and update status file."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/msic/qarth/QarthLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object v4, p0, Lcom/msic/qarth/QarthMethod;->recordProcessUtil:Lcom/msic/qarth/RecordProcessUtil;

    invoke-virtual {v4, v3}, Lcom/msic/qarth/RecordProcessUtil;->updateRecordFileHookStatus(I)V

    .line 113
    iget-object v4, p0, Lcom/msic/qarth/QarthMethod;->recordProcessUtil:Lcom/msic/qarth/RecordProcessUtil;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v3, :cond_4

    const/4 v2, 0x1

    nop

    :cond_4
    return v2
.end method

.method protected invoke(Ljava/lang/reflect/Member;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "method"    # Ljava/lang/reflect/Member;
    .param p2, "thiz"    # Ljava/lang/Object;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 58
    sget-object v0, Lcom/msic/qarth/QarthMethod;->TAG:Ljava/lang/String;

    const-string v1, "invoke"

    invoke-static {v0, v1}, Lcom/msic/qarth/QarthLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-static {p1, p2, p3}, Lcom/msic/qarth/QarthMethod;->invokeOriginalMethod(Ljava/lang/reflect/Member;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
