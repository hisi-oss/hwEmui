.class Lcom/msic/qarth/PatchLoader$DisPatchFileObserver;
.super Landroid/os/FileObserver;
.source "PatchLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/msic/qarth/PatchLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DisPatchFileObserver"
.end annotation


# instance fields
.field private hashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/msic/qarth/PatchLoader;


# direct methods
.method public constructor <init>(Lcom/msic/qarth/PatchLoader;)V
    .locals 1

    .line 134
    iput-object p1, p0, Lcom/msic/qarth/PatchLoader$DisPatchFileObserver;->this$0:Lcom/msic/qarth/PatchLoader;

    .line 135
    const-string p1, "/data/hotpatch/fwkpatchdir/system/all"

    const/16 v0, 0x100

    invoke-direct {p0, p1, v0}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 132
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/msic/qarth/PatchLoader$DisPatchFileObserver;->hashMap:Ljava/util/HashMap;

    .line 136
    return-void
.end method

.method static synthetic access$000(Lcom/msic/qarth/PatchLoader$DisPatchFileObserver;Ljava/lang/String;Ljava/lang/reflect/Method;)V
    .locals 0
    .param p0, "x0"    # Lcom/msic/qarth/PatchLoader$DisPatchFileObserver;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/reflect/Method;

    .line 131
    invoke-direct {p0, p1, p2}, Lcom/msic/qarth/PatchLoader$DisPatchFileObserver;->addMap(Ljava/lang/String;Ljava/lang/reflect/Method;)V

    return-void
.end method

.method private addMap(Ljava/lang/String;Ljava/lang/reflect/Method;)V
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/reflect/Method;

    .line 167
    iget-object v0, p0, Lcom/msic/qarth/PatchLoader$DisPatchFileObserver;->hashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 4
    .param p1, "event"    # I
    .param p2, "path"    # Ljava/lang/String;

    .line 140
    and-int/lit16 p1, p1, 0xfff

    .line 141
    sget-boolean v0, Lcom/msic/qarth/Constants;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 142
    invoke-static {}, Lcom/msic/qarth/PatchLoader;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DisPatchFileObserver onEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/msic/qarth/QarthLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :cond_0
    and-int/lit16 v0, p1, 0x100

    if-eqz v0, :cond_3

    if-nez p2, :cond_1

    goto :goto_2

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/msic/qarth/PatchLoader$DisPatchFileObserver;->hashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 150
    iget-object v0, p0, Lcom/msic/qarth/PatchLoader$DisPatchFileObserver;->hashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    .line 152
    .local v0, "disableMethod":Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 155
    :catch_0
    move-exception v1

    .line 156
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-static {}, Lcom/msic/qarth/PatchLoader;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "IllegalAccessException"

    invoke-static {v2, v3}, Lcom/msic/qarth/QarthLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_1

    .line 153
    :catch_1
    move-exception v1

    .line 154
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-static {}, Lcom/msic/qarth/PatchLoader;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "InvocationTargetException"

    invoke-static {v2, v3}, Lcom/msic/qarth/QarthLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :goto_0
    nop

    .line 159
    :goto_1
    iget-object v1, p0, Lcom/msic/qarth/PatchLoader$DisPatchFileObserver;->hashMap:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    iget-object v1, p0, Lcom/msic/qarth/PatchLoader$DisPatchFileObserver;->hashMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 161
    invoke-virtual {p0}, Lcom/msic/qarth/PatchLoader$DisPatchFileObserver;->stopWatching()V

    .line 164
    .end local v0    # "disableMethod":Ljava/lang/reflect/Method;
    :cond_2
    return-void

    .line 146
    :cond_3
    :goto_2
    return-void
.end method
