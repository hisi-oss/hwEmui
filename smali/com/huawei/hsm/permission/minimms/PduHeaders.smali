.class Lcom/huawei/hsm/permission/minimms/PduHeaders;
.super Ljava/lang/Object;
.source "PduHeaders.java"


# static fields
.field public static final ADAPTATION_ALLOWED:I = 0xbc

.field public static final ADDITIONAL_HEADERS:I = 0xb0

.field public static final APPLIC_ID:I = 0xb7

.field public static final ATTRIBUTES:I = 0xa8

.field public static final AUX_APPLIC_ID:I = 0xb9

.field public static final BCC:I = 0x81

.field public static final CANCEL_ID:I = 0xbe

.field public static final CANCEL_STATUS:I = 0xbf

.field public static final CANCEL_STATUS_REQUEST_CORRUPTED:I = 0x81

.field public static final CANCEL_STATUS_REQUEST_SUCCESSFULLY_RECEIVED:I = 0x80

.field public static final CC:I = 0x82

.field public static final CONTENT:I = 0xae

.field public static final CONTENT_CLASS:I = 0xba

.field public static final CONTENT_CLASS_CONTENT_RICH:I = 0x87

.field public static final CONTENT_CLASS_TEXT:I = 0x80

.field public static final CONTENT_LOCATION:I = 0x83

.field public static final CONTENT_TYPE:I = 0x84

.field public static final CURRENT_MMS_VERSION:I = 0x12

.field public static final DATE:I = 0x85

.field public static final DELIVERY_REPORT:I = 0x86

.field public static final DELIVERY_TIME:I = 0x87

.field public static final DISTRIBUTION_INDICATOR:I = 0xb1

.field public static final DRM_CONTENT:I = 0xbb

.field public static final ELEMENT_DESCRIPTOR:I = 0xb2

.field public static final EXPIRY:I = 0x88

.field public static final FROM:I = 0x89

.field public static final FROM_ADDRESS_PRESENT_TOKEN:I = 0x80

.field public static final FROM_INSERT_ADDRESS_TOKEN_STR:Ljava/lang/String; = "insert-address-token"

.field public static final LIMIT:I = 0xb3

.field public static final MBOX_QUOTAS:I = 0xac

.field public static final MBOX_TOTALS:I = 0xaa

.field public static final MESSAGE_CLASS:I = 0x8a

.field public static final MESSAGE_CLASS_ADVERTISEMENT:I = 0x81

.field public static final MESSAGE_CLASS_ADVERTISEMENT_STR:Ljava/lang/String; = "advertisement"

.field public static final MESSAGE_CLASS_AUTO:I = 0x83

.field public static final MESSAGE_CLASS_AUTO_STR:Ljava/lang/String; = "auto"

.field public static final MESSAGE_CLASS_INFORMATIONAL:I = 0x82

.field public static final MESSAGE_CLASS_INFORMATIONAL_STR:Ljava/lang/String; = "informational"

.field public static final MESSAGE_CLASS_PERSONAL:I = 0x80

.field public static final MESSAGE_CLASS_PERSONAL_STR:Ljava/lang/String; = "personal"

.field public static final MESSAGE_COUNT:I = 0xad

.field public static final MESSAGE_ID:I = 0x8b

.field public static final MESSAGE_SIZE:I = 0x8e

.field public static final MESSAGE_TYPE:I = 0x8c

.field public static final MESSAGE_TYPE_CANCEL_CONF:I = 0x97

.field public static final MESSAGE_TYPE_CANCEL_REQ:I = 0x96

.field public static final MESSAGE_TYPE_DELETE_CONF:I = 0x95

.field public static final MESSAGE_TYPE_DELETE_REQ:I = 0x94

.field public static final MESSAGE_TYPE_FORWARD_CONF:I = 0x8a

.field public static final MESSAGE_TYPE_FORWARD_REQ:I = 0x89

.field public static final MESSAGE_TYPE_MBOX_DELETE_CONF:I = 0x92

.field public static final MESSAGE_TYPE_MBOX_DELETE_REQ:I = 0x91

