.class final Lcyanogenmod/providers/CMSettings$System$4;
.super Ljava/lang/Object;
.source "CMSettings.java"

# interfaces
.implements Lcyanogenmod/providers/CMSettings$Validator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/providers/CMSettings$System;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public validate(Ljava/lang/String;)Z
    .locals 9
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v8

    :cond_0
    const-string v3, ","

    invoke-static {p1, v3}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .local v1, "sp":[Ljava/lang/String;
    array-length v5, v1

    move v3, v4

    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v0, v1, v3

    .local v0, "s":Ljava/lang/String;
    const-string v6, ":"

    invoke-static {v0, v6}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .local v2, "sp2":[Ljava/lang/String;
    array-length v6, v2

    const/4 v7, 0x2

    if-eq v6, v7, :cond_1

    return v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v0    # "s":Ljava/lang/String;
    .end local v2    # "sp2":[Ljava/lang/String;
    :cond_2
    return v8
.end method
