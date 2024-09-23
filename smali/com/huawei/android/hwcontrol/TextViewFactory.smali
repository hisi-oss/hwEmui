.class public Lcom/huawei/android/hwcontrol/TextViewFactory;
.super Ljava/lang/Object;
.source "TextViewFactory.java"

# interfaces
.implements Landroid/hwcontrol/HwWidgetFactory$HwTextView;


# static fields
.field static final DEBUG_EXTRACT:Z = false

.field static final LOG_TAG:Ljava/lang/String; = "TextViewFactory"

.field private static final isVibrateImplemented:Z = false


# instance fields
.field private mIsCursorRightMoved:Z

.field private mUseCustomStyle:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/android/hwcontrol/TextViewFactory;->mIsCursorRightMoved:Z

    .line 79
    iput-boolean v0, p0, Lcom/huawei/android/hwcontrol/TextViewFactory;->mUseCustomStyle:Z

    .line 70
    return-void
.end method


# virtual methods
.method public getEditor(Landroid/widget/TextView;)Landroid/widget/Editor;
    .locals 1
    .param p1, "textView"    # Landroid/widget/TextView;

    .line 109
    new-instance v0, Lhuawei/com/android/internal/widget/HwEditor;

    invoke-direct {v0, p1}, Lhuawei/com/android/internal/widget/HwEditor;-><init>(Landroid/widget/TextView;)V

    .line 111
    .local v0, "editor":Landroid/widget/Editor;
    return-object v0
.end method

.method public initTextViewAddtionalStyle(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/widget/TextView;Landroid/widget/Editor;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "view"    # Landroid/widget/TextView;
    .param p4, "editor"    # Landroid/widget/Editor;

    .line 77
    return-void
.end method

.method public initialTextView(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "tv"    # Landroid/widget/TextView;

    .line 74
    return-void
.end method

.method public isCustomStyle()Z
    .locals 1

    .line 81
    iget-boolean v0, p0, Lcom/huawei/android/hwcontrol/TextViewFactory;->mUseCustomStyle:Z

    return v0
.end method

.method public playIvtEffect(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "effectName"    # Ljava/lang/String;

    .line 123
    const/4 v0, 0x0

    return v0
.end method

.method public playIvtEffect(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;II)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "effectName"    # Ljava/lang/String;
    .param p3, "what"    # Ljava/lang/Object;
    .param p4, "start"    # I
    .param p5, "end"    # I

    .line 136
    const/4 v0, 0x0

    return v0
.end method

.method public reLayoutAfterMeasure(Landroid/widget/TextView;Landroid/text/Layout;)V
    .locals 0
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "layout"    # Landroid/text/Layout;

    .line 85
    return-void
.end method

.method public setError(Landroid/widget/TextView;Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "error"    # Ljava/lang/CharSequence;

    .line 89
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 90
    const v1, 0x2030221

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 92
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 94
    invoke-virtual {p1, p3, v0}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 95
    return-void
.end method
