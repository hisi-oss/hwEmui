.class public Landroid/media/HwAutoTuneImpl$AutoTuneWordDesc;
.super Ljava/lang/Object;
.source "HwAutoTuneImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/HwAutoTuneImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AutoTuneWordDesc"
.end annotation


# instance fields
.field private mCorrectFlag:Z

.field private mCorrectNoteBeginMs:I

.field private mCorrectNoteDurationMs:I

.field private mCorrectNoteHigh:F

.field private mOriginNoteBeginMs:I

.field private mOriginNoteDurationMs:I

.field private mOriginNoteHigh:F

.field private mWordString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getmCorrectNoteBeginMs()I
    .locals 1

    .line 192
    iget v0, p0, Landroid/media/HwAutoTuneImpl$AutoTuneWordDesc;->mCorrectNoteBeginMs:I

    return v0
.end method

.method public getmCorrectNoteDurationMs()I
    .locals 1

    .line 210
    iget v0, p0, Landroid/media/HwAutoTuneImpl$AutoTuneWordDesc;->mCorrectNoteDurationMs:I

    return v0
.end method

.method public getmCorrectNoteHigh()F
    .locals 1

    .line 228
    iget v0, p0, Landroid/media/HwAutoTuneImpl$AutoTuneWordDesc;->mCorrectNoteHigh:F

    return v0
.end method

.method public getmOriginNoteBeginMs()I
    .locals 1

    .line 138
    iget v0, p0, Landroid/media/HwAutoTuneImpl$AutoTuneWordDesc;->mOriginNoteBeginMs:I

    return v0
.end method

.method public getmOriginNoteDurationMs()I
    .locals 1

    .line 156
    iget v0, p0, Landroid/media/HwAutoTuneImpl$AutoTuneWordDesc;->mOriginNoteDurationMs:I

    return v0
.end method

.method public getmOriginNoteHigh()F
    .locals 1

    .line 174
    iget v0, p0, Landroid/media/HwAutoTuneImpl$AutoTuneWordDesc;->mOriginNoteHigh:F

    return v0
.end method

.method public getmWordString()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Landroid/media/HwAutoTuneImpl$AutoTuneWordDesc;->mWordString:Ljava/lang/String;

    return-object v0
.end method

.method public ismCorrectFlag()Z
    .locals 1

    .line 120
    iget-boolean v0, p0, Landroid/media/HwAutoTuneImpl$AutoTuneWordDesc;->mCorrectFlag:Z

    return v0
.end method

.method public setmCorrectFlag(Z)V
    .locals 0
    .param p1, "mCorrectFlag"    # Z

    .line 129
    iput-boolean p1, p0, Landroid/media/HwAutoTuneImpl$AutoTuneWordDesc;->mCorrectFlag:Z

    .line 130
    return-void
.end method

.method public setmCorrectNoteBeginMs(I)V
    .locals 0
    .param p1, "mCorrectNoteBeginMs"    # I

    .line 201
    iput p1, p0, Landroid/media/HwAutoTuneImpl$AutoTuneWordDesc;->mCorrectNoteBeginMs:I

    .line 202
    return-void
.end method

.method public setmCorrectNoteDurationMs(I)V
    .locals 0
    .param p1, "mCorrectNoteDurationMs"    # I

    .line 219
    iput p1, p0, Landroid/media/HwAutoTuneImpl$AutoTuneWordDesc;->mCorrectNoteDurationMs:I

    .line 220
    return-void
.end method

.method public setmCorrectNoteHigh(F)V
    .locals 0
    .param p1, "mCorrectNoteHigh"    # F

    .line 237
    iput p1, p0, Landroid/media/HwAutoTuneImpl$AutoTuneWordDesc;->mCorrectNoteHigh:F

    .line 238
    return-void
.end method

.method public setmOriginNoteBeginMs(I)V
    .locals 0
    .param p1, "mOriginNoteBeginMs"    # I

    .line 147
    iput p1, p0, Landroid/media/HwAutoTuneImpl$AutoTuneWordDesc;->mOriginNoteBeginMs:I

    .line 148
    return-void
.end method

.method public setmOriginNoteDurationMs(I)V
    .locals 0
    .param p1, "mOriginNoteDurationMs"    # I

    .line 165
    iput p1, p0, Landroid/media/HwAutoTuneImpl$AutoTuneWordDesc;->mOriginNoteDurationMs:I

    .line 166
    return-void
.end method

.method public setmOriginNoteHigh(F)V
    .locals 0
    .param p1, "mOriginNoteHigh"    # F

    .line 183
    iput p1, p0, Landroid/media/HwAutoTuneImpl$AutoTuneWordDesc;->mOriginNoteHigh:F

    .line 184
    return-void
.end method

.method public setmWordString(Ljava/lang/String;)V
    .locals 0
    .param p1, "mWordString"    # Ljava/lang/String;

    .line 111
    iput-object p1, p0, Landroid/media/HwAutoTuneImpl$AutoTuneWordDesc;->mWordString:Ljava/lang/String;

    .line 112
    return-void
.end method
