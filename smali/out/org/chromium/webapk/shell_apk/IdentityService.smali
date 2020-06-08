.class public Lorg/chromium/webapk/shell_apk/IdentityService;
.super Landroid/app/Service;
.source "IdentityService.java"


# instance fields
.field public final a:Lb/a/b/a/a/a/a;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    new-instance v0, Lb/a/b/b/n;

    invoke-direct {v0, p0}, Lb/a/b/b/n;-><init>(Lorg/chromium/webapk/shell_apk/IdentityService;)V

    iput-object v0, p0, Lorg/chromium/webapk/shell_apk/IdentityService;->a:Lb/a/b/a/a/a/a;

    return-void
.end method


# virtual methods
.method public createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;
    .registers 2

    invoke-static {}, Lb/a/a/a;->b()Z

    invoke-super {p0, p1}, Landroid/app/Service;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p1

    return-object p1
.end method

.method public getAssets()Landroid/content/res/AssetManager;
    .registers 2

    invoke-static {}, Lb/a/a/a;->b()Z

    invoke-super {p0}, Landroid/app/Service;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .registers 2

    invoke-static {}, Lb/a/a/a;->b()Z

    invoke-super {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getTheme()Landroid/content/res/Resources$Theme;
    .registers 2

    invoke-static {}, Lb/a/a/a;->b()Z

    invoke-super {p0}, Landroid/app/Service;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    .line 1
    iget-object p1, p0, Lorg/chromium/webapk/shell_apk/IdentityService;->a:Lb/a/b/a/a/a/a;

    return-object p1
.end method

.method public setTheme(I)V
    .registers 2

    invoke-static {}, Lb/a/a/a;->b()Z

    invoke-super {p0, p1}, Landroid/app/Service;->setTheme(I)V

    return-void
.end method
