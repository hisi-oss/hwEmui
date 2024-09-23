.class public Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;
.super Ljava/lang/Object;
.source "HwSignalStrength.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/HwSignalStrength;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SignalThreshold"
.end annotation


# instance fields
.field private mConfigured:Z

.field private mNumOfBins:I

.field private mThresholdEcioExcellent:I

.field private mThresholdEcioGood:I

.field private mThresholdEcioGreat:I

.field private mThresholdEcioModerate:I

.field private mThresholdEcioPoor:I

.field private mThresholdRssiExcellent:I

.field private mThresholdRssiGood:I

.field private mThresholdRssiGreat:I

.field private mThresholdRssiModerate:I

.field private mThresholdRssiPoor:I

.field private mType:Lcom/android/internal/telephony/HwSignalStrength$SignalType;

.field private mUseEcio:Z

.field final synthetic this$0:Lcom/android/internal/telephony/HwSignalStrength;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/HwSignalStrength;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/HwSignalStrength$SignalType;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/HwSignalStrength;
    .param p2, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p3, "mSignalType"    # Lcom/android/internal/telephony/HwSignalStrength$SignalType;

    .line 549
    iput-object p1, p0, Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;->this$0:Lcom/android/internal/telephony/HwSignalStrength;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 550
    iput-object p3, p0, Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;->mType:Lcom/android/internal/telephony/HwSignalStrength$SignalType;

    .line 551
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/HwSignalStrength;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/HwSignalStrength$SignalType;Lcom/android/internal/telephony/HwSignalStrength$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/HwSignalStrength;
    .param p2, "x1"    # Lcom/android/internal/telephony/Phone;
    .param p3, "x2"    # Lcom/android/internal/telephony/HwSignalStrength$SignalType;
    .param p4, "x3"    # Lcom/android/internal/telephony/HwSignalStrength$1;

    .line 531
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;-><init>(Lcom/android/internal/telephony/HwSignalStrength;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/HwSignalStrength$SignalType;)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;
    .param p1, "x1"    # Z

    .line 531
    iput-boolean p1, p0, Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;->mConfigured:Z

    return p1
.end method


# virtual methods
.method public getHighThresholdBySignalLevel(IZ)I
    .locals 3
    .param p1, "level"    # I
    .param p2, "isEcio"    # Z

    .line 745
    const/4 v0, -0x1

    .line 746
    .local v0, "highThreshold":I
    const/4 v1, 0x5

    if-nez p2, :cond_0

    .line 747
    packed-switch p1, :pswitch_data_0

    .line 767
    const-string v1, "HwSignalStrength"

    const-string v2, "use default rssi high threshold"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    goto :goto_0

    .line 761
    :pswitch_0
    iget v2, p0, Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;->mNumOfBins:I

    if-ne v1, v2, :cond_2

    .line 762
    iget v1, p0, Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;->mThresholdRssiExcellent:I

    add-int/lit8 v0, v1, -0x1

    goto :goto_0

    .line 758
    :pswitch_1
    iget v1, p0, Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;->mThresholdRssiGreat:I

    add-int/lit8 v0, v1, -0x1

    .line 759
    goto :goto_0

    .line 755
    :pswitch_2
    iget v1, p0, Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;->mThresholdRssiGood:I

    add-int/lit8 v0, v1, -0x1

    .line 756
    goto :goto_0

    .line 752
    :pswitch_3
    iget v1, p0, Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;->mThresholdRssiModerate:I

    add-int/lit8 v0, v1, -0x1

    .line 753
    goto :goto_0

    .line 749
    :pswitch_4
    iget v1, p0, Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;->mThresholdRssiPoor:I

    add-int/lit8 v0, v1, -0x1

    .line 750
    goto :goto_0

    .line 771
    :cond_0
    iget-boolean v2, p0, Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;->mUseEcio:Z

    if-eqz v2, :cond_1

    .line 772
    packed-switch p1, :pswitch_data_1

    .line 792
    const-string v1, "HwSignalStrength"

    const-string v2, "use default ecio high threshold"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    goto :goto_0

    .line 786
    :pswitch_5
    iget v2, p0, Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;->mNumOfBins:I

    if-ne v1, v2, :cond_2

    .line 787
    iget v1, p0, Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;->mThresholdEcioExcellent:I

    add-int/lit8 v0, v1, -0x1

    goto :goto_0

    .line 783
    :pswitch_6
    iget v1, p0, Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;->mThresholdEcioGreat:I

    add-int/lit8 v0, v1, -0x1

    .line 784
    goto :goto_0

    .line 780
    :pswitch_7
    iget v1, p0, Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;->mThresholdEcioGood:I

    add-int/lit8 v0, v1, -0x1

    .line 781
    goto :goto_0

    .line 777
    :pswitch_8
    iget v1, p0, Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;->mThresholdEcioModerate:I

    add-int/lit8 v0, v1, -0x1

    .line 778
    goto :goto_0

    .line 774
    :pswitch_9
    iget v1, p0, Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;->mThresholdEcioPoor:I

    add-int/lit8 v0, v1, -0x1

    .line 775
    goto :goto_0

    .line 796
    :cond_1
    const-string v1, "HwSignalStrength"

    const-string v2, "not use ecio"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    :cond_2
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public getNumofBins()I
    .locals 1

    .line 557
    iget v0, p0, Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;->mNumOfBins:I

    return v0
