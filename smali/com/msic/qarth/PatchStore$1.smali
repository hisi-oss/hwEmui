.class Lcom/msic/qarth/PatchStore$1;
.super Ljava/lang/Object;
.source "PatchStore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/msic/qarth/PatchStore;->handleApplicationCrashForThirdParty(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$exceptionMessage:Ljava/lang/String;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$qarthDisFileCreator:Lcom/msic/qarth/QarthDisFileCreator;


# direct methods
.method constructor <init>(Lcom/msic/qarth/QarthDisFileCreator;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 295
    iput-object p1, p0, Lcom/msic/qarth/PatchStore$1;->val$qarthDisFileCreator:Lcom/msic/qarth/QarthDisFileCreator;

    iput-object p2, p0, Lcom/msic/qarth/PatchStore$1;->val$exceptionMessage:Ljava/lang/String;

    iput-object p3, p0, Lcom/msic/qarth/PatchStore$1;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 298
    iget-object v0, p0, Lcom/msic/qarth/PatchStore$1;->val$qarthDisFileCreator:Lcom/msic/qarth/QarthDisFileCreator;

    new-instance v1, Ljava/lang/Throwable;

    iget-object v2, p0, Lcom/msic/qarth/PatchStore$1;->val$exceptionMessage:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/msic/qarth/PatchStore$1;->val$packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/msic/qarth/QarthDisFileCreator;->disableExceptionQarthPatch(Ljava/lang/Throwable;Ljava/lang/String;)Z

    .line 299
    return-void
.end method
