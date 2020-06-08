.class public Lorg/chromium/webapk/shell_apk/TransparentLauncherActivity;
.super Landroid/app/Activity;
.source "TransparentLauncherActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb/a/b/b/l;)V
    .registers 3

    if-eqz p1, :cond_c

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lb/a/b/b/A;->a(Landroid/content/Context;Lb/a/b/b/l;)V

    .line 2
    invoke-static {p0, p1}, Lb/a/b/b/k;->a(Landroid/app/Activity;Lb/a/b/b/l;)V

    :cond_c
    return-void
.end method

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
    .registers 5

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 3
    new-instance p1, Lb/a/b/b/w;

    invoke-direct {p1, p0}, Lb/a/b/b/w;-><init>(Landroid/app/Activity;)V

    new-instance v2, Lb/a/b/b/x;

    invoke-direct {v2, p0, v0, v1}, Lb/a/b/b/x;-><init>(Lorg/chromium/webapk/shell_apk/TransparentLauncherActivity;J)V

    invoke-virtual {p1, v2}, Lb/a/b/b/w;->a(Lb/a/b/b/v;)V

    return-void
.end method

.method public setTheme(I)V
    .registers 2

    invoke-static {}, Lb/a/a/a;->b()Z

    invoke-super {p0, p1}, Landroid/app/Activity;->setTheme(I)V

    return-void
.end method
