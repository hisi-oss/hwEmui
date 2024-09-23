.class public Landroid/contentsensor/ViewTreeNode;
.super Ljava/lang/Object;
.source "ViewTreeNode.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/contentsensor/ViewTreeNode;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;

.field private static final VIEW:Ljava/lang/String; = "android.view.View"


# instance fields
.field private mBottom:I

.field private mChildView:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/contentsensor/ViewTreeNode;",
            ">;"
        }
    .end annotation
.end field

.field private transient mClass:Ljava/lang/Class;

.field private mClassPath:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIndex:I

.field private mIsFocused:Z

.field private mLeft:I

.field private transient mParent:Landroid/contentsensor/ViewTreeNode;

.field private mRight:I

.field private mScrollX:I

.field private mScrollY:I

.field private mTop:I

.field private mViewHashCode:I

.field private mViewId:Ljava/lang/String;

.field private mViewText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    const-class v0, Landroid/contentsensor/ViewTreeNode;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/contentsensor/ViewTreeNode;->TAG:Ljava/lang/String;

    .line 191
    new-instance v0, Landroid/contentsensor/ViewTreeNode$1;

    invoke-direct {v0}, Landroid/contentsensor/ViewTreeNode$1;-><init>()V

    sput-object v0, Landroid/contentsensor/ViewTreeNode;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/contentsensor/ViewTreeNode;->mClassPath:Ljava/util/List;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/contentsensor/ViewTreeNode;->mChildView:Ljava/util/List;

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "pl"    # Landroid/os/Parcel;

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/contentsensor/ViewTreeNode;->mClassPath:Ljava/util/List;

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/contentsensor/ViewTreeNode;->mLeft:I

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/contentsensor/ViewTreeNode;->mTop:I

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/contentsensor/ViewTreeNode;->mRight:I

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/contentsensor/ViewTreeNode;->mBottom:I

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/contentsensor/ViewTreeNode;->mScrollX:I

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/contentsensor/ViewTreeNode;->mScrollY:I

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/contentsensor/ViewTreeNode;->mIsFocused:Z

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/contentsensor/ViewTreeNode;->mViewId:Ljava/lang/String;

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/contentsensor/ViewTreeNode;->mIndex:I

    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/contentsensor/ViewTreeNode;->mViewHashCode:I

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/contentsensor/ViewTreeNode;->mViewText:Ljava/lang/String;

    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/contentsensor/ViewTreeNode;->mClassPath:Ljava/util/List;

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/contentsensor/ViewTreeNode;->mChildView:Ljava/util/List;

    .line 166
    return-void
.end method

.method private convertClassToPath()V
    .locals 3

    .line 28
    iget-object v0, p0, Landroid/contentsensor/ViewTreeNode;->mClass:Ljava/lang/Class;

    .line 30
    .local v0, "parent":Ljava/lang/Class;
    :goto_0
    if-eqz v0, :cond_1

    .line 31
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 32
    .local v1, "curName":Ljava/lang/String;
    const-string v2, "android.view.View"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 33
    return-void

    .line 35
    :cond_0
    iget-object v2, p0, Landroid/contentsensor/ViewTreeNode;->mClassPath:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 38
    .end local v1    # "curName":Ljava/lang/String;
    :cond_1
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 149
    const/4 v0, 0x0

    return v0
.end method

.method public getBottom()I
    .locals 1

    .line 70
    iget v0, p0, Landroid/contentsensor/ViewTreeNode;->mBottom:I

    return v0
.end method

.method public getChildAt(I)Landroid/contentsensor/ViewTreeNode;
    .locals 1
    .param p1, "i"    # I

    .line 130
    iget-object v0, p0, Landroid/contentsensor/ViewTreeNode;->mChildView:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/contentsensor/ViewTreeNode;->mChildView:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 131
    iget-object v0, p0, Landroid/contentsensor/ViewTreeNode;->mChildView:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/contentsensor/ViewTreeNode;

    return-object v0

    .line 133
    :cond_0
    new-instance v0, Landroid/contentsensor/ViewTreeNode;

    invoke-direct {v0}, Landroid/contentsensor/ViewTreeNode;-><init>()V

    return-object v0
.end method

.method public getChildCount()I
    .locals 1

    .line 141
    iget-object v0, p0, Landroid/contentsensor/ViewTreeNode;->mChildView:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Landroid/contentsensor/ViewTreeNode;->mChildView:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 144
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getClassPath()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Landroid/contentsensor/ViewTreeNode;->mClassPath:Ljava/util/List;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .line 98
    iget v0, p0, Landroid/contentsensor/ViewTreeNode;->mIndex:I

    return v0
.end method

.method public getLeft()I
    .locals 1

    .line 58
    iget v0, p0, Landroid/contentsensor/ViewTreeNode;->mLeft:I

    return v0
.end method

.method public getParent()Landroid/contentsensor/ViewTreeNode;
    .locals 1

    .line 110
    iget-object v0, p0, Landroid/contentsensor/ViewTreeNode;->mParent:Landroid/contentsensor/ViewTreeNode;

    return-object v0
.end method

.method public getRight()I
    .locals 1

    .line 66
    iget v0, p0, Landroid/contentsensor/ViewTreeNode;->mRight:I

    return v0
.end method

.method public getScrollX()I
    .locals 1

    .line 74
    iget v0, p0, Landroid/contentsensor/ViewTreeNode;->mScrollX:I

    return v0
.end method

.method public getScrollY()I
    .locals 1

    .line 78
    iget v0, p0, Landroid/contentsensor/ViewTreeNode;->mScrollY:I

    return v0
.end method

.method public getTop()I
    .locals 1

    .line 62
    iget v0, p0, Landroid/contentsensor/ViewTreeNode;->mTop:I

    return v0
