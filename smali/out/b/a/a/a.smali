.class public abstract Lb/a/a/a;
.super Ljava/lang/Object;
.source "BuildHooksAndroid.java"


# static fields
.field public static a:Lb/a/a/a;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lb/a/a/a;
    .registers 5

    .line 1
    sget-object v0, Lb/a/a/a;->a:Lb/a/a/a;

    if-nez v0, :cond_27

    .line 2
    :try_start_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_11

    const-string v0, "org.chromium.build.BuildHooksAndroidImpl"

    goto :goto_13

    :cond_11
    const-string v0, ""

    .line 3
    :goto_13
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/a;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1d} :catch_20

    .line 5
    sput-object v0, Lb/a/a/a;->a:Lb/a/a/a;

    goto :goto_27

    :catch_20
    move-exception v0

    .line 6
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 7
    :cond_27
    :goto_27
    sget-object v0, Lb/a/a/a;->a:Lb/a/a/a;

    return-object v0
.end method

.method public static b()Z
    .registers 1

    .line 1
    invoke-static {}, Lb/a/a/a;->a()Lb/a/a/a;

    move-result-object v0

    check-cast v0, Lorg/chromium/build/BuildHooksAndroidImpl;

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    return v0

    :cond_a
    const/4 v0, 0x0

    .line 2
    throw v0
.end method
