.class synthetic Lcom/msic/qarth/RecordProcessUtil$1;
.super Ljava/lang/Object;
.source "RecordProcessUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/msic/qarth/RecordProcessUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$msic$qarth$RecordProcessUtil$RecordStatusEnum:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 185
    invoke-static {}, Lcom/msic/qarth/RecordProcessUtil$RecordStatusEnum;->values()[Lcom/msic/qarth/RecordProcessUtil$RecordStatusEnum;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/msic/qarth/RecordProcessUtil$1;->$SwitchMap$com$msic$qarth$RecordProcessUtil$RecordStatusEnum:[I

    :try_start_0
    sget-object v0, Lcom/msic/qarth/RecordProcessUtil$1;->$SwitchMap$com$msic$qarth$RecordProcessUtil$RecordStatusEnum:[I

    sget-object v1, Lcom/msic/qarth/RecordProcessUtil$RecordStatusEnum;->PATCH_STATUS_DOWNLOADED:Lcom/msic/qarth/RecordProcessUtil$RecordStatusEnum;

    invoke-virtual {v1}, Lcom/msic/qarth/RecordProcessUtil$RecordStatusEnum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    :try_start_1
    sget-object v0, Lcom/msic/qarth/RecordProcessUtil$1;->$SwitchMap$com$msic$qarth$RecordProcessUtil$RecordStatusEnum:[I

    sget-object v1, Lcom/msic/qarth/RecordProcessUtil$RecordStatusEnum;->PATCH_STATUS_LOADING:Lcom/msic/qarth/RecordProcessUtil$RecordStatusEnum;

    invoke-virtual {v1}, Lcom/msic/qarth/RecordProcessUtil$RecordStatusEnum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    :try_start_2
    sget-object v0, Lcom/msic/qarth/RecordProcessUtil$1;->$SwitchMap$com$msic$qarth$RecordProcessUtil$RecordStatusEnum:[I

    sget-object v1, Lcom/msic/qarth/RecordProcessUtil$RecordStatusEnum;->PATCH_STATUS_FAILED:Lcom/msic/qarth/RecordProcessUtil$RecordStatusEnum;

    invoke-virtual {v1}, Lcom/msic/qarth/RecordProcessUtil$RecordStatusEnum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    :goto_2
    :try_start_3
    sget-object v0, Lcom/msic/qarth/RecordProcessUtil$1;->$SwitchMap$com$msic$qarth$RecordProcessUtil$RecordStatusEnum:[I

    sget-object v1, Lcom/msic/qarth/RecordProcessUtil$RecordStatusEnum;->PATCH_STATUS_SUCCESS:Lcom/msic/qarth/RecordProcessUtil$RecordStatusEnum;

    invoke-virtual {v1}, Lcom/msic/qarth/RecordProcessUtil$RecordStatusEnum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    :goto_3
    return-void
.end method
