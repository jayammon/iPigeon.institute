.class public Lorg/chromium/webapk/shell_apk/h2o/H2OMainActivity;
.super Lorg/chromium/webapk/shell_apk/TransparentLauncherActivity;
.source "H2OMainActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lorg/chromium/webapk/shell_apk/TransparentLauncherActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lorg/chromium/webapk/shell_apk/h2o/H2OMainActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_13

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0
.end method


# virtual methods
.method public a(Lb/a/b/b/l;)V
    .registers 13

    if-nez p1, :cond_3

    return-void

    .line 4
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 5
    invoke-static {p1}, Lb/a/b/b/m;->a(Lb/a/b/b/l;)Z

    move-result v1

    if-eqz v1, :cond_5d

    const-wide/16 v1, 0x4e20

    const-string v3, "org.chromium.webapk.shell_apk"

    const/4 v4, 0x0

    .line 6
    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    const-string v10, "org.chromium.webapk.shell_apk.request_host_browser_relaunch_timestamp"

    .line 8
    invoke-interface {v5, v10, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    sub-long/2addr v6, v8

    const/4 v5, 0x1

    cmp-long v8, v6, v1

    if-gtz v8, :cond_2a

    const/4 v1, 0x1

    goto :goto_2b

    :cond_2a
    const/4 v1, 0x0

    :goto_2b
    if-nez v1, :cond_5d

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 10
    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 11
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 12
    invoke-interface {v3, v10, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 13
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 14
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "org.chromium.webapk.relaunch"

    .line 15
    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/high16 v2, 0x10000000

    .line 16
    invoke-static {p0, p1, v1, v2, v4}, Lb/a/b/b/k;->a(Landroid/app/Activity;Lb/a/b/b/l;Landroid/os/Bundle;IZ)V

    .line 17
    new-instance p1, Landroid/content/ComponentName;

    const-class v1, Lorg/chromium/webapk/shell_apk/h2o/H2OOpaqueMainActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 18
    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    .line 19
    invoke-static {v0, p1, v1}, Lb/a/b/b/B/a;->a(Landroid/content/Context;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    return-void

    .line 20
    :cond_5d
    invoke-static {p0, p1}, Lb/a/b/b/k;->a(Landroid/app/Activity;Lb/a/b/b/l;)V

    return-void
.end method
