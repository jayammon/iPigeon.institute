.class public abstract Lb/a/b/b/m;
.super Ljava/lang/Object;
.source "HostBrowserUtils.java"


# static fields
.field public static a:Ljava/lang/String; = "org.chromium.arc.intent_helper"

.field public static b:Ljava/util/Set;

.field public static c:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    .line 1
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "com.google.android.apps.chrome"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "com.android.chrome"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "com.chrome.beta"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "com.chrome.dev"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "com.chrome.canary"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "org.chromium.chrome"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "org.chromium.chrome.tests"

    aput-object v3, v1, v2

    sget-object v2, Lb/a/b/b/m;->a:Ljava/lang/String;

    const/4 v3, 0x7

    aput-object v2, v1, v3

    .line 2
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lb/a/b/b/m;->b:Ljava/util/Set;

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 12

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 3
    sget-object v1, Lb/a/b/b/m;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lb/a/b/b/A;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 4
    sget-object p0, Lb/a/b/b/m;->c:Ljava/lang/String;

    return-object p0

    .line 5
    :cond_f
    invoke-static {p0}, Lb/a/b/b/m;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 7
    invoke-static {p0}, Lb/a/b/b/m;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_2a

    .line 9
    invoke-static {v1, v2}, Lb/a/b/b/A;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2a

    goto/16 :goto_bb

    .line 10
    :cond_2a
    invoke-static {p0}, Lb/a/b/b/A;->a(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_33

    move-object v2, v3

    goto :goto_39

    :cond_33
    const-string v5, "org.chromium.webapk.shell_apk.runtimeHost"

    .line 11
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 12
    :goto_39
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4a

    .line 13
    invoke-static {v1, v2}, Lb/a/b/b/A;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_47

    goto/16 :goto_bb

    :cond_47
    move-object v2, v3

    goto/16 :goto_bb

    .line 14
    :cond_4a
    invoke-static {}, Lb/a/b/b/A;->a()Landroid/content/Intent;

    move-result-object v2

    const/high16 v5, 0x10000

    .line 15
    invoke-virtual {v1, v2, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_5d

    .line 16
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_5d

    .line 17
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    goto :goto_5e

    :cond_5d
    move-object v2, v3

    .line 18
    :goto_5e
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_71

    invoke-static {v2}, Lb/a/b/b/m;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_71

    .line 19
    invoke-static {v1, v2}, Lb/a/b/b/A;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_71

    goto :goto_bb

    .line 20
    :cond_71
    invoke-static {v1}, Lb/a/b/b/A;->a(Landroid/content/pm/PackageManager;)Ljava/util/Map;

    move-result-object v1

    .line 21
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_8c

    .line 22
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    goto :goto_bb

    .line 23
    :cond_8c
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v8, v3

    const/4 v7, 0x0

    :cond_96
    :goto_96
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_af

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    if-le v7, v6, :cond_a5

    goto :goto_af

    .line 24
    :cond_a5
    invoke-static {v9}, Lb/a/b/b/m;->a(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_96

    add-int/lit8 v7, v7, 0x1

    move-object v8, v9

    goto :goto_96

    :cond_af
    :goto_af
    if-ne v7, v6, :cond_b3

    move-object v2, v8

    goto :goto_bb

    :cond_b3
    if-nez v7, :cond_47

    .line 25
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 26
    :goto_bb
    sput-object v2, Lb/a/b/b/m;->c:Ljava/lang/String;

    .line 27
    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f5

    .line 28
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f0

    const-string v0, "org.chromium.webapk.shell_apk"

    .line 29
    invoke-virtual {p0, v0, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 30
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 31
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 32
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 33
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lb/a/b/b/i;->a(Ljava/io/File;)V

    .line 34
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lb/a/b/b/i;->a(Ljava/io/File;)V

    const-string v0, "dex"

    .line 35
    invoke-virtual {p0, v0, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 36
    invoke-static {v0}, Lb/a/b/b/i;->a(Ljava/io/File;)V

    .line 37
    :cond_f0
    sget-object v0, Lb/a/b/b/m;->c:Ljava/lang/String;

    invoke-static {p0, v0}, Lb/a/b/b/m;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 38
    :cond_f5
    sget-object p0, Lb/a/b/b/m;->c:Ljava/lang/String;

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 39
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const-string v0, "org.chromium.webapk.shell_apk"

    const/4 v1, 0x0

    .line 40
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 41
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "runtime_host"

    .line 42
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 43
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static a(Lb/a/b/b/l;)Z
    .registers 3

    .line 44
    iget-object v0, p0, Lb/a/b/b/l;->a:Ljava/lang/String;

    const-string v1, "org.chromium.arc.intent_helper"

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 46
    iget p0, p0, Lb/a/b/b/l;->b:I

    const/16 v0, 0x4d

    if-lt p0, v0, :cond_18

    .line 47
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-lt p0, v0, :cond_18

    const/4 p0, 0x1

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    return p0
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 2

    .line 1
    sget-object v0, Lb/a/b/b/m;->b:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2
    sget-object v1, Lb/a/b/b/m;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lb/a/b/b/A;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 3
    sget-object p0, Lb/a/b/b/m;->c:Ljava/lang/String;

    return-object p0

    .line 4
    :cond_f
    invoke-static {p0}, Lb/a/b/b/m;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 5
    invoke-static {v0, p0}, Lb/a/b/b/A;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    const/4 p0, 0x0

    :cond_1a
    return-object p0
.end method

.method public static b(Lb/a/b/b/l;)Z
    .registers 4

    .line 6
    iget-object v0, p0, Lb/a/b/b/l;->a:Ljava/lang/String;

    .line 7
    iget p0, p0, Lb/a/b/b/l;->b:I

    .line 8
    invoke-static {v0}, Lb/a/b/b/m;->a(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_c

    return v2

    :cond_c
    const-string v1, "org.chromium.arc.intent_helper"

    .line 9
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    const/4 v0, 0x2

    if-ge p0, v0, :cond_19

    const/4 v1, 0x1

    :cond_19
    return v1

    :cond_1a
    const/16 v0, 0x39

    if-ge p0, v0, :cond_1f

    const/4 v1, 0x1

    :cond_1f
    return v1
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const-string v0, "org.chromium.webapk.shell_apk"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "runtime_host"

    const/4 v1, 0x0

    .line 2
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
