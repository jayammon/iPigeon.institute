.class public Lb/a/b/b/o;
.super Ljava/lang/Object;
.source "InstallHostBrowserDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lb/a/b/b/s;

.field public final synthetic b:Lb/a/b/b/r;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lb/a/b/b/s;Lb/a/b/b/r;Ljava/lang/String;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lb/a/b/b/o;->a:Lb/a/b/b/s;

    iput-object p2, p0, Lb/a/b/b/o;->b:Lb/a/b/b/r;

    iput-object p3, p0, Lb/a/b/b/o;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 9

    .line 1
    iget-object p1, p0, Lb/a/b/b/o;->a:Lb/a/b/b/s;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lb/a/b/b/s;->a:Z

    .line 2
    iget-object p1, p0, Lb/a/b/b/o;->b:Lb/a/b/b/r;

    iget-object v0, p0, Lb/a/b/b/o;->c:Ljava/lang/String;

    check-cast p1, Lb/a/b/b/u;

    .line 3
    iget-object v1, p1, Lb/a/b/b/u;->b:Lb/a/b/b/w;

    const/4 v2, 0x0

    if-eqz v1, :cond_43

    .line 4
    :try_start_10
    iget-object v1, v1, Lb/a/b/b/w;->b:Landroid/app/Activity;

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "market://details?id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 6
    new-instance v4, Landroid/content/Intent;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v4, v5, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v3, 0x10000000

    .line 7
    invoke-virtual {v4, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 8
    invoke-virtual {v1, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_36
    .catch Landroid/content/ActivityNotFoundException; {:try_start_10 .. :try_end_36} :catch_36

    .line 9
    :catch_36
    iget-object v1, p1, Lb/a/b/b/u;->b:Lb/a/b/b/w;

    .line 10
    iget-object v1, v1, Lb/a/b/b/w;->a:Landroid/content/Context;

    .line 11
    invoke-static {v1, v0}, Lb/a/b/b/m;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 12
    iget-object p1, p1, Lb/a/b/b/u;->a:Lb/a/b/b/v;

    invoke-interface {p1, v2, p2}, Lb/a/b/b/v;->a(Ljava/lang/String;Z)V

    return-void

    .line 13
    :cond_43
    throw v2
.end method