.field public static final MESSAGE_TYPE_MBOX_DESCR:I = 0x93

.field public static final MESSAGE_TYPE_MBOX_STORE_CONF:I = 0x8c

.field public static final MESSAGE_TYPE_MBOX_STORE_REQ:I = 0x8b

.field public static final MESSAGE_TYPE_MBOX_UPLOAD_CONF:I = 0x90

.field public static final MESSAGE_TYPE_MBOX_UPLOAD_REQ:I = 0x8f

.field public static final MESSAGE_TYPE_MBOX_VIEW_CONF:I = 0x8e

.field public static final MESSAGE_TYPE_MBOX_VIEW_REQ:I = 0x8d

.field public static final MESSAGE_TYPE_SEND_REQ:I = 0x80

.field public static final MMS_VERSION:I = 0x8d

.field public static final MMS_VERSION_1_0:I = 0x10

.field public static final MMS_VERSION_1_2:I = 0x12

.field public static final MMS_VERSION_1_3:I = 0x13

.field public static final MM_FLAGS:I = 0xa4

.field public static final MM_STATE:I = 0xa3

.field public static final MM_STATE_DRAFT:I = 0x80

.field public static final MM_STATE_FORWARDED:I = 0x84

.field public static final PREVIOUSLY_SENT_BY:I = 0xa0

.field public static final PREVIOUSLY_SENT_DATE:I = 0xa1

.field public static final PRIORITY:I = 0x8f

.field public static final PRIORITY_HIGH:I = 0x82

.field public static final PRIORITY_LOW:I = 0x80

.field public static final QUOTAS:I = 0xab

.field public static final READ_REPORT:I = 0x90

.field public static final READ_STATUS:I = 0x9b

.field public static final READ_STATUS_READ:I = 0x80

.field public static final READ_STATUS__DELETED_WITHOUT_BEING_READ:I = 0x81

.field public static final RECOMMENDED_RETRIEVAL_MODE:I = 0xb4

.field public static final RECOMMENDED_RETRIEVAL_MODE_MANUAL:I = 0x80

.field public static final RECOMMENDED_RETRIEVAL_MODE_TEXT:I = 0xb5

.field public static final REPLACE_ID:I = 0xbd

.field public static final REPLY_APPLIC_ID:I = 0xb8

.field public static final REPLY_CHARGING:I = 0x9c

.field public static final REPLY_CHARGING_ACCEPTED_TEXT_ONLY:I = 0x83

.field public static final REPLY_CHARGING_DEADLINE:I = 0x9d

.field public static final REPLY_CHARGING_ID:I = 0x9e

.field public static final REPLY_CHARGING_REQUESTED:I = 0x80

.field public static final REPLY_CHARGING_SIZE:I = 0x9f

.field public static final REPORT_ALLOWED:I = 0x91

.field public static final RESPONSE_STATUS:I = 0x92

.field public static final RESPONSE_STATUS_ERROR_PERMANENT_END:I = 0xff

.field public static final RESPONSE_STATUS_ERROR_PERMANENT_FAILURE:I = 0xe0

.field public static final RESPONSE_STATUS_ERROR_PERMANENT_LACK_OF_PREPAID:I = 0xeb

.field public static final RESPONSE_STATUS_ERROR_TRANSIENT_FAILURE:I = 0xc0

.field public static final RESPONSE_STATUS_ERROR_TRANSIENT_PARTIAL_SUCCESS:I = 0xc4

.field public static final RESPONSE_STATUS_ERROR_UNSUPPORTED_MESSAGE:I = 0x88

.field public static final RESPONSE_STATUS_OK:I = 0x80

.field public static final RESPONSE_TEXT:I = 0x93

.field public static final RETRIEVE_STATUS:I = 0x99

.field public static final RETRIEVE_STATUS_ERROR_END:I = 0xff

.field public static final RETRIEVE_STATUS_ERROR_PERMANENT_CONTENT_UNSUPPORTED:I = 0xe3

.field public static final RETRIEVE_STATUS_ERROR_PERMANENT_FAILURE:I = 0xe0

