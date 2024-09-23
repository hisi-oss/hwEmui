.class Lhuawei/android/security/IHwEidPlugin$Stub$Proxy;
.super Ljava/lang/Object;
.source "IHwEidPlugin.java"

# interfaces
.implements Lhuawei/android/security/IHwEidPlugin;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhuawei/android/security/IHwEidPlugin$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 454
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 455
    iput-object p1, p0, Lhuawei/android/security/IHwEidPlugin$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 456
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 459
    iget-object v0, p0, Lhuawei/android/security/IHwEidPlugin$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public ctid_get_sec_image()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 756
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 757
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 760
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "huawei.android.security.IHwEidPlugin"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 761
    iget-object v2, p0, Lhuawei/android/security/IHwEidPlugin$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 762
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 763
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 766
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 767
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 768
    nop

    .line 767
    nop

    .line 769
    return v2

    .line 766
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 767
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public ctid_get_service_verion_info([BILjava/lang/String;[II)I
    .locals 5
    .param p1, "uuid"    # [B
    .param p2, "uuid_len"    # I
    .param p3, "ta_path"    # Ljava/lang/String;
    .param p4, "cmd_list"    # [I
    .param p5, "cmd_count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 773
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 774
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 777
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "huawei.android.security.IHwEidPlugin"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 778
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 779
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 780
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 781
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 782
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 783
    iget-object v2, p0, Lhuawei/android/security/IHwEidPlugin$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 784
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 785
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 788
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 789
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 790
    nop

    .line 789
    nop

    .line 791
    return v2

    .line 788
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 789
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public ctid_set_sec_mode()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 739
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 740
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 743
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "huawei.android.security.IHwEidPlugin"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 744
    iget-object v2, p0, Lhuawei/android/security/IHwEidPlugin$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 745
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 746
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 749
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 750
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 751
    nop

    .line 750
    nop

    .line 752
    return v2

    .line 749
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 750
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public eidGetSecImageZip(I[BI[BIIIIII[B[I[B[I[B)I
    .locals 17
    .param p1, "hash_len"    # I
    .param p2, "hash"    # [B
    .param p3, "image_zip_len"    # I
    .param p4, "image_zip"    # [B
    .param p5, "up"    # I
    .param p6, "down"    # I
    .param p7, "left"    # I
    .param p8, "right"    # I
    .param p9, "encryption_method"    # I
    .param p10, "certificate_len"    # I
    .param p11, "certificate"    # [B
    .param p12, "sec_image_len"    # [I
    .param p13, "sec_image"    # [B
    .param p14, "de_skey_len"    # [I
    .param p15, "de_skey"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p12

    move-object/from16 v2, p13

    move-object/from16 v3, p14

    .line 795
    move-object/from16 v4, p15

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    .line 796
    .local v5, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    move-object v6, v0

    .line 799
    .local v6, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v0, "huawei.android.security.IHwEidPlugin"

    invoke-virtual {v5, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 800
    move/from16 v7, p1

    invoke-virtual {v5, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 801
    move-object/from16 v8, p2

    invoke-virtual {v5, v8}, Landroid/os/Parcel;->writeByteArray([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    .line 802
    move/from16 v9, p3

    :try_start_1
    invoke-virtual {v5, v9}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    .line 803
    move-object/from16 v10, p4

    :try_start_2
    invoke-virtual {v5, v10}, Landroid/os/Parcel;->writeByteArray([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 804
    move/from16 v11, p5

    :try_start_3
    invoke-virtual {v5, v11}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 805
    move/from16 v12, p6

    :try_start_4
    invoke-virtual {v5, v12}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 806
    move/from16 v13, p7

    :try_start_5
    invoke-virtual {v5, v13}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 807
    move/from16 v14, p8

    :try_start_6
    invoke-virtual {v5, v14}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 808
    move/from16 v15, p9

    :try_start_7
    invoke-virtual {v5, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 809
    move/from16 v7, p10

    invoke-virtual {v5, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 810
    move-object/from16 v7, p11

    invoke-virtual {v5, v7}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 811
    const/4 v0, -0x1

    if-nez v1, :cond_0

    .line 812
    invoke-virtual {v5, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 815
    :cond_0
    array-length v0, v1

    invoke-virtual {v5, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 817
    :goto_0
    if-nez v2, :cond_1

    .line 818
    const/4 v0, -0x1

    invoke-virtual {v5, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 821
    :cond_1
    array-length v0, v2

    invoke-virtual {v5, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 823
    :goto_1
    if-nez v3, :cond_2

    .line 824
    const/4 v0, -0x1

    invoke-virtual {v5, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 827
    :cond_2
    array-length v0, v3

    invoke-virtual {v5, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 829
    :goto_2
    if-nez v4, :cond_3

    .line 830
    const/4 v0, -0x1

    invoke-virtual {v5, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 833
    :cond_3
    array-length v0, v4

    invoke-virtual {v5, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 835
    :goto_3
    move-object/from16 v7, p0

    iget-object v0, v7, Lhuawei/android/security/IHwEidPlugin$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v7, 0xd

    const/4 v8, 0x0

    invoke-interface {v0, v7, v5, v6, v8}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 836
    invoke-virtual {v6}, Landroid/os/Parcel;->readException()V

    .line 837
    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 838
    .local v0, "_result":I
    invoke-virtual {v6, v1}, Landroid/os/Parcel;->readIntArray([I)V

    .line 839
    invoke-virtual {v6, v2}, Landroid/os/Parcel;->readByteArray([B)V

    .line 840
    invoke-virtual {v6, v3}, Landroid/os/Parcel;->readIntArray([I)V

    .line 841
    invoke-virtual {v6, v4}, Landroid/os/Parcel;->readByteArray([B)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 844
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 845
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 846
    nop

    .line 845
    nop

    .line 847
    return v0

    .line 844
    .end local v0    # "_result":I
    :catchall_0
    move-exception v0

    goto :goto_a

    :catchall_1
    move-exception v0

    goto :goto_9

    :catchall_2
    move-exception v0

    goto :goto_8

    :catchall_3
    move-exception v0

    goto :goto_7

    :catchall_4
    move-exception v0

    goto :goto_6

    :catchall_5
    move-exception v0

    goto :goto_5

    :catchall_6
    move-exception v0

    goto :goto_4

    :catchall_7
    move-exception v0

    move/from16 v9, p3

    :goto_4
    move-object/from16 v10, p4

    :goto_5
    move/from16 v11, p5

    :goto_6
    move/from16 v12, p6

    :goto_7
    move/from16 v13, p7

    :goto_8
    move/from16 v14, p8

    :goto_9
    move/from16 v15, p9

    :goto_a
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 845
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public eidGetUnsecImageZip(I[BI[BII[B[I[B[I[B)I
    .locals 17
    .param p1, "hash_len"    # I
    .param p2, "hash"    # [B
    .param p3, "image_zip_len"    # I
    .param p4, "image_zip"    # [B
    .param p5, "encryption_method"    # I
    .param p6, "certificate_len"    # I
    .param p7, "certificate"    # [B
    .param p8, "sec_image_len"    # [I
    .param p9, "sec_image"    # [B
    .param p10, "de_skey_len"    # [I
    .param p11, "de_skey"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p8

    move-object/from16 v2, p9

    move-object/from16 v3, p10

    .line 851
    move-object/from16 v4, p11

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    .line 852
    .local v5, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    move-object v6, v0

    .line 855
    .local v6, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v0, "huawei.android.security.IHwEidPlugin"

    invoke-virtual {v5, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 856
    move/from16 v7, p1

    invoke-virtual {v5, v7}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    .line 857
    move-object/from16 v8, p2

    :try_start_1
    invoke-virtual {v5, v8}, Landroid/os/Parcel;->writeByteArray([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    .line 858
    move/from16 v9, p3

    :try_start_2
    invoke-virtual {v5, v9}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 859
    move-object/from16 v10, p4

    :try_start_3
    invoke-virtual {v5, v10}, Landroid/os/Parcel;->writeByteArray([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 860
    move/from16 v11, p5

    :try_start_4
    invoke-virtual {v5, v11}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 861
    move/from16 v12, p6

    :try_start_5
    invoke-virtual {v5, v12}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 862
    move-object/from16 v13, p7

    :try_start_6
    invoke-virtual {v5, v13}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 863
    const/4 v0, -0x1

    if-nez v1, :cond_0

    .line 864
    invoke-virtual {v5, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 867
    :cond_0
    array-length v14, v1

    invoke-virtual {v5, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 869
    :goto_0
    if-nez v2, :cond_1

    .line 870
    invoke-virtual {v5, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 873
    :cond_1
    array-length v14, v2

    invoke-virtual {v5, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 875
    :goto_1
    if-nez v3, :cond_2

    .line 876
    invoke-virtual {v5, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 879
    :cond_2
    array-length v14, v3

    invoke-virtual {v5, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 881
    :goto_2
    if-nez v4, :cond_3

    .line 882
    invoke-virtual {v5, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 885
    :cond_3
    array-length v0, v4

    invoke-virtual {v5, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 887
    :goto_3
    move-object/from16 v14, p0

    :try_start_7
    iget-object v0, v14, Lhuawei/android/security/IHwEidPlugin$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v15, 0xe

    const/4 v7, 0x0

    invoke-interface {v0, v15, v5, v6, v7}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 888
    invoke-virtual {v6}, Landroid/os/Parcel;->readException()V

    .line 889
    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 890
    .local v0, "_result":I
    invoke-virtual {v6, v1}, Landroid/os/Parcel;->readIntArray([I)V

    .line 891
    invoke-virtual {v6, v2}, Landroid/os/Parcel;->readByteArray([B)V

    .line 892
    invoke-virtual {v6, v3}, Landroid/os/Parcel;->readIntArray([I)V

    .line 893
    invoke-virtual {v6, v4}, Landroid/os/Parcel;->readByteArray([B)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 896
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 897
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 898
    nop

    .line 897
    nop

    .line 899
    return v0

    .line 896
    .end local v0    # "_result":I
    :catchall_0
    move-exception v0

    goto :goto_9

    :catchall_1
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_9

    :catchall_2
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_8

    :catchall_3
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_7

    :catchall_4
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_6

    :catchall_5
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_5

    :catchall_6
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_4

    :catchall_7
    move-exception v0

    move-object/from16 v14, p0

    move-object/from16 v8, p2

    :goto_4
    move/from16 v9, p3

    :goto_5
    move-object/from16 v10, p4

    :goto_6
    move/from16 v11, p5

    :goto_7
    move/from16 v12, p6

    :goto_8
    move-object/from16 v13, p7

    :goto_9
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 897
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public eid_finish()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 490
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 491
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 494
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "huawei.android.security.IHwEidPlugin"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 495
    iget-object v2, p0, Lhuawei/android/security/IHwEidPlugin$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 496
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 497
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 500
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 501
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 502
    nop

    .line 501
    nop

    .line 503
    return v2

    .line 500
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 501
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public eid_get_certificate_request_message([B[I)I
    .locals 5
    .param p1, "request_message"    # [B
    .param p2, "message_len"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 607
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 608
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 611
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "huawei.android.security.IHwEidPlugin"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 612
    const/4 v2, -0x1

    if-nez p1, :cond_0

    .line 613
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 616
    :cond_0
    array-length v3, p1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 618
    :goto_0
    if-nez p2, :cond_1

    .line 619
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 622
    :cond_1
    array-length v2, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 624
    :goto_1
    iget-object v2, p0, Lhuawei/android/security/IHwEidPlugin$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 625
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 626
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 627
    .local v2, "_result":I
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->readByteArray([B)V

    .line 628
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->readIntArray([I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 631
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 632
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 633
    nop

    .line 632
    nop

    .line 634
    return v2

    .line 631
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 632
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public eid_get_face_is_changed(I)I
    .locals 5
    .param p1, "cmd_id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 704
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 705
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 708
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "huawei.android.security.IHwEidPlugin"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 709
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 710
    iget-object v2, p0, Lhuawei/android/security/IHwEidPlugin$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 711
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 712
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 715
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 716
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 717
    nop

    .line 716
    nop

    .line 718
    return v2

    .line 715
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 716
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public eid_get_identity_information([B[I)I
    .locals 5
    .param p1, "identity_info"    # [B
    .param p2, "identity_info_len"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 673
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 674
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 677
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "huawei.android.security.IHwEidPlugin"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 678
    const/4 v2, -0x1

    if-nez p1, :cond_0

    .line 679
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 682
    :cond_0
    array-length v3, p1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 684
    :goto_0
    if-nez p2, :cond_1

    .line 685
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 688
    :cond_1
    array-length v2, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 690
    :goto_1
    iget-object v2, p0, Lhuawei/android/security/IHwEidPlugin$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 691
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 692
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 693
    .local v2, "_result":I
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->readByteArray([B)V

    .line 694
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->readIntArray([I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 697
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 698
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 699
    nop

    .line 698
    nop

    .line 700
    return v2

    .line 697
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 698
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public eid_get_image(II[BI[B[I[B[I)I
    .locals 5
    .param p1, "transpotCounter"    # I
    .param p2, "encryption_method"    # I
    .param p3, "certificate"    # [B
    .param p4, "certificate_len"    # I
    .param p5, "image"    # [B
    .param p6, "image_len"    # [I
    .param p7, "de_skey"    # [B
    .param p8, "de_skey_len"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 507
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 508
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 511
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "huawei.android.security.IHwEidPlugin"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 512
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 513
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 514
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 515
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 516
    const/4 v2, -0x1

    if-nez p5, :cond_0

    .line 517
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 520
    :cond_0
    array-length v3, p5

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 522
    :goto_0
    if-nez p6, :cond_1

    .line 523
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 526
    :cond_1
    array-length v3, p6

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 528
    :goto_1
    if-nez p7, :cond_2

    .line 529
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 532
    :cond_2
    array-length v3, p7

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 534
    :goto_2
    if-nez p8, :cond_3

    .line 535
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 538
    :cond_3
    array-length v2, p8

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 540
    :goto_3
    iget-object v2, p0, Lhuawei/android/security/IHwEidPlugin$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 541
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 542
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 543
    .local v2, "_result":I
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->readByteArray([B)V

    .line 544
    invoke-virtual {v1, p6}, Landroid/os/Parcel;->readIntArray([I)V

    .line 545
    invoke-virtual {v1, p7}, Landroid/os/Parcel;->readByteArray([B)V

    .line 546
    invoke-virtual {v1, p8}, Landroid/os/Parcel;->readIntArray([I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 549
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 550
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 551
    nop

    .line 550
    nop

    .line 552
    return v2

    .line 549
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 550
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public eid_get_unsec_image([BIII[BI[B[I[B[I)I
    .locals 5
    .param p1, "src_image"    # [B
    .param p2, "src_image_len"    # I
    .param p3, "transpotCounter"    # I
    .param p4, "encryption_method"    # I
    .param p5, "certificate"    # [B
    .param p6, "certificate_len"    # I
    .param p7, "image"    # [B
    .param p8, "image_len"    # [I
    .param p9, "de_skey"    # [B
    .param p10, "de_skey_len"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 556
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 557
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 560
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "huawei.android.security.IHwEidPlugin"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 561
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 562
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 563
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 564
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 565
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 566
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 567
    const/4 v2, -0x1

    if-nez p7, :cond_0

    .line 568
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 571
    :cond_0
    array-length v3, p7

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 573
    :goto_0
    if-nez p8, :cond_1

    .line 574
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 577
    :cond_1
    array-length v3, p8

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 579
    :goto_1
    if-nez p9, :cond_2

    .line 580
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 583
    :cond_2
    array-length v3, p9

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 585
    :goto_2
    if-nez p10, :cond_3

    .line 586
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 589
    :cond_3
    array-length v2, p10

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 591
    :goto_3
    iget-object v2, p0, Lhuawei/android/security/IHwEidPlugin$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 592
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 593
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 594
    .local v2, "_result":I
    invoke-virtual {v1, p7}, Landroid/os/Parcel;->readByteArray([B)V

    .line 595
    invoke-virtual {v1, p8}, Landroid/os/Parcel;->readIntArray([I)V

    .line 596
    invoke-virtual {v1, p9}, Landroid/os/Parcel;->readByteArray([B)V

    .line 597
    invoke-virtual {v1, p10}, Landroid/os/Parcel;->readIntArray([I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 600
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 601
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 602
    nop

    .line 601
    nop

    .line 603
    return v2

    .line 600
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 601
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public eid_get_version()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 722
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 723
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 726
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "huawei.android.security.IHwEidPlugin"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 727
    iget-object v2, p0, Lhuawei/android/security/IHwEidPlugin$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 728
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 729
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 732
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 733
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 734
    nop

    .line 733
    nop

    .line 735
    return-object v2

    .line 732
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 733
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public eid_init([BI[BI[BI)I
    .locals 5
    .param p1, "hw_aid"    # [B
    .param p2, "hw_aid_len"    # I
    .param p3, "eid_aid"    # [B
    .param p4, "eid_aid_len"    # I
    .param p5, "logo"    # [B
    .param p6, "logo_size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 467
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 468
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 471
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "huawei.android.security.IHwEidPlugin"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 472
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 473
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 474
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 475
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 476
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 477
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 478
    iget-object v2, p0, Lhuawei/android/security/IHwEidPlugin$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 479
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 480
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 483
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 484
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 485
    nop

    .line 484
    nop

    .line 486
    return v2

    .line 483
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 484
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public eid_sign_info(II[BI[B[I)I
    .locals 5
    .param p1, "transpotCounter"    # I
    .param p2, "encryption_method"    # I
    .param p3, "info"    # [B
    .param p4, "info_len"    # I
    .param p5, "sign"    # [B
    .param p6, "sign_len"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 638
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 639
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 642
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "huawei.android.security.IHwEidPlugin"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 643
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 644
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 645
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 646
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 647
    const/4 v2, -0x1

    if-nez p5, :cond_0

    .line 648
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 651
    :cond_0
    array-length v3, p5

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 653
    :goto_0
    if-nez p6, :cond_1

    .line 654
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 657
    :cond_1
    array-length v2, p6

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 659
    :goto_1
    iget-object v2, p0, Lhuawei/android/security/IHwEidPlugin$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 660
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 661
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 662
    .local v2, "_result":I
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->readByteArray([B)V

    .line 663
    invoke-virtual {v1, p6}, Landroid/os/Parcel;->readIntArray([I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 666
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 667
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 668
    nop

    .line 667
    nop

    .line 669
    return v2

    .line 666
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 667
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 463
    const-string v0, "huawei.android.security.IHwEidPlugin"

    return-object v0
.end method
