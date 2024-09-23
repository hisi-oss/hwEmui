.class Lhuawei/com/android/internal/widget/HwEditor$ChangeWatcher;
.super Ljava/lang/Object;
.source "HwEditor.java"

# interfaces
.implements Landroid/text/SpanWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhuawei/com/android/internal/widget/HwEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChangeWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lhuawei/com/android/internal/widget/HwEditor;


# direct methods
.method private constructor <init>(Lhuawei/com/android/internal/widget/HwEditor;)V
    .locals 0

    .line 467
    iput-object p1, p0, Lhuawei/com/android/internal/widget/HwEditor$ChangeWatcher;->this$0:Lhuawei/com/android/internal/widget/HwEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lhuawei/com/android/internal/widget/HwEditor;Lhuawei/com/android/internal/widget/HwEditor$1;)V
    .locals 0
    .param p1, "x0"    # Lhuawei/com/android/internal/widget/HwEditor;
    .param p2, "x1"    # Lhuawei/com/android/internal/widget/HwEditor$1;

    .line 467
    invoke-direct {p0, p1}, Lhuawei/com/android/internal/widget/HwEditor$ChangeWatcher;-><init>(Lhuawei/com/android/internal/widget/HwEditor;)V

    return-void
.end method


# virtual methods
.method public onSpanAdded(Landroid/text/Spannable;Ljava/lang/Object;II)V
    .locals 0
    .param p1, "text"    # Landroid/text/Spannable;
    .param p2, "what"    # Ljava/lang/Object;
    .param p3, "start"    # I
    .param p4, "end"    # I

    .line 472
    return-void
.end method

.method public onSpanChanged(Landroid/text/Spannable;Ljava/lang/Object;IIII)V
    .locals 1
    .param p1, "text"    # Landroid/text/Spannable;
    .param p2, "what"    # Ljava/lang/Object;
    .param p3, "ostart"    # I
    .param p4, "oend"    # I
    .param p5, "nstart"    # I
    .param p6, "nend"    # I

    .line 482
    sget-object v0, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    if-ne v0, p2, :cond_0

    .line 483
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwEditor$ChangeWatcher;->this$0:Lhuawei/com/android/internal/widget/HwEditor;

    invoke-virtual {v0}, Lhuawei/com/android/internal/widget/HwEditor;->onSelectionChanged()V

    .line 485
    :cond_0
    return-void
.end method

.method public onSpanRemoved(Landroid/text/Spannable;Ljava/lang/Object;II)V
    .locals 0
    .param p1, "text"    # Landroid/text/Spannable;
    .param p2, "what"    # Ljava/lang/Object;
    .param p3, "start"    # I
    .param p4, "end"    # I

    .line 477
    return-void
.end method
