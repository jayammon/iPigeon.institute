.class public Lb/a/b/b/w;
.super Ljava/lang/Object;
.source "LaunchHostBrowserSelector.java"


# instance fields
.field public a:Landroid/content/Context;

.field public b:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lb/a/b/b/w;->b:Landroid/app/Activity;

    .line 3
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lb/a/b/b/w;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Lb/a/b/b/v;)V
    .registers 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Lb/a/b/b/w;->a:Landroid/content/Context;

    invoke-static {v2}, Lb/a/b/b/A;->a(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v2, :cond_12

    .line 2
    invoke-interface {v1, v3, v4}, Lb/a/b/b/v;->a(Ljava/lang/String;Z)V

    return-void

    .line 3
    :cond_12
    iget-object v5, v0, Lb/a/b/b/w;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 4
    iget-object v5, v0, Lb/a/b/b/w;->a:Landroid/content/Context;

    .line 5
    invoke-static {v5}, Lb/a/b/b/m;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 6
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_27

    .line 7
    invoke-interface {v1, v5, v4}, Lb/a/b/b/v;->a(Ljava/lang/String;Z)V

    return-void

    .line 8
    :cond_27
    iget-object v5, v0, Lb/a/b/b/w;->a:Landroid/content/Context;

    .line 9
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-static {v5}, Lb/a/b/b/A;->a(Landroid/content/pm/PackageManager;)Ljava/util/Map;

    move-result-object v5

    .line 10
    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    const v9, 0x7f080006

    const/4 v10, 0x1

    if-nez v6, :cond_137

    .line 11
    new-instance v2, Lb/a/b/b/t;

    invoke-direct {v2, v0, v1}, Lb/a/b/b/t;-><init>(Lb/a/b/b/w;Lb/a/b/b/v;)V

    .line 12
    iget-object v1, v0, Lb/a/b/b/w;->b:Landroid/app/Activity;

    iget-object v6, v0, Lb/a/b/b/w;->a:Landroid/content/Context;

    .line 13
    invoke-virtual {v6, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 14
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 15
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_54
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_68

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 16
    invoke-static {v12}, Lb/a/b/b/m;->a(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_54

    const/4 v11, 0x1

    goto :goto_69

    :cond_68
    const/4 v11, 0x0

    .line 17
    :goto_69
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 18
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_76
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_ab

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 19
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 20
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/ResolveInfo;

    if-eqz v11, :cond_99

    .line 21
    invoke-static {v14}, Lb/a/b/b/m;->a(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_97

    goto :goto_99

    :cond_97
    const/4 v15, 0x0

    goto :goto_9a

    :cond_99
    :goto_99
    const/4 v15, 0x1

    .line 22
    :goto_9a
    new-instance v7, Lb/a/b/b/f;

    invoke-virtual {v13, v9}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 23
    invoke-virtual {v13, v9}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-direct {v7, v14, v8, v13, v15}, Lb/a/b/b/f;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Z)V

    .line 24
    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_76

    .line 25
    :cond_ab
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gt v5, v10, :cond_b2

    goto :goto_ba

    .line 26
    :cond_b2
    new-instance v5, Lb/a/b/b/d;

    invoke-direct {v5}, Lb/a/b/b/d;-><init>()V

    invoke-static {v12, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 27
    :goto_ba
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v7, 0x7f080002

    new-array v8, v10, [Ljava/lang/Object;

    aput-object v6, v8, v4

    .line 28
    invoke-virtual {v1, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const/high16 v6, 0x7f060000

    invoke-virtual {v4, v6, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 30
    invoke-static {v1, v4, v5}, Lb/a/b/b/A;->a(Landroid/content/Context;Landroid/view/View;Landroid/widget/TextView;)V

    const v6, 0x7f050003

    .line 31
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const/high16 v7, 0x7f080000

    .line 32
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    const v6, 0x7f050001

    .line 33
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ListView;

    .line 34
    new-instance v7, Lb/a/b/b/e;

    invoke-direct {v7, v1, v12}, Lb/a/b/b/e;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 35
    new-instance v7, Lb/a/b/b/h;

    invoke-direct {v7, v3}, Lb/a/b/b/h;-><init>(Lb/a/b/b/a;)V

    .line 36
    new-instance v3, Landroid/app/AlertDialog$Builder;

    new-instance v8, Landroid/view/ContextThemeWrapper;

    const v9, 0x1030132

    invoke-direct {v8, v1, v9}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v3, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 37
    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v4, Lb/a/b/b/a;

    invoke-direct {v4}, Lb/a/b/b/a;-><init>()V

    const v5, 0x7f080001

    invoke-virtual {v1, v5, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 38
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 39
    new-instance v3, Lb/a/b/b/b;

    invoke-direct {v3, v12, v7, v2, v1}, Lb/a/b/b/b;-><init>(Ljava/util/List;Lb/a/b/b/h;Lb/a/b/b/g;Landroid/app/AlertDialog;)V

    invoke-virtual {v6, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 40
    new-instance v3, Lb/a/b/b/c;

    invoke-direct {v3, v7, v2}, Lb/a/b/b/c;-><init>(Lb/a/b/b/h;Lb/a/b/b/g;)V

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 41
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_1e2

    :cond_137
    const-string v5, "org.chromium.webapk.shell_apk.runtimeHost"

    .line 42
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "org.chromium.webapk.shell_apk.runtimeHostApplicationName"

    .line 43
    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 44
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_14d

    const-string v5, "com.android.chrome"

    const-string v2, "Google Chrome"

    .line 45
    :cond_14d
    new-instance v6, Lb/a/b/b/u;

    invoke-direct {v6, v0, v1}, Lb/a/b/b/u;-><init>(Lb/a/b/b/w;Lb/a/b/b/v;)V

    .line 46
    iget-object v1, v0, Lb/a/b/b/w;->b:Landroid/app/Activity;

    iget-object v7, v0, Lb/a/b/b/w;->a:Landroid/content/Context;

    invoke-virtual {v7, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/high16 v8, 0x7f040000

    .line 47
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    const v11, 0x7f060001

    invoke-virtual {v9, v11, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 48
    new-instance v11, Landroid/widget/TextView;

    invoke-direct {v11, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v7, v10, v4

    const v7, 0x7f080005

    .line 49
    invoke-virtual {v1, v7, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    invoke-static {v1, v9, v11}, Lb/a/b/b/A;->a(Landroid/content/Context;Landroid/view/View;Landroid/widget/TextView;)V

    const/high16 v7, 0x7f050000

    .line 51
    invoke-virtual {v9, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 52
    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    const v7, 0x7f050002

    .line 53
    invoke-virtual {v9, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 54
    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v8, 0x7f030003

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 56
    invoke-virtual {v7, v2, v4, v4, v4}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 57
    new-instance v2, Lb/a/b/b/s;

    invoke-direct {v2, v3}, Lb/a/b/b/s;-><init>(Lb/a/b/b/o;)V

    .line 58
    new-instance v3, Landroid/app/AlertDialog$Builder;

    new-instance v4, Landroid/view/ContextThemeWrapper;

    const v7, 0x1030132

    invoke-direct {v4, v1, v7}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 59
    invoke-virtual {v3, v11}, Landroid/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 60
    invoke-virtual {v1, v9}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v4, Lb/a/b/b/p;

    invoke-direct {v4}, Lb/a/b/b/p;-><init>()V

    const v7, 0x7f080001

    .line 61
    invoke-virtual {v1, v7, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v4, Lb/a/b/b/o;

    invoke-direct {v4, v2, v6, v5}, Lb/a/b/b/o;-><init>(Lb/a/b/b/s;Lb/a/b/b/r;Ljava/lang/String;)V

    const v5, 0x7f080004

    .line 62
    invoke-virtual {v1, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 63
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 64
    new-instance v3, Lb/a/b/b/q;

    invoke-direct {v3, v2, v6}, Lb/a/b/b/q;-><init>(Lb/a/b/b/s;Lb/a/b/b/r;)V

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 65
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    :goto_1e2
    return-void
.end method