.field public static final RETRIEVE_STATUS_ERROR_TRANSIENT_FAILURE:I = 0xc0

.field public static final RETRIEVE_STATUS_ERROR_TRANSIENT_NETWORK_PROBLEM:I = 0xc2

.field public static final RETRIEVE_STATUS_OK:I = 0x80

.field public static final RETRIEVE_TEXT:I = 0x9a

.field public static final SENDER_VISIBILITY:I = 0x94

.field public static final START:I = 0xaf

.field public static final STATUS:I = 0x95

.field public static final STATUS_EXPIRED:I = 0x80

.field public static final STATUS_TEXT:I = 0xb6

.field public static final STATUS_UNREACHABLE:I = 0x87

.field public static final STORE:I = 0xa2

.field public static final STORED:I = 0xa7

.field public static final STORE_STATUS:I = 0xa5

.field public static final STORE_STATUS_ERROR_END:I = 0xff

.field public static final STORE_STATUS_ERROR_PERMANENT_FAILURE:I = 0xe0

.field public static final STORE_STATUS_ERROR_PERMANENT_MMBOX_FULL:I = 0xe4

.field public static final STORE_STATUS_ERROR_TRANSIENT_FAILURE:I = 0xc0

.field public static final STORE_STATUS_ERROR_TRANSIENT_NETWORK_PROBLEM:I = 0xc1

.field public static final STORE_STATUS_SUCCESS:I = 0x80

.field public static final STORE_STATUS_TEXT:I = 0xa6

.field public static final SUBJECT:I = 0x96

.field public static final TO:I = 0x97

.field public static final TOTALS:I = 0xa9

.field public static final TRANSACTION_ID:I = 0x98

.field public static final VALUE_NO:I = 0x81

.field public static final VALUE_RELATIVE_TOKEN:I = 0x81

.field public static final VALUE_YES:I = 0x80


# instance fields
.field private mHeaderMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 325
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/hsm/permission/minimms/PduHeaders;->mHeaderMap:Ljava/util/HashMap;

    .line 331
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/huawei/hsm/permission/minimms/PduHeaders;->mHeaderMap:Ljava/util/HashMap;

    .line 332
    return-void
.end method


