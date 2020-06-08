.class public Lb/a/b/b/b;
.super Ljava/lang/Object;
.source "ChooseHostBrowserDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Lb/a/b/b/h;

.field public final synthetic c:Lb/a/b/b/g;

.field public final synthetic d:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>(Ljava/util/List;Lb/a/b/b/h;Lb/a/b/b/g;Landroid/app/AlertDialog;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lb/a/b/b/b;->a:Ljava/util/List;

    iput-object p2, p0, Lb/a/b/b/b;->b:Lb/a/b/b/h;

    iput-object p3, p0, Lb/a/b/b/b;->c:Lb/a/b/b/g;

    iput-object p4, p0, Lb/a/b/b/b;->d:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6

    .line 1
    iget-object p1, p0, Lb/a/b/b/b;->a:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/a/b/b/f;

    .line 2
    iget-boolean p2, p1, Lb/a/b/b/f;->d:Z

    if-eqz p2, :cond_28

    .line 3
    iget-object p2, p0, Lb/a/b/b/b;->b:Lb/a/b/b/h;

    const/4 p3, 0x1

    iput-boolean p3, p2, Lb/a/b/b/h;->a:Z

    .line 4
    iget-object p2, p0, Lb/a/b/b/b;->c:Lb/a/b/b/g;

    .line 5
    iget-object p1, p1, Lb/a/b/b/f;->a:Ljava/lang/String;

    .line 6
    check-cast p2, Lb/a/b/b/t;

    .line 7
    iget-object p4, p2, Lb/a/b/b/t;->b:Lb/a/b/b/w;

    .line 8
    iget-object p4, p4, Lb/a/b/b/w;->a:Landroid/content/Context;

    .line 9
    invoke-static {p4, p1}, Lb/a/b/b/m;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 10
    iget-object p2, p2, Lb/a/b/b/t;->a:Lb/a/b/b/v;

    invoke-interface {p2, p1, p3}, Lb/a/b/b/v;->a(Ljava/lang/String;Z)V

    .line 11
    iget-object p1, p0, Lb/a/b/b/b;->d:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->cancel()V

    :cond_28
    return-void
.end method
