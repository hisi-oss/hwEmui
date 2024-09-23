.class public final enum Lcom/android/internal/telephony/HwHisiCsgNetworkInfo$CSGTYPE;
.super Ljava/lang/Enum;
.source "HwHisiCsgNetworkInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/HwHisiCsgNetworkInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CSGTYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/telephony/HwHisiCsgNetworkInfo$CSGTYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/HwHisiCsgNetworkInfo$CSGTYPE;

.field public static final enum CSG_ALLOW_LIST:Lcom/android/internal/telephony/HwHisiCsgNetworkInfo$CSGTYPE;

.field public static final enum CSG_OPERATOR_LIST_ALLOW:Lcom/android/internal/telephony/HwHisiCsgNetworkInfo$CSGTYPE;

.field public static final enum CSG_OPERATOR_LIST_FORBIDEN:Lcom/android/internal/telephony/HwHisiCsgNetworkInfo$CSGTYPE;

.field public static final enum CSG_UNKNOW_LIST:Lcom/android/internal/telephony/HwHisiCsgNetworkInfo$CSGTYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 18
    new-instance v0, Lcom/android/internal/telephony/HwHisiCsgNetworkInfo$CSGTYPE;

    const-string v1, "CSG_ALLOW_LIST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/HwHisiCsgNetworkInfo$CSGTYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/HwHisiCsgNetworkInfo$CSGTYPE;->CSG_ALLOW_LIST:Lcom/android/internal/telephony/HwHisiCsgNetworkInfo$CSGTYPE;

    .line 19
    new-instance v0, Lcom/android/internal/telephony/HwHisiCsgNetworkInfo$CSGTYPE;

    const-string v1, "CSG_OPERATOR_LIST_ALLOW"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/HwHisiCsgNetworkInfo$CSGTYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/HwHisiCsgNetworkInfo$CSGTYPE;->CSG_OPERATOR_LIST_ALLOW:Lcom/android/internal/telephony/HwHisiCsgNetworkInfo$CSGTYPE;

    .line 20
    new-instance v0, Lcom/android/internal/telephony/HwHisiCsgNetworkInfo$CSGTYPE;

    const-string v1, "CSG_OPERATOR_LIST_FORBIDEN"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/HwHisiCsgNetworkInfo$CSGTYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/HwHisiCsgNetworkInfo$CSGTYPE;->CSG_OPERATOR_LIST_FORBIDEN:Lcom/android/internal/telephony/HwHisiCsgNetworkInfo$CSGTYPE;

    .line 21
    new-instance v0, Lcom/android/internal/telephony/HwHisiCsgNetworkInfo$CSGTYPE;

    const-string v1, "CSG_UNKNOW_LIST"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/HwHisiCsgNetworkInfo$CSGTYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/HwHisiCsgNetworkInfo$CSGTYPE;->CSG_UNKNOW_LIST:Lcom/android/internal/telephony/HwHisiCsgNetworkInfo$CSGTYPE;

    .line 17
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/internal/telephony/HwHisiCsgNetworkInfo$CSGTYPE;

    sget-object v1, Lcom/android/internal/telephony/HwHisiCsgNetworkInfo$CSGTYPE;->CSG_ALLOW_LIST:Lcom/android/internal/telephony/HwHisiCsgNetworkInfo$CSGTYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/HwHisiCsgNetworkInfo$CSGTYPE;->CSG_OPERATOR_LIST_ALLOW:Lcom/android/internal/telephony/HwHisiCsgNetworkInfo$CSGTYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/HwHisiCsgNetworkInfo$CSGTYPE;->CSG_OPERATOR_LIST_FORBIDEN:Lcom/android/internal/telephony/HwHisiCsgNetworkInfo$CSGTYPE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/HwHisiCsgNetworkInfo$CSGTYPE;->CSG_UNKNOW_LIST:Lcom/android/internal/telephony/HwHisiCsgNetworkInfo$CSGTYPE;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/internal/telephony/HwHisiCsgNetworkInfo$CSGTYPE;->$VALUES:[Lcom/android/internal/telephony/HwHisiCsgNetworkInfo$CSGTYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/HwHisiCsgNetworkInfo$CSGTYPE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 17
    const-class v0, Lcom/android/internal/telephony/HwHisiCsgNetworkInfo$CSGTYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/HwHisiCsgNetworkInfo$CSGTYPE;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/HwHisiCsgNetworkInfo$CSGTYPE;
    .locals 1

    .line 17
    sget-object v0, Lcom/android/internal/telephony/HwHisiCsgNetworkInfo$CSGTYPE;->$VALUES:[Lcom/android/internal/telephony/HwHisiCsgNetworkInfo$CSGTYPE;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/HwHisiCsgNetworkInfo$CSGTYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/HwHisiCsgNetworkInfo$CSGTYPE;

    return-object v0
.end method
