.class Landroid/media/hwmnote/HwMnoteReader;
.super Ljava/lang/Object;
.source "HwMnoteReader.java"


# instance fields
.field private final mInterface:Landroid/media/hwmnote/HwMnoteInterfaceImpl;


# direct methods
.method constructor <init>(Landroid/media/hwmnote/HwMnoteInterfaceImpl;)V
    .locals 0
    .param p1, "iRef"    # Landroid/media/hwmnote/HwMnoteInterfaceImpl;

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Landroid/media/hwmnote/HwMnoteReader;->mInterface:Landroid/media/hwmnote/HwMnoteInterfaceImpl;

    .line 22
    return-void
.end method


# virtual methods
.method protected read(Ljava/io/InputStream;)Landroid/media/hwmnote/HwMnoteData;
    .locals 6
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    iget-object v0, p0, Landroid/media/hwmnote/HwMnoteReader;->mInterface:Landroid/media/hwmnote/HwMnoteInterfaceImpl;

    invoke-static {p1, v0}, Landroid/media/hwmnote/HwMnoteParser;->parse(Ljava/io/InputStream;Landroid/media/hwmnote/HwMnoteInterfaceImpl;)Landroid/media/hwmnote/HwMnoteParser;

    move-result-object v0

    .line 32
    .local v0, "parser":Landroid/media/hwmnote/HwMnoteParser;
    new-instance v1, Landroid/media/hwmnote/HwMnoteData;

    invoke-virtual {v0}, Landroid/media/hwmnote/HwMnoteParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/media/hwmnote/HwMnoteData;-><init>(Ljava/nio/ByteOrder;)V

    .line 33
    .local v1, "hwMnoteData":Landroid/media/hwmnote/HwMnoteData;
    const/4 v2, 0x0

    .line 35
    .local v2, "tag":Landroid/media/hwmnote/HwMnoteTag;
    invoke-virtual {v0}, Landroid/media/hwmnote/HwMnoteParser;->next()I

    move-result v3

    .line 36
    .local v3, "event":I
    :goto_0
    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    .line 37
    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 50
    :pswitch_0
    invoke-virtual {v0}, Landroid/media/hwmnote/HwMnoteParser;->getTag()Landroid/media/hwmnote/HwMnoteTag;

    move-result-object v2

    .line 51
    invoke-virtual {v2}, Landroid/media/hwmnote/HwMnoteTag;->getDataType()S

    move-result v4

    const/4 v5, 0x7

    if-ne v4, v5, :cond_0

    .line 52
    invoke-virtual {v0, v2}, Landroid/media/hwmnote/HwMnoteParser;->readFullTagValue(Landroid/media/hwmnote/HwMnoteTag;)V

    .line 54
    :cond_0
    invoke-virtual {v2}, Landroid/media/hwmnote/HwMnoteTag;->getIfd()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/media/hwmnote/HwMnoteData;->getIfdData(I)Landroid/media/hwmnote/HwMnoteIfdData;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/media/hwmnote/HwMnoteIfdData;->setTag(Landroid/media/hwmnote/HwMnoteTag;)Landroid/media/hwmnote/HwMnoteTag;

    .line 55
    goto :goto_1

    .line 42
    :pswitch_1
    invoke-virtual {v0}, Landroid/media/hwmnote/HwMnoteParser;->getTag()Landroid/media/hwmnote/HwMnoteTag;

    move-result-object v2

    .line 43
    invoke-virtual {v2}, Landroid/media/hwmnote/HwMnoteTag;->hasValue()Z

    move-result v4

    if-nez v4, :cond_1

    .line 44
    invoke-virtual {v0, v2}, Landroid/media/hwmnote/HwMnoteParser;->registerForTagValue(Landroid/media/hwmnote/HwMnoteTag;)V

    goto :goto_1

    .line 46
    :cond_1
    invoke-virtual {v2}, Landroid/media/hwmnote/HwMnoteTag;->getIfd()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/media/hwmnote/HwMnoteData;->getIfdData(I)Landroid/media/hwmnote/HwMnoteIfdData;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/media/hwmnote/HwMnoteIfdData;->setTag(Landroid/media/hwmnote/HwMnoteTag;)Landroid/media/hwmnote/HwMnoteTag;

    .line 48
    goto :goto_1

    .line 39
    :pswitch_2
    new-instance v4, Landroid/media/hwmnote/HwMnoteIfdData;

    invoke-virtual {v0}, Landroid/media/hwmnote/HwMnoteParser;->getCurrentIfd()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/media/hwmnote/HwMnoteIfdData;-><init>(I)V

    invoke-virtual {v1, v4}, Landroid/media/hwmnote/HwMnoteData;->addIfdData(Landroid/media/hwmnote/HwMnoteIfdData;)V

    .line 40
    nop

    .line 59
    :goto_1
    invoke-virtual {v0}, Landroid/media/hwmnote/HwMnoteParser;->next()I

    move-result v3

    goto :goto_0

    .line 61
    :cond_2
    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
