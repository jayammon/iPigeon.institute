.class public Lb/a/b/b/x;
.super Ljava/lang/Object;
.source "TransparentLauncherActivity.java"

# interfaces
.implements Lb/a/b/b/v;


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Lorg/chromium/webapk/shell_apk/TransparentLauncherActivity;


# direct methods
.method public constructor <init>(Lorg/chromium/webapk/shell_apk/TransparentLauncherActivity;J)V
    .registers 4

    .line 1
    iput-object p1, p0, Lb/a/b/b/x;->b:Lorg/chromium/webapk/shell_apk/TransparentLauncherActivity;

    iput-wide p2, p0, Lb/a/b/b/x;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Z)V
    .registers 9

    if-nez p1, :cond_8

    .line 1
    iget-object p1, p0, Lb/a/b/b/x;->b:Lorg/chromium/webapk/shell_apk/TransparentLauncherActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    .line 2
    :cond_8
    iget-object v0, p0, Lb/a/b/b/x;->b:Lorg/chromium/webapk/shell_apk/TransparentLauncherActivity;

    .line 3
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iget-wide v4, p0, Lb/a/b/b/x;->a:J

    move-object v2, p1

    move v3, p2

    .line 4
    invoke-static/range {v0 .. v5}, Lb/a/b/b/l;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;ZJ)Lb/a/b/b/l;

    move-result-object p1

    .line 5
    iget-object p2, p0, Lb/a/b/b/x;->b:Lorg/chromium/webapk/shell_apk/TransparentLauncherActivity;

    invoke-virtual {p2, p1}, Lorg/chromium/webapk/shell_apk/TransparentLauncherActivity;->a(Lb/a/b/b/l;)V

    .line 6
    iget-object p1, p0, Lb/a/b/b/x;->b:Lorg/chromium/webapk/shell_apk/TransparentLauncherActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
