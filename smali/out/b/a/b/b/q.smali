.class public Lb/a/b/b/q;
.super Ljava/lang/Object;
.source "InstallHostBrowserDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic a:Lb/a/b/b/s;

.field public final synthetic b:Lb/a/b/b/r;


# direct methods
.method public constructor <init>(Lb/a/b/b/s;Lb/a/b/b/r;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lb/a/b/b/q;->a:Lb/a/b/b/s;

    iput-object p2, p0, Lb/a/b/b/q;->b:Lb/a/b/b/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4

    .line 1
    iget-object p1, p0, Lb/a/b/b/q;->a:Lb/a/b/b/s;

    iget-boolean p1, p1, Lb/a/b/b/s;->a:Z

    if-eqz p1, :cond_7

    return-void

    .line 2
    :cond_7
    iget-object p1, p0, Lb/a/b/b/q;->b:Lb/a/b/b/r;

    check-cast p1, Lb/a/b/b/u;

    .line 3
    iget-object p1, p1, Lb/a/b/b/u;->a:Lb/a/b/b/v;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lb/a/b/b/v;->a(Ljava/lang/String;Z)V

    return-void
.end method
