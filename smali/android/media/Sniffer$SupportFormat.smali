.class public final enum Landroid/media/Sniffer$SupportFormat;
.super Ljava/lang/Enum;
.source "Sniffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/Sniffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SupportFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/media/Sniffer$SupportFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/media/Sniffer$SupportFormat;

.field public static final enum AAC:Landroid/media/Sniffer$SupportFormat;

.field public static final enum APE:Landroid/media/Sniffer$SupportFormat;

.field public static final enum FLAC:Landroid/media/Sniffer$SupportFormat;

.field public static final enum M4A:Landroid/media/Sniffer$SupportFormat;

.field public static final enum MP3:Landroid/media/Sniffer$SupportFormat;


# instance fields
.field private ext:Ljava/lang/String;

.field private validMimes:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 236
    new-instance v0, Landroid/media/Sniffer$SupportFormat;

    const-string v1, "AAC"

    const-string v2, "aac"

    const-string v3, "audio/aac-adts"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Landroid/media/Sniffer$SupportFormat;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Landroid/media/Sniffer$SupportFormat;->AAC:Landroid/media/Sniffer$SupportFormat;

    .line 238
    new-instance v0, Landroid/media/Sniffer$SupportFormat;

    const-string v1, "APE"

    const-string v2, "ape"

    const-string v3, "audio/ape"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    invoke-direct {v0, v1, v5, v2, v3}, Landroid/media/Sniffer$SupportFormat;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Landroid/media/Sniffer$SupportFormat;->APE:Landroid/media/Sniffer$SupportFormat;

    .line 240
    new-instance v0, Landroid/media/Sniffer$SupportFormat;

    const-string v1, "FLAC"

    const-string v2, "flac"

    const-string v3, "audio/flac"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x2

    invoke-direct {v0, v1, v6, v2, v3}, Landroid/media/Sniffer$SupportFormat;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Landroid/media/Sniffer$SupportFormat;->FLAC:Landroid/media/Sniffer$SupportFormat;

    .line 242
    new-instance v0, Landroid/media/Sniffer$SupportFormat;

    const-string v1, "MP3"

    const-string v2, "mp3"

    const-string v3, "audio/mpeg"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x3

    invoke-direct {v0, v1, v7, v2, v3}, Landroid/media/Sniffer$SupportFormat;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Landroid/media/Sniffer$SupportFormat;->MP3:Landroid/media/Sniffer$SupportFormat;

    .line 244
    new-instance v0, Landroid/media/Sniffer$SupportFormat;

    const-string v1, "M4A"

    const-string v2, "m4a"

    const-string v3, "audio/mp4"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x4

    invoke-direct {v0, v1, v8, v2, v3}, Landroid/media/Sniffer$SupportFormat;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Landroid/media/Sniffer$SupportFormat;->M4A:Landroid/media/Sniffer$SupportFormat;

    .line 234
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/media/Sniffer$SupportFormat;

    sget-object v1, Landroid/media/Sniffer$SupportFormat;->AAC:Landroid/media/Sniffer$SupportFormat;

    aput-object v1, v0, v4

    sget-object v1, Landroid/media/Sniffer$SupportFormat;->APE:Landroid/media/Sniffer$SupportFormat;

    aput-object v1, v0, v5

    sget-object v1, Landroid/media/Sniffer$SupportFormat;->FLAC:Landroid/media/Sniffer$SupportFormat;

    aput-object v1, v0, v6

    sget-object v1, Landroid/media/Sniffer$SupportFormat;->MP3:Landroid/media/Sniffer$SupportFormat;

    aput-object v1, v0, v7

    sget-object v1, Landroid/media/Sniffer$SupportFormat;->M4A:Landroid/media/Sniffer$SupportFormat;

    aput-object v1, v0, v8

    sput-object v0, Landroid/media/Sniffer$SupportFormat;->$VALUES:[Landroid/media/Sniffer$SupportFormat;

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p3, "suffix"    # Ljava/lang/String;
    .param p4, "validMimes"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 250
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 251
    iput-object p3, p0, Landroid/media/Sniffer$SupportFormat;->ext:Ljava/lang/String;

    .line 252
    iput-object p4, p0, Landroid/media/Sniffer$SupportFormat;->validMimes:[Ljava/lang/String;

    .line 253
    return-void
.end method

.method public static getRealExt(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "mime"    # Ljava/lang/String;

    .line 263
    invoke-static {}, Landroid/media/Sniffer$SupportFormat;->values()[Landroid/media/Sniffer$SupportFormat;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 264
    .local v4, "format":Landroid/media/Sniffer$SupportFormat;
    iget-object v5, v4, Landroid/media/Sniffer$SupportFormat;->validMimes:[Ljava/lang/String;

    array-length v6, v5

    move v7, v2

    :goto_1
    if-ge v7, v6, :cond_1

    aget-object v8, v5, v7

    .line 265
    .local v8, "validmime":Ljava/lang/String;
    invoke-virtual {v8, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 266
    iget-object v0, v4, Landroid/media/Sniffer$SupportFormat;->ext:Ljava/lang/String;

    return-object v0

    .line 264
    .end local v8    # "validmime":Ljava/lang/String;
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 263
    .end local v4    # "format":Landroid/media/Sniffer$SupportFormat;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 270
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public static isSupportExt(Ljava/lang/String;)Z
    .locals 6
    .param p0, "inputExt"    # Ljava/lang/String;

    .line 280
    invoke-static {}, Landroid/media/Sniffer$SupportFormat;->values()[Landroid/media/Sniffer$SupportFormat;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 281
    .local v4, "format":Landroid/media/Sniffer$SupportFormat;
    iget-object v5, v4, Landroid/media/Sniffer$SupportFormat;->ext:Ljava/lang/String;

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 282
    const/4 v0, 0x1

    return v0

    .line 280
    .end local v4    # "format":Landroid/media/Sniffer$SupportFormat;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 285
    :cond_1
    return v2
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/media/Sniffer$SupportFormat;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 234
    const-class v0, Landroid/media/Sniffer$SupportFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/media/Sniffer$SupportFormat;

    return-object v0
.end method

.method public static values()[Landroid/media/Sniffer$SupportFormat;
    .locals 1

    .line 234
    sget-object v0, Landroid/media/Sniffer$SupportFormat;->$VALUES:[Landroid/media/Sniffer$SupportFormat;

    invoke-virtual {v0}, [Landroid/media/Sniffer$SupportFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/media/Sniffer$SupportFormat;

    return-object v0
.end method
