.class public Landroid/rms/config/ResourceConfig;
.super Ljava/lang/Object;
.source "ResourceConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/rms/config/ResourceConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private loop_interval:I

.field private resource_id:I

.field private resource_max_peroid:I

.field private resource_name:Ljava/lang/String;

.field private resource_normal_threshold:I

.field private resource_strategy:I

.field private resource_threshold:I

.field private resource_urgent_threshold:I

.field private resource_waring_threshold:I

.field private total_loop_interval:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 120
    new-instance v0, Landroid/rms/config/ResourceConfig$1;

    invoke-direct {v0}, Landroid/rms/config/ResourceConfig$1;-><init>()V

    sput-object v0, Landroid/rms/config/ResourceConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIIIILjava/lang/String;IIII)V
    .locals 2
    .param p1, "resource_id"    # I
    .param p2, "resource_threshold"    # I
    .param p3, "resource_strategy"    # I
    .param p4, "resource_max_peroid"    # I
    .param p5, "loop_interval"    # I
    .param p6, "resource_name"    # Ljava/lang/String;
    .param p7, "resource_normal_threshold"    # I
    .param p8, "resource_waring_threshold"    # I
    .param p9, "resource_urgent_threshold"    # I
    .param p10, "total_loop_interval"    # I

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Landroid/rms/config/ResourceConfig;->resource_id:I

    .line 26
    iput v0, p0, Landroid/rms/config/ResourceConfig;->resource_threshold:I

    .line 59
    iput v0, p0, Landroid/rms/config/ResourceConfig;->resource_strategy:I

    .line 65
    iput v0, p0, Landroid/rms/config/ResourceConfig;->resource_max_peroid:I

    .line 67
    iput v0, p0, Landroid/rms/config/ResourceConfig;->loop_interval:I

    .line 69
    const-string v1, ""

    iput-object v1, p0, Landroid/rms/config/ResourceConfig;->resource_name:Ljava/lang/String;

    .line 70
    iput v0, p0, Landroid/rms/config/ResourceConfig;->resource_normal_threshold:I

    .line 71
    iput v0, p0, Landroid/rms/config/ResourceConfig;->resource_waring_threshold:I

    .line 72
    iput v0, p0, Landroid/rms/config/ResourceConfig;->resource_urgent_threshold:I

    .line 73
    iput v0, p0, Landroid/rms/config/ResourceConfig;->total_loop_interval:I

    .line 77
    iput p1, p0, Landroid/rms/config/ResourceConfig;->resource_id:I

    .line 78
    iput p2, p0, Landroid/rms/config/ResourceConfig;->resource_threshold:I

    .line 79
    iput p3, p0, Landroid/rms/config/ResourceConfig;->resource_strategy:I

    .line 80
    iput p4, p0, Landroid/rms/config/ResourceConfig;->resource_max_peroid:I

    .line 81
    iput p5, p0, Landroid/rms/config/ResourceConfig;->loop_interval:I

    .line 82
    iput-object p6, p0, Landroid/rms/config/ResourceConfig;->resource_name:Ljava/lang/String;

    .line 83
    iput p7, p0, Landroid/rms/config/ResourceConfig;->resource_normal_threshold:I

    .line 84
    iput p8, p0, Landroid/rms/config/ResourceConfig;->resource_waring_threshold:I

    .line 85
    iput p9, p0, Landroid/rms/config/ResourceConfig;->resource_urgent_threshold:I

    .line 86
    iput p10, p0, Landroid/rms/config/ResourceConfig;->total_loop_interval:I

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Landroid/rms/config/ResourceConfig;->resource_id:I

    .line 26
    iput v0, p0, Landroid/rms/config/ResourceConfig;->resource_threshold:I

    .line 59
    iput v0, p0, Landroid/rms/config/ResourceConfig;->resource_strategy:I

    .line 65
    iput v0, p0, Landroid/rms/config/ResourceConfig;->resource_max_peroid:I

    .line 67
    iput v0, p0, Landroid/rms/config/ResourceConfig;->loop_interval:I

    .line 69
    const-string v1, ""

    iput-object v1, p0, Landroid/rms/config/ResourceConfig;->resource_name:Ljava/lang/String;

    .line 70
    iput v0, p0, Landroid/rms/config/ResourceConfig;->resource_normal_threshold:I

    .line 71
    iput v0, p0, Landroid/rms/config/ResourceConfig;->resource_waring_threshold:I

    .line 72
    iput v0, p0, Landroid/rms/config/ResourceConfig;->resource_urgent_threshold:I

    .line 73
    iput v0, p0, Landroid/rms/config/ResourceConfig;->total_loop_interval:I

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/rms/config/ResourceConfig;->resource_id:I

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/rms/config/ResourceConfig;->resource_threshold:I

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/rms/config/ResourceConfig;->resource_strategy:I

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/rms/config/ResourceConfig;->resource_max_peroid:I

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/rms/config/ResourceConfig;->loop_interval:I

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/rms/config/ResourceConfig;->resource_name:Ljava/lang/String;

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/rms/config/ResourceConfig;->resource_normal_threshold:I

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/rms/config/ResourceConfig;->resource_waring_threshold:I

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/rms/config/ResourceConfig;->resource_urgent_threshold:I

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/rms/config/ResourceConfig;->total_loop_interval:I

    .line 101
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method public getLoopInterval()I
    .locals 1

    .line 151
    iget v0, p0, Landroid/rms/config/ResourceConfig;->loop_interval:I

    return v0
