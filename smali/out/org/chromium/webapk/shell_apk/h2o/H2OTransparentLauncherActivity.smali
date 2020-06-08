.class public Lorg/chromium/webapk/shell_apk/h2o/H2OTransparentLauncherActivity;
.super Lorg/chromium/webapk/shell_apk/TransparentLauncherActivity;
.source "H2OTransparentLauncherActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lorg/chromium/webapk/shell_apk/TransparentLauncherActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb/a/b/b/l;)V
    .registers 11

    if-nez p1, :cond_3

    return-void

    .line 1
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lb/a/b/b/A;->a(Landroid/content/Context;Lb/a/b/b/l;)V

    .line 2
    invoke-static {p1}, Lb/a/b/b/m;->a(Lb/a/b/b/l;)Z

    move-result v0

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v0, :cond_22

    .line 4
    invoke-static {v1}, Lorg/chromium/webapk/shell_apk/h2o/H2OOpaqueMainActivity;->a(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_30

    .line 5
    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lorg/chromium/webapk/shell_apk/h2o/H2OMainActivity;

    invoke-direct {v2, v1, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_31

    .line 6
    :cond_22
    invoke-static {v1}, Lorg/chromium/webapk/shell_apk/h2o/H2OMainActivity;->a(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_30

    .line 7
    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lorg/chromium/webapk/shell_apk/h2o/SplashActivity;

    invoke-direct {v2, v1, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_31

    :cond_30
    const/4 v2, 0x0

    :goto_31
    move-object v8, v2

    if-nez v8, :cond_36

    const/4 v1, 0x0

    goto :goto_46

    .line 8
    :cond_36
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 9
    iget-object v5, p1, Lb/a/b/b/l;->i:Ljava/lang/String;

    const-wide/16 v6, -0x1

    .line 10
    invoke-static/range {v3 .. v8}, Lb/a/b/b/B/a;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;JLandroid/content/ComponentName;)V

    const/4 v1, 0x1

    :goto_46
    if-eqz v1, :cond_49

    return-void

    :cond_49
    if-eqz v0, :cond_62

    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 12
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 13
    iget-object v4, p1, Lb/a/b/b/l;->i:Ljava/lang/String;

    .line 14
    iget-wide v5, p1, Lb/a/b/b/l;->h:J

    .line 15
    new-instance v7, Landroid/content/ComponentName;

    const-class p1, Lorg/chromium/webapk/shell_apk/h2o/SplashActivity;

    invoke-direct {v7, v2, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 16
    invoke-static/range {v2 .. v7}, Lb/a/b/b/B/a;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;JLandroid/content/ComponentName;)V

    return-void

    .line 17
    :cond_62
    invoke-static {p0, p1}, Lb/a/b/b/k;->a(Landroid/app/Activity;Lb/a/b/b/l;)V

    return-void
.end method
