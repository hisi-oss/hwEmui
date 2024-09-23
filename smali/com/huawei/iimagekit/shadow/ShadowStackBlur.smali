.class public Lcom/huawei/iimagekit/shadow/ShadowStackBlur;
.super Ljava/lang/Object;
.source "ShadowStackBlur.java"


# static fields
.field private static final stack_blur_mul:[S

.field private static final stack_blur_shr:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 18
    const/16 v0, 0xff

    new-array v1, v0, [S

    fill-array-data v1, :array_0

    sput-object v1, Lcom/huawei/iimagekit/shadow/ShadowStackBlur;->stack_blur_mul:[S

    .line 37
    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/huawei/iimagekit/shadow/ShadowStackBlur;->stack_blur_shr:[B

    return-void

    nop

    :array_0
    .array-data 2
        0x200s
        0x200s
        0x1c8s
        0x200s
        0x148s
        0x1c8s
        0x14fs
        0x200s
        0x195s
        0x148s
        0x10fs
        0x1c8s
        0x184s
        0x14fs
        0x124s
        0x200s
        0x1c6s
        0x195s
        0x16cs
        0x148s
        0x12as
        0x10fs
        0x1f0s
        0x1c8s
        0x1a4s
        0x184s
        0x168s
        0x14fs
        0x138s
        0x124s
        0x111s
        0x200s
        0x1e2s
        0x1c6s
        0x1acs
        0x195s
        0x17fs
        0x16cs
        0x159s
        0x148s
        0x138s
        0x12as
        0x11cs
        0x10fs
        0x103s
        0x1f0s
        0x1dbs
        0x1c8s
        0x1b5s
        0x1a4s
        0x194s
        0x184s
        0x176s
        0x168s
        0x15bs
        0x14fs
        0x143s
        0x138s
        0x12es
        0x124s
        0x11as
        0x111s
        0x109s
        0x200s
        0x1f1s
        0x1e2s
        0x1d4s
        0x1c6s
        0x1b9s
        0x1acs
        0x1a1s
        0x195s
        0x18as
        0x17fs
        0x175s
        0x16cs
        0x162s
        0x159s
        0x151s
        0x148s
        0x140s
        0x138s
        0x131s
        0x12as
        0x123s
        0x11cs
        0x116s
        0x10fs
        0x109s
        0x103s
        0x1fbs
        0x1f0s
        0x1e5s
        0x1dbs
        0x1d1s
        0x1c8s
        0x1bes
        0x1b5s
        0x1acs
        0x1a4s
        0x19cs
        0x194s
        0x18cs
        0x184s
        0x17ds
        0x176s
        0x16fs
        0x168s
        0x162s
        0x15bs
        0x155s
        0x14fs
        0x149s
        0x143s
        0x13es
        0x138s
        0x133s
        0x12es
        0x129s
        0x124s
        0x11fs
        0x11as
        0x116s
        0x111s
        0x10ds
        0x109s
        0x105s
        0x200s
        0x1f9s
        0x1f1s
        0x1e9s
        0x1e2s
        0x1dbs
        0x1d4s
        0x1cds
        0x1c6s
        0x1bfs
        0x1b9s
        0x1b3s
        0x1acs
        0x1a6s
        0x1a1s
        0x19bs
        0x195s
        0x18fs
        0x18as
        0x185s
        0x17fs
        0x17as
        0x175s
        0x170s
        0x16cs
        0x167s
        0x162s
        0x15es
        0x159s
        0x155s
        0x151s
        0x14cs
        0x148s
        0x144s
        0x140s
        0x13cs
        0x138s
        0x135s
        0x131s
        0x12ds
        0x12as
        0x126s
        0x123s
        0x11fs
        0x11cs
        0x119s
        0x116s
        0x112s
        0x10fs
        0x10cs
        0x109s
        0x106s
        0x103s
        0x101s
        0x1fbs
        0x1f5s
        0x1f0s
        0x1ebs
        0x1e5s
        0x1e0s
        0x1dbs
        0x1d6s
        0x1d1s
        0x1ccs
        0x1c8s
        0x1c3s
        0x1bes
        0x1bas
        0x1b5s
        0x1b1s
        0x1acs
        0x1a8s
        0x1a4s
        0x1a0s
        0x19cs
        0x198s
        0x194s
        0x190s
        0x18cs
        0x188s
        0x184s
        0x181s
        0x17ds
        0x179s
        0x176s
        0x172s
        0x16fs
        0x16bs
        0x168s
        0x165s
        0x162s
        0x15es
        0x15bs
        0x158s
        0x155s
        0x152s
        0x14fs
        0x14cs
        0x149s
        0x146s
        0x143s
        0x140s
        0x13es
        0x13bs
        0x138s
        0x136s
        0x133s
        0x130s
        0x12es
        0x12bs
        0x129s
        0x126s
        0x124s
        0x121s
        0x11fs
        0x11ds
        0x11as
        0x118s
        0x116s
        0x113s
        0x111s
        0x10fs
        0x10ds
        0x10bs
        0x109s
        0x107s
        0x105s
        0x103s
    .end array-data

    nop

    :array_1
    .array-data 1
        0x9t
        0xbt
        0xct
        0xdt
        0xdt
        0xet
        0xet
        0xft
        0xft
        0xft
        0xft
        0x10t
        0x10t
        0x10t
        0x10t
        0x11t
        0x11t
        0x11t
        0x11t
        0x11t
        0x11t
        0x11t
        0x12t
        0x12t
        0x12t
        0x12t
        0x12t
        0x12t
        0x12t
        0x12t
        0x12t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doBlur(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)V
    .locals 11
    .param p0, "bitmapForBlur"    # Landroid/graphics/Bitmap;
    .param p1, "blurredBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "radius"    # I

    .line 60
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 61
    .local v8, "w":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 63
    .local v9, "h":I
    mul-int v0, v8, v9

    new-array v10, v0, [I

    .line 64
    .local v10, "pixels":[I
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v10

    move v3, v8

    move v6, v8

    move v7, v9

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 66
    invoke-static {v10}, Lcom/huawei/iimagekit/shadow/ShadowUtil;->processAlphaChannelBefore([I)V

    .line 67
    invoke-static {v10, v8, v9, p2}, Lcom/huawei/iimagekit/shadow/ShadowStackBlur;->stackBlur([IIII)V

    .line 68
    invoke-static {v10}, Lcom/huawei/iimagekit/shadow/ShadowUtil;->processAlphaChannelAfter([I)V

    .line 70
    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 72
    return-void
.end method

.method private static stackBlur([IIII)V
    .locals 83
    .param p0, "src"    # [I
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "radius"    # I

    move/from16 v1, p1

    move/from16 v2, p2

    .line 76
    move/from16 v3, p3

    sget-object v4, Lcom/huawei/iimagekit/shadow/ShadowStackBlur;->stack_blur_mul:[S

    aget-short v4, v4, v3

    .line 77
    .local v4, "mul_sum":S
    sget-object v5, Lcom/huawei/iimagekit/shadow/ShadowStackBlur;->stack_blur_shr:[B

    aget-byte v5, v5, v3

    int-to-short v5, v5

    .line 79
    .local v5, "shr_sum":S
    mul-int/lit8 v6, v3, 0x2

    const/4 v7, 0x1

    add-int/2addr v6, v7

    .line 80
    .local v6, "div":I
    new-array v8, v6, [I

    .line 82
    .local v8, "stack":[I
    add-int/lit8 v9, v1, -0x1

    .line 84
    .local v9, "wm":I
    const/4 v11, 0x0

    .local v11, "y":I
    :goto_0
    if-ge v11, v2, :cond_8

    .line 85
    const-wide/16 v12, 0x0

    .local v12, "sum_r":J
    const-wide/16 v14, 0x0

    .local v14, "sum_r_i":J
    const-wide/16 v16, 0x0

    .line 86
    .local v16, "sum_r_o":J
    const-wide/16 v18, 0x0

    .local v18, "sum_g":J
    const-wide/16 v20, 0x0

    .local v20, "sum_g_i":J
    const-wide/16 v22, 0x0

    .line 87
    .local v22, "sum_g_o":J
    const-wide/16 v24, 0x0

    .local v24, "sum_b":J
    const-wide/16 v26, 0x0

    .local v26, "sum_b_i":J
    const-wide/16 v28, 0x0

    .line 88
    .local v28, "sum_b_o":J
    const-wide/16 v30, 0x0

    .local v30, "sum_a":J
    const-wide/16 v32, 0x0

    .local v32, "sum_a_i":J
    const-wide/16 v34, 0x0

    .line 90
    .local v34, "sum_a_o":J
    mul-int v36, v1, v11

    .line 91
    .local v36, "src_i":I
    mul-int v37, v11, v1

    .line 93
    .local v37, "dst_i":I
    aget v7, p0, v36

    .line 94
    .local v7, "rgb":I
    ushr-int/lit8 v10, v7, 0x18

    and-int/lit16 v10, v10, 0xff

    .line 95
    .local v10, "a":I
    move-wide/from16 v38, v12

    ushr-int/lit8 v12, v7, 0x10

    .end local v12    # "sum_r":J
    .local v38, "sum_r":J
    and-int/lit16 v12, v12, 0xff

    .line 96
    .local v12, "r":I
    ushr-int/lit8 v13, v7, 0x8

    and-int/lit16 v13, v13, 0xff

    .line 97
    .local v13, "g":I
    move-wide/from16 v40, v14

    and-int/lit16 v14, v7, 0xff

    .line 99
    .local v14, "b":I
    .local v40, "sum_r_i":J
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_1
    if-gt v15, v3, :cond_0

    .line 100
    aput v7, v8, v15

    .line 102
    add-int/lit8 v42, v15, 0x1

    move/from16 v43, v7

    mul-int v7, v10, v42

    .end local v7    # "rgb":I
    .local v43, "rgb":I
    move/from16 v44, v6

    int-to-long v6, v7

    .end local v6    # "div":I
    .local v44, "div":I
    add-long v30, v30, v6

    .line 103
    add-int/lit8 v6, v15, 0x1

    mul-int/2addr v6, v12

    int-to-long v6, v6

    add-long v38, v38, v6

    .line 104
    add-int/lit8 v6, v15, 0x1

    mul-int/2addr v6, v13

    int-to-long v6, v6

    add-long v18, v18, v6

    .line 105
    add-int/lit8 v6, v15, 0x1

    mul-int/2addr v6, v14

    int-to-long v6, v6

    add-long v24, v24, v6

    .line 107
    int-to-long v6, v10

    add-long v34, v34, v6

    .line 108
    int-to-long v6, v12

    add-long v16, v16, v6

    .line 109
    int-to-long v6, v13

    add-long v22, v22, v6

    .line 110
    int-to-long v6, v14

    add-long v28, v28, v6

    .line 99
    add-int/lit8 v15, v15, 0x1

    move/from16 v7, v43

    move/from16 v6, v44

    goto :goto_1

    .line 113
    .end local v15    # "i":I
    .end local v43    # "rgb":I
    .end local v44    # "div":I
    .restart local v6    # "div":I
    .restart local v7    # "rgb":I
    :cond_0
    move/from16 v44, v6

    move/from16 v43, v7

    .end local v6    # "div":I
    .end local v7    # "rgb":I
    .restart local v43    # "rgb":I
    .restart local v44    # "div":I
    const/4 v6, 0x1

    .local v6, "i":I
    :goto_2
    if-gt v6, v3, :cond_2

    .line 114
    if-gt v6, v9, :cond_1

    add-int/lit8 v36, v36, 0x1

    .line 116
    :cond_1
    aget v7, p0, v36

    .line 117
    .end local v43    # "rgb":I
    .restart local v7    # "rgb":I
    ushr-int/lit8 v15, v7, 0x18

    and-int/lit16 v10, v15, 0xff

    .line 118
    ushr-int/lit8 v15, v7, 0x10

    and-int/lit16 v12, v15, 0xff

    .line 119
    ushr-int/lit8 v15, v7, 0x8

    and-int/lit16 v13, v15, 0xff

    .line 120
    and-int/lit16 v14, v7, 0xff

    .line 122
    add-int v15, v6, v3

    aput v7, v8, v15

    .line 124
    add-int/lit8 v15, v3, 0x1

    sub-int/2addr v15, v6

    mul-int/2addr v15, v10

    move/from16 v46, v7

    move-object/from16 v45, v8

    int-to-long v7, v15

    .end local v7    # "rgb":I
    .end local v8    # "stack":[I
    .local v45, "stack":[I
    .local v46, "rgb":I
    add-long v30, v30, v7

    .line 125
    add-int/lit8 v7, v3, 0x1

    sub-int/2addr v7, v6

    mul-int/2addr v7, v12

    int-to-long v7, v7

    add-long v38, v38, v7

    .line 126
    add-int/lit8 v7, v3, 0x1

    sub-int/2addr v7, v6

    mul-int/2addr v7, v13

    int-to-long v7, v7

    add-long v18, v18, v7

    .line 127
    add-int/lit8 v7, v3, 0x1

    sub-int/2addr v7, v6

    mul-int/2addr v7, v14

    int-to-long v7, v7

    add-long v24, v24, v7

    .line 129
    int-to-long v7, v10

    add-long v32, v32, v7

    .line 130
    int-to-long v7, v12

    add-long v40, v40, v7

    .line 131
    int-to-long v7, v13

    add-long v20, v20, v7

    .line 132
    int-to-long v7, v14

    add-long v26, v26, v7

    .line 113
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v8, v45

    move/from16 v43, v46

    goto :goto_2

    .line 135
    .end local v6    # "i":I
    .end local v45    # "stack":[I
    .end local v46    # "rgb":I
    .restart local v8    # "stack":[I
    .restart local v43    # "rgb":I
    :cond_2
    move-object/from16 v45, v8

    .end local v8    # "stack":[I
    .restart local v45    # "stack":[I
    move v6, v3

    .line 136
    .local v6, "sp":I
    move v7, v3

    .line 137
    .local v7, "xp":I
    if-le v7, v9, :cond_3

    move v7, v9

    .line 139
    :cond_3
    mul-int v8, v11, v1

    add-int/2addr v8, v7

    .line 141
    .end local v36    # "src_i":I
    .local v8, "src_i":I
    move v15, v7

    move v7, v6

    const/4 v6, 0x0

    .local v6, "x":I
    .local v7, "sp":I
    .local v15, "xp":I
    :goto_3
    if-ge v6, v1, :cond_7

    .line 142
    move/from16 v47, v12

    move/from16 v48, v13

    int-to-long v12, v4

    .end local v12    # "r":I
    .end local v13    # "g":I
    .local v47, "r":I
    .local v48, "g":I
    mul-long v12, v12, v30

    ushr-long/2addr v12, v5

    long-to-int v12, v12

    and-int/lit16 v12, v12, 0xff

    .line 143
    .local v12, "tmp_a":I
    move/from16 v49, v14

    int-to-long v13, v4

    .end local v14    # "b":I
    .local v49, "b":I
    mul-long v13, v13, v38

    ushr-long/2addr v13, v5

    long-to-int v13, v13

    and-int/lit16 v13, v13, 0xff

    .line 144
    .local v13, "tmp_r":I
    int-to-long v1, v4

    mul-long v1, v1, v18

    ushr-long/2addr v1, v5

    long-to-int v1, v1

    and-int/lit16 v1, v1, 0xff

    .line 145
    .local v1, "tmp_g":I
    move/from16 v51, v10

    move/from16 v50, v11

    int-to-long v10, v4

    .end local v10    # "a":I
    .end local v11    # "y":I
    .local v50, "y":I
    .local v51, "a":I
    mul-long v10, v10, v24

    ushr-long/2addr v10, v5

    long-to-int v2, v10

    and-int/lit16 v2, v2, 0xff

    .line 146
    .local v2, "tmp_b":I
    shl-int/lit8 v10, v12, 0x18

    shl-int/lit8 v11, v13, 0x10

    or-int/2addr v10, v11

    shl-int/lit8 v11, v1, 0x8

    or-int/2addr v10, v11

    or-int/2addr v10, v2

    aput v10, p0, v37

    .line 147
    add-int/lit8 v37, v37, 0x1

    .line 149
    sub-long v30, v30, v34

    .line 150
    sub-long v38, v38, v16

    .line 151
    sub-long v18, v18, v22

    .line 152
    sub-long v24, v24, v28

    .line 154
    add-int v10, v7, v44

    sub-int/2addr v10, v3

    .line 155
    .local v10, "stack_start":I
    move/from16 v11, v44

    if-lt v10, v11, :cond_4

    .end local v44    # "div":I
    .local v11, "div":I
    sub-int/2addr v10, v11

    .line 157
    :cond_4
    move v14, v10

    .line 158
    .local v14, "stack_i":I
    move/from16 v52, v1

    aget v1, v45, v14

    .line 159
    .end local v43    # "rgb":I
    .local v1, "rgb":I
    .local v52, "tmp_g":I
    move/from16 v53, v2

    ushr-int/lit8 v2, v1, 0x18

    .end local v2    # "tmp_b":I
    .local v53, "tmp_b":I
    and-int/lit16 v2, v2, 0xff

    .line 160
    .end local v51    # "a":I
    .local v2, "a":I
    move/from16 v54, v10

    ushr-int/lit8 v10, v1, 0x10

    .end local v10    # "stack_start":I
    .local v54, "stack_start":I
    and-int/lit16 v10, v10, 0xff

    .line 161
    .end local v47    # "r":I
    .local v10, "r":I
    move/from16 v55, v12

    ushr-int/lit8 v12, v1, 0x8

    .end local v12    # "tmp_a":I
    .local v55, "tmp_a":I
    and-int/lit16 v12, v12, 0xff

    .line 162
    .end local v48    # "g":I
    .local v12, "g":I
    move/from16 v56, v13

    and-int/lit16 v13, v1, 0xff

    .line 164
    .end local v49    # "b":I
    .local v13, "b":I
    .local v56, "tmp_r":I
    move/from16 v57, v4

    move/from16 v58, v5

    int-to-long v4, v2

    .end local v4    # "mul_sum":S
    .end local v5    # "shr_sum":S
    .local v57, "mul_sum":S
    .local v58, "shr_sum":S
    sub-long v34, v34, v4

    .line 165
    int-to-long v4, v10

    sub-long v16, v16, v4

    .line 166
    int-to-long v4, v12

    sub-long v22, v22, v4

    .line 167
    int-to-long v4, v13

    sub-long v28, v28, v4

    .line 169
    if-ge v15, v9, :cond_5

    .line 170
    add-int/lit8 v8, v8, 0x1

    .line 171
    add-int/lit8 v15, v15, 0x1

    .line 174
    :cond_5
    aget v1, p0, v8

    .line 175
    ushr-int/lit8 v4, v1, 0x18

    and-int/lit16 v2, v4, 0xff

    .line 176
    ushr-int/lit8 v4, v1, 0x10

    and-int/lit16 v4, v4, 0xff

    .line 177
    .end local v10    # "r":I
    .local v4, "r":I
    ushr-int/lit8 v5, v1, 0x8

    and-int/lit16 v5, v5, 0xff

    .line 178
    .end local v12    # "g":I
    .local v5, "g":I
    and-int/lit16 v10, v1, 0xff

    .line 180
    .end local v13    # "b":I
    .local v10, "b":I
    aput v1, v45, v14

    .line 182
    int-to-long v12, v2

    add-long v32, v32, v12

    .line 183
    int-to-long v12, v4

    add-long v40, v40, v12

    .line 184
    int-to-long v12, v5

    add-long v20, v20, v12

    .line 185
    int-to-long v12, v10

    add-long v26, v26, v12

    .line 187
    add-long v30, v30, v32

    .line 188
    add-long v38, v38, v40

    .line 189
    add-long v18, v18, v20

    .line 190
    add-long v24, v24, v26

    .line 192
    add-int/lit8 v7, v7, 0x1

    .line 193
    if-lt v7, v11, :cond_6

    const/4 v7, 0x0

    .line 195
    :cond_6
    move v12, v7

    .line 196
    .end local v14    # "stack_i":I
    .local v12, "stack_i":I
    aget v1, v45, v12

    .line 197
    ushr-int/lit8 v13, v1, 0x18

    and-int/lit16 v2, v13, 0xff

    .line 198
    ushr-int/lit8 v13, v1, 0x10

    and-int/lit16 v4, v13, 0xff

    .line 199
    ushr-int/lit8 v13, v1, 0x8

    and-int/lit16 v13, v13, 0xff

    .line 200
    .end local v5    # "g":I
    .local v13, "g":I
    and-int/lit16 v14, v1, 0xff

    .line 202
    .end local v10    # "b":I
    .local v14, "b":I
    move/from16 v60, v7

    move/from16 v59, v8

    int-to-long v7, v2

    .end local v7    # "sp":I
    .end local v8    # "src_i":I
    .local v59, "src_i":I
    .local v60, "sp":I
    add-long v34, v34, v7

    .line 203
    int-to-long v7, v4

    add-long v16, v16, v7

    .line 204
    int-to-long v7, v13

    add-long v22, v22, v7

    .line 205
    int-to-long v7, v14

    add-long v28, v28, v7

    .line 207
    int-to-long v7, v2

    sub-long v32, v32, v7

    .line 208
    int-to-long v7, v4

    sub-long v40, v40, v7

    .line 209
    int-to-long v7, v13

    sub-long v20, v20, v7

    .line 210
    int-to-long v7, v14

    sub-long v26, v26, v7

    .line 141
    .end local v12    # "stack_i":I
    .end local v52    # "tmp_g":I
    .end local v53    # "tmp_b":I
    .end local v54    # "stack_start":I
    .end local v55    # "tmp_a":I
    .end local v56    # "tmp_r":I
    add-int/lit8 v6, v6, 0x1

    move/from16 v43, v1

    move v10, v2

    move v12, v4

    move/from16 v44, v11

    move/from16 v11, v50

    move/from16 v4, v57

    move/from16 v5, v58

    move/from16 v8, v59

    move/from16 v7, v60

    move/from16 v1, p1

    move/from16 v2, p2

    goto/16 :goto_3

    .line 84
    .end local v1    # "rgb":I
    .end local v2    # "a":I
    .end local v6    # "x":I
    .end local v13    # "g":I
    .end local v14    # "b":I
    .end local v15    # "xp":I
    .end local v16    # "sum_r_o":J
    .end local v18    # "sum_g":J
    .end local v20    # "sum_g_i":J
    .end local v22    # "sum_g_o":J
    .end local v24    # "sum_b":J
    .end local v26    # "sum_b_i":J
    .end local v28    # "sum_b_o":J
    .end local v30    # "sum_a":J
    .end local v32    # "sum_a_i":J
    .end local v34    # "sum_a_o":J
    .end local v37    # "dst_i":I
    .end local v38    # "sum_r":J
    .end local v40    # "sum_r_i":J
    .end local v50    # "y":I
    .end local v57    # "mul_sum":S
    .end local v58    # "shr_sum":S
    .end local v59    # "src_i":I
    .end local v60    # "sp":I
    .local v4, "mul_sum":S
    .local v5, "shr_sum":S
    .local v11, "y":I
    .restart local v44    # "div":I
    :cond_7
    move/from16 v57, v4

    move/from16 v58, v5

    move/from16 v50, v11

    move/from16 v11, v44

    .end local v4    # "mul_sum":S
    .end local v5    # "shr_sum":S
    .end local v44    # "div":I
    .local v11, "div":I
    .restart local v50    # "y":I
    .restart local v57    # "mul_sum":S
    .restart local v58    # "shr_sum":S
    add-int/lit8 v1, v50, 0x1

    .end local v50    # "y":I
    .local v1, "y":I
    move v6, v11

    move-object/from16 v8, v45

    move/from16 v2, p2

    const/4 v7, 0x1

    move v11, v1

    move/from16 v1, p1

    goto/16 :goto_0

    .line 214
    .end local v1    # "y":I
    .end local v11    # "div":I
    .end local v45    # "stack":[I
    .end local v57    # "mul_sum":S
    .end local v58    # "shr_sum":S
    .restart local v4    # "mul_sum":S
    .restart local v5    # "shr_sum":S
    .local v6, "div":I
    .local v8, "stack":[I
    :cond_8
    move/from16 v57, v4

    move/from16 v58, v5

    move v11, v6

    move-object/from16 v45, v8

    .end local v4    # "mul_sum":S
    .end local v5    # "shr_sum":S
    .end local v6    # "div":I
    .end local v8    # "stack":[I
    .restart local v11    # "div":I
    .restart local v45    # "stack":[I
    .restart local v57    # "mul_sum":S
    .restart local v58    # "shr_sum":S
    move/from16 v1, p2

    add-int/lit8 v2, v1, -0x1

    .line 216
    .local v2, "hm":I
    const/4 v4, 0x0

    .local v4, "x":I
    :goto_4
    move/from16 v5, p1

    if-ge v4, v5, :cond_11

    .line 217
    const-wide/16 v6, 0x0

    .local v6, "sum_a":J
    const-wide/16 v12, 0x0

    .local v12, "sum_a_i":J
    const-wide/16 v14, 0x0

    .line 218
    .local v14, "sum_a_o":J
    const-wide/16 v16, 0x0

    .local v16, "sum_r":J
    const-wide/16 v18, 0x0

    .local v18, "sum_r_i":J
    const-wide/16 v20, 0x0

    .line 219
    .local v20, "sum_r_o":J
    const-wide/16 v22, 0x0

    .local v22, "sum_g":J
    const-wide/16 v24, 0x0

    .local v24, "sum_g_i":J
    const-wide/16 v26, 0x0

    .line 220
    .local v26, "sum_g_o":J
    const-wide/16 v28, 0x0

    .local v28, "sum_b":J
    const-wide/16 v30, 0x0

    .local v30, "sum_b_i":J
    const-wide/16 v32, 0x0

    .line 222
    .local v32, "sum_b_o":J
    move v8, v4

    .line 223
    .local v8, "src_i":I
    move v10, v4

    .line 225
    .local v10, "dst_i":I
    move-wide/from16 v61, v6

    aget v6, p0, v8

    .line 226
    .local v6, "rgb":I
    .local v61, "sum_a":J
    ushr-int/lit8 v7, v6, 0x18

    and-int/lit16 v7, v7, 0xff

    .line 227
    .local v7, "a":I
    move/from16 v63, v8

    ushr-int/lit8 v8, v6, 0x10

    .end local v8    # "src_i":I
    .local v63, "src_i":I
    and-int/lit16 v8, v8, 0xff

    .line 228
    .local v8, "r":I
    move/from16 v64, v9

    ushr-int/lit8 v9, v6, 0x8

    .end local v9    # "wm":I
    .local v64, "wm":I
    and-int/lit16 v9, v9, 0xff

    .line 229
    .local v9, "g":I
    move/from16 v65, v10

    and-int/lit16 v10, v6, 0xff

    .line 231
    .local v10, "b":I
    .local v65, "dst_i":I
    move-wide/from16 v34, v32

    move-wide/from16 v32, v26

    move-wide/from16 v26, v20

    move-wide/from16 v20, v14

    const/4 v14, 0x0

    .local v14, "i":I
    .local v20, "sum_a_o":J
    .local v26, "sum_r_o":J
    .local v32, "sum_g_o":J
    .local v34, "sum_b_o":J
    :goto_5
    if-gt v14, v3, :cond_9

    .line 232
    aput v6, v45, v14

    .line 234
    add-int/lit8 v15, v14, 0x1

    mul-int/2addr v15, v7

    move-wide/from16 v66, v12

    int-to-long v12, v15

    .end local v12    # "sum_a_i":J
    .local v66, "sum_a_i":J
    add-long v61, v61, v12

    .line 235
    add-int/lit8 v12, v14, 0x1

    mul-int/2addr v12, v8

    int-to-long v12, v12

    add-long v16, v16, v12

    .line 236
    add-int/lit8 v12, v14, 0x1

    mul-int/2addr v12, v9

    int-to-long v12, v12

    add-long v22, v22, v12

    .line 237
    add-int/lit8 v12, v14, 0x1

    mul-int/2addr v12, v10

    int-to-long v12, v12

    add-long v28, v28, v12

    .line 239
    int-to-long v12, v7

    add-long v20, v20, v12

    .line 240
    int-to-long v12, v8

    add-long v26, v26, v12

    .line 241
    int-to-long v12, v9

    add-long v32, v32, v12

    .line 242
    int-to-long v12, v10

    add-long v34, v34, v12

    .line 231
    add-int/lit8 v14, v14, 0x1

    move-wide/from16 v12, v66

    goto :goto_5

    .line 245
    .end local v14    # "i":I
    .end local v66    # "sum_a_i":J
    .restart local v12    # "sum_a_i":J
    :cond_9
    move-wide/from16 v66, v12

    .end local v12    # "sum_a_i":J
    .restart local v66    # "sum_a_i":J
    move v12, v10

    move v10, v9

    move v9, v8

    move v8, v7

    move v7, v6

    const/4 v6, 0x1

    .local v6, "i":I
    .local v7, "rgb":I
    .local v8, "a":I
    .local v9, "r":I
    .local v10, "g":I
    .local v12, "b":I
    :goto_6
    if-gt v6, v3, :cond_b

    .line 246
    if-gt v6, v2, :cond_a

    add-int v63, v63, v5

    .line 248
    :cond_a
    aget v7, p0, v63

    .line 249
    ushr-int/lit8 v13, v7, 0x18

    and-int/lit16 v8, v13, 0xff

    .line 250
    ushr-int/lit8 v13, v7, 0x10

    and-int/lit16 v9, v13, 0xff

    .line 251
    ushr-int/lit8 v13, v7, 0x8

    and-int/lit16 v10, v13, 0xff

    .line 252
    and-int/lit16 v12, v7, 0xff

    .line 254
    add-int v13, v6, v3

    aput v7, v45, v13

    .line 256
    add-int/lit8 v13, v3, 0x1

    sub-int/2addr v13, v6

    mul-int/2addr v13, v8

    int-to-long v13, v13

    add-long v61, v61, v13

    .line 257
    add-int/lit8 v13, v3, 0x1

    sub-int/2addr v13, v6

    mul-int/2addr v13, v9

    int-to-long v13, v13

    add-long v16, v16, v13

    .line 258
    add-int/lit8 v13, v3, 0x1

    sub-int/2addr v13, v6

    mul-int/2addr v13, v10

    int-to-long v13, v13

    add-long v22, v22, v13

    .line 259
    add-int/lit8 v13, v3, 0x1

    sub-int/2addr v13, v6

    mul-int/2addr v13, v12

    int-to-long v13, v13

    add-long v28, v28, v13

    .line 261
    int-to-long v13, v8

    add-long v66, v66, v13

    .line 262
    int-to-long v13, v9

    add-long v18, v18, v13

    .line 263
    int-to-long v13, v10

    add-long v24, v24, v13

    .line 264
    int-to-long v13, v12

    add-long v30, v30, v13

    .line 245
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 267
    .end local v6    # "i":I
    :cond_b
    move v6, v3

    .line 268
    .local v6, "sp":I
    move v13, v3

    .line 269
    .local v13, "yp":I
    if-le v13, v2, :cond_c

    move v13, v2

    .line 271
    :cond_c
    mul-int v14, v13, v5

    add-int/2addr v14, v4

    .line 273
    .end local v63    # "src_i":I
    .local v14, "src_i":I
    move v15, v13

    move v13, v6

    const/4 v6, 0x0

    .local v6, "y":I
    .local v13, "sp":I
    .local v15, "yp":I
    :goto_7
    if-ge v6, v1, :cond_10

    .line 274
    move/from16 v68, v7

    move/from16 v69, v8

    move/from16 v1, v57

    int-to-long v7, v1

    .end local v7    # "rgb":I
    .end local v8    # "a":I
    .end local v57    # "mul_sum":S
    .local v1, "mul_sum":S
    .local v68, "rgb":I
    .local v69, "a":I
    mul-long v7, v7, v61

    ushr-long v7, v7, v58

    long-to-int v7, v7

    and-int/lit16 v7, v7, 0xff

    .line 275
    .local v7, "tmp_a":I
    move/from16 v70, v9

    int-to-long v8, v1

    .end local v9    # "r":I
    .local v70, "r":I
    mul-long v8, v8, v16

    ushr-long v8, v8, v58

    long-to-int v8, v8

    and-int/lit16 v8, v8, 0xff

    .line 276
    .local v8, "tmp_r":I
    move/from16 v71, v10

    int-to-long v9, v1

    .end local v10    # "g":I
    .local v71, "g":I
    mul-long v9, v9, v22

    ushr-long v9, v9, v58

    long-to-int v9, v9

    and-int/lit16 v9, v9, 0xff

    .line 277
    .local v9, "tmp_g":I
    move/from16 v72, v14

    move/from16 v73, v15

    int-to-long v14, v1

    .end local v14    # "src_i":I
    .end local v15    # "yp":I
    .local v72, "src_i":I
    .local v73, "yp":I
    mul-long v14, v14, v28

    ushr-long v14, v14, v58

    long-to-int v10, v14

    and-int/lit16 v10, v10, 0xff

    .line 278
    .local v10, "tmp_b":I
    shl-int/lit8 v14, v7, 0x18

    shl-int/lit8 v15, v8, 0x10

    or-int/2addr v14, v15

    shl-int/lit8 v15, v9, 0x8

    or-int/2addr v14, v15

    or-int/2addr v14, v10

    aput v14, p0, v65

    .line 279
    add-int v65, v65, v5

    .line 281
    sub-long v61, v61, v20

    .line 282
    sub-long v16, v16, v26

    .line 283
    sub-long v22, v22, v32

    .line 284
    sub-long v28, v28, v34

    .line 286
    add-int v14, v13, v11

    sub-int/2addr v14, v3

    .line 287
    .local v14, "stack_start":I
    if-lt v14, v11, :cond_d

    sub-int/2addr v14, v11

    .line 289
    :cond_d
    move v15, v14

    .line 290
    .local v15, "stack_i":I
    move/from16 v74, v1

    aget v1, v45, v15

    .line 291
    .end local v68    # "rgb":I
    .local v1, "rgb":I
    .local v74, "mul_sum":S
    ushr-int/lit8 v3, v1, 0x18

    and-int/lit16 v3, v3, 0xff

    .line 292
    .end local v69    # "a":I
    .local v3, "a":I
    move/from16 v75, v7

    ushr-int/lit8 v7, v1, 0x10

    .end local v7    # "tmp_a":I
    .local v75, "tmp_a":I
    and-int/lit16 v7, v7, 0xff

    .line 293
    .end local v70    # "r":I
    .local v7, "r":I
    move/from16 v76, v8

    ushr-int/lit8 v8, v1, 0x8

    .end local v8    # "tmp_r":I
    .local v76, "tmp_r":I
    and-int/lit16 v8, v8, 0xff

    .line 294
    .end local v71    # "g":I
    .local v8, "g":I
    and-int/lit16 v12, v1, 0xff

    .line 296
    move/from16 v77, v9

    move/from16 v78, v10

    int-to-long v9, v3

    .end local v9    # "tmp_g":I
    .end local v10    # "tmp_b":I
    .local v77, "tmp_g":I
    .local v78, "tmp_b":I
    sub-long v20, v20, v9

    .line 297
    int-to-long v9, v7

    sub-long v26, v26, v9

    .line 298
    int-to-long v9, v8

    sub-long v32, v32, v9

    .line 299
    int-to-long v9, v12

    sub-long v34, v34, v9

    .line 301
    move/from16 v9, v73

    if-ge v9, v2, :cond_e

    .line 302
    .end local v73    # "yp":I
    .local v9, "yp":I
    add-int v10, v72, v5

    .line 303
    .end local v72    # "src_i":I
    .local v10, "src_i":I
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    .line 306
    .end local v10    # "src_i":I
    .restart local v72    # "src_i":I
    :cond_e
    move/from16 v10, v72

    .end local v72    # "src_i":I
    .restart local v10    # "src_i":I
    :goto_8
    aget v1, p0, v10

    .line 307
    ushr-int/lit8 v0, v1, 0x18

    and-int/lit16 v0, v0, 0xff

    .line 308
    .end local v3    # "a":I
    .local v0, "a":I
    ushr-int/lit8 v3, v1, 0x10

    and-int/lit16 v3, v3, 0xff

    .line 309
    .end local v7    # "r":I
    .local v3, "r":I
    ushr-int/lit8 v7, v1, 0x8

    and-int/lit16 v7, v7, 0xff

    .line 310
    .end local v8    # "g":I
    .local v7, "g":I
    and-int/lit16 v8, v1, 0xff

    .line 312
    .end local v12    # "b":I
    .local v8, "b":I
    aput v1, v45, v15

    .line 314
    move/from16 v80, v1

    move/from16 v79, v2

    int-to-long v1, v0

    .end local v1    # "rgb":I
    .end local v2    # "hm":I
    .local v79, "hm":I
    .local v80, "rgb":I
    add-long v66, v66, v1

    .line 315
    int-to-long v1, v3

    add-long v18, v18, v1

    .line 316
    int-to-long v1, v7

    add-long v24, v24, v1

    .line 317
    int-to-long v1, v8

    add-long v30, v30, v1

    .line 319
    add-long v61, v61, v66

    .line 320
    add-long v16, v16, v18

    .line 321
    add-long v22, v22, v24

    .line 322
    add-long v28, v28, v30

    .line 324
    add-int/lit8 v13, v13, 0x1

    .line 325
    if-lt v13, v11, :cond_f

    const/4 v1, 0x0

    .line 327
    .end local v13    # "sp":I
    .local v1, "sp":I
    move v13, v1

    .end local v1    # "sp":I
    .restart local v13    # "sp":I
    :cond_f
    move v1, v13

    .line 328
    .end local v15    # "stack_i":I
    .local v1, "stack_i":I
    aget v2, v45, v1

    .line 329
    .end local v80    # "rgb":I
    .local v2, "rgb":I
    ushr-int/lit8 v12, v2, 0x18

    and-int/lit16 v0, v12, 0xff

    .line 330
    ushr-int/lit8 v12, v2, 0x10

    and-int/lit16 v3, v12, 0xff

    .line 331
    ushr-int/lit8 v12, v2, 0x8

    and-int/lit16 v7, v12, 0xff

    .line 332
    and-int/lit16 v12, v2, 0xff

    .line 334
    .end local v8    # "b":I
    .restart local v12    # "b":I
    move/from16 v81, v1

    move/from16 v82, v2

    int-to-long v1, v0

    .end local v1    # "stack_i":I
    .end local v2    # "rgb":I
    .local v81, "stack_i":I
    .local v82, "rgb":I
    add-long v20, v20, v1

    .line 335
    int-to-long v1, v3

    add-long v26, v26, v1

    .line 336
    int-to-long v1, v7

    add-long v32, v32, v1

    .line 337
    int-to-long v1, v12

    add-long v34, v34, v1

    .line 339
    int-to-long v1, v0

    sub-long v66, v66, v1

    .line 340
    int-to-long v1, v3

    sub-long v18, v18, v1

    .line 341
    int-to-long v1, v7

    sub-long v24, v24, v1

    .line 342
    int-to-long v1, v12

    sub-long v30, v30, v1

    .line 273
    .end local v14    # "stack_start":I
    .end local v75    # "tmp_a":I
    .end local v76    # "tmp_r":I
    .end local v77    # "tmp_g":I
    .end local v78    # "tmp_b":I
    .end local v81    # "stack_i":I
    add-int/lit8 v6, v6, 0x1

    move v8, v0

    move v15, v9

    move v14, v10

    move/from16 v57, v74

    move/from16 v2, v79

    move/from16 v1, p2

    move v9, v3

    move v10, v7

    move/from16 v7, v82

    move/from16 v3, p3

    goto/16 :goto_7

    .line 216
    .end local v0    # "a":I
    .end local v3    # "r":I
    .end local v6    # "y":I
    .end local v7    # "g":I
    .end local v9    # "yp":I
    .end local v10    # "src_i":I
    .end local v12    # "b":I
    .end local v13    # "sp":I
    .end local v16    # "sum_r":J
    .end local v18    # "sum_r_i":J
    .end local v20    # "sum_a_o":J
    .end local v22    # "sum_g":J
    .end local v24    # "sum_g_i":J
    .end local v26    # "sum_r_o":J
    .end local v28    # "sum_b":J
    .end local v30    # "sum_b_i":J
    .end local v32    # "sum_g_o":J
    .end local v34    # "sum_b_o":J
    .end local v61    # "sum_a":J
    .end local v65    # "dst_i":I
    .end local v66    # "sum_a_i":J
    .end local v74    # "mul_sum":S
    .end local v79    # "hm":I
    .end local v82    # "rgb":I
    .local v2, "hm":I
    .restart local v57    # "mul_sum":S
    :cond_10
    move/from16 v79, v2

    move/from16 v74, v57

    .end local v2    # "hm":I
    .end local v57    # "mul_sum":S
    .restart local v74    # "mul_sum":S
    .restart local v79    # "hm":I
    add-int/lit8 v4, v4, 0x1

    move/from16 v9, v64

    move/from16 v1, p2

    move/from16 v3, p3

    goto/16 :goto_4

    .line 345
    .end local v4    # "x":I
    .end local v64    # "wm":I
    .end local v74    # "mul_sum":S
    .end local v79    # "hm":I
    .restart local v2    # "hm":I
    .local v9, "wm":I
    .restart local v57    # "mul_sum":S
    :cond_11
    move/from16 v79, v2

    move/from16 v64, v9

    move/from16 v74, v57

    .end local v2    # "hm":I
    .end local v9    # "wm":I
    .end local v57    # "mul_sum":S
    .restart local v64    # "wm":I
    .restart local v74    # "mul_sum":S
    .restart local v79    # "hm":I
    return-void
.end method
