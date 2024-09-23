.class public Landroid/zrhung/appeye/AppEyeBinderBlock$ReadTransactionThread;
.super Ljava/lang/Object;
.source "AppEyeBinderBlock.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/zrhung/appeye/AppEyeBinderBlock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ReadTransactionThread"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/zrhung/appeye/AppEyeBinderBlock;


# direct methods
.method public constructor <init>(Landroid/zrhung/appeye/AppEyeBinderBlock;)V
    .locals 0
    .param p1, "this$0"    # Landroid/zrhung/appeye/AppEyeBinderBlock;

    .line 526
    iput-object p1, p0, Landroid/zrhung/appeye/AppEyeBinderBlock$ReadTransactionThread;->this$0:Landroid/zrhung/appeye/AppEyeBinderBlock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 528
    iget-object v0, p0, Landroid/zrhung/appeye/AppEyeBinderBlock$ReadTransactionThread;->this$0:Landroid/zrhung/appeye/AppEyeBinderBlock;

    invoke-virtual {v0}, Landroid/zrhung/appeye/AppEyeBinderBlock;->readTransaction()V

    .line 529
    return-void
.end method
