.class public Lcom/huawei/displayengine/DisplayEngineDBManager$UserPreferencesKey;
.super Ljava/lang/Object;
.source "DisplayEngineDBManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/displayengine/DisplayEngineDBManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserPreferencesKey"
.end annotation


# static fields
.field public static final AL:Ljava/lang/String; = "AmbientLight"

.field public static final APPTYPE:Ljava/lang/String; = "AppType"

.field public static final DELTA:Ljava/lang/String; = "BackLightDelta"

.field public static final TAG:Ljava/lang/String; = "UserPref"

.field public static final USERID:Ljava/lang/String; = "UserID"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
