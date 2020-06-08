.class public Lorg/chromium/webapk/shell_apk/h2o/H2OOpaqueMainActivity;
.super Landroid/app/Activity;
.source "H2OOpaqueMainActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lorg/chromium/webapk/shell_apk/h2o/H2OOpaqueMainActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_16

    if-nez p0, :cond_15

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :cond_16
    :goto_16
    return v0
.end method


# virtual methods
.method public createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;
    .registers 2

    invoke-static {}, Lb/a/a/a;->b()Z

    invoke-super {p0, p1}, Landroid/app/Activity;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p1

    return-object p1
.end method

.method public getAssets()Landroid/content/res/AssetManager;
    .registers 2

    invoke-static {}, Lb/a/a/a;->b()Z

    invoke-super {p0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .registers 2

    invoke-static {}, Lb/a/a/a;->b()Z

    invoke-super {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getTheme()Landroid/content/res/Resources$Theme;
    .registers 2

    invoke-static {}, Lb/a/a/a;->b()Z

    invoke-super {p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 8

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 2
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1, p1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    new-instance v5, Landroid/content/ComponentName;

    const-class p1, Lorg/chromium/webapk/shell_apk/h2o/SplashActivity;

    invoke-direct {v5, v0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lb/a/b/b/B/a;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;JLandroid/content/ComponentName;)V

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public setTheme(I)V
    .registers 2

    invoke-static {}, Lb/a/a/a;->b()Z

    invoke-super {p0, p1}, Landroid/app/Activity;->setTheme(I)V

    return-void
.end method
