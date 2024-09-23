.class public Lcom/huawei/iimagekit/blur/CPUBoxBlur;
.super Ljava/lang/Object;
.source "CPUBoxBlur.java"


# static fields
.field private static volatile instance:Lcom/huawei/iimagekit/blur/CPUBoxBlur;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/iimagekit/blur/CPUBoxBlur;->instance:Lcom/huawei/iimagekit/blur/CPUBoxBlur;

    .line 12
    sget-object v0, Lcom/huawei/iimagekit/blur/CPUBoxBlur;->instance:Lcom/huawei/iimagekit/blur/CPUBoxBlur;

    if-nez v0, :cond_0

    .line 13
    new-instance v0, Lcom/huawei/iimagekit/blur/CPUBoxBlur;

    invoke-direct {v0}, Lcom/huawei/iimagekit/blur/CPUBoxBlur;-><init>()V

    sput-object v0, Lcom/huawei/iimagekit/blur/CPUBoxBlur;->instance:Lcom/huawei/iimagekit/blur/CPUBoxBlur;

    .line 14
    :cond_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/huawei/iimagekit/blur/CPUBoxBlur;
    .locals 1

    .line 17
    sget-object v0, Lcom/huawei/iimagekit/blur/CPUBoxBlur;->instance:Lcom/huawei/iimagekit/blur/CPUBoxBlur;

    return-object v0
.end method


# virtual methods
.method public native doBlur(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)I
.end method