.end method

.method public getResouceName()Ljava/lang/String;
    .locals 1

    .line 155
    iget-object v0, p0, Landroid/rms/config/ResourceConfig;->resource_name:Ljava/lang/String;

    return-object v0
.end method

.method public getResouceNormalThreshold()I
    .locals 1

    .line 159
    iget v0, p0, Landroid/rms/config/ResourceConfig;->resource_normal_threshold:I

    return v0
.end method

.method public getResouceUrgentThreshold()I
    .locals 1

    .line 167
    iget v0, p0, Landroid/rms/config/ResourceConfig;->resource_urgent_threshold:I

    return v0
.end method

.method public getResouceWarningThreshold()I
    .locals 1

    .line 163
    iget v0, p0, Landroid/rms/config/ResourceConfig;->resource_waring_threshold:I

    return v0
.end method

.method public getResourceID()I
    .locals 1

    .line 131
    iget v0, p0, Landroid/rms/config/ResourceConfig;->resource_id:I

    return v0
.end method

.method public getResourceMaxPeroid()I
    .locals 1

    .line 143
    iget v0, p0, Landroid/rms/config/ResourceConfig;->resource_max_peroid:I

    return v0
.end method

.method public getResourceStrategy()I
    .locals 1

    .line 139
    iget v0, p0, Landroid/rms/config/ResourceConfig;->resource_strategy:I

    return v0
.end method

.method public getResourceThreshold()I
    .locals 1

    .line 135
    iget v0, p0, Landroid/rms/config/ResourceConfig;->resource_threshold:I

    return v0
.end method

.method public getTotalLoopInterval()I
    .locals 1

    .line 147
    iget v0, p0, Landroid/rms/config/ResourceConfig;->total_loop_interval:I

    return v0
.end method

.method public setLoopInterval(I)V
    .locals 0
    .param p1, "interval"    # I

    .line 191
    iput p1, p0, Landroid/rms/config/ResourceConfig;->loop_interval:I

    .line 192
    return-void
.end method

.method public setResourceID(I)V
    .locals 0
    .param p1, "id"    # I

    .line 171
    iput p1, p0, Landroid/rms/config/ResourceConfig;->resource_id:I

    .line 172
    return-void
.end method

.method public setResourceMaxPeroid(I)V
    .locals 0
    .param p1, "max_peroid"    # I

    .line 183
    iput p1, p0, Landroid/rms/config/ResourceConfig;->resource_max_peroid:I

    .line 184
    return-void
.end method

.method public setResourceStrategy(I)V
    .locals 0
    .param p1, "strategy"    # I

    .line 179
    iput p1, p0, Landroid/rms/config/ResourceConfig;->resource_strategy:I

    .line 180
    return-void
.end method

.method public setResourceThreshold(I)V
    .locals 0
    .param p1, "threshold"    # I

    .line 175
    iput p1, p0, Landroid/rms/config/ResourceConfig;->resource_threshold:I

    .line 176
    return-void
.end method

.method public setTotalLoopInterval(I)V
    .locals 0
    .param p1, "total_loop_interval"    # I

    .line 187
    iput p1, p0, Landroid/rms/config/ResourceConfig;->total_loop_interval:I

    .line 188
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 108
    iget v0, p0, Landroid/rms/config/ResourceConfig;->resource_id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    iget v0, p0, Landroid/rms/config/ResourceConfig;->resource_threshold:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    iget v0, p0, Landroid/rms/config/ResourceConfig;->resource_strategy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    iget v0, p0, Landroid/rms/config/ResourceConfig;->resource_max_peroid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    iget v0, p0, Landroid/rms/config/ResourceConfig;->loop_interval:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    iget-object v0, p0, Landroid/rms/config/ResourceConfig;->resource_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 114
    iget v0, p0, Landroid/rms/config/ResourceConfig;->resource_normal_threshold:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    iget v0, p0, Landroid/rms/config/ResourceConfig;->resource_waring_threshold:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    iget v0, p0, Landroid/rms/config/ResourceConfig;->resource_urgent_threshold:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    iget v0, p0, Landroid/rms/config/ResourceConfig;->total_loop_interval:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    return-void
.end method
