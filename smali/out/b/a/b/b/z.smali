.class public abstract Lb/a/b/b/z;
.super Ljava/lang/Object;
.source "WebApkSharedPreferences.java"


# direct methods
.method public static a(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 3

    const-string v0, "org.chromium.webapk.shell_apk"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method
