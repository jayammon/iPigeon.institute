.class public Lorg/chromium/webapk/shell_apk/h2o/SplashActivity;
.super Landroid/app/Activity;
.source "SplashActivity.java"


# instance fields
.field public a:Z

.field public b:Landroid/os/AsyncTask;

.field public c:Landroid/view/View;

.field public d:Lb/a/b/b/l;

.field public e:I

.field public f:Z

.field public g:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static synthetic a(Lorg/chromium/webapk/shell_apk/h2o/SplashActivity;Lb/a/b/b/l;)V
    .registers 5

    if-nez p1, :cond_6

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_2d

    .line 2
    :cond_6
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 3
    invoke-static {p1}, Lb/a/b/b/m;->a(Lb/a/b/b/l;)Z

    move-result v1

    if-nez v1, :cond_28

    .line 4
    invoke-static {p0, p1}, Lb/a/b/b/k;->a(Landroid/app/Activity;Lb/a/b/b/l;)V

    .line 5
    new-instance p1, Landroid/content/ComponentName;

    const-class v1, Lorg/chromium/webapk/shell_apk/h2o/H2OMainActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lorg/chromium/webapk/shell_apk/h2o/H2OOpaqueMainActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v0, p1, v1}, Lb/a/b/b/B/a;->a(Landroid/content/Context;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_2d

    .line 7
    :cond_28
    iput-object p1, p0, Lorg/chromium/webapk/shell_apk/h2o/SplashActivity;->d:Lb/a/b/b/l;

    .line 8
    invoke-virtual {p0}, Lorg/chromium/webapk/shell_apk/h2o/SplashActivity;->a()V

    :goto_2d
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4

    .line 9
    iget-object v0, p0, Lorg/chromium/webapk/shell_apk/h2o/SplashActivity;->d:Lb/a/b/b/l;

    if-eqz v0, :cond_34

    iget-boolean v0, p0, Lorg/chromium/webapk/shell_apk/h2o/SplashActivity;->a:Z

    if-eqz v0, :cond_34

    iget-boolean v0, p0, Lorg/chromium/webapk/shell_apk/h2o/SplashActivity;->f:Z

    if-eqz v0, :cond_34

    iget-boolean v0, p0, Lorg/chromium/webapk/shell_apk/h2o/SplashActivity;->g:Z

    if-nez v0, :cond_11

    goto :goto_34

    :cond_11
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lorg/chromium/webapk/shell_apk/h2o/SplashActivity;->g:Z

    .line 11
    iget-object v1, p0, Lorg/chromium/webapk/shell_apk/h2o/SplashActivity;->c:Landroid/view/View;

    const/high16 v2, 0xc00000

    invoke-static {v1, v2}, Lb/a/b/b/B/g;->a(Landroid/view/View;I)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_25

    const/4 v0, 0x0

    .line 12
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v0, v1}, Lorg/chromium/webapk/shell_apk/h2o/SplashActivity;->a([BLandroid/graphics/Bitmap$CompressFormat;)V

    goto :goto_34

    .line 13
    :cond_25
    new-instance v2, Lb/a/b/b/B/d;

    invoke-direct {v2, p0, v1}, Lb/a/b/b/B/d;-><init>(Lorg/chromium/webapk/shell_apk/h2o/SplashActivity;Landroid/graphics/Bitmap;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v0, v0, [Ljava/lang/Void;

    .line 14
    invoke-virtual {v2, v1, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/webapk/shell_apk/h2o/SplashActivity;->b:Landroid/os/AsyncTask;

    :cond_34
    :goto_34
    return-void
.end method

.method public final a([BLandroid/graphics/Bitmap$CompressFormat;)V
    .registers 5

    .line 15
    iget-object v0, p0, Lorg/chromium/webapk/shell_apk/h2o/SplashActivity;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lorg/chromium/webapk/shell_apk/h2o/SplashActivity;->c:Landroid/view/View;

    .line 16
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 17
    invoke-static {p0, p1, p2, v0, v1}, Lorg/chromium/webapk/shell_apk/h2o/SplashContentProvider;->a(Landroid/content/Context;[BLandroid/graphics/Bitmap$CompressFormat;II)V

    .line 18
    iget-object p1, p0, Lorg/chromium/webapk/shell_apk/h2o/SplashActivity;->d:Lb/a/b/b/l;

    .line 19
    iget-object p2, p1, Lb/a/b/b/l;->e:Ljava/lang/String;

    .line 20
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const/4 v0, 0x1

    const-string v1, "org.chromium.chrome.browser.webapk.splash_provided_by_webapk"

    .line 21
    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/high16 v1, 0x10000

    .line 22
    invoke-static {p0, p1, p2, v1, v0}, Lb/a/b/b/k;->a(Landroid/app/Activity;Lb/a/b/b/l;Landroid/os/Bundle;IZ)V

    const/4 p1, 0x0

    .line 23
    iput-object p1, p0, Lorg/chromium/webapk/shell_apk/h2o/SplashActivity;->d:Lb/a/b/b/l;

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

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    .line 1
    iget p1, p0, Lorg/chromium/webapk/shell_apk/h2o/SplashActivity;->e:I

    const/4 p3, 0x2

    if-eq p1, p3, :cond_a

    if-nez p2, :cond_a

    const/4 p1, 0x1

    .line 2
    iput p1, p0, Lorg/chromium/webapk/shell_apk/h2o/SplashActivity;->e:I

    :cond_a
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 9

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-static {p0}, Lb/a/b/b/A;->a(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "org.chromium.webapk.shell_apk.themeColor"

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_28

    const-string v3, "L"

    .line 4
    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1a

    goto :goto_28

    .line 5
    :cond_1a
    :try_start_1a
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3
    :try_end_27
    .catch Ljava/lang/NumberFormatException; {:try_start_1a .. :try_end_27} :catch_28

    goto :goto_2b

    :catch_28
    :cond_28
    :goto_28
    const-wide/32 v3, -0x1000000

    :goto_2b
    long-to-int v0, v3

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [F

    .line 7
    invoke-static {v0, v4}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 v0, 0x2

    .line 8
    aget v5, v4, v0

    const v6, 0x3f19999a    # 0.6f

    mul-float v5, v5, v6

    aput v5, v4, v0

    .line 9
    invoke-static {v4}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v4

    .line 10
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-ge v5, v6, :cond_4b

    goto :goto_53

    :cond_4b
    const/high16 v5, -0x80000000

    .line 11
    invoke-virtual {v3, v5}, Landroid/view/Window;->addFlags(I)V

    .line 12
    invoke-virtual {v3, v4}, Landroid/view/Window;->setStatusBarColor(I)V

    :goto_53
    const-string v3, "org.chromium.webapk.shell_apk.orientation"

    .line 13
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x1

    if-nez p1, :cond_5e

    goto/16 :goto_dd

    :cond_5e
    const-string v4, "portrait-primary"

    .line 14
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_68

    goto/16 :goto_d9

    :cond_68
    const-string v4, "portrait-secondary"

    .line 15
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_74

    const/16 p1, 0x9

    goto/16 :goto_de

    :cond_74
    const-string v4, "landscape-primary"

    .line 16
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7d

    goto :goto_db

    :cond_7d
    const-string v4, "landscape-secondary"

    .line 17
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_88

    const/16 p1, 0x8

    goto :goto_de

    :cond_88
    const-string v4, "portrait"

    .line 18
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_92

    const/4 p1, 0x7

    goto :goto_de

    :cond_92
    const-string v4, "landscape"

    .line 19
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9c

    const/4 p1, 0x6

    goto :goto_de

    :cond_9c
    const-string v4, "any"

    .line 20
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a7

    const/16 p1, 0xa

    goto :goto_de

    :cond_a7
    const-string v4, "natural"

    .line 21
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_dd

    const-string p1, "window"

    .line 22
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 23
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    .line 24
    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result v4

    if-eqz v4, :cond_cf

    if-ne v4, v0, :cond_c4

    goto :goto_cf

    .line 25
    :cond_c4
    invoke-virtual {p1}, Landroid/view/Display;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/Display;->getWidth()I

    move-result p1

    if-ge v0, p1, :cond_db

    goto :goto_d9

    .line 26
    :cond_cf
    :goto_cf
    invoke-virtual {p1}, Landroid/view/Display;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/Display;->getWidth()I

    move-result p1

    if-lt v0, p1, :cond_db

    :goto_d9
    const/4 p1, 0x1

    goto :goto_de

    :cond_db
    :goto_db
    const/4 p1, 0x0

    goto :goto_de

    :cond_dd
    :goto_dd
    const/4 p1, -0x1

    :goto_de
    if-eq p1, v1, :cond_e3

    .line 27
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 28
    :cond_e3
    invoke-static {p0}, Lb/a/b/b/B/g;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/webapk/shell_apk/h2o/SplashActivity;->c:Landroid/view/View;

    .line 29
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lb/a/b/b/B/c;

    invoke-direct {v0, p0}, Lb/a/b/b/B/c;-><init>(Lorg/chromium/webapk/shell_apk/h2o/SplashActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 30
    iget-object p1, p0, Lorg/chromium/webapk/shell_apk/h2o/SplashActivity;->c:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 31
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_143

    new-instance p1, Landroid/content/ComponentName;

    const-class v1, Lorg/chromium/webapk/shell_apk/h2o/SplashActivity;

    invoke-direct {p1, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 32
    invoke-virtual {p0}, Landroid/app/Activity;->getTaskId()I

    move-result v1

    .line 33
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v4, 0x0

    if-ge v2, v0, :cond_111

    goto :goto_13c

    :cond_111
    const-string v0, "activity"

    .line 34
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 35
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getAppTasks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_121
    :goto_121
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$AppTask;

    .line 36
    :try_start_12d
    invoke-virtual {v2}, Landroid/app/ActivityManager$AppTask;->getTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v2

    if-eqz v2, :cond_121

    .line 37
    iget v5, v2, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    if-ne v5, v1, :cond_121

    .line 38
    iget-object v4, v2, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;
    :try_end_139
    .catch Ljava/lang/IllegalArgumentException; {:try_start_12d .. :try_end_139} :catch_13a

    goto :goto_13c

    :catch_13a
    nop

    goto :goto_121

    .line 39
    :cond_13c
    :goto_13c
    invoke-virtual {p1, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_143

    return-void

    .line 40
    :cond_143
    iput-boolean v3, p0, Lorg/chromium/webapk/shell_apk/h2o/SplashActivity;->g:Z

    .line 41
    new-instance p1, Lb/a/b/b/w;

    invoke-direct {p1, p0}, Lb/a/b/b/w;-><init>(Landroid/app/Activity;)V

    new-instance v0, Lb/a/b/b/B/b;

    invoke-direct {v0, p0}, Lb/a/b/b/B/b;-><init>(Lorg/chromium/webapk/shell_apk/h2o/SplashActivity;)V

    invoke-virtual {p1, v0}, Lb/a/b/b/w;->a(Lb/a/b/b/v;)V

    return-void
.end method

.method public onDestroy()V
    .registers 4

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lorg/chromium/webapk/shell_apk/h2o/SplashContentProvider;->a([B)[B

    .line 2
    iget-object v1, p0, Lorg/chromium/webapk/shell_apk/h2o/SplashActivity;->b:Landroid/os/AsyncTask;

    if-eqz v1, :cond_e

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 4
    iput-object v0, p0, Lorg/chromium/webapk/shell_apk/h2o/SplashActivity;->b:Landroid/os/AsyncTask;

    .line 5
    :cond_e
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    const/4 p1, 0x2

    .line 3
    iput p1, p0, Lorg/chromium/webapk/shell_apk/h2o/SplashActivity;->e:I

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lorg/chromium/webapk/shell_apk/h2o/SplashActivity;->g:Z

    .line 5
    new-instance p1, Lb/a/b/b/w;

    invoke-direct {p1, p0}, Lb/a/b/b/w;-><init>(Landroid/app/Activity;)V

    new-instance v0, Lb/a/b/b/B/b;

    invoke-direct {v0, p0}, Lb/a/b/b/B/b;-><init>(Lorg/chromium/webapk/shell_apk/h2o/SplashActivity;)V

    invoke-virtual {p1, v0}, Lb/a/b/b/w;->a(Lb/a/b/b/v;)V

    return-void
.end method

.method public onPause()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lorg/chromium/webapk/shell_apk/h2o/SplashActivity;->f:Z

    return-void
.end method

.method public onResume()V
    .registers 3

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lorg/chromium/webapk/shell_apk/h2o/SplashActivity;->f:Z

    .line 3
    iget v1, p0, Lorg/chromium/webapk/shell_apk/h2o/SplashActivity;->e:I

    if-ne v1, v0, :cond_e

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_e
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lorg/chromium/webapk/shell_apk/h2o/SplashActivity;->e:I

    .line 6
    invoke-virtual {p0}, Lorg/chromium/webapk/shell_apk/h2o/SplashActivity;->a()V

    return-void
.end method

.method public setTheme(I)V
    .registers 2

    invoke-static {}, Lb/a/a/a;->b()Z

    invoke-super {p0, p1}, Landroid/app/Activity;->setTheme(I)V

    return-void
.end method
