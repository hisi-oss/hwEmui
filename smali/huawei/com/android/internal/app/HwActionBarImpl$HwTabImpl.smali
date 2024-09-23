.class public Lhuawei/com/android/internal/app/HwActionBarImpl$HwTabImpl;
.super Lcom/android/internal/app/WindowDecorActionBar$TabImpl;
.source "HwActionBarImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhuawei/com/android/internal/app/HwActionBarImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HwTabImpl"
.end annotation


# instance fields
.field private mTabViewId:I

.field final synthetic this$0:Lhuawei/com/android/internal/app/HwActionBarImpl;


# direct methods
.method public constructor <init>(Lhuawei/com/android/internal/app/HwActionBarImpl;)V
    .locals 1
    .param p1, "this$0"    # Lhuawei/com/android/internal/app/HwActionBarImpl;

    .line 192
    iput-object p1, p0, Lhuawei/com/android/internal/app/HwActionBarImpl$HwTabImpl;->this$0:Lhuawei/com/android/internal/app/HwActionBarImpl;

    invoke-direct {p0, p1}, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;-><init>(Lcom/android/internal/app/WindowDecorActionBar;)V

    .line 193
    const/4 v0, -0x1

    iput v0, p0, Lhuawei/com/android/internal/app/HwActionBarImpl$HwTabImpl;->mTabViewId:I

    return-void
.end method


# virtual methods
.method public getTabViewId()I
    .locals 1

    .line 198
    iget v0, p0, Lhuawei/com/android/internal/app/HwActionBarImpl$HwTabImpl;->mTabViewId:I

    return v0
.end method

.method public setTabViewId(I)V
    .locals 0
    .param p1, "id"    # I

    .line 195
    iput p1, p0, Lhuawei/com/android/internal/app/HwActionBarImpl$HwTabImpl;->mTabViewId:I

    .line 196
    return-void
.end method
