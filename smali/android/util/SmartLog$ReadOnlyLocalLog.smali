.class public Landroid/util/SmartLog$ReadOnlyLocalLog;
.super Ljava/lang/Object;
.source "SmartLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/SmartLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReadOnlyLocalLog"
.end annotation


# instance fields
.field private final smartLog:Landroid/util/SmartLog;


# direct methods
.method constructor <init>(Landroid/util/SmartLog;)V
    .locals 0
    .param p1, "log"    # Landroid/util/SmartLog;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Landroid/util/SmartLog$ReadOnlyLocalLog;->smartLog:Landroid/util/SmartLog;

    .line 97
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 100
    iget-object v0, p0, Landroid/util/SmartLog$ReadOnlyLocalLog;->smartLog:Landroid/util/SmartLog;

    invoke-virtual {v0, p1, p2, p3}, Landroid/util/SmartLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 101
    return-void
.end method