# virtual methods
.method protected appendEncodedStringValue(Lcom/huawei/hsm/permission/minimms/EncodedStringValue;I)V
    .locals 3
    .param p1, "value"    # Lcom/huawei/hsm/permission/minimms/EncodedStringValue;
    .param p2, "field"    # I

    .line 579
    if-eqz p1, :cond_2

    .line 583
    const/16 v0, 0x97

    if-eq p2, v0, :cond_0

    packed-switch p2, :pswitch_data_0

    .line 589
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid header field!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 587
    :cond_0
    :pswitch_0
    nop

    .line 592
    iget-object v0, p0, Lcom/huawei/hsm/permission/minimms/PduHeaders;->mHeaderMap:Ljava/util/HashMap;

    .line 593
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 594
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/hsm/permission/minimms/EncodedStringValue;>;"
    if-nez v0, :cond_1

    .line 595
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 597
    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 598
    iget-object v1, p0, Lcom/huawei/hsm/permission/minimms/PduHeaders;->mHeaderMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    return-void

    .line 580
    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/hsm/permission/minimms/EncodedStringValue;>;"
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x81
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected getEncodedStringValues(I)[Lcom/huawei/hsm/permission/minimms/EncodedStringValue;
    .locals 3
    .param p1, "field"    # I

    .line 524
    iget-object v0, p0, Lcom/huawei/hsm/permission/minimms/PduHeaders;->mHeaderMap:Ljava/util/HashMap;

    .line 525
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 526
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/hsm/permission/minimms/EncodedStringValue;>;"
    if-nez v0, :cond_0

    .line 527
    const/4 v1, 0x0

    return-object v1

    .line 529
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/huawei/hsm/permission/minimms/EncodedStringValue;

    .line 530
    .local v1, "values":[Lcom/huawei/hsm/permission/minimms/EncodedStringValue;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/huawei/hsm/permission/minimms/EncodedStringValue;

    return-object v2
.end method

.method protected setEncodedStringValue(Lcom/huawei/hsm/permission/minimms/EncodedStringValue;I)V
    .locals 2
    .param p1, "value"    # Lcom/huawei/hsm/permission/minimms/EncodedStringValue;
    .param p2, "field"    # I

    .line 547
    if-eqz p1, :cond_1

    .line 551
    const/16 v0, 0x89

    if-eq p2, v0, :cond_0

    const/16 v0, 0x93

    if-eq p2, v0, :cond_0

    const/16 v0, 0x96

    if-eq p2, v0, :cond_0

    const/16 v0, 0x9a

    if-eq p2, v0, :cond_0

    const/16 v0, 0xa0

    if-eq p2, v0, :cond_0

    const/16 v0, 0xa4

    if-eq p2, v0, :cond_0

    const/16 v0, 0xa6

    if-eq p2, v0, :cond_0

    packed-switch p2, :pswitch_data_0

    .line 564
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid header field!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 561
    :cond_0
    :pswitch_0
    nop

    .line 567
    iget-object v0, p0, Lcom/huawei/hsm/permission/minimms/PduHeaders;->mHeaderMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    return-void

    .line 548
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :pswitch_data_0
    .packed-switch 0xb5
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected setLongInteger(JI)V
    .locals 3
    .param p1, "value"    # J
    .param p3, "field"    # I

    .line 612
    const/16 v0, 0x85

    if-eq p3, v0, :cond_0

    const/16 v0, 0x8e

    if-eq p3, v0, :cond_0

    const/16 v0, 0x9d

    if-eq p3, v0, :cond_0

    const/16 v0, 0x9f

    if-eq p3, v0, :cond_0

    const/16 v0, 0xa1

    if-eq p3, v0, :cond_0

    const/16 v0, 0xad

    if-eq p3, v0, :cond_0

    const/16 v0, 0xaf

    if-eq p3, v0, :cond_0

    const/16 v0, 0xb3

    if-eq p3, v0, :cond_0

    packed-switch p3, :pswitch_data_0

    .line 626
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid header field!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 623
    :cond_0
    :pswitch_0
    nop

    .line 628
    iget-object v0, p0, Lcom/huawei/hsm/permission/minimms/PduHeaders;->mHeaderMap:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    return-void

    :pswitch_data_0
    .packed-switch 0x87
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected setOctet(II)V
    .locals 6
    .param p1, "value"    # I
    .param p2, "field"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hsm/permission/minimms/InvalidHeaderValueException;
        }
    .end annotation

    .line 347
    const/16 v0, 0x87

    const/16 v1, 0xc0

    const/16 v2, 0xe0

    const/16 v3, 0x81

    const/16 v4, 0xff

    const/16 v5, 0x80

    sparse-switch p2, :sswitch_data_0

    .line 473
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid header field!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 372
    :sswitch_0
    if-eq v5, p1, :cond_17

    if-ne v3, p1, :cond_0

    goto/16 :goto_0

    .line 375
    :cond_0
    new-instance v0, Lcom/huawei/hsm/permission/minimms/InvalidHeaderValueException;

    const-string v1, "Invalid Octet value!"

    invoke-direct {v0, v1}, Lcom/huawei/hsm/permission/minimms/InvalidHeaderValueException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 410
    :sswitch_1
    if-lt p1, v5, :cond_1

    if-gt p1, v0, :cond_1

    goto/16 :goto_0

    .line 413
    :cond_1
    new-instance v0, Lcom/huawei/hsm/permission/minimms/InvalidHeaderValueException;

    const-string v1, "Invalid Octet value!"

    invoke-direct {v0, v1}, Lcom/huawei/hsm/permission/minimms/InvalidHeaderValueException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 404
    :sswitch_2
    if-ne v5, p1, :cond_2

    goto/16 :goto_0

    .line 406
    :cond_2
    new-instance v0, Lcom/huawei/hsm/permission/minimms/InvalidHeaderValueException;

    const-string v1, "Invalid Octet value!"

    invoke-direct {v0, v1}, Lcom/huawei/hsm/permission/minimms/InvalidHeaderValueException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 433
    :sswitch_3
    const/16 v0, 0xc1

    if-le p1, v0, :cond_3

    if-ge p1, v2, :cond_3

    .line 435
    const/16 p1, 0xc0

    goto/16 :goto_0

    .line 436
    :cond_3
    const/16 v0, 0xe4

    if-le p1, v0, :cond_4

    if-gt p1, v4, :cond_4

    .line 438
    const/16 p1, 0xe0

    goto/16 :goto_0

    .line 439
    :cond_4
    if-lt p1, v5, :cond_6

    if-le p1, v5, :cond_5

    if-lt p1, v1, :cond_6

    :cond_5
    if-le p1, v4, :cond_17

    .line 443
    :cond_6
    const/16 p1, 0xe0

    goto/16 :goto_0

    .line 398
    :sswitch_4
    if-lt p1, v5, :cond_7

    const/16 v0, 0x84

    if-gt p1, v0, :cond_7

    goto/16 :goto_0

    .line 400
    :cond_7
    new-instance v0, Lcom/huawei/hsm/permission/minimms/InvalidHeaderValueException;

    const-string v1, "Invalid Octet value!"

    invoke-direct {v0, v1}, Lcom/huawei/hsm/permission/minimms/InvalidHeaderValueException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 391
    :sswitch_5
    if-lt p1, v5, :cond_8

    const/16 v0, 0x83

    if-gt p1, v0, :cond_8

    goto/16 :goto_0

    .line 394
    :cond_8
    new-instance v0, Lcom/huawei/hsm/permission/minimms/InvalidHeaderValueException;

    const-string v1, "Invalid Octet value!"

    invoke-direct {v0, v1}, Lcom/huawei/hsm/permission/minimms/InvalidHeaderValueException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 365
    :sswitch_6
    if-eq v5, p1, :cond_17

    if-ne v3, p1, :cond_9

    goto/16 :goto_0

    .line 368
    :cond_9
    new-instance v0, Lcom/huawei/hsm/permission/minimms/InvalidHeaderValueException;

    const-string v1, "Invalid Octet value!"

    invoke-direct {v0, v1}, Lcom/huawei/hsm/permission/minimms/InvalidHeaderValueException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 418
    :sswitch_7
    const/16 v0, 0xc2

    if-le p1, v0, :cond_a

    if-ge p1, v2, :cond_a

    .line 420
    const/16 p1, 0xc0

    goto/16 :goto_0

    .line 421
    :cond_a
    const/16 v0, 0xe3

    if-le p1, v0, :cond_b

    if-gt p1, v4, :cond_b

    .line 423
    const/16 p1, 0xe0

    goto/16 :goto_0

    .line 424
    :cond_b
    if-lt p1, v5, :cond_d

    if-le p1, v5, :cond_c

    if-lt p1, v1, :cond_d

    :cond_c
    if-le p1, v4, :cond_17

    .line 428
    :cond_d
    const/16 p1, 0xe0

    goto/16 :goto_0

    .line 385
    :sswitch_8
    if-lt p1, v5, :cond_e

    if-gt p1, v0, :cond_e

    goto :goto_0

    .line 387
    :cond_e
    new-instance v0, Lcom/huawei/hsm/permission/minimms/InvalidHeaderValueException;

    const-string v1, "Invalid Octet value!"

    invoke-direct {v0, v1}, Lcom/huawei/hsm/permission/minimms/InvalidHeaderValueException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 448
    :sswitch_9
    const/16 v0, 0xc4

    if-le p1, v0, :cond_f

    if-ge p1, v2, :cond_f

    .line 450
    const/16 p1, 0xc0

    goto :goto_0

    .line 451
    :cond_f
    const/16 v0, 0xeb

    if-le p1, v0, :cond_10

    if-le p1, v4, :cond_12

    :cond_10
    if-lt p1, v5, :cond_12

    const/16 v0, 0x88

    if-le p1, v0, :cond_11

    if-lt p1, v1, :cond_12

    :cond_11
    if-le p1, v4, :cond_17

    .line 457
    :cond_12
    const/16 p1, 0xe0

    goto :goto_0

    .line 379
    :sswitch_a
    if-lt p1, v5, :cond_13

    const/16 v0, 0x82

    if-gt p1, v0, :cond_13

    goto :goto_0

    .line 381
    :cond_13
    new-instance v0, Lcom/huawei/hsm/permission/minimms/InvalidHeaderValueException;

    const-string v1, "Invalid Octet value!"

    invoke-direct {v0, v1}, Lcom/huawei/hsm/permission/minimms/InvalidHeaderValueException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 461
    :sswitch_b
    const/16 v0, 0x10

    if-lt p1, v0, :cond_14

    const/16 v0, 0x13

    if-le p1, v0, :cond_17

    .line 462
    :cond_14
    const/16 p1, 0x12

    goto :goto_0

    .line 466
    :sswitch_c
    if-lt p1, v5, :cond_15

    const/16 v0, 0x97

    if-gt p1, v0, :cond_15

    goto :goto_0

    .line 468
    :cond_15
    new-instance v0, Lcom/huawei/hsm/permission/minimms/InvalidHeaderValueException;

    const-string v1, "Invalid Octet value!"

    invoke-direct {v0, v1}, Lcom/huawei/hsm/permission/minimms/InvalidHeaderValueException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 359
    :sswitch_d
    if-eq v5, p1, :cond_17

    if-ne v3, p1, :cond_16

    goto :goto_0

    .line 361
    :cond_16
    new-instance v0, Lcom/huawei/hsm/permission/minimms/InvalidHeaderValueException;

    const-string v1, "Invalid Octet value!"

    invoke-direct {v0, v1}, Lcom/huawei/hsm/permission/minimms/InvalidHeaderValueException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 475
    :cond_17
    :goto_0
    iget-object v0, p0, Lcom/huawei/hsm/permission/minimms/PduHeaders;->mHeaderMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    return-void

    :sswitch_data_0
    .sparse-switch
        0x86 -> :sswitch_d
        0x8c -> :sswitch_c
        0x8d -> :sswitch_b
        0x8f -> :sswitch_a
        0x90 -> :sswitch_d
        0x91 -> :sswitch_d
        0x92 -> :sswitch_9
        0x94 -> :sswitch_d
        0x95 -> :sswitch_8
        0x99 -> :sswitch_7
        0x9b -> :sswitch_6
        0x9c -> :sswitch_5
        0xa2 -> :sswitch_d
        0xa3 -> :sswitch_4
        0xa5 -> :sswitch_3
        0xa7 -> :sswitch_d
        0xa9 -> :sswitch_d
        0xab -> :sswitch_d
        0xb1 -> :sswitch_d
        0xb4 -> :sswitch_2
        0xba -> :sswitch_1
        0xbb -> :sswitch_d
        0xbc -> :sswitch_d
        0xbf -> :sswitch_0
    .end sparse-switch
.end method

.method protected setTextString([BI)V
    .locals 2
    .param p1, "value"    # [B
    .param p2, "field"    # I

    .line 492
    if-eqz p1, :cond_0

    .line 496
    sparse-switch p2, :sswitch_data_0

    .line 511
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid header field!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 508
    :sswitch_0
    nop

    .line 513
    iget-object v0, p0, Lcom/huawei/hsm/permission/minimms/PduHeaders;->mHeaderMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    return-void

    .line 493
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :sswitch_data_0
    .sparse-switch
        0x83 -> :sswitch_0
        0x84 -> :sswitch_0
        0x8a -> :sswitch_0
        0x8b -> :sswitch_0
        0x98 -> :sswitch_0
        0x9e -> :sswitch_0
        0xb7 -> :sswitch_0
        0xb8 -> :sswitch_0
        0xb9 -> :sswitch_0
        0xbd -> :sswitch_0
        0xbe -> :sswitch_0
    .end sparse-switch
.end method
