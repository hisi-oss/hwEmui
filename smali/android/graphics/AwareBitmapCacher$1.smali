.class Landroid/graphics/AwareBitmapCacher$1;
.super Landroid/util/LruCache;
.source "AwareBitmapCacher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/graphics/AwareBitmapCacher;->initCache(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache<",
        "Ljava/lang/String;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/graphics/AwareBitmapCacher;


# direct methods
.method constructor <init>(Landroid/graphics/AwareBitmapCacher;I)V
    .locals 0
    .param p1, "this$0"    # Landroid/graphics/AwareBitmapCacher;
    .param p2, "x0"    # I

    .line 112
    iput-object p1, p0, Landroid/graphics/AwareBitmapCacher$1;->this$0:Landroid/graphics/AwareBitmapCacher;

    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 112
    check-cast p1, Ljava/lang/String;

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/AwareBitmapCacher$1;->sizeOf(Ljava/lang/String;Landroid/graphics/Bitmap;)I

    move-result p1

    return p1
.end method

.method protected sizeOf(Ljava/lang/String;Landroid/graphics/Bitmap;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/graphics/Bitmap;

    .line 115
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    return v0
.end method
