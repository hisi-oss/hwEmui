.class public abstract Lvendor/huawei/hardware/tp/V1_0/ITouchscreen$Stub;
.super Landroid/os/HwBinder;
.source "ITouchscreen.java"

# interfaces
.implements Lvendor/huawei/hardware/tp/V1_0/ITouchscreen;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/huawei/hardware/tp/V1_0/ITouchscreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1315
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 1318
    return-object p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 1360
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 1361
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 1362
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 1363
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 1364
    return-object v0
.end method

.method public final getHashChain()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .line 1336
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-array v1, v1, [[B

    const/16 v2, 0x20

    new-array v3, v2, [B

    fill-array-data v3, :array_0

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    nop

    :array_0
    .array-data 1
        -0x16t
        -0x30t
        0x3at
        0x29t
        0x22t
        0x42t
        -0x16t
        0x76t
        0x16t
        -0xdt
        -0x31t
        0x7at
        0x10t
        0x61t
        -0x5et
        0x69t
        0x54t
        0x56t
        0x4bt
        -0x1at
        0x38t
        0x18t
        0x7at
        -0x3t
        0x41t
        -0x7ct
        0x43t
        0x24t
        -0x3at
        -0x80t
        -0x28t
        -0x52t
    .end array-data

    :array_1
    .array-data 1
        -0x43t
        -0x26t
        -0x4at
        0x18t
        0x4dt
        0x7at
        0x34t
        0x6dt
        -0x5at
        -0x60t
        0x7dt
        -0x40t
        -0x7et
        -0x74t
        -0xft
        -0x66t
        0x69t
        0x6ft
        0x4ct
        -0x56t
        0x36t
        0x11t
        -0x3bt
        0x1ft
        0x2et
        0x14t
        0x56t
        0x5at
        0x14t
        -0x4ct
        0xft
        -0x27t
    .end array-data
.end method

.method public final interfaceChain()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1323
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.huawei.hardware.tp@1.0::ITouchscreen"

    const-string v2, "android.hidl.base@1.0::IBase"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 1330
    const-string v0, "vendor.huawei.hardware.tp@1.0::ITouchscreen"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 1349
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 1369
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 1370
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 16
    .param p1, "_hidl_code"    # I
    .param p2, "_hidl_request"    # Landroid/os/HwParcel;
    .param p3, "_hidl_reply"    # Landroid/os/HwParcel;
    .param p4, "_hidl_flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    .line 1398
    const/high16 v0, -0x80000000

    const/4 v9, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_27

    .line 2235
    :sswitch_0
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_0

    move v9, v1

    nop

    :cond_0
    move v1, v9

    .line 2236
    .local v1, "_hidl_is_oneway":Z
    if-eqz v1, :cond_61

    .line 2237
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2238
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2239
    goto/16 :goto_27

    .line 2222
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_1
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_1

    move v9, v1

    nop

    :cond_1
    move v2, v9

    .line 2223
    .local v2, "_hidl_is_oneway":Z
    if-eq v2, v1, :cond_2

    .line 2224
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2225
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2226
    goto/16 :goto_27

    .line 2227
    :cond_2
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2229
    invoke-virtual/range {p0 .. p0}, Lvendor/huawei/hardware/tp/V1_0/ITouchscreen$Stub;->notifySyspropsChanged()V

    .line 2230
    goto/16 :goto_27

    .line 2206
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_2
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    move v1, v9

    .line 2207
    .restart local v1    # "_hidl_is_oneway":Z
    :goto_0
    if-eqz v1, :cond_4

    .line 2208
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2209
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2210
    goto/16 :goto_27

    .line 2211
    :cond_4
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2213
    invoke-virtual/range {p0 .. p0}, Lvendor/huawei/hardware/tp/V1_0/ITouchscreen$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 2214
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {v8, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2215
    invoke-virtual {v0, v8}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2216
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2217
    goto/16 :goto_27

    .line 2191
    .end local v0    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_3
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_5

    goto :goto_1

    :cond_5
    move v1, v9

    .line 2192
    .restart local v1    # "_hidl_is_oneway":Z
    :goto_1
    if-eqz v1, :cond_6

    .line 2193
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2194
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2195
    goto/16 :goto_27

    .line 2196
    :cond_6
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2198
    invoke-virtual/range {p0 .. p0}, Lvendor/huawei/hardware/tp/V1_0/ITouchscreen$Stub;->ping()V

    .line 2199
    invoke-virtual {v8, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2200
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2201
    goto/16 :goto_27

    .line 2181
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_4
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_7

    move v9, v1

    nop

    :cond_7
    move v1, v9

    .line 2182
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_61

    .line 2183
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2184
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2185
    goto/16 :goto_27

    .line 2168
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_5
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_8

    move v9, v1

    nop

    :cond_8
    move v2, v9

    .line 2169
    .restart local v2    # "_hidl_is_oneway":Z
    if-eq v2, v1, :cond_9

    .line 2170
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2171
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2172
    goto/16 :goto_27

    .line 2173
    :cond_9
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2175
    invoke-virtual/range {p0 .. p0}, Lvendor/huawei/hardware/tp/V1_0/ITouchscreen$Stub;->setHALInstrumentation()V

    .line 2176
    goto/16 :goto_27

    .line 2135
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_6
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_a

    goto :goto_2

    :cond_a
    move v1, v9

    .line 2136
    .restart local v1    # "_hidl_is_oneway":Z
    :goto_2
    if-eqz v1, :cond_b

    .line 2137
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2138
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2139
    goto/16 :goto_27

    .line 2140
    :cond_b
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2142
    invoke-virtual/range {p0 .. p0}, Lvendor/huawei/hardware/tp/V1_0/ITouchscreen$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 2143
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {v8, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2145
    new-instance v2, Landroid/os/HwBlob;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 2147
    .local v2, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2148
    .local v3, "_hidl_vec_size":I
    const-wide/16 v4, 0x8

    invoke-virtual {v2, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 2149
    const-wide/16 v4, 0xc

    invoke-virtual {v2, v4, v5, v9}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 2150
    new-instance v4, Landroid/os/HwBlob;

    mul-int/lit8 v5, v3, 0x20

    invoke-direct {v4, v5}, Landroid/os/HwBlob;-><init>(I)V

    .line 2151
    .local v4, "childBlob":Landroid/os/HwBlob;
    nop

    .local v9, "_hidl_index_0":I
    :goto_3
    move v5, v9

    .end local v9    # "_hidl_index_0":I
    .local v5, "_hidl_index_0":I
    if-ge v5, v3, :cond_c

    .line 2153
    mul-int/lit8 v9, v5, 0x20

    int-to-long v9, v9

    .line 2154
    .local v9, "_hidl_array_offset_1":J
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [B

    invoke-virtual {v4, v9, v10, v11}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 2155
    nop

    .line 2151
    .end local v9    # "_hidl_array_offset_1":J
    add-int/lit8 v9, v5, 0x1

    .end local v5    # "_hidl_index_0":I
    .local v9, "_hidl_index_0":I
    goto :goto_3

    .line 2158
    .end local v9    # "_hidl_index_0":I
    :cond_c
    const-wide/16 v9, 0x0

    invoke-virtual {v2, v9, v10, v4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 2160
    .end local v3    # "_hidl_vec_size":I
    .end local v4    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 2162
    .end local v2    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2163
    goto/16 :goto_27

    .line 2119
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_7
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_d

    goto :goto_4

    :cond_d
    move v1, v9

    .line 2120
    .restart local v1    # "_hidl_is_oneway":Z
    :goto_4
    if-eqz v1, :cond_e

    .line 2121
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2122
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2123
    goto/16 :goto_27

    .line 2124
    :cond_e
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2126
    invoke-virtual/range {p0 .. p0}, Lvendor/huawei/hardware/tp/V1_0/ITouchscreen$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 2127
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {v8, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2128
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2129
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2130
    goto/16 :goto_27

    .line 2105
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_8
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_f

    goto :goto_5

    :cond_f
    move v1, v9

    .line 2106
    .restart local v1    # "_hidl_is_oneway":Z
    :goto_5
    if-eqz v1, :cond_10

    .line 2107
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2108
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2109
    goto/16 :goto_27

    .line 2110
    :cond_10
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2112
    invoke-virtual {v8, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2113
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2114
    goto/16 :goto_27

    .line 2089
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_9
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_11

    goto :goto_6

    :cond_11
    move v1, v9

    .line 2090
    .restart local v1    # "_hidl_is_oneway":Z
    :goto_6
    if-eqz v1, :cond_12

    .line 2091
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2092
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2093
    goto/16 :goto_27

    .line 2094
    :cond_12
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2096
    invoke-virtual/range {p0 .. p0}, Lvendor/huawei/hardware/tp/V1_0/ITouchscreen$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 2097
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v8, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2098
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 2099
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2100
    goto/16 :goto_27

    .line 2071
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_0
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_13

    goto :goto_7

    :cond_13
    move v1, v9

    .line 2072
    .restart local v1    # "_hidl_is_oneway":Z
    :goto_7
    if-eqz v1, :cond_14

    .line 2073
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2074
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2075
    goto/16 :goto_27

    .line 2076
    :cond_14
    const-string v0, "vendor.huawei.hardware.tp@1.0::ITouchscreen"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2078
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2079
    .local v0, "feature":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2080
    .local v2, "config":Ljava/lang/String;
    invoke-virtual {v6, v0, v2}, Lvendor/huawei/hardware/tp/V1_0/ITouchscreen$Stub;->hwSetFeatureConfig(ILjava/lang/String;)I

    move-result v3

    .line 2081
    .local v3, "_hidl_out_code":I
    invoke-virtual {v8, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2082
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2083
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2084
    goto/16 :goto_27

    .line 2049
    .end local v0    # "feature":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "config":Ljava/lang/String;
    .end local v3    # "_hidl_out_code":I
    :pswitch_1
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_15

    move v9, v1

    nop

    :cond_15
    move v1, v9

    .line 2050
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_16

    .line 2051
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2052
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2053
    goto/16 :goto_27

    .line 2054
    :cond_16
    const-string v0, "vendor.huawei.hardware.tp@1.0::ITouchscreen"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2056
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2057
    .local v0, "command":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2058
    .local v2, "parameter":Ljava/lang/String;
    new-instance v3, Lvendor/huawei/hardware/tp/V1_0/ITouchscreen$Stub$7;

    invoke-direct {v3, v6, v8}, Lvendor/huawei/hardware/tp/V1_0/ITouchscreen$Stub$7;-><init>(Lvendor/huawei/hardware/tp/V1_0/ITouchscreen$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {v6, v0, v2, v3}, Lvendor/huawei/hardware/tp/V1_0/ITouchscreen$Stub;->hwTsRunCommand(Ljava/lang/String;Ljava/lang/String;Lvendor/huawei/hardware/tp/V1_0/ITouchscreen$hwTsRunCommandCallback;)V

    .line 2066
    goto/16 :goto_27

    .line 2032
    .end local v0    # "command":Ljava/lang/String;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "parameter":Ljava/lang/String;
    :pswitch_2
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_17

    goto :goto_8

    :cond_17
    move v1, v9

    .line 2033
    .restart local v1    # "_hidl_is_oneway":Z
    :goto_8
    if-eqz v1, :cond_18

    .line 2034
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2035
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2036
    goto/16 :goto_27

    .line 2037
    :cond_18
    const-string v0, "vendor.huawei.hardware.tp@1.0::ITouchscreen"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2039
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/huawei/hardware/tp/V1_0/ITPCallback;->asInterface(Landroid/os/IHwBinder;)Lvendor/huawei/hardware/tp/V1_0/ITPCallback;

    move-result-object v0

    .line 2040
    .local v0, "callback":Lvendor/huawei/hardware/tp/V1_0/ITPCallback;
    invoke-virtual {v6, v0}, Lvendor/huawei/hardware/tp/V1_0/ITouchscreen$Stub;->hwTsSetCallback(Lvendor/huawei/hardware/tp/V1_0/ITPCallback;)I

    move-result v2

    .line 2041
    .local v2, "_hidl_out_code":I
    invoke-virtual {v8, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2042
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2043
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2044
    goto/16 :goto_27

    .line 2015
    .end local v0    # "callback":Lvendor/huawei/hardware/tp/V1_0/ITPCallback;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "_hidl_out_code":I
    :pswitch_3
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_19

    goto :goto_9

    :cond_19
    move v1, v9

    .line 2016
    .restart local v1    # "_hidl_is_oneway":Z
    :goto_9
    if-eqz v1, :cond_1a

    .line 2017
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2018
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2019
    goto/16 :goto_27

    .line 2020
    :cond_1a
    const-string v0, "vendor.huawei.hardware.tp@1.0::ITouchscreen"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2022
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2023
    .local v0, "config":Ljava/lang/String;
    invoke-virtual {v6, v0}, Lvendor/huawei/hardware/tp/V1_0/ITouchscreen$Stub;->hwTsSetAftConfig(Ljava/lang/String;)I

    move-result v2

    .line 2024
    .restart local v2    # "_hidl_out_code":I
    invoke-virtual {v8, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2025
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2026
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2027
    goto/16 :goto_27

    .line 1998
    .end local v0    # "config":Ljava/lang/String;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "_hidl_out_code":I
    :pswitch_4
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_1b

    goto :goto_a

    :cond_1b
    move v1, v9

    .line 1999
    .restart local v1    # "_hidl_is_oneway":Z
    :goto_a
    if-eqz v1, :cond_1c

    .line 2000
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2001
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2002
    goto/16 :goto_27

    .line 2003
    :cond_1c
    const-string v0, "vendor.huawei.hardware.tp@1.0::ITouchscreen"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2005
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2006
    .local v0, "orientation":I
    invoke-virtual {v6, v0}, Lvendor/huawei/hardware/tp/V1_0/ITouchscreen$Stub;->hwTsSetAftAlgoOrientation(I)I

    move-result v2

    .line 2007
    .restart local v2    # "_hidl_out_code":I
    invoke-virtual {v8, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2008
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 2009
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2010
    goto/16 :goto_27

    .line 1981
    .end local v0    # "orientation":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "_hidl_out_code":I
    :pswitch_5
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_1d

    goto :goto_b

    :cond_1d
    move v1, v9

    .line 1982
    .restart local v1    # "_hidl_is_oneway":Z
    :goto_b
    if-eqz v1, :cond_1e

    .line 1983
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1984
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1985
    goto/16 :goto_27

    .line 1986
    :cond_1e
    const-string v0, "vendor.huawei.hardware.tp@1.0::ITouchscreen"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1988
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1989
    .local v0, "enable":I
    invoke-virtual {v6, v0}, Lvendor/huawei/hardware/tp/V1_0/ITouchscreen$Stub;->hwTsSetAftAlgoState(I)I

    move-result v2

    .line 1990
    .restart local v2    # "_hidl_out_code":I
    invoke-virtual {v8, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1991
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1992
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1993
    goto/16 :goto_27

    .line 1962
    .end local v0    # "enable":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "_hidl_out_code":I
    :pswitch_6
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_1f

    goto :goto_c

    :cond_1f
    move v1, v9

    .line 1963
    .restart local v1    # "_hidl_is_oneway":Z
    :goto_c
    if-eqz v1, :cond_20

    .line 1964
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1965
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1966
    goto/16 :goto_27

    .line 1967
    :cond_20
    const-string v0, "vendor.huawei.hardware.tp@1.0::ITouchscreen"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1969
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1970
    .local v0, "p":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1971
    .local v2, "x":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 1972
    .local v3, "y":I
    invoke-virtual {v6, v0, v2, v3}, Lvendor/huawei/hardware/tp/V1_0/ITouchscreen$Stub;->hwTsPressCalZcalPosChecking(III)I

    move-result v4

    .line 1973
    .local v4, "_hidl_out_code":I
    invoke-virtual {v8, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1974
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1975
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1976
    goto/16 :goto_27

    .line 1945
    .end local v0    # "p":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "x":I
    .end local v3    # "y":I
    .end local v4    # "_hidl_out_code":I
    :pswitch_7
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_21

    goto :goto_d

    :cond_21
    move v1, v9

    .line 1946
    .restart local v1    # "_hidl_is_oneway":Z
    :goto_d
    if-eqz v1, :cond_22

    .line 1947
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1948
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1949
    goto/16 :goto_27

    .line 1950
    :cond_22
    const-string v0, "vendor.huawei.hardware.tp@1.0::ITouchscreen"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1952
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1953
    .local v0, "type":I
    invoke-virtual {v6, v0}, Lvendor/huawei/hardware/tp/V1_0/ITouchscreen$Stub;->hwTsPressCalGetVersionInformation(I)I

    move-result v2

    .line 1954
    .local v2, "_hidl_out_version":I
    invoke-virtual {v8, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1955
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1956
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1957
    goto/16 :goto_27

    .line 1928
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "_hidl_out_version":I
    :pswitch_8
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_23

    goto :goto_e

    :cond_23
    move v1, v9

    .line 1929
    .restart local v1    # "_hidl_is_oneway":Z
    :goto_e
    if-eqz v1, :cond_24

    .line 1930
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1931
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1932
    goto/16 :goto_27

    .line 1933
    :cond_24
    const-string v0, "vendor.huawei.hardware.tp@1.0::ITouchscreen"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1935
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1936
    .local v0, "number":I
    invoke-virtual {v6, v0}, Lvendor/huawei/hardware/tp/V1_0/ITouchscreen$Stub;->hwTsPressCalStopVerify(I)Z

    move-result v2

    .line 1937
    .local v2, "_hidl_out_ret":Z
    invoke-virtual {v8, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1938
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1939
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1940
    goto/16 :goto_27

    .line 1911
    .end local v0    # "number":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "_hidl_out_ret":Z
    :pswitch_9
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_25

    goto :goto_f

    :cond_25
    move v1, v9

    .line 1912
    .restart local v1    # "_hidl_is_oneway":Z
    :goto_f
    if-eqz v1, :cond_26

    .line 1913
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1914
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1915
    goto/16 :goto_27

    .line 1916
    :cond_26
    const-string v0, "vendor.huawei.hardware.tp@1.0::ITouchscreen"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1918
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1919
    .restart local v0    # "number":I
    invoke-virtual {v6, v0}, Lvendor/huawei/hardware/tp/V1_0/ITouchscreen$Stub;->hwTsPressCalStartVerify(I)Z

    move-result v2

    .line 1920
    .restart local v2    # "_hidl_out_ret":Z
    invoke-virtual {v8, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1921
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1922
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1923
    goto/16 :goto_27

    .line 1894
    .end local v0    # "number":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "_hidl_out_ret":Z
    :pswitch_a
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_27

    goto :goto_10

    :cond_27
    move v1, v9

    .line 1895
    .restart local v1    # "_hidl_is_oneway":Z
    :goto_10
    if-eqz v1, :cond_28

    .line 1896
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1897
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1898
    goto/16 :goto_27

    .line 1899
    :cond_28
    const-string v0, "vendor.huawei.hardware.tp@1.0::ITouchscreen"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1901
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1902
    .restart local v0    # "number":I
    invoke-virtual {v6, v0}, Lvendor/huawei/hardware/tp/V1_0/ITouchscreen$Stub;->hwTsPressCalStopCalibration(I)Z

    move-result v2

    .line 1903
    .restart local v2    # "_hidl_out_ret":Z
    invoke-virtual {v8, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1904
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1905
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1906
    goto/16 :goto_27

    .line 1877
    .end local v0    # "number":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "_hidl_out_ret":Z
    :pswitch_b
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_29

    goto :goto_11

    :cond_29
    move v1, v9

    .line 1878
    .restart local v1    # "_hidl_is_oneway":Z
    :goto_11
    if-eqz v1, :cond_2a

    .line 1879
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1880
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1881
    goto/16 :goto_27

    .line 1882
    :cond_2a
    const-string v0, "vendor.huawei.hardware.tp@1.0::ITouchscreen"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1884
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1885
    .restart local v0    # "number":I
    invoke-virtual {v6, v0}, Lvendor/huawei/hardware/tp/V1_0/ITouchscreen$Stub;->hwTsPressCalStartCalibration(I)Z

    move-result v2

    .line 1886
    .restart local v2    # "_hidl_out_ret":Z
    invoke-virtual {v8, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1887
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1888
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1889
    goto/16 :goto_27

    .line 1861
    .end local v0    # "number":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "_hidl_out_ret":Z
    :pswitch_c
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_2b

    goto :goto_12

    :cond_2b
    move v1, v9

    .line 1862
    .restart local v1    # "_hidl_is_oneway":Z
    :goto_12
    if-eqz v1, :cond_2c

    .line 1863
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1864
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1865
    goto/16 :goto_27

    .line 1866
    :cond_2c
    const-string v0, "vendor.huawei.hardware.tp@1.0::ITouchscreen"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1868
    invoke-virtual/range {p0 .. p0}, Lvendor/huawei/hardware/tp/V1_0/ITouchscreen$Stub;->hwTsPressCalCloseCalibrationModule()Z

    move-result v0

    .line 1869
    .local v0, "_hidl_out_ret":Z
    invoke-virtual {v8, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1870
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1871
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1872
    goto/16 :goto_27

    .line 1845
    .end local v0    # "_hidl_out_ret":Z
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_d
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_2d

    goto :goto_13

    :cond_2d
    move v1, v9

    .line 1846
    .restart local v1    # "_hidl_is_oneway":Z
    :goto_13
    if-eqz v1, :cond_2e

    .line 1847
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1848
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1849
    goto/16 :goto_27

    .line 1850
    :cond_2e
    const-string v0, "vendor.huawei.hardware.tp@1.0::ITouchscreen"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1852
    invoke-virtual/range {p0 .. p0}, Lvendor/huawei/hardware/tp/V1_0/ITouchscreen$Stub;->hwTsPressCalOpenCalibrationModule()Z

    move-result v0

    .line 1853
    .restart local v0    # "_hidl_out_ret":Z
    invoke-virtual {v8, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1854
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1855
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1856
    goto/16 :goto_27

    .line 1828
    .end local v0    # "_hidl_out_ret":Z
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_e
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_2f

    goto :goto_14

    :cond_2f
    move v1, v9

    .line 1829
    .restart local v1    # "_hidl_is_oneway":Z
    :goto_14
    if-eqz v1, :cond_30

    .line 1830
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1831
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1832
    goto/16 :goto_27

    .line 1833
    :cond_30
    const-string v0, "vendor.huawei.hardware.tp@1.0::ITouchscreen"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1835
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1836
    .local v0, "point":I
    invoke-virtual {v6, v0}, Lvendor/huawei/hardware/tp/V1_0/ITouchscreen$Stub;->hwTsPressCalGetResultOfVerifyPoint(I)I

    move-result v2

    .line 1837
    .local v2, "_hidl_out_result":I
    invoke-virtual {v8, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1838
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1839
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1840
    goto/16 :goto_27

    .line 1812
    .end local v0    # "point":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "_hidl_out_result":I
    :pswitch_f
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_31

    goto :goto_15

    :cond_31
    move v1, v9

    .line 1813
    .restart local v1    # "_hidl_is_oneway":Z
    :goto_15
    if-eqz v1, :cond_32

    .line 1814
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1815
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1816
    goto/16 :goto_27

    .line 1817
    :cond_32
    const-string v0, "vendor.huawei.hardware.tp@1.0::ITouchscreen"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1819
    invoke-virtual/range {p0 .. p0}, Lvendor/huawei/hardware/tp/V1_0/ITouchscreen$Stub;->hwTsPressCalGetSizeOfVerifyPoint()I

    move-result v0

    .line 1820
    .local v0, "_hidl_out_count":I
    invoke-virtual {v8, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1821
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1822
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1823
    goto/16 :goto_27

    .line 1795
    .end local v0    # "_hidl_out_count":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_10
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_33

    goto :goto_16

    :cond_33
    move v1, v9

    .line 1796
    .restart local v1    # "_hidl_is_oneway":Z
    :goto_16
    if-eqz v1, :cond_34

    .line 1797
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1798
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1799
    goto/16 :goto_27

    .line 1800
    :cond_34
    const-string v0, "vendor.huawei.hardware.tp@1.0::ITouchscreen"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1802
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1803
    .local v0, "size":I
    invoke-virtual {v6, v0}, Lvendor/huawei/hardware/tp/V1_0/ITouchscreen$Stub;->hwTsPressCalSetSizeOfVerifyPoint(I)Z

    move-result v2

    .line 1804
    .local v2, "_hidl_out_ret":Z
    invoke-virtual {v8, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1805
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1806
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1807
    goto/16 :goto_27

    .line 1779
    .end local v0    # "size":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "_hidl_out_ret":Z
    :pswitch_11
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_35

    goto :goto_17

    :cond_35
    move v1, v9

    .line 1780
    .restart local v1    # "_hidl_is_oneway":Z
    :goto_17
    if-eqz v1, :cond_36

    .line 1781
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1782
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1783
    goto/16 :goto_27

    .line 1784
    :cond_36
    const-string v0, "vendor.huawei.hardware.tp@1.0::ITouchscreen"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1786
    invoke-virtual/range {p0 .. p0}, Lvendor/huawei/hardware/tp/V1_0/ITouchscreen$Stub;->hwTsPressCalGetCountOfCalibration()I

    move-result v0

    .line 1787
    .local v0, "_hidl_out_number":I
    invoke-virtual {v8, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1788
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1789
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1790
    goto/16 :goto_27

    .line 1762
    .end local v0    # "_hidl_out_number":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_12
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_37

    goto :goto_18

    :cond_37
    move v1, v9

    .line 1763
    .restart local v1    # "_hidl_is_oneway":Z
    :goto_18
    if-eqz v1, :cond_38

    .line 1764
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1765
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1766
    goto/16 :goto_27

    .line 1767
    :cond_38
    const-string v0, "vendor.huawei.hardware.tp@1.0::ITouchscreen"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1769
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1770
    .local v0, "count":I
    invoke-virtual {v6, v0}, Lvendor/huawei/hardware/tp/V1_0/ITouchscreen$Stub;->hwTsPressCalSetCountOfCalibration(I)Z

    move-result v2

    .line 1771
    .restart local v2    # "_hidl_out_ret":Z
    invoke-virtual {v8, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1772
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1773
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1774
    goto/16 :goto_27

    .line 1746
    .end local v0    # "count":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "_hidl_out_ret":Z
    :pswitch_13
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_39

    goto :goto_19

    :cond_39
    move v1, v9

    .line 1747
    .restart local v1    # "_hidl_is_oneway":Z
    :goto_19
    if-eqz v1, :cond_3a

    .line 1748
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1749
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1750
    goto/16 :goto_27

    .line 1751
    :cond_3a
    const-string v0, "vendor.huawei.hardware.tp@1.0::ITouchscreen"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1753
    invoke-virtual/range {p0 .. p0}, Lvendor/huawei/hardware/tp/V1_0/ITouchscreen$Stub;->hwTsPressCalGetStateOfHandle()I

    move-result v0

    .line 1754
    .local v0, "_hidl_out_status":I
    invoke-virtual {v8, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1755
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1756
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1757
    goto/16 :goto_27

    .line 1729
    .end local v0    # "_hidl_out_status":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_14
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_3b

    goto :goto_1a

    :cond_3b
    move v1, v9

    .line 1730
    .restart local v1    # "_hidl_is_oneway":Z
    :goto_1a
    if-eqz v1, :cond_3c

    .line 1731
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1732
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1733
    goto/16 :goto_27

    .line 1734
    :cond_3c
    const-string v0, "vendor.huawei.hardware.tp@1.0::ITouchscreen"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1736
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1737
    .local v0, "range":I
    invoke-virtual {v6, v0}, Lvendor/huawei/hardware/tp/V1_0/ITouchscreen$Stub;->hwTsPressCalSet_range_of_spec(I)Z

    move-result v2

    .line 1738
    .restart local v2    # "_hidl_out_ret":Z
    invoke-virtual {v8, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1739
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1740
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1741
    goto/16 :goto_27

    .line 1712
    .end local v0    # "range":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "_hidl_out_ret":Z
    :pswitch_15
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_3d

    goto :goto_1b

    :cond_3d
    move v1, v9

    .line 1713
    .restart local v1    # "_hidl_is_oneway":Z
    :goto_1b
    if-eqz v1, :cond_3e

    .line 1714
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1715
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1716
    goto/16 :goto_27

    .line 1717
    :cond_3e
    const-string v0, "vendor.huawei.hardware.tp@1.0::ITouchscreen"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1719
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1720
    .local v0, "type":I
    invoke-virtual {v6, v0}, Lvendor/huawei/hardware/tp/V1_0/ITouchscreen$Stub;->hwTsPressCalSetTypeOfCalibration(I)Z

    move-result v2

    .line 1721
    .restart local v2    # "_hidl_out_ret":Z
    invoke-virtual {v8, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1722
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1723
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1724
    goto/16 :goto_27

    .line 1696
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "_hidl_out_ret":Z
    :pswitch_16
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_3f

    goto :goto_1c

    :cond_3f
    move v1, v9

    .line 1697
    .restart local v1    # "_hidl_is_oneway":Z
    :goto_1c
    if-eqz v1, :cond_40

    .line 1698
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1699
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1700
    goto/16 :goto_27

    .line 1701
    :cond_40
    const-string v0, "vendor.huawei.hardware.tp@1.0::ITouchscreen"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1703
    invoke-virtual/range {p0 .. p0}, Lvendor/huawei/hardware/tp/V1_0/ITouchscreen$Stub;->hwTsPressCalIsSupportCalibration()Z

    move-result v0

    .line 1704
    .local v0, "_hidl_out_ret":Z
    invoke-virtual {v8, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1705
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1706
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1707
    goto/16 :goto_27

    .line 1680
    .end local v0    # "_hidl_out_ret":Z
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_17
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_41

    goto :goto_1d

    :cond_41
    move v1, v9

    .line 1681
    .restart local v1    # "_hidl_is_oneway":Z
    :goto_1d
    if-eqz v1, :cond_42

    .line 1682
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1683
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1684
    goto/16 :goto_27

    .line 1685
    :cond_42
    const-string v0, "vendor.huawei.hardware.tp@1.0::ITouchscreen"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1687
    invoke-virtual/range {p0 .. p0}, Lvendor/huawei/hardware/tp/V1_0/ITouchscreen$Stub;->hwTsPressCalGetLeftTimeOfStartCalibration()J

    move-result-wide v2

    .line 1688
    .local v2, "_hidl_out_left_time":J
    invoke-virtual {v8, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1689
    invoke-virtual {v8, v2, v3}, Landroid/os/HwParcel;->writeInt64(J)V

    .line 1690
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1691
    goto/16 :goto_27

    .line 1664
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "_hidl_out_left_time":J
    :pswitch_18
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_43

    goto :goto_1e

    :cond_43
    move v1, v9

    .line 1665
    .restart local v1    # "_hidl_is_oneway":Z
    :goto_1e
    if-eqz v1, :cond_44

    .line 1666
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1667
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1668
    goto/16 :goto_27

    .line 1669
    :cond_44
    const-string v0, "vendor.huawei.hardware.tp@1.0::ITouchscreen"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1671
    invoke-virtual/range {p0 .. p0}, Lvendor/huawei/hardware/tp/V1_0/ITouchscreen$Stub;->hwTsPressCalSetEndTimeOfAgeing()Z

    move-result v0

    .line 1672
    .restart local v0    # "_hidl_out_ret":Z
    invoke-virtual {v8, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1673
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1674
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1675
    goto/16 :goto_27

    .line 1648
    .end local v0    # "_hidl_out_ret":Z
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_19
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_45

    goto :goto_1f

    :cond_45
    move v1, v9

    .line 1649
    .restart local v1    # "_hidl_is_oneway":Z
    :goto_1f
    if-eqz v1, :cond_46

    .line 1650
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1651
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1652
    goto/16 :goto_27

    .line 1653
    :cond_46
    const-string v0, "vendor.huawei.hardware.tp@1.0::ITouchscreen"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1655
    invoke-virtual/range {p0 .. p0}, Lvendor/huawei/hardware/tp/V1_0/ITouchscreen$Stub;->hwTsSnrTest()I

    move-result v0

    .line 1656
    .local v0, "_hidl_out_ret":I
    invoke-virtual {v8, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1657
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1658
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1659
    goto/16 :goto_27

    .line 1627
    .end local v0    # "_hidl_out_ret":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_1a
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_47

    move v9, v1

    nop

    :cond_47
    move v1, v9

    .line 1628
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_48

    .line 1629
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1630
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1631
    goto/16 :goto_27

    .line 1632
    :cond_48
    const-string v0, "vendor.huawei.hardware.tp@1.0::ITouchscreen"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1634
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1635
    .local v0, "testMode":I
    new-instance v2, Lvendor/huawei/hardware/tp/V1_0/ITouchscreen$Stub$6;

    invoke-direct {v2, v6, v8}, Lvendor/huawei/hardware/tp/V1_0/ITouchscreen$Stub$6;-><init>(Lvendor/huawei/hardware/tp/V1_0/ITouchscreen$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {v6, v0, v2}, Lvendor/huawei/hardware/tp/V1_0/ITouchscreen$Stub;->hwTsCalibrationTest(ILvendor/huawei/hardware/tp/V1_0/ITouchscreen$hwTsCalibrationTestCallback;)V

    .line 1643
    goto/16 :goto_27

    .line 1606
    .end local v0    # "testMode":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_1b
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_49

    move v9, v1

    nop

    :cond_49
    move v1, v9

    .line 1607
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_4a

    .line 1608
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1609
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1610
    goto/16 :goto_27

    .line 1611
    :cond_4a
    const-string v0, "vendor.huawei.hardware.tp@1.0::ITouchscreen"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1613
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1614
    .local v0, "runningTestStatus":I
    new-instance v2, Lvendor/huawei/hardware/tp/V1_0/ITouchscreen$Stub$5;

    invoke-direct {v2, v6, v8}, Lvendor/huawei/hardware/tp/V1_0/ITouchscreen$Stub$5;-><init>(Lvendor/huawei/hardware/tp/V1_0/ITouchscreen$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {v6, v0, v2}, Lvendor/huawei/hardware/tp/V1_0/ITouchscreen$Stub;->hwTsCapacitanceRunningTest(ILvendor/huawei/hardware/tp/V1_0/ITouchscreen$hwTsCapacitanceRunningTestCallback;)V

    .line 1622
    goto/16 :goto_27

    .line 1586
    .end local v0    # "runningTestStatus":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_1c
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_4b

    move v9, v1

    nop

    :cond_4b
    move v1, v9

    .line 1587
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_4c

    .line 1588
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1589
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1590
    goto/16 :goto_27

    .line 1591
    :cond_4c
    const-string v0, "vendor.huawei.hardware.tp@1.0::ITouchscreen"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1593
    new-instance v0, Lvendor/huawei/hardware/tp/V1_0/ITouchscreen$Stub$4;

    invoke-direct {v0, v6, v8}, Lvendor/huawei/hardware/tp/V1_0/ITouchscreen$Stub$4;-><init>(Lvendor/huawei/hardware/tp/V1_0/ITouchscreen$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {v6, v0}, Lvendor/huawei/hardware/tp/V1_0/ITouchscreen$Stub;->hwTsCapacitanceMmiTest(Lvendor/huawei/hardware/tp/V1_0/ITouchscreen$hwTsCapacitanceMmiTestCallback;)V

    .line 1601
    goto/16 :goto_27

    .line 1567
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_1d
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_4d

    goto :goto_20

    :cond_4d
    move v1, v9

    .line 1568
    .restart local v1    # "_hidl_is_oneway":Z
    :goto_20
    if-eqz v1, :cond_4e

    .line 1569
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1570
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1571
    goto/16 :goto_27

    .line 1572
    :cond_4e
    const-string v0, "vendor.huawei.hardware.tp@1.0::ITouchscreen"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1574
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1575
    .local v0, "optype":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1576
    .local v2, "status":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 1577
    .local v3, "delaytime":I
    invoke-virtual {v6, v0, v2, v3}, Lvendor/huawei/hardware/tp/V1_0/ITouchscreen$Stub;->hwTsSetDozeMode(III)Z

    move-result v4

    .line 1578
    .local v4, "_hidl_out_ret":Z
    invoke-virtual {v8, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1579
    invoke-virtual {v8, v4}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1580
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1581
    goto/16 :goto_27

    .line 1547
    .end local v0    # "optype":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "status":I
    .end local v3    # "delaytime":I
    .end local v4    # "_hidl_out_ret":Z
    :pswitch_1e
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_4f

    move v9, v1

    nop

    :cond_4f
    move v1, v9

    .line 1548
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_50

    .line 1549
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1550
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1551
    goto/16 :goto_27

    .line 1552
    :cond_50
    const-string v0, "vendor.huawei.hardware.tp@1.0::ITouchscreen"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1554
    new-instance v0, Lvendor/huawei/hardware/tp/V1_0/ITouchscreen$Stub$3;

    invoke-direct {v0, v6, v8}, Lvendor/huawei/hardware/tp/V1_0/ITouchscreen$Stub$3;-><init>(Lvendor/huawei/hardware/tp/V1_0/ITouchscreen$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {v6, v0}, Lvendor/huawei/hardware/tp/V1_0/ITouchscreen$Stub;->hwTsGetEasyWeakupGuestureData(Lvendor/huawei/hardware/tp/V1_0/ITouchscreen$hwTsGetEasyWeakupGuestureDataCallback;)V

    .line 1562
    goto/16 :goto_27

    .line 1530
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_1f
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_51

    goto :goto_21

    :cond_51
    move v1, v9

    .line 1531
    .restart local v1    # "_hidl_is_oneway":Z
    :goto_21
    if-eqz v1, :cond_52

    .line 1532
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1533
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1534
    goto/16 :goto_27

    .line 1535
    :cond_52
    const-string v0, "vendor.huawei.hardware.tp@1.0::ITouchscreen"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1537
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v0

    .line 1538
    .local v0, "status":Z
    invoke-virtual {v6, v0}, Lvendor/huawei/hardware/tp/V1_0/ITouchscreen$Stub;->hwTsSetEasyWeakupGestureReportEnable(Z)Z

    move-result v2

    .line 1539
    .local v2, "_hidl_out_ret":Z
    invoke-virtual {v8, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1540
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1541
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1542
    goto/16 :goto_27

    .line 1513
    .end local v0    # "status":Z
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "_hidl_out_ret":Z
    :pswitch_20
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_53

    goto :goto_22

    :cond_53
    move v1, v9

    .line 1514
    .restart local v1    # "_hidl_is_oneway":Z
    :goto_22
    if-eqz v1, :cond_54

    .line 1515
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1516
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1517
    goto/16 :goto_27

    .line 1518
    :cond_54
    const-string v0, "vendor.huawei.hardware.tp@1.0::ITouchscreen"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1520
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1521
    .local v0, "gesture":I
    invoke-virtual {v6, v0}, Lvendor/huawei/hardware/tp/V1_0/ITouchscreen$Stub;->hwTsSetEasyWeakupGesture(I)Z

    move-result v2

    .line 1522
    .restart local v2    # "_hidl_out_ret":Z
    invoke-virtual {v8, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1523
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1524
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1525
    goto/16 :goto_27

    .line 1493
    .end local v0    # "gesture":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "_hidl_out_ret":Z
    :pswitch_21
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_55

    move v9, v1

    nop

    :cond_55
    move v1, v9

    .line 1494
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_56

    .line 1495
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1496
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1497
    goto/16 :goto_27

    .line 1498
    :cond_56
    const-string v0, "vendor.huawei.hardware.tp@1.0::ITouchscreen"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1500
    new-instance v0, Lvendor/huawei/hardware/tp/V1_0/ITouchscreen$Stub$2;

    invoke-direct {v0, v6, v8}, Lvendor/huawei/hardware/tp/V1_0/ITouchscreen$Stub$2;-><init>(Lvendor/huawei/hardware/tp/V1_0/ITouchscreen$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {v6, v0}, Lvendor/huawei/hardware/tp/V1_0/ITouchscreen$Stub;->hwTsGetChipInfo(Lvendor/huawei/hardware/tp/V1_0/ITouchscreen$hwTsGetChipInfoCallback;)V

    .line 1508
    goto/16 :goto_27

    .line 1473
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_22
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_57

    move v9, v1

    nop

    :cond_57
    move v1, v9

    .line 1474
    .restart local v1    # "_hidl_is_oneway":Z
    if-eqz v1, :cond_58

    .line 1475
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1476
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1477
    goto/16 :goto_27

    .line 1478
    :cond_58
    const-string v0, "vendor.huawei.hardware.tp@1.0::ITouchscreen"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1480
    new-instance v0, Lvendor/huawei/hardware/tp/V1_0/ITouchscreen$Stub$1;

    invoke-direct {v0, v6, v8}, Lvendor/huawei/hardware/tp/V1_0/ITouchscreen$Stub$1;-><init>(Lvendor/huawei/hardware/tp/V1_0/ITouchscreen$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {v6, v0}, Lvendor/huawei/hardware/tp/V1_0/ITouchscreen$Stub;->hwTsGetRoiData(Lvendor/huawei/hardware/tp/V1_0/ITouchscreen$hwTsGetRoiDataCallback;)V

    .line 1488
    goto/16 :goto_27

    .line 1456
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_23
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_59

    goto :goto_23

    :cond_59
    move v1, v9

    .line 1457
    .restart local v1    # "_hidl_is_oneway":Z
    :goto_23
    if-eqz v1, :cond_5a

    .line 1458
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1459
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1460
    goto/16 :goto_27

    .line 1461
    :cond_5a
    const-string v0, "vendor.huawei.hardware.tp@1.0::ITouchscreen"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1463
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v0

    .line 1464
    .local v0, "status":Z
    invoke-virtual {v6, v0}, Lvendor/huawei/hardware/tp/V1_0/ITouchscreen$Stub;->hwTsSetRoiEnable(Z)Z

    move-result v2

    .line 1465
    .restart local v2    # "_hidl_out_ret":Z
    invoke-virtual {v8, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1466
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1467
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1468
    goto/16 :goto_27

    .line 1435
    .end local v0    # "status":Z
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "_hidl_out_ret":Z
    :pswitch_24
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_5b

    goto :goto_24

    :cond_5b
    move v1, v9

    :goto_24
    move v10, v1

    .line 1436
    .local v10, "_hidl_is_oneway":Z
    if-eqz v10, :cond_5c

    .line 1437
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1438
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1439
    goto/16 :goto_27

    .line 1440
    :cond_5c
    const-string v0, "vendor.huawei.hardware.tp@1.0::ITouchscreen"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1442
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v11

    .line 1443
    .local v11, "status":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 1444
    .local v12, "x0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v13

    .line 1445
    .local v13, "y0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v14

    .line 1446
    .local v14, "x1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v15

    .line 1447
    .local v15, "y2":I
    move-object v0, v6

    move v1, v11

    move v2, v12

    move v3, v13

    move v4, v14

    move v5, v15

    invoke-virtual/range {v0 .. v5}, Lvendor/huawei/hardware/tp/V1_0/ITouchscreen$Stub;->hwTsSetCoverWindowSize(ZIIII)Z

    move-result v0

    .line 1448
    .local v0, "_hidl_out_ret":Z
    invoke-virtual {v8, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1449
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1450
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1451
    goto :goto_27

    .line 1418
    .end local v0    # "_hidl_out_ret":Z
    .end local v10    # "_hidl_is_oneway":Z
    .end local v11    # "status":Z
    .end local v12    # "x0":I
    .end local v13    # "y0":I
    .end local v14    # "x1":I
    .end local v15    # "y2":I
    :pswitch_25
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_5d

    goto :goto_25

    :cond_5d
    move v1, v9

    .line 1419
    .restart local v1    # "_hidl_is_oneway":Z
    :goto_25
    if-eqz v1, :cond_5e

    .line 1420
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1421
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1422
    goto :goto_27

    .line 1423
    :cond_5e
    const-string v0, "vendor.huawei.hardware.tp@1.0::ITouchscreen"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1425
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v0

    .line 1426
    .local v0, "status":Z
    invoke-virtual {v6, v0}, Lvendor/huawei/hardware/tp/V1_0/ITouchscreen$Stub;->hwTsSetCoverMode(Z)Z

    move-result v2

    .line 1427
    .restart local v2    # "_hidl_out_ret":Z
    invoke-virtual {v8, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1428
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1429
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1430
    goto :goto_27

    .line 1401
    .end local v0    # "status":Z
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "_hidl_out_ret":Z
    :pswitch_26
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_5f

    goto :goto_26

    :cond_5f
    move v1, v9

    .line 1402
    .restart local v1    # "_hidl_is_oneway":Z
    :goto_26
    if-eqz v1, :cond_60

    .line 1403
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1404
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1405
    goto :goto_27

    .line 1406
    :cond_60
    const-string v0, "vendor.huawei.hardware.tp@1.0::ITouchscreen"

    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1408
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v0

    .line 1409
    .restart local v0    # "status":Z
    invoke-virtual {v6, v0}, Lvendor/huawei/hardware/tp/V1_0/ITouchscreen$Stub;->hwTsSetGloveMode(Z)Z

    move-result v2

    .line 1410
    .restart local v2    # "_hidl_out_ret":Z
    invoke-virtual {v8, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1411
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1412
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1413
    nop

    .line 2244
    .end local v0    # "status":Z
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "_hidl_out_ret":Z
    :cond_61
    :goto_27
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0xf43484e -> :sswitch_9
        0xf444247 -> :sswitch_8
        0xf445343 -> :sswitch_7
        0xf485348 -> :sswitch_6
        0xf494e54 -> :sswitch_5
        0xf4c5444 -> :sswitch_4
        0xf504e47 -> :sswitch_3
        0xf524546 -> :sswitch_2
        0xf535953 -> :sswitch_1
        0xf555444 -> :sswitch_0
    .end sparse-switch
.end method

.method public final ping()V
    .locals 0

    .line 1354
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 1380
    const-string v0, "vendor.huawei.hardware.tp@1.0::ITouchscreen"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1381
    return-object p0

    .line 1383
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public registerAsService(Ljava/lang/String;)V
    .locals 0
    .param p1, "serviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1387
    invoke-virtual {p0, p1}, Lvendor/huawei/hardware/tp/V1_0/ITouchscreen$Stub;->registerService(Ljava/lang/String;)V

    .line 1388
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 1345
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/huawei/hardware/tp/V1_0/ITouchscreen$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@Stub"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;

    .line 1374
    const/4 v0, 0x1

    return v0
.end method
