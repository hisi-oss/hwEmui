.class public Landroid/view/HwViewImpl;
.super Ljava/lang/Object;
.source "HwViewImpl.java"

# interfaces
.implements Landroid/view/IHwView;


# static fields
.field private static final ATTR_ANIMATION_VIEW:Ljava/lang/String; = "animationRootView"

.field private static final ATTR_BOOST_VIEW:Ljava/lang/String; = "boostRootView"

.field private static final ATTR_SWITCH:Ljava/lang/String; = "switch"

.field private static final LAUNCHER_APP:Ljava/lang/String; = "com.huawei.android.launcher"

.field private static final MAX_CHILD_COUNT:I = 0xc

.field private static final MAX_KEY_LENGTH:I = 0x1f

.field private static final MAX_TREE_DEPTH:I = 0x4

.field private static final SYSTEM_UI_APP:Ljava/lang/String; = "com.android.systemui"

.field private static final TAG:Ljava/lang/String; = "HwViewImpl"

.field private static mInstance:Landroid/view/HwViewImpl;


# instance fields
.field private mAppInfo:Landroid/emcom/XEngineAppInfo;

.field private mGrade:I

.field private mHasRequestProp:Z

.field private mStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mainCardPsStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const/4 v0, 0x0

    sput-object v0, Landroid/view/HwViewImpl;->mInstance:Landroid/view/HwViewImpl;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Landroid/view/HwViewImpl;->mStack:Ljava/util/Stack;

    .line 57
    return-void
.end method

