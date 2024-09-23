.class Landroid/telephony/HwPhoneNumberUtils$MccNumberMatch;
.super Ljava/lang/Object;
.source "HwPhoneNumberUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/HwPhoneNumberUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MccNumberMatch"
.end annotation


# instance fields
.field private mCc:Ljava/lang/String;

.field private mIdd:Ljava/lang/String;

.field private mMcc:I

.field private mNdd:Ljava/lang/String;

.field private mSpcs:[Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "mcc"    # I
    .param p2, "idd"    # Ljava/lang/String;
    .param p3, "cc"    # Ljava/lang/String;
    .param p4, "ndd"    # Ljava/lang/String;

    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 340
    iput p1, p0, Landroid/telephony/HwPhoneNumberUtils$MccNumberMatch;->mMcc:I

    .line 341
    iput-object p2, p0, Landroid/telephony/HwPhoneNumberUtils$MccNumberMatch;->mIdd:Ljava/lang/String;

    .line 342
    iput-object p3, p0, Landroid/telephony/HwPhoneNumberUtils$MccNumberMatch;->mCc:Ljava/lang/String;

    .line 343
    iput-object p4, p0, Landroid/telephony/HwPhoneNumberUtils$MccNumberMatch;->mNdd:Ljava/lang/String;

    .line 344
    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "mcc"    # I
    .param p2, "idd"    # Ljava/lang/String;
    .param p3, "cc"    # Ljava/lang/String;
    .param p4, "ndd"    # Ljava/lang/String;
    .param p5, "spcList"    # Ljava/lang/String;

    .line 347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 348
    iput p1, p0, Landroid/telephony/HwPhoneNumberUtils$MccNumberMatch;->mMcc:I

    .line 349
    iput-object p2, p0, Landroid/telephony/HwPhoneNumberUtils$MccNumberMatch;->mIdd:Ljava/lang/String;

    .line 350
    iput-object p3, p0, Landroid/telephony/HwPhoneNumberUtils$MccNumberMatch;->mCc:Ljava/lang/String;

    .line 351
    iput-object p4, p0, Landroid/telephony/HwPhoneNumberUtils$MccNumberMatch;->mNdd:Ljava/lang/String;

    .line 352
    if-eqz p5, :cond_0

    .line 354
    const-string v0, ","

    invoke-virtual {p5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/HwPhoneNumberUtils$MccNumberMatch;->mSpcs:[Ljava/lang/String;

    .line 356
    :cond_0
    return-void
.end method


# virtual methods
.method public getCc()Ljava/lang/String;
    .locals 1

    .line 369
    iget-object v0, p0, Landroid/telephony/HwPhoneNumberUtils$MccNumberMatch;->mCc:Ljava/lang/String;

    return-object v0
.end method

.method public getIdd()Ljava/lang/String;
    .locals 1

    .line 364
    iget-object v0, p0, Landroid/telephony/HwPhoneNumberUtils$MccNumberMatch;->mIdd:Ljava/lang/String;

    return-object v0
.end method

.method public getMcc()I
    .locals 1

    .line 359
    iget v0, p0, Landroid/telephony/HwPhoneNumberUtils$MccNumberMatch;->mMcc:I

    return v0
.end method

.method public getNdd()Ljava/lang/String;
    .locals 1

    .line 374
    iget-object v0, p0, Landroid/telephony/HwPhoneNumberUtils$MccNumberMatch;->mNdd:Ljava/lang/String;

    return-object v0
.end method

.method public getSpcs()[Ljava/lang/String;
    .locals 1

    .line 379
    iget-object v0, p0, Landroid/telephony/HwPhoneNumberUtils$MccNumberMatch;->mSpcs:[Ljava/lang/String;

    return-object v0
.end method
