.class public Lb/a/b/b/c;
.super Ljava/lang/Object;
.source "ChooseHostBrowserDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic a:Lb/a/b/b/h;

.field public final synthetic b:Lb/a/b/b/g;


# direct methods
.method public constructor <init>(Lb/a/b/b/h;Lb/a/b/b/g;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lb/a/b/b/c;->a:Lb/a/b/b/h;

    iput-object p2, p0, Lb/a/b/b/c;->b:Lb/a/b/b/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4

    .line 1
    iget-object p1, p0, Lb/a/b/b/c;->a:Lb/a/b/b/h;

    iget-boolean p1, p1, Lb/a/b/b/h;->a:Z

    if-eqz p1, :cond_7

    return-void

    .line 2
    :cond_7
    iget-object p1, p0, Lb/a/b/b/c;->b:Lb/a/b/b/g;

    check-cast p1, Lb/a/b/b/t;

    .line 3
    iget-object p1, p1, Lb/a/b/b/t;->a:Lb/a/b/b/v;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lb/a/b/b/v;->a(Ljava/lang/String;Z)V

    return-void
.end method
