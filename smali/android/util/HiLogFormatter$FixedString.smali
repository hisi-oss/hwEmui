.class Landroid/util/HiLogFormatter$FixedString;
.super Ljava/lang/Object;
.source "HiLogFormatter.java"

# interfaces
.implements Landroid/util/HiLogFormatter$FormatString;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/HiLogFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FixedString"
.end annotation


# instance fields
.field private s:Ljava/lang/String;

.field final synthetic this$0:Landroid/util/HiLogFormatter;


# direct methods
.method constructor <init>(Landroid/util/HiLogFormatter;Ljava/lang/String;)V
    .locals 0
    .param p2, "s"    # Ljava/lang/String;

    .line 2719
    iput-object p1, p0, Landroid/util/HiLogFormatter$FixedString;->this$0:Landroid/util/HiLogFormatter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/util/HiLogFormatter$FixedString;->s:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public index()I
    .locals 1

    .line 2720
    const/4 v0, -0x2

    return v0
.end method

.method public print(Ljava/lang/Object;Ljava/util/Locale;)V
    .locals 2
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2722
    iget-object v0, p0, Landroid/util/HiLogFormatter$FixedString;->this$0:Landroid/util/HiLogFormatter;

    invoke-static {v0}, Landroid/util/HiLogFormatter;->access$000(Landroid/util/HiLogFormatter;)Ljava/lang/Appendable;

    move-result-object v0

    iget-object v1, p0, Landroid/util/HiLogFormatter$FixedString;->s:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 2723
    iget-object v0, p0, Landroid/util/HiLogFormatter$FixedString;->s:Ljava/lang/String;

    return-object v0
.end method
