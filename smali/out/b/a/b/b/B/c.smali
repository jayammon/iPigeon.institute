.class public Lb/a/b/b/B/c;
.super Ljava/lang/Object;
.source "SplashActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic a:Lorg/chromium/webapk/shell_apk/h2o/SplashActivity;


# direct methods
.method public constructor <init>(Lorg/chromium/webapk/shell_apk/h2o/SplashActivity;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lb/a/b/b/B/c;->a:Lorg/chromium/webapk/shell_apk/h2o/SplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 3

    .line 1
    iget-object v0, p0, Lb/a/b/b/B/c;->a:Lorg/chromium/webapk/shell_apk/h2o/SplashActivity;

    .line 2
    iget-object v0, v0, Lorg/chromium/webapk/shell_apk/h2o/SplashActivity;->c:Landroid/view/View;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lb/a/b/b/B/c;->a:Lorg/chromium/webapk/shell_apk/h2o/SplashActivity;

    .line 4
    iget-object v0, v0, Lorg/chromium/webapk/shell_apk/h2o/SplashActivity;->c:Landroid/view/View;

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-nez v0, :cond_15

    goto :goto_28

    .line 6
    :cond_15
    iget-object v0, p0, Lb/a/b/b/B/c;->a:Lorg/chromium/webapk/shell_apk/h2o/SplashActivity;

    .line 7
    iget-object v0, v0, Lorg/chromium/webapk/shell_apk/h2o/SplashActivity;->c:Landroid/view/View;

    .line 8
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 9
    iget-object v0, p0, Lb/a/b/b/B/c;->a:Lorg/chromium/webapk/shell_apk/h2o/SplashActivity;

    const/4 v1, 0x1

    .line 10
    iput-boolean v1, v0, Lorg/chromium/webapk/shell_apk/h2o/SplashActivity;->a:Z

    .line 11
    invoke-virtual {v0}, Lorg/chromium/webapk/shell_apk/h2o/SplashActivity;->a()V

    :cond_28
    :goto_28
    return-void
.end method
