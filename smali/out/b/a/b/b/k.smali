.class public abstract Lb/a/b/b/k;
.super Ljava/lang/Object;
.source "HostBrowserLauncher.java"


# direct methods
.method public static a(Landroid/app/Activity;Lb/a/b/b/l;)V
    .registers 6

    .line 27
    iget-object v0, p1, Lb/a/b/b/l;->e:Ljava/lang/String;

    .line 28
    invoke-static {p1}, Lb/a/b/b/m;->b(Lb/a/b/b/l;)Z

    move-result v0

    const/high16 v1, 0x10000000

    if-eqz v0, :cond_35

    .line 29
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 30
    new-instance v0, Landroid/content/Intent;

    .line 31
    iget-object v2, p1, Lb/a/b/b/l;->e:Ljava/lang/String;

    .line 32
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 33
    iget-object v2, p1, Lb/a/b/b/l;->a:Ljava/lang/String;

    .line 34
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "REUSE_URL_MATCHING_TAB_ELSE_NEW_TAB"

    const/4 v2, 0x1

    .line 36
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    .line 37
    iget p1, p1, Lb/a/b/b/l;->f:I

    const-string v2, "org.chromium.chrome.browser.webapp_source"

    .line 38
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 39
    :try_start_31
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_34
    .catch Landroid/content/ActivityNotFoundException; {:try_start_31 .. :try_end_34} :catch_34

    :catch_34
    return-void

    :cond_35
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 40
    invoke-static {p0, p1, v0, v1, v2}, Lb/a/b/b/k;->a(Landroid/app/Activity;Lb/a/b/b/l;Landroid/os/Bundle;IZ)V

    return-void
.end method

.method public static a(Landroid/app/Activity;Lb/a/b/b/l;Landroid/os/Bundle;IZ)V
    .registers 8

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.google.android.apps.chrome.webapps.WebappManager.ACTION_START_WEBAPP"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    iget-object v1, p1, Lb/a/b/b/l;->a:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    invoke-virtual {v0, p3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 6
    iget-object p3, p1, Lb/a/b/b/l;->d:Landroid/content/Intent;

    .line 7
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p3

    if-eqz p3, :cond_1d

    .line 8
    invoke-virtual {v0, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_1d
    const-string p3, "org.chromium.webapk.relaunch"

    .line 9
    invoke-virtual {v0, p3}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 10
    iget-object p3, p1, Lb/a/b/b/l;->e:Ljava/lang/String;

    const-string v1, "org.chromium.chrome.browser.webapp_url"

    .line 11
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p3

    .line 12
    iget v1, p1, Lb/a/b/b/l;->f:I

    const-string v2, "org.chromium.chrome.browser.webapp_source"

    .line 13
    invoke-virtual {p3, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p3

    .line 14
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "org.chromium.chrome.browser.webapk_package_name"

    invoke-virtual {p3, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p3

    .line 15
    iget-object v1, p1, Lb/a/b/b/l;->i:Ljava/lang/String;

    const-string v2, "org.chromium.webapk.selected_share_target_activity_class_name"

    .line 16
    invoke-virtual {p3, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p3

    .line 17
    iget-boolean v1, p1, Lb/a/b/b/l;->g:Z

    const-string v2, "org.chromium.chrome.browser.webapk_force_navigation"

    .line 18
    invoke-virtual {p3, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-eqz p2, :cond_50

    .line 19
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 20
    :cond_50
    iget-boolean p2, p1, Lb/a/b/b/l;->c:Z

    if-nez p2, :cond_61

    .line 21
    iget-wide p1, p1, Lb/a/b/b/l;->h:J

    const-wide/16 v1, 0x0

    cmp-long p3, p1, v1

    if-ltz p3, :cond_61

    const-string p3, "org.chromium.chrome.browser.webapk_launch_time"

    .line 22
    invoke-virtual {v0, p3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_61
    if-eqz p4, :cond_68

    const/4 p1, 0x0

    .line 23
    :try_start_64
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_79

    .line 24
    :cond_68
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_6b
    .catch Landroid/content/ActivityNotFoundException; {:try_start_64 .. :try_end_6b} :catch_6c

    goto :goto_79

    :catch_6c
    move-exception p0

    const-string p1, "cr_HostBrowserLauncher"

    const-string p2, "Unable to launch browser in WebAPK mode."

    .line 25
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    sget-object p1, La/a/a/a/a/a/a/g;->a:La/a/a/a/a/a/a/a;

    invoke-virtual {p1, p0}, La/a/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :goto_79
    return-void
.end method
