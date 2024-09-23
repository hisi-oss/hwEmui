.class public Landroid/app/mtm/iaware/HwAppStartupSetting;
.super Ljava/lang/Object;
.source "HwAppStartupSetting.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final AS_MAX_NUM:I = 0x4

.field public static final AS_MODIFIER_CUST:I = 0x2

.field public static final AS_MODIFIER_DEF:I = 0x0

.field public static final AS_MODIFIER_USER:I = 0x1

.field public static final AS_OFF:I = 0x0

.field public static final AS_ON:I = 0x1

.field public static final AS_TP_ALV:I = 0x3

.field public static final AS_TP_ASS:I = 0x2

.field public static final AS_TP_MDF:I = 0x0

.field public static final AS_TP_SHW:I = 0x0

.field public static final AS_TP_SLF:I = 0x1

.field public static final AS_TP_SMT:I = 0x0

.field public static final AS_UNSET:I = -0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/mtm/iaware/HwAppStartupSetting;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "HwAppStartupSetting"


# instance fields
.field private mModifier:[I

.field private mPackageName:Ljava/lang/String;

.field private mPolicy:[I

.field private mShow:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 174
    new-instance v0, Landroid/app/mtm/iaware/HwAppStartupSetting$1;

    invoke-direct {v0}, Landroid/app/mtm/iaware/HwAppStartupSetting$1;-><init>()V

    sput-object v0, Landroid/app/mtm/iaware/HwAppStartupSetting;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/app/mtm/iaware/HwAppStartupSetting;)V
    .locals 4
    .param p1, "setting"    # Landroid/app/mtm/iaware/HwAppStartupSetting;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x4

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Landroid/app/mtm/iaware/HwAppStartupSetting;->mPolicy:[I

    .line 52
    new-array v1, v0, [I

    fill-array-data v1, :array_1

    iput-object v1, p0, Landroid/app/mtm/iaware/HwAppStartupSetting;->mShow:[I

    .line 53
    new-array v1, v0, [I

    fill-array-data v1, :array_2

    iput-object v1, p0, Landroid/app/mtm/iaware/HwAppStartupSetting;->mModifier:[I

    .line 69
    if-eqz p1, :cond_2

    .line 70
    iget-object v1, p1, Landroid/app/mtm/iaware/HwAppStartupSetting;->mPackageName:Ljava/lang/String;

    iput-object v1, p0, Landroid/app/mtm/iaware/HwAppStartupSetting;->mPackageName:Ljava/lang/String;

    .line 71
    iget-object v1, p1, Landroid/app/mtm/iaware/HwAppStartupSetting;->mPolicy:[I

    array-length v1, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 72
    iget-object v1, p1, Landroid/app/mtm/iaware/HwAppStartupSetting;->mPolicy:[I

    iget-object v3, p0, Landroid/app/mtm/iaware/HwAppStartupSetting;->mPolicy:[I

    invoke-static {v1, v2, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 74
    :cond_0
    iget-object v1, p1, Landroid/app/mtm/iaware/HwAppStartupSetting;->mShow:[I

    array-length v1, v1

    if-ne v0, v1, :cond_1

    .line 75
    iget-object v1, p1, Landroid/app/mtm/iaware/HwAppStartupSetting;->mShow:[I

    iget-object v3, p0, Landroid/app/mtm/iaware/HwAppStartupSetting;->mShow:[I

    invoke-static {v1, v2, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 77
    :cond_1
    iget-object v1, p1, Landroid/app/mtm/iaware/HwAppStartupSetting;->mModifier:[I

    array-length v1, v1

    if-ne v0, v1, :cond_2

    .line 78
    iget-object v1, p1, Landroid/app/mtm/iaware/HwAppStartupSetting;->mModifier:[I

    iget-object v3, p0, Landroid/app/mtm/iaware/HwAppStartupSetting;->mModifier:[I

    invoke-static {v1, v2, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 81
    :cond_2
    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_1
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_2
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x4

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Landroid/app/mtm/iaware/HwAppStartupSetting;->mPolicy:[I

    .line 52
    new-array v1, v0, [I

    fill-array-data v1, :array_1

    iput-object v1, p0, Landroid/app/mtm/iaware/HwAppStartupSetting;->mShow:[I

    .line 53
    new-array v0, v0, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Landroid/app/mtm/iaware/HwAppStartupSetting;->mModifier:[I

    .line 188
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/mtm/iaware/HwAppStartupSetting;->mPackageName:Ljava/lang/String;

    .line 189
    iget-object v0, p0, Landroid/app/mtm/iaware/HwAppStartupSetting;->mPolicy:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    .line 190
    iget-object v0, p0, Landroid/app/mtm/iaware/HwAppStartupSetting;->mShow:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    .line 191
    iget-object v0, p0, Landroid/app/mtm/iaware/HwAppStartupSetting;->mModifier:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    .line 192
    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_1
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_2
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/mtm/iaware/HwAppStartupSetting$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/app/mtm/iaware/HwAppStartupSetting$1;

    .line 26
    invoke-direct {p0, p1}, Landroid/app/mtm/iaware/HwAppStartupSetting;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[I[I[I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "policy"    # [I
    .param p3, "modifier"    # [I
    .param p4, "show"    # [I

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x4

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Landroid/app/mtm/iaware/HwAppStartupSetting;->mPolicy:[I

    .line 52
    new-array v1, v0, [I

    fill-array-data v1, :array_1

    iput-object v1, p0, Landroid/app/mtm/iaware/HwAppStartupSetting;->mShow:[I

    .line 53
    new-array v1, v0, [I

    fill-array-data v1, :array_2

    iput-object v1, p0, Landroid/app/mtm/iaware/HwAppStartupSetting;->mModifier:[I

    .line 56
    iput-object p1, p0, Landroid/app/mtm/iaware/HwAppStartupSetting;->mPackageName:Ljava/lang/String;

    .line 57
    const/4 v1, 0x0

    if-eqz p2, :cond_0

    array-length v2, p2

    if-ne v0, v2, :cond_0

    .line 58
    iget-object v2, p0, Landroid/app/mtm/iaware/HwAppStartupSetting;->mPolicy:[I

    invoke-static {p2, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 60
    :cond_0
    if-eqz p4, :cond_1

    array-length v2, p4

    if-ne v0, v2, :cond_1

    .line 61
    iget-object v2, p0, Landroid/app/mtm/iaware/HwAppStartupSetting;->mShow:[I

    invoke-static {p4, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 63
    :cond_1
    if-eqz p3, :cond_2

    array-length v2, p3

    if-ne v0, v2, :cond_2

    .line 64
    iget-object v2, p0, Landroid/app/mtm/iaware/HwAppStartupSetting;->mModifier:[I

    invoke-static {p3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 66
    :cond_2
    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_1
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_2
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method private isValid(Z)Z
    .locals 7
    .param p1, "checkUnset"    # Z

    .line 131
    iget-object v0, p0, Landroid/app/mtm/iaware/HwAppStartupSetting;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 132
    return v1

    .line 134
    :cond_0
    iget-object v0, p0, Landroid/app/mtm/iaware/HwAppStartupSetting;->mPolicy:[I

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/app/mtm/iaware/HwAppStartupSetting;->mPolicy:[I

    array-length v0, v0

    const/4 v2, 0x4

    if-eq v2, v0, :cond_1

    goto/16 :goto_4

    .line 137
    :cond_1
    iget-object v0, p0, Landroid/app/mtm/iaware/HwAppStartupSetting;->mShow:[I

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/app/mtm/iaware/HwAppStartupSetting;->mShow:[I

    array-length v0, v0

    if-eq v2, v0, :cond_2

    goto :goto_3

    .line 140
    :cond_2
    move v0, v1

    .local v0, "i":I
    :goto_0
    const/4 v3, -0x1

    const/4 v4, 0x1

    if-ge v0, v2, :cond_5

    .line 141
    iget-object v5, p0, Landroid/app/mtm/iaware/HwAppStartupSetting;->mPolicy:[I

    aget v5, v5, v0

    if-eqz v5, :cond_4

    iget-object v5, p0, Landroid/app/mtm/iaware/HwAppStartupSetting;->mPolicy:[I

    aget v5, v5, v0

    if-eq v5, v4, :cond_4

    if-eqz p1, :cond_3

    iget-object v4, p0, Landroid/app/mtm/iaware/HwAppStartupSetting;->mPolicy:[I

    aget v4, v4, v0

    if-eq v4, v3, :cond_4

    .line 143
    :cond_3
    return v1

    .line 140
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 146
    .end local v0    # "i":I
    :cond_5
    move v0, v1

    .restart local v0    # "i":I
    :goto_1
    if-ge v0, v2, :cond_8

    .line 147
    iget-object v5, p0, Landroid/app/mtm/iaware/HwAppStartupSetting;->mShow:[I

    aget v5, v5, v0

    if-eqz v5, :cond_7

    iget-object v5, p0, Landroid/app/mtm/iaware/HwAppStartupSetting;->mShow:[I

    aget v5, v5, v0

    if-eq v5, v4, :cond_7

    if-eqz p1, :cond_6

    iget-object v5, p0, Landroid/app/mtm/iaware/HwAppStartupSetting;->mShow:[I

    aget v5, v5, v0

    if-eq v5, v3, :cond_7

    .line 149
    :cond_6
    return v1

    .line 146
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 152
    .end local v0    # "i":I
    :cond_8
    move v0, v1

    .restart local v0    # "i":I
    :goto_2
    if-ge v0, v2, :cond_b

    .line 153
    iget-object v5, p0, Landroid/app/mtm/iaware/HwAppStartupSetting;->mModifier:[I

    aget v5, v5, v0

    if-eqz v5, :cond_a

    iget-object v5, p0, Landroid/app/mtm/iaware/HwAppStartupSetting;->mModifier:[I

    aget v5, v5, v0

    if-eq v4, v5, :cond_a

    const/4 v5, 0x2

    iget-object v6, p0, Landroid/app/mtm/iaware/HwAppStartupSetting;->mModifier:[I

    aget v6, v6, v0

    if-eq v5, v6, :cond_a

    if-eqz p1, :cond_9

    iget-object v5, p0, Landroid/app/mtm/iaware/HwAppStartupSetting;->mModifier:[I

    aget v5, v5, v0

    if-eq v5, v3, :cond_a

    .line 155
    :cond_9
    return v1

    .line 152
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 158
    .end local v0    # "i":I
    :cond_b
    return v4

    .line 138
    :cond_c
    :goto_3
    return v1

    .line 135
    :cond_d
    :goto_4
    return v1
.end method


# virtual methods
.method protected clone()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 208
    const/4 v0, 0x0

    .line 210
    .local v0, "obj":Landroid/app/mtm/iaware/HwAppStartupSetting;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/mtm/iaware/HwAppStartupSetting;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 213
    goto :goto_0

    .line 211
    :catch_0
    move-exception v1

    .line 212
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    const-string v2, "HwAppStartupSetting"

    const-string v3, "clone catch exception!"

    invoke-static {v2, v3}, Landroid/rms/iaware/AwareLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    .end local v1    # "e":Ljava/lang/CloneNotSupportedException;
    :goto_0
    return-object v0
.end method

.method public copyValidInfo(Landroid/app/mtm/iaware/HwAppStartupSetting;)Landroid/app/mtm/iaware/HwAppStartupSetting;
    .locals 4
    .param p1, "setting"    # Landroid/app/mtm/iaware/HwAppStartupSetting;

    .line 84
    if-eqz p1, :cond_3

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/app/mtm/iaware/HwAppStartupSetting;->isValid(Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 85
    iget-object v0, p1, Landroid/app/mtm/iaware/HwAppStartupSetting;->mPackageName:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/mtm/iaware/HwAppStartupSetting;->mPackageName:Ljava/lang/String;

    .line 86
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_3

    .line 87
    invoke-virtual {p1, v0}, Landroid/app/mtm/iaware/HwAppStartupSetting;->getPolicy(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v2, v1, :cond_0

    .line 88
    iget-object v1, p0, Landroid/app/mtm/iaware/HwAppStartupSetting;->mPolicy:[I

    invoke-virtual {p1, v0}, Landroid/app/mtm/iaware/HwAppStartupSetting;->getPolicy(I)I

    move-result v3

    aput v3, v1, v0

    .line 90
    :cond_0
    invoke-virtual {p1, v0}, Landroid/app/mtm/iaware/HwAppStartupSetting;->getShow(I)I

    move-result v1

    if-eq v2, v1, :cond_1

    .line 91
    iget-object v1, p0, Landroid/app/mtm/iaware/HwAppStartupSetting;->mShow:[I

    invoke-virtual {p1, v0}, Landroid/app/mtm/iaware/HwAppStartupSetting;->getShow(I)I

    move-result v3

    aput v3, v1, v0

    .line 93
    :cond_1
    invoke-virtual {p1, v0}, Landroid/app/mtm/iaware/HwAppStartupSetting;->getModifier(I)I

    move-result v1

    if-eq v2, v1, :cond_2

    .line 94
    iget-object v1, p0, Landroid/app/mtm/iaware/HwAppStartupSetting;->mModifier:[I

    invoke-virtual {p1, v0}, Landroid/app/mtm/iaware/HwAppStartupSetting;->getModifier(I)I

    move-result v2

    aput v2, v1, v0

    .line 86
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 98
    .end local v0    # "i":I
    :cond_3
    return-object p0
.end method

.method public describeContents()I
    .locals 1

    .line 163
    const/4 v0, 0x0

    return v0
.end method

.method public getModifier(I)I
    .locals 1
    .param p1, "type"    # I

    .line 113
    if-ltz p1, :cond_1

    iget-object v0, p0, Landroid/app/mtm/iaware/HwAppStartupSetting;->mModifier:[I

    array-length v0, v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 116
    :cond_0
    iget-object v0, p0, Landroid/app/mtm/iaware/HwAppStartupSetting;->mModifier:[I

    aget v0, v0, p1

    return v0

    .line 114
    :cond_1
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Landroid/app/mtm/iaware/HwAppStartupSetting;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPolicy(I)I
    .locals 1
    .param p1, "type"    # I

    .line 106
    if-ltz p1, :cond_1

    iget-object v0, p0, Landroid/app/mtm/iaware/HwAppStartupSetting;->mPolicy:[I

    array-length v0, v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 109
    :cond_0
    iget-object v0, p0, Landroid/app/mtm/iaware/HwAppStartupSetting;->mPolicy:[I

    aget v0, v0, p1

    return v0

    .line 107
    :cond_1
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method public getShow(I)I
    .locals 1
    .param p1, "type"    # I

    .line 120
    if-ltz p1, :cond_1

    iget-object v0, p0, Landroid/app/mtm/iaware/HwAppStartupSetting;->mShow:[I

    array-length v0, v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 123
    :cond_0
    iget-object v0, p0, Landroid/app/mtm/iaware/HwAppStartupSetting;->mShow:[I

    aget v0, v0, p1

    return v0

    .line 121
    :cond_1
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 197
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 198
    iget-object v1, p0, Landroid/app/mtm/iaware/HwAppStartupSetting;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    const-string v1, " policy:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/mtm/iaware/HwAppStartupSetting;->mPolicy:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    const-string v1, " modifier:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/mtm/iaware/HwAppStartupSetting;->mModifier:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    const-string v1, " show:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/mtm/iaware/HwAppStartupSetting;->mShow:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 203
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public valid()Z
    .locals 1

    .line 127
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/app/mtm/iaware/HwAppStartupSetting;->isValid(Z)Z

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 168
    iget-object v0, p0, Landroid/app/mtm/iaware/HwAppStartupSetting;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Landroid/app/mtm/iaware/HwAppStartupSetting;->mPolicy:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 170
    iget-object v0, p0, Landroid/app/mtm/iaware/HwAppStartupSetting;->mShow:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 171
    iget-object v0, p0, Landroid/app/mtm/iaware/HwAppStartupSetting;->mModifier:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 172
    return-void
.end method
