.class public Lb/a/b/b/e;
.super Landroid/widget/ArrayAdapter;
.source "ChooseHostBrowserDialog.java"


# instance fields
.field public a:Ljava/util/List;

.field public b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 4

    const v0, 0x7f060001

    .line 1
    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 2
    iput-object p1, p0, Lb/a/b/b/e;->b:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lb/a/b/b/e;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 12

    const/4 v0, 0x0

    if-nez p2, :cond_10

    .line 1
    iget-object p2, p0, Lb/a/b/b/e;->b:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f060001

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 2
    :cond_10
    iget-object p3, p0, Lb/a/b/b/e;->b:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const/high16 v1, 0x7f050000

    .line 3
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f050002

    .line 4
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f030003

    .line 5
    invoke-virtual {p3, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 6
    invoke-virtual {v2, v3, v0, v0, v0}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 7
    iget-object v3, p0, Lb/a/b/b/e;->a:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/a/b/b/f;

    .line 8
    iget-boolean v3, p1, Lb/a/b/b/f;->d:Z

    .line 9
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 10
    iget-boolean v3, p1, Lb/a/b/b/f;->d:Z

    if-eqz v3, :cond_57

    .line 11
    iget-object v0, p1, Lb/a/b/b/f;->b:Ljava/lang/CharSequence;

    .line 12
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f020003

    .line 13
    invoke-static {p3, v0}, Lb/a/b/b/A;->a(Landroid/content/res/Resources;I)I

    move-result p3

    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 p3, 0x3f800000    # 1.0f

    .line 14
    invoke-virtual {v1, p3}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_a4

    .line 15
    :cond_57
    iget-object v3, p0, Lb/a/b/b/e;->b:Landroid/content/Context;

    const v4, 0x7f080003

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    .line 16
    iget-object v7, p1, Lb/a/b/b/f;->b:Ljava/lang/CharSequence;

    aput-object v7, v6, v0

    .line 17
    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 18
    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const v3, 0x7f030005

    .line 19
    invoke-virtual {p3, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    const v6, 0x7f030004

    .line 20
    invoke-virtual {p3, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    div-float/2addr v3, v6

    .line 21
    new-instance v6, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {v6, v3}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 22
    iget-object v3, p1, Lb/a/b/b/f;->b:Ljava/lang/CharSequence;

    .line 23
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    add-int/2addr v3, v5

    invoke-virtual {v4}, Landroid/text/SpannableString;->length()I

    move-result v5

    .line 24
    invoke-virtual {v4, v6, v3, v5, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 25
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    const v0, 0x7f020001

    .line 27
    invoke-static {p3, v0}, Lb/a/b/b/A;->a(Landroid/content/res/Resources;I)I

    move-result p3

    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    const p3, 0x3e851eb8    # 0.26f

    .line 28
    invoke-virtual {v1, p3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 29
    :goto_a4
    iget-object p3, p1, Lb/a/b/b/f;->c:Landroid/graphics/drawable/Drawable;

    .line 30
    invoke-virtual {v1, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 31
    iget-boolean p1, p1, Lb/a/b/b/f;->d:Z

    .line 32
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-object p2
.end method

.method public isEnabled(I)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lb/a/b/b/e;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/a/b/b/f;

    .line 2
    iget-boolean p1, p1, Lb/a/b/b/f;->d:Z

    return p1
.end method
