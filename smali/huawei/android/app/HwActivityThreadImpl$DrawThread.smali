.class Lhuawei/android/app/HwActivityThreadImpl$DrawThread;
.super Ljava/lang/Thread;
.source "HwActivityThreadImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhuawei/android/app/HwActivityThreadImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DrawThread"
.end annotation


# instance fields
.field config:Landroid/content/res/Configuration;

.field h:Landroid/os/Handler;

.field r:Landroid/app/Activity;

.field final synthetic this$0:Lhuawei/android/app/HwActivityThreadImpl;


# direct methods
.method constructor <init>(Lhuawei/android/app/HwActivityThreadImpl;Ljava/lang/String;Landroid/app/Activity;Landroid/os/Handler;Landroid/content/res/Configuration;)V
    .locals 0
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "activity"    # Landroid/app/Activity;
    .param p4, "handle"    # Landroid/os/Handler;
    .param p5, "configuration"    # Landroid/content/res/Configuration;

    .line 176
    iput-object p1, p0, Lhuawei/android/app/HwActivityThreadImpl$DrawThread;->this$0:Lhuawei/android/app/HwActivityThreadImpl;

    .line 177
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 172
    const/4 p1, 0x0

    iput-object p1, p0, Lhuawei/android/app/HwActivityThreadImpl$DrawThread;->h:Landroid/os/Handler;

    .line 173
    iput-object p1, p0, Lhuawei/android/app/HwActivityThreadImpl$DrawThread;->r:Landroid/app/Activity;

    .line 174
    iput-object p1, p0, Lhuawei/android/app/HwActivityThreadImpl$DrawThread;->config:Landroid/content/res/Configuration;

    .line 178
    iput-object p3, p0, Lhuawei/android/app/HwActivityThreadImpl$DrawThread;->r:Landroid/app/Activity;

    .line 179
    iput-object p4, p0, Lhuawei/android/app/HwActivityThreadImpl$DrawThread;->h:Landroid/os/Handler;

    .line 180
    iput-object p5, p0, Lhuawei/android/app/HwActivityThreadImpl$DrawThread;->config:Landroid/content/res/Configuration;

    .line 181
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 185
    iget-object v0, p0, Lhuawei/android/app/HwActivityThreadImpl$DrawThread;->this$0:Lhuawei/android/app/HwActivityThreadImpl;

    iget-object v1, p0, Lhuawei/android/app/HwActivityThreadImpl$DrawThread;->r:Landroid/app/Activity;

    iget-object v2, p0, Lhuawei/android/app/HwActivityThreadImpl$DrawThread;->h:Landroid/os/Handler;

    iget-object v3, p0, Lhuawei/android/app/HwActivityThreadImpl$DrawThread;->config:Landroid/content/res/Configuration;

    invoke-static {v0, v1, v2, v3}, Lhuawei/android/app/HwActivityThreadImpl;->access$000(Lhuawei/android/app/HwActivityThreadImpl;Landroid/app/Activity;Landroid/os/Handler;Landroid/content/res/Configuration;)V

    .line 186
    return-void
.end method
