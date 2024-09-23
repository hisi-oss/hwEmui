.class final enum Lcom/msic/qarth/RecordProcessUtil$RecordStatusEnum;
.super Ljava/lang/Enum;
.source "RecordProcessUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/msic/qarth/RecordProcessUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "RecordStatusEnum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/msic/qarth/RecordProcessUtil$RecordStatusEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/msic/qarth/RecordProcessUtil$RecordStatusEnum;

.field public static final enum PATCH_STATUS_DOWNLOADED:Lcom/msic/qarth/RecordProcessUtil$RecordStatusEnum;

.field public static final enum PATCH_STATUS_FAILED:Lcom/msic/qarth/RecordProcessUtil$RecordStatusEnum;

.field public static final enum PATCH_STATUS_LOADING:Lcom/msic/qarth/RecordProcessUtil$RecordStatusEnum;

.field public static final enum PATCH_STATUS_SUCCESS:Lcom/msic/qarth/RecordProcessUtil$RecordStatusEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 45
    new-instance v0, Lcom/msic/qarth/RecordProcessUtil$RecordStatusEnum;

    const-string v1, "PATCH_STATUS_DOWNLOADED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/msic/qarth/RecordProcessUtil$RecordStatusEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/msic/qarth/RecordProcessUtil$RecordStatusEnum;->PATCH_STATUS_DOWNLOADED:Lcom/msic/qarth/RecordProcessUtil$RecordStatusEnum;

    .line 46
    new-instance v0, Lcom/msic/qarth/RecordProcessUtil$RecordStatusEnum;

    const-string v1, "PATCH_STATUS_LOADING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/msic/qarth/RecordProcessUtil$RecordStatusEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/msic/qarth/RecordProcessUtil$RecordStatusEnum;->PATCH_STATUS_LOADING:Lcom/msic/qarth/RecordProcessUtil$RecordStatusEnum;

    .line 47
    new-instance v0, Lcom/msic/qarth/RecordProcessUtil$RecordStatusEnum;

    const-string v1, "PATCH_STATUS_FAILED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/msic/qarth/RecordProcessUtil$RecordStatusEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/msic/qarth/RecordProcessUtil$RecordStatusEnum;->PATCH_STATUS_FAILED:Lcom/msic/qarth/RecordProcessUtil$RecordStatusEnum;

    .line 48
    new-instance v0, Lcom/msic/qarth/RecordProcessUtil$RecordStatusEnum;

    const-string v1, "PATCH_STATUS_SUCCESS"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/msic/qarth/RecordProcessUtil$RecordStatusEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/msic/qarth/RecordProcessUtil$RecordStatusEnum;->PATCH_STATUS_SUCCESS:Lcom/msic/qarth/RecordProcessUtil$RecordStatusEnum;

    .line 44
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/msic/qarth/RecordProcessUtil$RecordStatusEnum;

    sget-object v1, Lcom/msic/qarth/RecordProcessUtil$RecordStatusEnum;->PATCH_STATUS_DOWNLOADED:Lcom/msic/qarth/RecordProcessUtil$RecordStatusEnum;

    aput-object v1, v0, v2

    sget-object v1, Lcom/msic/qarth/RecordProcessUtil$RecordStatusEnum;->PATCH_STATUS_LOADING:Lcom/msic/qarth/RecordProcessUtil$RecordStatusEnum;

    aput-object v1, v0, v3

    sget-object v1, Lcom/msic/qarth/RecordProcessUtil$RecordStatusEnum;->PATCH_STATUS_FAILED:Lcom/msic/qarth/RecordProcessUtil$RecordStatusEnum;

    aput-object v1, v0, v4

    sget-object v1, Lcom/msic/qarth/RecordProcessUtil$RecordStatusEnum;->PATCH_STATUS_SUCCESS:Lcom/msic/qarth/RecordProcessUtil$RecordStatusEnum;

    aput-object v1, v0, v5

    sput-object v0, Lcom/msic/qarth/RecordProcessUtil$RecordStatusEnum;->$VALUES:[Lcom/msic/qarth/RecordProcessUtil$RecordStatusEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/msic/qarth/RecordProcessUtil$RecordStatusEnum;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 44
    const-class v0, Lcom/msic/qarth/RecordProcessUtil$RecordStatusEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/msic/qarth/RecordProcessUtil$RecordStatusEnum;

    return-object v0
.end method

.method public static values()[Lcom/msic/qarth/RecordProcessUtil$RecordStatusEnum;
    .locals 1

    .line 44
    sget-object v0, Lcom/msic/qarth/RecordProcessUtil$RecordStatusEnum;->$VALUES:[Lcom/msic/qarth/RecordProcessUtil$RecordStatusEnum;

    invoke-virtual {v0}, [Lcom/msic/qarth/RecordProcessUtil$RecordStatusEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/msic/qarth/RecordProcessUtil$RecordStatusEnum;

    return-object v0
.end method
