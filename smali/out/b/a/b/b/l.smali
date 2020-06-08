.class public Lb/a/b/b/l;
.super Ljava/lang/Object;
.source "HostBrowserLauncherParams.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:Z

.field public d:Landroid/content/Intent;

.field public e:Ljava/lang/String;

.field public f:I

.field public g:Z

.field public h:J

.field public i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IZLandroid/content/Intent;Ljava/lang/String;IZJLjava/lang/String;)V
    .registers 11

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lb/a/b/b/l;->a:Ljava/lang/String;

    .line 3
    iput p2, p0, Lb/a/b/b/l;->b:I

    .line 4
    iput-boolean p3, p0, Lb/a/b/b/l;->c:Z

    .line 5
    iput-object p4, p0, Lb/a/b/b/l;->d:Landroid/content/Intent;

    .line 6
    iput-object p5, p0, Lb/a/b/b/l;->e:Ljava/lang/String;

    .line 7
    iput p6, p0, Lb/a/b/b/l;->f:I

    .line 8
    iput-boolean p7, p0, Lb/a/b/b/l;->g:Z

    .line 9
    iput-wide p8, p0, Lb/a/b/b/l;->h:J

    .line 10
    iput-object p10, p0, Lb/a/b/b/l;->i:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;ZJ)Lb/a/b/b/l;
    .registers 23

    move-object/from16 v4, p1

    .line 1
    invoke-static/range {p0 .. p0}, Lb/a/b/b/A;->a(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return-object v1

    .line 2
    :cond_a
    invoke-static/range {p2 .. p2}, Lb/a/b/b/m;->a(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, -0x1

    const/4 v5, 0x0

    if-nez v2, :cond_16

    :catch_12
    move-object/from16 v6, p2

    :catch_14
    :goto_14
    const/4 v2, -0x1

    goto :goto_3f

    .line 3
    :cond_16
    :try_start_16
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2
    :try_end_1a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_16 .. :try_end_1a} :catch_12

    move-object/from16 v6, p2

    :try_start_1c
    invoke-virtual {v2, v6, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2
    :try_end_20
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1c .. :try_end_20} :catch_14

    .line 4
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string v7, "Developer Build"

    .line 5
    invoke-static {v2, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2e

    const v2, 0x7fffffff

    goto :goto_3f

    :cond_2e
    const-string v7, "."

    .line 6
    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-gez v7, :cond_37

    goto :goto_14

    .line 7
    :cond_37
    :try_start_37
    invoke-virtual {v2, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_3f
    .catch Ljava/lang/NumberFormatException; {:try_start_37 .. :try_end_3f} :catch_14

    :goto_3f
    const-string v3, "org.chromium.chrome.browser.webapk_launch_time"

    const-wide/16 v7, -0x1

    .line 8
    invoke-virtual {v4, v3, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v3, v7, v9

    if-lez v3, :cond_4f

    move-wide v8, v7

    goto :goto_51

    :cond_4f
    move-wide/from16 v8, p4

    :goto_51
    const-string v3, "org.chromium.webapk.selected_share_target_activity_class_name"

    .line 9
    invoke-virtual {v4, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 10
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v10, "android.intent.action.SEND"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6f

    .line 11
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v10, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_77

    .line 12
    :cond_6f
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    :cond_77
    move-object v10, v3

    const-string v3, "org.chromium.webapk.shell_apk.startUrl"

    const/4 v7, 0x1

    if-eqz v10, :cond_165

    .line 13
    new-instance v11, Landroid/content/ComponentName;

    .line 14
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    :try_start_86
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    const/16 v13, 0x80

    invoke-virtual {v12, v11, v13}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v11
    :try_end_90
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_86 .. :try_end_90} :catch_96

    if-nez v11, :cond_93

    goto :goto_96

    .line 16
    :cond_93
    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    goto :goto_97

    :catch_96
    :goto_96
    move-object v11, v1

    :goto_97
    if-nez v11, :cond_9c

    move-object v11, v1

    goto/16 :goto_15f

    :cond_9c
    const-string v12, "org.chromium.webapk.shell_apk.shareMethod"

    .line 17
    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 18
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_aa

    const/4 v12, 0x0

    goto :goto_b6

    .line 19
    :cond_aa
    sget-object v13, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v12, v13}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "POST"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    :goto_b6
    const-string v13, "org.chromium.webapk.shell_apk.shareAction"

    if-eqz v12, :cond_c0

    .line 20
    invoke-virtual {v11, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_15f

    .line 21
    :cond_c0
    invoke-virtual {v11, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 22
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_cd

    move-object v12, v1

    goto/16 :goto_15e

    .line 23
    :cond_cd
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 24
    new-instance v14, Landroid/util/Pair;

    const-string v15, "org.chromium.webapk.shell_apk.shareParamTitle"

    .line 25
    invoke-virtual {v11, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v5, "android.intent.extra.SUBJECT"

    .line 26
    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v14, v15, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 27
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    new-instance v5, Landroid/util/Pair;

    const-string v14, "org.chromium.webapk.shell_apk.shareParamText"

    invoke-virtual {v11, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v14, "android.intent.extra.TEXT"

    .line 29
    invoke-virtual {v4, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v5, v11, v14}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 30
    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    new-instance v5, Landroid/net/Uri$Builder;

    invoke-direct {v5}, Landroid/net/Uri$Builder;-><init>()V

    .line 32
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_103
    :goto_103
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_12f

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/Pair;

    .line 33
    iget-object v14, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v14, Ljava/lang/CharSequence;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_103

    iget-object v14, v13, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v14, Ljava/lang/CharSequence;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_103

    .line 34
    iget-object v14, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v14, Ljava/lang/String;

    iget-object v13, v13, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v5, v14, v13}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_103

    .line 35
    :cond_12f
    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 36
    invoke-virtual {v11}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v11

    .line 37
    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    .line 38
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_146

    goto :goto_15e

    :cond_146
    const-string v12, "%20"

    const-string v13, "+"

    .line 39
    invoke-virtual {v5, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Landroid/net/Uri$Builder;->encodedQuery(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 40
    invoke-virtual {v11}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v12, v5

    :goto_15e
    move-object v11, v12

    :goto_15f
    const/16 v5, 0xd

    const/16 v12, 0xd

    const/4 v13, 0x1

    goto :goto_18a

    .line 41
    :cond_165
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_184

    .line 42
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v11

    const-string v5, "org.chromium.chrome.browser.webapp_source"

    const/16 v12, 0x9

    .line 43
    invoke-virtual {v4, v5, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string v12, "org.chromium.chrome.browser.webapk_force_navigation"

    .line 44
    invoke-virtual {v4, v12, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v12

    move v13, v12

    move v12, v5

    goto :goto_18a

    .line 45
    :cond_184
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_18a
    if-nez v11, :cond_18d

    return-object v1

    .line 46
    :cond_18d
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "org.chromium.webapk.shell_apk.loggedIntentUrlParam"

    .line 47
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_19f

    :goto_19d
    move-object v5, v11

    goto :goto_1c4

    .line 49
    :cond_19f
    invoke-virtual {v11, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1b4

    .line 50
    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 51
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1b4

    goto :goto_19d

    .line 52
    :cond_1b4
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    .line 53
    invoke-virtual {v3, v0, v11}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 54
    invoke-virtual {v3}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    :goto_1c4
    if-eqz v5, :cond_1d9

    const-string v0, "http:"

    .line 55
    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1d6

    const-string v0, "https:"

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d9

    :cond_1d6
    const/16 v16, 0x1

    goto :goto_1db

    :cond_1d9
    const/16 v16, 0x0

    :goto_1db
    if-nez v16, :cond_1de

    return-object v1

    .line 56
    :cond_1de
    new-instance v11, Lb/a/b/b/l;

    move-object v0, v11

    move-object/from16 v1, p2

    move/from16 v3, p3

    move-object/from16 v4, p1

    move v6, v12

    move v7, v13

    invoke-direct/range {v0 .. v10}, Lb/a/b/b/l;-><init>(Ljava/lang/String;IZLandroid/content/Intent;Ljava/lang/String;IZJLjava/lang/String;)V

    return-object v11
.end method