.end method

.method public getViewHashCode()I
    .locals 1

    .line 114
    iget v0, p0, Landroid/contentsensor/ViewTreeNode;->mViewHashCode:I

    return v0
.end method

.method public getViewId()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Landroid/contentsensor/ViewTreeNode;->mViewId:Ljava/lang/String;

    return-object v0
.end method

.method public getViewText()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Landroid/contentsensor/ViewTreeNode;->mViewText:Ljava/lang/String;

    return-object v0
.end method

.method public isFocused()Z
    .locals 1

    .line 82
    iget-boolean v0, p0, Landroid/contentsensor/ViewTreeNode;->mIsFocused:Z

    return v0
.end method

.method public setChildViewInList(Landroid/contentsensor/ViewTreeNode;)V
    .locals 1
    .param p1, "childView"    # Landroid/contentsensor/ViewTreeNode;

    .line 137
    iget-object v0, p0, Landroid/contentsensor/ViewTreeNode;->mChildView:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    return-void
.end method

.method public setClass(Ljava/lang/Class;)V
    .locals 0
    .param p1, "mClass"    # Ljava/lang/Class;

    .line 41
    iput-object p1, p0, Landroid/contentsensor/ViewTreeNode;->mClass:Ljava/lang/Class;

    .line 42
    return-void
.end method

.method public setDimens(IIIIII)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I
    .param p5, "scrollX"    # I
    .param p6, "scrollY"    # I

    .line 49
    iput p1, p0, Landroid/contentsensor/ViewTreeNode;->mLeft:I

    .line 50
    iput p2, p0, Landroid/contentsensor/ViewTreeNode;->mTop:I

    .line 51
    iput p3, p0, Landroid/contentsensor/ViewTreeNode;->mRight:I

    .line 52
    iput p4, p0, Landroid/contentsensor/ViewTreeNode;->mBottom:I

    .line 53
    iput p5, p0, Landroid/contentsensor/ViewTreeNode;->mScrollX:I

    .line 54
    iput p6, p0, Landroid/contentsensor/ViewTreeNode;->mScrollY:I

    .line 55
    return-void
.end method

.method public setFocused(Z)V
    .locals 0
    .param p1, "mIsFocused"    # Z

    .line 86
    iput-boolean p1, p0, Landroid/contentsensor/ViewTreeNode;->mIsFocused:Z

    .line 87
    return-void
.end method

.method public setIndex(I)V
    .locals 0
    .param p1, "mIndex"    # I

    .line 102
    iput p1, p0, Landroid/contentsensor/ViewTreeNode;->mIndex:I

    .line 103
    return-void
.end method

.method public setParent(Landroid/contentsensor/ViewTreeNode;)V
    .locals 0
    .param p1, "parent"    # Landroid/contentsensor/ViewTreeNode;

    .line 106
    iput-object p1, p0, Landroid/contentsensor/ViewTreeNode;->mParent:Landroid/contentsensor/ViewTreeNode;

    .line 107
    return-void
.end method

.method public setViewHashCode(I)V
    .locals 0
    .param p1, "mViewHashCode"    # I

    .line 118
    iput p1, p0, Landroid/contentsensor/ViewTreeNode;->mViewHashCode:I

    .line 119
    return-void
.end method

.method public setViewId(Ljava/lang/String;)V
    .locals 0
    .param p1, "mViewId"    # Ljava/lang/String;

    .line 94
    iput-object p1, p0, Landroid/contentsensor/ViewTreeNode;->mViewId:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setViewText(Ljava/lang/String;)V
    .locals 0
    .param p1, "mViewText"    # Ljava/lang/String;

    .line 126
    iput-object p1, p0, Landroid/contentsensor/ViewTreeNode;->mViewText:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 170
    iget v0, p0, Landroid/contentsensor/ViewTreeNode;->mLeft:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 171
    iget v0, p0, Landroid/contentsensor/ViewTreeNode;->mTop:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    iget v0, p0, Landroid/contentsensor/ViewTreeNode;->mRight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 173
    iget v0, p0, Landroid/contentsensor/ViewTreeNode;->mBottom:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 174
    iget v0, p0, Landroid/contentsensor/ViewTreeNode;->mScrollX:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    iget v0, p0, Landroid/contentsensor/ViewTreeNode;->mScrollY:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    iget-boolean v0, p0, Landroid/contentsensor/ViewTreeNode;->mIsFocused:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 177
    iget-object v0, p0, Landroid/contentsensor/ViewTreeNode;->mViewId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 178
    iget v0, p0, Landroid/contentsensor/ViewTreeNode;->mIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 179
    iget v0, p0, Landroid/contentsensor/ViewTreeNode;->mViewHashCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    iget-object v0, p0, Landroid/contentsensor/ViewTreeNode;->mViewText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 181
    invoke-direct {p0}, Landroid/contentsensor/ViewTreeNode;->convertClassToPath()V

    .line 182
    iget-object v0, p0, Landroid/contentsensor/ViewTreeNode;->mClassPath:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 183
    iget-object v0, p0, Landroid/contentsensor/ViewTreeNode;->mChildView:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 184
    .local v0, "N":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 185
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 186
    invoke-virtual {p0, v1}, Landroid/contentsensor/ViewTreeNode;->getChildAt(I)Landroid/contentsensor/ViewTreeNode;

    move-result-object v2

    .line 187
    .local v2, "child":Landroid/contentsensor/ViewTreeNode;
    invoke-virtual {v2, p1, p2}, Landroid/contentsensor/ViewTreeNode;->writeToParcel(Landroid/os/Parcel;I)V

    .line 185
    .end local v2    # "child":Landroid/contentsensor/ViewTreeNode;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 189
    .end local v1    # "i":I
    :cond_0
    return-void
.end method
