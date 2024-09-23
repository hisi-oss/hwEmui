.class public final synthetic Lhuawei/android/app/-$$Lambda$HwActivityThreadImpl$JVZZYtmxHSV2aRvCxcYdAsalHcM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# instance fields
.field private final synthetic f$0:Lhuawei/android/app/HwActivityThreadImpl;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Lhuawei/android/app/HwActivityThreadImpl;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhuawei/android/app/-$$Lambda$HwActivityThreadImpl$JVZZYtmxHSV2aRvCxcYdAsalHcM;->f$0:Lhuawei/android/app/HwActivityThreadImpl;

    iput-object p2, p0, Lhuawei/android/app/-$$Lambda$HwActivityThreadImpl$JVZZYtmxHSV2aRvCxcYdAsalHcM;->f$1:Ljava/lang/String;

    iput-wide p3, p0, Lhuawei/android/app/-$$Lambda$HwActivityThreadImpl$JVZZYtmxHSV2aRvCxcYdAsalHcM;->f$2:J

    return-void
.end method


# virtual methods
.method public final queueIdle()Z
    .locals 4

    iget-object v0, p0, Lhuawei/android/app/-$$Lambda$HwActivityThreadImpl$JVZZYtmxHSV2aRvCxcYdAsalHcM;->f$0:Lhuawei/android/app/HwActivityThreadImpl;

    iget-object v1, p0, Lhuawei/android/app/-$$Lambda$HwActivityThreadImpl$JVZZYtmxHSV2aRvCxcYdAsalHcM;->f$1:Ljava/lang/String;

    iget-wide v2, p0, Lhuawei/android/app/-$$Lambda$HwActivityThreadImpl$JVZZYtmxHSV2aRvCxcYdAsalHcM;->f$2:J

    invoke-static {v0, v1, v2, v3}, Lhuawei/android/app/HwActivityThreadImpl;->lambda$doReportRuntime$0(Lhuawei/android/app/HwActivityThreadImpl;Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method
