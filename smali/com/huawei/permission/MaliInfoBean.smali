.class public Lcom/huawei/permission/MaliInfoBean;
.super Ljava/lang/Object;
.source "MaliInfoBean.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/huawei/permission/MaliInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field public static final NOT_RESTRICTED:I = 0x1

.field public static final RESTRICTED:I = 0x0

.field public static final RISK_HIGH:I = 0x3

.field public static final RISK_LOW:I = 0x1

.field public static final RISK_MEDIUM:I = 0x2

.field public static final RISK_NONE:I = 0x0

.field public static final RISK_UNKNOWN:I = 0x4


# instance fields
.field public appId:Ljava/lang/String;

.field public category:I

.field public reportSource:Ljava/lang/String;

.field public restrictStatus:I

.field public riskLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    new-instance v0, Lcom/huawei/permission/MaliInfoBean$1;

    invoke-direct {v0}, Lcom/huawei/permission/MaliInfoBean$1;-><init>()V

    sput-object v0, Lcom/huawei/permission/MaliInfoBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/permission/MaliInfoBean;->appId:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/permission/MaliInfoBean;->reportSource:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/huawei/permission/MaliInfoBean;->riskLevel:I

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/huawei/permission/MaliInfoBean;->category:I

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/huawei/permission/MaliInfoBean;->restrictStatus:I

    .line 39
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/huawei/permission/MaliInfoBean$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/huawei/permission/MaliInfoBean$1;

    .line 7
    invoke-direct {p0, p1}, Lcom/huawei/permission/MaliInfoBean;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;III)V
    .locals 0
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "reportSource"    # Ljava/lang/String;
    .param p3, "riskLevel"    # I
    .param p4, "category"    # I
    .param p5, "restrictStatus"    # I

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/huawei/permission/MaliInfoBean;->appId:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/huawei/permission/MaliInfoBean;->reportSource:Ljava/lang/String;

    .line 28
    iput p3, p0, Lcom/huawei/permission/MaliInfoBean;->riskLevel:I

    .line 29
    iput p4, p0, Lcom/huawei/permission/MaliInfoBean;->category:I

    .line 30
    iput p5, p0, Lcom/huawei/permission/MaliInfoBean;->restrictStatus:I

    .line 31
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{ appId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/permission/MaliInfoBean;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", reportSource = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/permission/MaliInfoBean;->reportSource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", riskLevel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/permission/MaliInfoBean;->riskLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", category = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/permission/MaliInfoBean;->category:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", restrict = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/permission/MaliInfoBean;->restrictStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 48
    iget-object v0, p0, Lcom/huawei/permission/MaliInfoBean;->appId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/huawei/permission/MaliInfoBean;->reportSource:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    iget v0, p0, Lcom/huawei/permission/MaliInfoBean;->riskLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    iget v0, p0, Lcom/huawei/permission/MaliInfoBean;->category:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    iget v0, p0, Lcom/huawei/permission/MaliInfoBean;->restrictStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    return-void
.end method
