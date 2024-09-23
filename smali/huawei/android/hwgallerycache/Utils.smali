.class public Lhuawei/android/hwgallerycache/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Utils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static versionInRange(ILjava/lang/String;)Z
    .locals 13
    .param p0, "checkedVersion"    # I
    .param p1, "versionRanage"    # Ljava/lang/String;

    .line 32
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 33
    return v0

    .line 36
    :cond_0
    const-string v1, ";"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 37
    .local v1, "versionIndex":I
    if-ltz v1, :cond_1

    .line 38
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .local v2, "versionPreRange":Ljava/lang/String;
    goto :goto_0

    .line 40
    .end local v2    # "versionPreRange":Ljava/lang/String;
    :cond_1
    move-object v2, p1

    .line 43
    .restart local v2    # "versionPreRange":Ljava/lang/String;
    :goto_0
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 44
    .local v3, "versionPreArray":[Ljava/lang/String;
    array-length v4, v3

    .line 46
    .local v4, "VersionPreArrayLen":I
    move v5, v0

    .local v5, "i":I
    :goto_1
    const/4 v6, 0x1

    if-ge v5, v4, :cond_4

    .line 47
    const/4 v7, 0x0

    .local v7, "checkedVersionStart":I
    const/4 v8, 0x0

    .line 48
    .local v8, "checkedVersionEnd":I
    aget-object v9, v3, v5

    const-string v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 49
    .local v9, "VersionStartAndEnd":[Ljava/lang/String;
    array-length v10, v9

    const/4 v11, 0x2

    if-ge v10, v11, :cond_2

    .line 50
    goto :goto_2

    .line 53
    :cond_2
    :try_start_0
    aget-object v10, v9, v0

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    move v7, v10

    .line 54
    aget-object v10, v9, v6

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v8, v10

    .line 58
    nop

    .line 59
    if-lt p0, v7, :cond_3

    if-gt p0, v8, :cond_3

    .line 60
    return v6

    .line 46
    .end local v7    # "checkedVersionStart":I
    .end local v8    # "checkedVersionEnd":I
    .end local v9    # "VersionStartAndEnd":[Ljava/lang/String;
    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 55
    .restart local v7    # "checkedVersionStart":I
    .restart local v8    # "checkedVersionEnd":I
    .restart local v9    # "VersionStartAndEnd":[Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 56
    .local v6, "e":Ljava/lang/NumberFormatException;
    const-string v10, "Utils"

    const-string v11, "version number format error"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    return v0

    .line 64
    .end local v5    # "i":I
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    .end local v7    # "checkedVersionStart":I
    .end local v8    # "checkedVersionEnd":I
    .end local v9    # "VersionStartAndEnd":[Ljava/lang/String;
    :cond_4
    if-ltz v1, :cond_6

    .line 65
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 66
    .local v5, "versionPostRange":Ljava/lang/String;
    const-string v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 67
    .local v7, "versionPostArray":[Ljava/lang/String;
    array-length v8, v7

    .line 68
    .local v8, "versionPostArrayLen":I
    move v9, v0

    .local v9, "i":I
    :goto_3
    if-ge v9, v8, :cond_6

    .line 69
    move v10, v0

    .line 71
    .local v10, "specialVersion":I
    :try_start_1
    aget-object v11, v7, v9

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move v10, v11

    .line 75
    nop

    .line 76
    if-ne p0, v10, :cond_5

    .line 77
    return v6

    .line 68
    .end local v10    # "specialVersion":I
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 72
    .restart local v10    # "specialVersion":I
    :catch_1
    move-exception v6

    .line 73
    .restart local v6    # "e":Ljava/lang/NumberFormatException;
    const-string v11, "Utils"

    const-string v12, "version number format error"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    return v0

    .line 81
    .end local v5    # "versionPostRange":Ljava/lang/String;
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    .end local v7    # "versionPostArray":[Ljava/lang/String;
    .end local v8    # "versionPostArrayLen":I
    .end local v9    # "i":I
    .end local v10    # "specialVersion":I
    :cond_6
    return v0
.end method
