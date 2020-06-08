.class public Lb/a/b/b/B/b;
.super Ljava/lang/Object;
.source "SplashActivity.java"

# interfaces
.implements Lb/a/b/b/v;


# instance fields
.field public final synthetic a:Lorg/chromium/webapk/shell_apk/h2o/SplashActivity;


# direct methods
.method public constructor <init>(Lorg/chromium/webapk/shell_apk/h2o/SplashActivity;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lb/a/b/b/B/b;->a:Lorg/chromium/webapk/shell_apk/h2o/SplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Z)V
    .registers 9

    if-nez p1, :cond_8

    .line 1
    iget-object p1, p0, Lb/a/b/b/B/b;->a:Lorg/chromium/webapk/shell_apk/h2o/SplashActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    .line 2
    :cond_8
    iget-object v0, p0, Lb/a/b/b/B/b;->a:Lorg/chromium/webapk/shell_apk/h2o/SplashActivity;

    .line 3
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-wide/16 v4, -0x1

    move-object v2, p1

    move v3, p2

    .line 4
    invoke-static/range {v0 .. v5}, Lb/a/b/b/l;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;ZJ)Lb/a/b/b/l;

    move-result-object p1

    .line 5
    iget-object p2, p0, Lb/a/b/b/B/b;->a:Lorg/chromium/webapk/shell_apk/h2o/SplashActivity;

    invoke-static {p2, p1}, Lorg/chromium/webapk/shell_apk/h2o/SplashActivity;->a(Lorg/chromium/webapk/shell_apk/h2o/SplashActivity;Lb/a/b/b/l;)V

    return-void
.end method
