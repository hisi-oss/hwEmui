.class public final Landroid/rms/iaware/DataContract$Apps$LaunchMode;
.super Ljava/lang/Object;
.source "DataContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/rms/iaware/DataContract$Apps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LaunchMode"
.end annotation


# static fields
.field public static final ACTIVITY:Ljava/lang/String; = "activity"

.field public static final BACKUP:Ljava/lang/String; = "backup"

.field public static final BINDFAIL:Ljava/lang/String; = "bind fail"

.field public static final BROADCAST:Ljava/lang/String; = "broadcast"

.field public static final HOLD:Ljava/lang/String; = "hold"

.field public static final LINKFAIL:Ljava/lang/String; = "link fail"

.field public static final ONCE:Ljava/lang/String; = "once"

.field public static final PERSIST:Ljava/lang/String; = "persist"

.field public static final PROVIDER:Ljava/lang/String; = "provider"

.field public static final RESTART:Ljava/lang/String; = "restart"

.field public static final SERVICE:Ljava/lang/String; = "servivce"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