.end method

.method public getSignalLevel(II)I
    .locals 5
    .param p1, "rssi"    # I
    .param p2, "ecio"    # I

    .line 683
    iget v0, p0, Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;->mThresholdRssiPoor:I

    const/4 v1, 0x4

    const/4 v2, 0x5

    if-lt p1, v0, :cond_6

    iget-object v0, p0, Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;->mType:Lcom/android/internal/telephony/HwSignalStrength$SignalType;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/HwSignalStrength;->isRssiValid(Lcom/android/internal/telephony/HwSignalStrength$SignalType;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 685
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;->mThresholdRssiModerate:I

    if-ge p1, v0, :cond_1

    .line 686
    const/4 v0, 0x1

    goto :goto_2

    .line 687
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;->mThresholdRssiGood:I

    if-ge p1, v0, :cond_2

    .line 688
    const/4 v0, 0x2

    goto :goto_2

    .line 689
    :cond_2
    iget v0, p0, Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;->mThresholdRssiGreat:I

    if-ge p1, v0, :cond_3

    .line 690
    const/4 v0, 0x3

    goto :goto_2

    .line 691
    :cond_3
    iget v0, p0, Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;->mNumOfBins:I

    if-eq v1, v0, :cond_5

    iget v0, p0, Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;->mNumOfBins:I

    if-ne v2, v0, :cond_4

    iget v0, p0, Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;->mThresholdRssiExcellent:I

    if-ge p1, v0, :cond_4

    goto :goto_0

    .line 695
    :cond_4
    move v0, v2

    goto :goto_2

    .line 693
    :cond_5
    :goto_0
    const/4 v0, 0x4

    goto :goto_2

    .line 684
    :cond_6
    :goto_1
    const/4 v0, 0x0

    .line 695
    .local v0, "rssiLevel":I
    :goto_2
    nop

    .line 698
    iget-boolean v3, p0, Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;->mUseEcio:Z

    if-eqz v3, :cond_10

    .line 699
    invoke-static {}, Lcom/android/internal/telephony/HwSignalStrength;->access$200()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 700
    iget-object v3, p0, Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;->mType:Lcom/android/internal/telephony/HwSignalStrength$SignalType;

    invoke-static {v3, p2}, Lcom/android/internal/telephony/HwSignalStrength;->isEcioValidForQCom(Lcom/android/internal/telephony/HwSignalStrength$SignalType;I)Z

    move-result v3

    .local v3, "ecioValid":Z
    goto :goto_3

    .line 703
    .end local v3    # "ecioValid":Z
    :cond_7
    iget-object v3, p0, Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;->mType:Lcom/android/internal/telephony/HwSignalStrength$SignalType;

    invoke-static {v3, p2}, Lcom/android/internal/telephony/HwSignalStrength;->isEcioValid(Lcom/android/internal/telephony/HwSignalStrength$SignalType;I)Z

    move-result v3

    .line 705
    .restart local v3    # "ecioValid":Z
    :goto_3
    if-nez v3, :cond_8

    .line 707
    const/4 v2, 0x0

    .local v2, "ecioLevel":I
    :goto_4
    goto :goto_6

    .line 708
    .end local v2    # "ecioLevel":I
    :cond_8
    iget v4, p0, Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;->mThresholdEcioPoor:I

    if-ge p2, v4, :cond_9

    .line 709
    const/4 v2, 0x0

    goto :goto_4

    .line 710
    :cond_9
    iget v4, p0, Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;->mThresholdEcioModerate:I

    if-ge p2, v4, :cond_a

    .line 711
    const/4 v2, 0x1

    goto :goto_4

    .line 712
    :cond_a
    iget v4, p0, Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;->mThresholdEcioGood:I

    if-ge p2, v4, :cond_b

    .line 713
    const/4 v2, 0x2

    goto :goto_4

    .line 714
    :cond_b
    iget v4, p0, Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;->mThresholdEcioGreat:I

    if-ge p2, v4, :cond_c

    .line 715
    const/4 v2, 0x3

    goto :goto_4

    .line 716
    :cond_c
    iget v4, p0, Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;->mNumOfBins:I

    if-eq v1, v4, :cond_e

    iget v1, p0, Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;->mNumOfBins:I

    if-ne v2, v1, :cond_d

    iget v1, p0, Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;->mThresholdEcioExcellent:I

    if-ge p2, v1, :cond_d

    goto :goto_5

    .line 720
    :cond_d
    goto :goto_6

    .line 718
    :cond_e
    :goto_5
    const/4 v2, 0x4

    goto :goto_4

    .line 720
    .restart local v2    # "ecioLevel":I
    :goto_6
    move v1, v2

    .line 722
    .end local v2    # "ecioLevel":I
    .local v1, "ecioLevel":I
    if-lt v0, v1, :cond_f

    move v2, v1

    goto :goto_7

    :cond_f
    move v2, v0

    .local v2, "level":I
    :goto_7
    goto :goto_8

    .line 724
    .end local v1    # "ecioLevel":I
    .end local v2    # "level":I
    .end local v3    # "ecioValid":Z
    :cond_10
    move v2, v0

    .restart local v2    # "level":I
    :goto_8
    move v1, v2

    .line 726
    .end local v2    # "level":I
    .local v1, "level":I
    return v1
.end method

.method public getSignalType()Lcom/android/internal/telephony/HwSignalStrength$SignalType;
    .locals 1

    .line 553
    iget-object v0, p0, Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;->mType:Lcom/android/internal/telephony/HwSignalStrength$SignalType;

    return-object v0
.end method

.method public isConfigured()Z
    .locals 1

    .line 560
    iget-boolean v0, p0, Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;->mConfigured:Z

    return v0
.end method

.method public loadConfigItem(Ljava/lang/String;)V
    .locals 14
    .param p1, "custInfo"    # Ljava/lang/String;

    .line 564
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 571
    .local v0, "config":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v2, v0, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;->mNumOfBins:I

    .line 572
    const-string v2, "true"

    const/4 v3, 0x1

    aget-object v4, v0, v3

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;->mUseEcio:Z

    .line 573
    const/4 v2, 0x2

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;->mThresholdRssiPoor:I

    .line 574
    const/4 v2, 0x3

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;->mThresholdRssiModerate:I

    .line 575
    const/4 v2, 0x4

    aget-object v4, v0, v2

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;->mThresholdRssiGood:I

    .line 576
    const/4 v4, 0x5

    aget-object v5, v0, v4

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;->mThresholdRssiGreat:I

    .line 577
    iget v5, p0, Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;->mNumOfBins:I

    const/4 v6, 0x6

    if-ne v4, v5, :cond_0

    .line 578
    aget-object v5, v0, v6

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;->mThresholdRssiExcellent:I

    .line 581
    :cond_0
    iget-boolean v5, p0, Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;->mUseEcio:Z

    if-eqz v5, :cond_3

    .line 583
    invoke-static {}, Lcom/android/internal/telephony/HwSignalStrength;->access$200()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 584
    const/16 v3, 0xa

    .line 585
    .local v3, "mCeciomulti":I
    const/4 v5, 0x2

    .line 586
    .local v5, "mUeciomulti":I
    const/16 v7, 0xa

    .line 590
    .local v7, "mLeciomulti":I
    move v13, v5

    move v5, v3

    move v3, v7

    move v7, v13

    goto :goto_0

    .line 588
    .end local v3    # "mCeciomulti":I
    .end local v5    # "mUeciomulti":I
    .end local v7    # "mLeciomulti":I
    :cond_1
    const/4 v5, 0x1

    .line 589
    .local v5, "mCeciomulti":I
    const/4 v7, 0x1

    .line 590
    .local v7, "mUeciomulti":I
    nop

    .line 592
    .local v3, "mLeciomulti":I
    :goto_0
    sget-object v8, Lcom/android/internal/telephony/HwSignalStrength$2;->$SwitchMap$com$android$internal$telephony$HwSignalStrength$SignalType:[I

    iget-object v9, p0, Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;->mType:Lcom/android/internal/telephony/HwSignalStrength$SignalType;

    invoke-virtual {v9}, Lcom/android/internal/telephony/HwSignalStrength$SignalType;->ordinal()I

    move-result v9

    aget v8, v8, v9

    const/16 v9, 0xa

    const/16 v10, 0x9

    const/16 v11, 0x8

    const/4 v12, 0x7

    packed-switch v8, :pswitch_data_0

    .line 663
    iput-boolean v1, p0, Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;->mUseEcio:Z

    .end local v3    # "mLeciomulti":I
    .end local v5    # "mCeciomulti":I
    .end local v7    # "mUeciomulti":I
    goto/16 :goto_1

    .line 646
    .restart local v3    # "mLeciomulti":I
    .restart local v5    # "mCeciomulti":I
    .restart local v7    # "mUeciomulti":I
    :pswitch_0
    int-to-float v1, v3

    iget v8, p0, Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;->mNumOfBins:I

    add-int/2addr v6, v8

    sub-int/2addr v6, v2

    aget-object v6, v0, v6

    .line 647
    invoke-static {v6}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    mul-float/2addr v1, v6

    float-to-int v1, v1

    iput v1, p0, Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;->mThresholdEcioPoor:I

    .line 648
    int-to-float v1, v3

    iget v6, p0, Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;->mNumOfBins:I

    add-int/2addr v12, v6

    sub-int/2addr v12, v2

    aget-object v6, v0, v12

    .line 649
    invoke-static {v6}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    mul-float/2addr v1, v6

    float-to-int v1, v1

    iput v1, p0, Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;->mThresholdEcioModerate:I

    .line 650
    int-to-float v1, v3

    iget v6, p0, Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;->mNumOfBins:I

    add-int/2addr v11, v6

    sub-int/2addr v11, v2

    aget-object v6, v0, v11

    .line 651
    invoke-static {v6}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    mul-float/2addr v1, v6

    float-to-int v1, v1

    iput v1, p0, Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;->mThresholdEcioGood:I

    .line 652
    int-to-float v1, v3

    iget v6, p0, Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;->mNumOfBins:I

    add-int/2addr v10, v6

    sub-int/2addr v10, v2

    aget-object v6, v0, v10

    .line 653
    invoke-static {v6}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    mul-float/2addr v1, v6

    float-to-int v1, v1

    iput v1, p0, Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;->mThresholdEcioGreat:I

    .line 654
    iget v1, p0, Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;->mNumOfBins:I

    if-ne v4, v1, :cond_2

    .line 655
    int-to-float v1, v3

    iget v4, p0, Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;->mNumOfBins:I

    add-int/2addr v9, v4

    sub-int/2addr v9, v2

    aget-object v2, v0, v9

    .line 656
    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;->mThresholdEcioExcellent:I

    .line 658
    :cond_2
    const-string v1, "HwSignalStrength"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mThresholdEcioPoor"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;->mThresholdEcioPoor:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "mThresholdEcioModerate"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;->mThresholdEcioModerate:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    goto/16 :goto_1

    .line 625
    :pswitch_1
    iget v1, p0, Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;->mNumOfBins:I

    add-int/2addr v6, v1

    sub-int/2addr v6, v2

    aget-object v1, v0, v6

    .line 626
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;->mThresholdEcioPoor:I

    .line 627
    iget v1, p0, Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;->mNumOfBins:I

    add-int/2addr v12, v1

    sub-int/2addr v12, v2

    aget-object v1, v0, v12

    .line 628
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;->mThresholdEcioModerate:I

    .line 629
    iget v1, p0, Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;->mNumOfBins:I

    add-int/2addr v11, v1

    sub-int/2addr v11, v2

    aget-object v1, v0, v11

    .line 630
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;->mThresholdEcioGood:I

    .line 631
    iget v1, p0, Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;->mNumOfBins:I

    add-int/2addr v10, v1

    sub-int/2addr v10, v2

    aget-object v1, v0, v10

    .line 632
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;->mThresholdEcioGreat:I

    .line 633
    iget v1, p0, Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;->mNumOfBins:I

    if-ne v4, v1, :cond_3

    .line 634
    iget v1, p0, Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;->mNumOfBins:I

    add-int/2addr v9, v1

    sub-int/2addr v9, v2

    aget-object v1, v0, v9

    .line 635
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;->mThresholdEcioExcellent:I

    goto/16 :goto_1

    .line 610
    :pswitch_2
    iget v1, p0, Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;->mNumOfBins:I

    add-int/2addr v6, v1

    sub-int/2addr v6, v2

    aget-object v1, v0, v6

    .line 611
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/2addr v1, v7

    iput v1, p0, Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;->mThresholdEcioPoor:I

    .line 612
    iget v1, p0, Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;->mNumOfBins:I

    add-int/2addr v12, v1

    sub-int/2addr v12, v2

    aget-object v1, v0, v12

    .line 613
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/2addr v1, v7

    iput v1, p0, Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;->mThresholdEcioModerate:I

    .line 614
    iget v1, p0, Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;->mNumOfBins:I

    add-int/2addr v11, v1

    sub-int/2addr v11, v2

    aget-object v1, v0, v11

    .line 615
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/2addr v1, v7

    iput v1, p0, Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;->mThresholdEcioGood:I

    .line 616
    iget v1, p0, Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;->mNumOfBins:I

    add-int/2addr v10, v1

    sub-int/2addr v10, v2

    aget-object v1, v0, v10

    .line 617
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/2addr v1, v7

    iput v1, p0, Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;->mThresholdEcioGreat:I

    .line 618
    iget v1, p0, Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;->mNumOfBins:I

    if-ne v4, v1, :cond_3

    .line 619
    iget v1, p0, Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;->mNumOfBins:I

    add-int/2addr v9, v1

    sub-int/2addr v9, v2

    aget-object v1, v0, v9

    .line 620
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/2addr v1, v7

    iput v1, p0, Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;->mThresholdEcioExcellent:I

    goto :goto_1

    .line 595
    :pswitch_3
    iget v1, p0, Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;->mNumOfBins:I

    add-int/2addr v6, v1

    sub-int/2addr v6, v2

    aget-object v1, v0, v6

    .line 596
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/2addr v1, v7

    iput v1, p0, Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;->mThresholdEcioPoor:I

    .line 597
    iget v1, p0, Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;->mNumOfBins:I

    add-int/2addr v12, v1

    sub-int/2addr v12, v2

    aget-object v1, v0, v12

    .line 598
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/2addr v1, v7

    iput v1, p0, Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;->mThresholdEcioModerate:I

    .line 599
    iget v1, p0, Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;->mNumOfBins:I

    add-int/2addr v11, v1

    sub-int/2addr v11, v2

    aget-object v1, v0, v11

    .line 600
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/2addr v1, v7

    iput v1, p0, Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;->mThresholdEcioGood:I

    .line 601
    iget v1, p0, Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;->mNumOfBins:I

    add-int/2addr v10, v1

    sub-int/2addr v10, v2

    aget-object v1, v0, v10

    .line 602
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/2addr v1, v7

    iput v1, p0, Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;->mThresholdEcioGreat:I

    .line 603
    iget v1, p0, Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;->mNumOfBins:I

    if-ne v4, v1, :cond_3

    .line 604
    iget v1, p0, Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;->mNumOfBins:I

    add-int/2addr v9, v1

    sub-int/2addr v9, v2

    aget-object v1, v0, v9

    .line 605
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/2addr v1, v7

    iput v1, p0, Lcom/android/internal/telephony/HwSignalStrength$SignalThreshold;->mThresholdEcioExcellent:I

    .line 667
    .end local v3    # "mLeciomulti":I
    .end local v5    # "mCeciomulti":I
    .end local v7    # "mUeciomulti":I
    :cond_3
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