.method private accelerate(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 113
    if-eqz p1, :cond_0

    .line 114
    invoke-static {}, Landroid/emcom/EmcomManager;->getInstance()Landroid/emcom/EmcomManager;

    move-result-object v0

    .line 115
    .local v0, "manager":Landroid/emcom/EmcomManager;
    if-eqz v0, :cond_0

    .line 116
    iget v1, p0, Landroid/view/HwViewImpl;->mGrade:I

    iget v2, p0, Landroid/view/HwViewImpl;->mainCardPsStatus:I

    invoke-virtual {v0, p1, v1, v2}, Landroid/emcom/EmcomManager;->accelerateWithMainCardPsStatus(Landroid/content/Context;II)V

    .line 119
    .end local v0    # "manager":Landroid/emcom/EmcomManager;
    :cond_0
    return-void
.end method

.method private checkClick(Landroid/view/View;Landroid/content/Context;)Z
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;

    .line 123
    iget-boolean v0, p0, Landroid/view/HwViewImpl;->mHasRequestProp:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 124
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "pkgName":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sys."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 126
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x1f

    if-le v3, v4, :cond_0

    .line 127
    invoke-virtual {v2, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 129
    :cond_0
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 131
    .local v3, "prop":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 132
    invoke-static {}, Landroid/emcom/EmcomManager;->getInstance()Landroid/emcom/EmcomManager;

    move-result-object v4

    .line 133
    .local v4, "manager":Landroid/emcom/EmcomManager;
    if-eqz v4, :cond_1

    .line 134
    invoke-virtual {v4, p2}, Landroid/emcom/EmcomManager;->getAppInfo(Landroid/content/Context;)Landroid/emcom/XEngineAppInfo;

    move-result-object v5

    iput-object v5, p0, Landroid/view/HwViewImpl;->mAppInfo:Landroid/emcom/XEngineAppInfo;

    .line 137
    .end local v4    # "manager":Landroid/emcom/EmcomManager;
    :cond_1
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/view/HwViewImpl;->mHasRequestProp:Z

    .line 140
    .end local v0    # "pkgName":Ljava/lang/String;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "prop":Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Landroid/view/HwViewImpl;->mAppInfo:Landroid/emcom/XEngineAppInfo;

    if-eqz v0, :cond_3

    .line 141
    iget-object v0, p0, Landroid/view/HwViewImpl;->mAppInfo:Landroid/emcom/XEngineAppInfo;

    invoke-virtual {v0}, Landroid/emcom/XEngineAppInfo;->getMainCardPsStatus()I

    move-result v0

    iput v0, p0, Landroid/view/HwViewImpl;->mainCardPsStatus:I

    .line 142
    invoke-direct {p0, p1}, Landroid/view/HwViewImpl;->checkView(Landroid/view/View;)Z

    move-result v0

    return v0

    .line 144
    :cond_3
    return v1
.end method

.method private checkContainer(Landroid/view/View;Landroid/emcom/XEngineAppInfo$EventInfo;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/emcom/XEngineAppInfo$EventInfo;

    .line 182
    invoke-virtual {p2}, Landroid/emcom/XEngineAppInfo$EventInfo;->getContainer()Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, "className":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    const/4 v1, 0x0

    return v1

    .line 186
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityClassName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private checkKeywords(Landroid/view/View;Landroid/emcom/XEngineAppInfo$EventInfo;)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/emcom/XEngineAppInfo$EventInfo;

    .line 190
    invoke-virtual {p2}, Landroid/emcom/XEngineAppInfo$EventInfo;->getKeyword()Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, "keyword":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 192
    return v2

    .line 194
    :cond_0
    instance-of v1, p1, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 195
    move-object v1, p1

    check-cast v1, Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Landroid/view/HwViewImpl;->checkTextForTextView(Landroid/widget/TextView;Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 196
    :cond_1
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 197
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/emcom/XEngineAppInfo$EventInfo;->getTreeDepth()I

    move-result v2

    invoke-virtual {p2}, Landroid/emcom/XEngineAppInfo$EventInfo;->getMaxChildCount()I

    move-result v3

    invoke-direct {p0, v1, v0, v2, v3}, Landroid/view/HwViewImpl;->checkTextForViewGroup(Landroid/view/ViewGroup;Ljava/lang/String;II)Z

    move-result v1

    return v1

    .line 199
    :cond_2
    return v2
.end method

.method private checkRootView(Landroid/view/View;Landroid/emcom/XEngineAppInfo$EventInfo;)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/emcom/XEngineAppInfo$EventInfo;

    .line 169
    invoke-virtual {p2}, Landroid/emcom/XEngineAppInfo$EventInfo;->getRootView()Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, "rootView":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 171
    return v2

    .line 173
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    .line 174
    .local v1, "root":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 175
    invoke-virtual {v1}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v2

    .line 176
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    return v3

    .line 178
    .end local v2    # "name":Ljava/lang/String;
    :cond_1
    return v2
.end method

.method private checkTextForTextView(Landroid/widget/TextView;Ljava/lang/String;)Z
    .locals 5
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "keyword"    # Ljava/lang/String;

    .line 204
    const-class v0, Landroid/widget/TextView;

    .line 207
    .local v0, "clazz":Ljava/lang/Class;
    const/4 v1, 0x0

    :try_start_0
    const-string v2, "getTextForAccessibility"

    new-array v3, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 208
    .local v2, "m1":Ljava/lang/reflect/Method;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 209
    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 210
    .local v3, "text":Ljava/lang/CharSequence;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 211
    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    .line 217
    .end local v2    # "m1":Ljava/lang/reflect/Method;
    .end local v3    # "text":Ljava/lang/CharSequence;
    :catch_0
    move-exception v2

    .line 218
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v3, "HwViewImpl"

    const-string v4, "invocation error."

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    goto :goto_1

    .line 215
    :catch_1
    move-exception v2

    .line 216
    .local v2, "e":Ljava/lang/IllegalAccessException;
    const-string v3, "HwViewImpl"

    const-string v4, "access illegal."

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_0

    .line 213
    :catch_2
    move-exception v2

    .line 214
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    const-string v3, "HwViewImpl"

    const-string v4, "no such method."

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 219
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :cond_0
    :goto_0
    nop

    .line 221
    :goto_1
    return v1
.end method

.method private checkTextForViewGroup(Landroid/view/ViewGroup;Ljava/lang/String;II)Z
    .locals 9
    .param p1, "view"    # Landroid/view/ViewGroup;
    .param p2, "keyword"    # Ljava/lang/String;
    .param p3, "depth"    # I
    .param p4, "count"    # I

    .line 227
    iget-object v0, p0, Landroid/view/HwViewImpl;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 228
    const/4 v0, 0x0

    .line 229
    .local v0, "currentDepth":I
    iget-object v1, p0, Landroid/view/HwViewImpl;->mStack:Ljava/util/Stack;

    invoke-virtual {v1, p1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 231
    const/4 v1, 0x4

    if-ge p3, v1, :cond_0

    move v1, p3

    nop

    .line 232
    .local v1, "maxDepth":I
    :cond_0
    const/16 v2, 0x1f

    if-ge p4, v2, :cond_1

    move v2, p4

    goto :goto_0

    :cond_1
    const/16 v2, 0xc

    .line 233
    .local v2, "maxCount":I
    :cond_2
    :goto_0
    iget-object v3, p0, Landroid/view/HwViewImpl;->mStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_7

    .line 234
    iget-object v3, p0, Landroid/view/HwViewImpl;->mStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 235
    .local v3, "child":Landroid/view/View;
    instance-of v5, v3, Landroid/widget/TextView;

    if-eqz v5, :cond_3

    .line 236
    move-object v4, v3

    check-cast v4, Landroid/widget/TextView;

    invoke-direct {p0, v4, p2}, Landroid/view/HwViewImpl;->checkTextForTextView(Landroid/widget/TextView;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 237
    const/4 v4, 0x1

    return v4

    .line 239
    :cond_3
    instance-of v5, v3, Landroid/view/ViewGroup;

    if-eqz v5, :cond_6

    if-gt p3, v1, :cond_6

    .line 240
    move-object v5, v3

    check-cast v5, Landroid/view/ViewGroup;

    invoke-direct {p0, v5}, Landroid/view/HwViewImpl;->getViewGroupChildren(Landroid/view/ViewGroup;)[Landroid/view/View;

    move-result-object v5

    .line 241
    .local v5, "children":[Landroid/view/View;
    add-int/lit8 v0, v0, 0x1

    .line 243
    if-eqz v5, :cond_2

    array-length v6, v5

    if-le v6, v2, :cond_4

    .line 244
    goto :goto_0

    .line 246
    :cond_4
    array-length v6, v5

    :goto_1
    if-ge v4, v6, :cond_6

    aget-object v7, v5, v4

    .line 248
    .local v7, "c":Landroid/view/View;
    if-eqz v7, :cond_5

    .line 249
    iget-object v8, p0, Landroid/view/HwViewImpl;->mStack:Ljava/util/Stack;

    invoke-virtual {v8, v7}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 246
    .end local v7    # "c":Landroid/view/View;
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 253
    .end local v3    # "child":Landroid/view/View;
    .end local v5    # "children":[Landroid/view/View;
    :cond_6
    goto :goto_0

    .line 254
    :cond_7
    return v4
.end method

.method private checkView(Landroid/view/View;)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 149
    if-eqz p1, :cond_2

    .line 150
    iget-object v0, p0, Landroid/view/HwViewImpl;->mAppInfo:Landroid/emcom/XEngineAppInfo;

    invoke-virtual {v0}, Landroid/emcom/XEngineAppInfo;->getEventList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/emcom/XEngineAppInfo$EventInfo;

    .line 152
    .local v1, "event":Landroid/emcom/XEngineAppInfo$EventInfo;
    invoke-direct {p0, p1, v1}, Landroid/view/HwViewImpl;->checkRootView(Landroid/view/View;Landroid/emcom/XEngineAppInfo$EventInfo;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 153
    invoke-virtual {v1}, Landroid/emcom/XEngineAppInfo$EventInfo;->getGrade()I

    move-result v0

    iput v0, p0, Landroid/view/HwViewImpl;->mGrade:I

    .line 154
    invoke-virtual {v1}, Landroid/emcom/XEngineAppInfo$EventInfo;->getMainCardPsStatus()I

    move-result v0

    iput v0, p0, Landroid/view/HwViewImpl;->mainCardPsStatus:I

    .line 155
    return v3

    .line 158
    :cond_0
    invoke-direct {p0, p1, v1}, Landroid/view/HwViewImpl;->checkContainer(Landroid/view/View;Landroid/emcom/XEngineAppInfo$EventInfo;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, p1, v1}, Landroid/view/HwViewImpl;->checkKeywords(Landroid/view/View;Landroid/emcom/XEngineAppInfo$EventInfo;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 159
    invoke-virtual {v1}, Landroid/emcom/XEngineAppInfo$EventInfo;->getGrade()I

    move-result v0

    iput v0, p0, Landroid/view/HwViewImpl;->mGrade:I

    .line 160
    invoke-virtual {v1}, Landroid/emcom/XEngineAppInfo$EventInfo;->getMainCardPsStatus()I

    move-result v0

    iput v0, p0, Landroid/view/HwViewImpl;->mainCardPsStatus:I

    .line 161
    return v3

    .line 163
    .end local v1    # "event":Landroid/emcom/XEngineAppInfo$EventInfo;
    :cond_1
    goto :goto_0

    .line 165
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private checkView(Landroid/view/View;Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "tagName"    # Ljava/lang/String;

    .line 276
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 277
    return v0

    .line 279
    :cond_0
    nop

    .line 280
    invoke-static {p2}, Landroid/rms/iaware/FastgrabConfigReader;->getInstance(Landroid/content/Context;)Landroid/rms/iaware/FastgrabConfigReader;

    move-result-object v1

    .line 281
    .local v1, "fastgrabConfigReader":Landroid/rms/iaware/FastgrabConfigReader;
    if-eqz v1, :cond_1

    const-string v2, "switch"

    .line 282
    invoke-virtual {v1, v2}, Landroid/rms/iaware/FastgrabConfigReader;->getInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 283
    invoke-virtual {v1, p3}, Landroid/rms/iaware/FastgrabConfigReader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 284
    .local v2, "rootView":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 285
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v4

    .line 286
    .local v4, "root":Landroid/view/View;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 287
    return v3

    .line 291
    .end local v2    # "rootView":Ljava/lang/String;
    .end local v4    # "root":Landroid/view/View;
    :cond_1
    return v0
.end method

.method public static declared-synchronized getDefault()Landroid/view/HwViewImpl;
    .locals 2

    const-class v0, Landroid/view/HwViewImpl;

    monitor-enter v0

    .line 50
    :try_start_0
    sget-object v1, Landroid/view/HwViewImpl;->mInstance:Landroid/view/HwViewImpl;

    if-nez v1, :cond_0

    .line 51
    new-instance v1, Landroid/view/HwViewImpl;

    invoke-direct {v1}, Landroid/view/HwViewImpl;-><init>()V

    sput-object v1, Landroid/view/HwViewImpl;->mInstance:Landroid/view/HwViewImpl;

    .line 53
    :cond_0
    sget-object v1, Landroid/view/HwViewImpl;->mInstance:Landroid/view/HwViewImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 49
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getViewGroupChildren(Landroid/view/ViewGroup;)[Landroid/view/View;
    .locals 4
    .param p1, "view"    # Landroid/view/ViewGroup;

    .line 259
    const-class v0, Landroid/view/ViewGroup;

    .line 260
    .local v0, "clazz":Ljava/lang/Class;
    nop

    .line 262
    :try_start_0
    const-string v1, "mChildren"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 263
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 264
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 267
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v1

    .line 268
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string v2, "HwViewImpl"

    const-string v3, "access illegal."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_0

    .line 265
    :catch_1
    move-exception v1

    .line 266
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    const-string v2, "HwViewImpl"

    const-string v3, "no such field."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 269
    .end local v1    # "e":Ljava/lang/NoSuchFieldException;
    nop

    .line 271
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private unFreezeApp(Landroid/view/View;Landroid/content/Context;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;

    .line 87
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 91
    :cond_0
    if-nez p2, :cond_1

    .line 92
    return-void

    .line 95
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "rootViewPkg":Ljava/lang/String;
    const-string v1, "com.android.systemui"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x94

    if-eqz v1, :cond_2

    .line 97
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 98
    .local v1, "viewPkg":Ljava/lang/String;
    const-string v3, "com.android.systemui"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 99
    const-string v3, "onClick"

    invoke-static {v2, v3, v1}, Lcom/huawei/pgmng/log/LogPower;->push(ILjava/lang/String;Ljava/lang/String;)I

    .line 103
    .end local v1    # "viewPkg":Ljava/lang/String;
    :cond_2
    const-string v1, "com.huawei.android.launcher"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 104
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 105
    .restart local v1    # "viewPkg":Ljava/lang/String;
    const-string v3, "com.huawei.android.launcher"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 106
    const-string v3, "onClick"

    invoke-static {v2, v3, v1}, Lcom/huawei/pgmng/log/LogPower;->push(ILjava/lang/String;Ljava/lang/String;)I

    .line 110
    .end local v1    # "viewPkg":Ljava/lang/String;
    :cond_3
    return-void

    .line 88
    .end local v0    # "rootViewPkg":Ljava/lang/String;
    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public cancelAnimation(Landroid/view/View;Landroid/content/Context;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;

    .line 61
    const-string v0, "animationRootView"

    invoke-direct {p0, p1, p2, v0}, Landroid/view/HwViewImpl;->checkView(Landroid/view/View;Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    const-string v0, "HwViewImpl"

    const-string v1, "LuckyMoney Animation Canceled !"

    invoke-static {v0, v1}, Landroid/rms/iaware/AwareLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const/4 v0, 0x1

    return v0

    .line 65
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;Landroid/content/Context;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;

    .line 77
    invoke-direct {p0, p1, p2}, Landroid/view/HwViewImpl;->checkClick(Landroid/view/View;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    invoke-direct {p0, p2}, Landroid/view/HwViewImpl;->accelerate(Landroid/content/Context;)V

    .line 81
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/view/HwViewImpl;->unFreezeApp(Landroid/view/View;Landroid/content/Context;)V

    .line 83
    return-void
.end method
