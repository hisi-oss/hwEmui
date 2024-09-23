.class Lcom/huawei/hsm/permission/minimms/InvalidHeaderValueException;
.super Ljava/lang/Exception;
.source "InvalidHeaderValueException.java"


# static fields
.field private static final serialVersionUID:J = -0x1268704db5e79159L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 41
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 42
    return-void
.end method
