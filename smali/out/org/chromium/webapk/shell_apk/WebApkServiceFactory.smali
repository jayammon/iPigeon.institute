.class public Lorg/chromium/webapk/shell_apk/WebApkServiceFactory;
.super Landroid/app/Service;
.source "WebApkServiceFactory.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;
    .registers 2

    invoke-static {}, Lb/a/a/a;->b()Z

    invoke-super {p0, p1}, Landroid/app/Service;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p1

    return-object p1
.end method

.method public getAssets()Landroid/content/res/AssetManager;
    .registers 2

    invoke-static {}, Lb/a/a/a;->b()Z

    invoke-super {p0}, Landroid/app/Service;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .registers 2

    invoke-static {}, Lb/a/a/a;->b()Z

    invoke-super {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getTheme()Landroid/content/res/Resources$Theme;
    .registers 2

    invoke-static {}, Lb/a/a/a;->b()Z

    invoke-super {p0}, Landroid/app/Service;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 19

    move-object/from16 v1, p0

    .line 1
    invoke-static/range {p0 .. p0}, Lb/a/b/b/m;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 2
    invoke-static {v2}, Lb/a/b/b/m;->a(Ljava/lang/String;)Z

    move-result v0

    const-string v3, "cr_WebApkServiceFactory"

    const/4 v4, 0x0

    if-nez v0, :cond_15

    const-string v0, "Host browser does not support WebAPKs."

    .line 3
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_15
    const/4 v5, 0x0

    .line 4
    :try_start_16
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2, v5}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0
    :try_end_1e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_16 .. :try_end_1e} :catch_1f

    goto :goto_26

    :catch_1f
    move-exception v0

    .line 5
    sget-object v6, La/a/a/a/a/a/a/g;->a:La/a/a/a/a/a/a/a;

    invoke-virtual {v6, v0}, La/a/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    move-object v0, v4

    :goto_26
    const-string v6, "cr_HostBrowserClassLoader"

    const-string v7, "org.chromium.webapk.lib.runtime_library.WebApkServiceImpl"

    const/4 v9, -0x1

    if-nez v0, :cond_34

    const-string v0, "Failed to get remote context."

    .line 6
    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_166

    .line 7
    :cond_34
    sget-object v10, Lb/a/b/b/j;->a:Ljava/lang/ClassLoader;

    const-string v11, "org.chromium.webapk.shell_apk.version_code"

    const-string v12, "org.chromium.webapk.shell_apk"

    if-eqz v10, :cond_4f

    .line 8
    invoke-virtual {v1, v12, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 9
    invoke-interface {v10, v11, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 10
    invoke-static {v0}, Lb/a/b/b/j;->a(Landroid/content/Context;)I

    move-result v13

    if-ne v13, v10, :cond_4c

    const/4 v10, 0x1

    goto :goto_4d

    :cond_4c
    const/4 v10, 0x0

    :goto_4d
    if-nez v10, :cond_164

    .line 11
    :cond_4f
    invoke-virtual {v1, v12, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    const-string v12, "org.chromium.webapk.shell_apk.dex_version"

    .line 12
    invoke-interface {v10, v12, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v13

    .line 13
    invoke-static {v0}, Lb/a/b/b/j;->a(Landroid/content/Context;)I

    move-result v14

    .line 14
    invoke-interface {v10, v11, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v15

    if-ne v15, v14, :cond_65

    const/4 v4, -0x1

    goto :goto_9f

    :cond_65
    const-string v15, "webapk_dex_version.txt"

    .line 15
    :try_start_67
    new-instance v8, Ljava/util/Scanner;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-virtual {v4, v15}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v8, v4}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_74} :catch_8b
    .catchall {:try_start_67 .. :try_end_74} :catchall_82

    .line 16
    :try_start_74
    invoke-virtual {v8}, Ljava/util/Scanner;->nextInt()I

    move-result v4
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_78} :catch_8c
    .catchall {:try_start_74 .. :try_end_78} :catchall_7e

    .line 17
    :try_start_78
    invoke-virtual {v8}, Ljava/util/Scanner;->close()V
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_7b} :catch_7c
    .catchall {:try_start_78 .. :try_end_7b} :catchall_7e

    goto :goto_8f

    :catch_7c
    nop

    goto :goto_8d

    :catchall_7e
    move-exception v0

    move-object/from16 v16, v8

    goto :goto_85

    :catchall_82
    move-exception v0

    const/16 v16, 0x0

    :goto_85
    if-eqz v16, :cond_8a

    .line 18
    :try_start_87
    invoke-virtual/range {v16 .. v16}, Ljava/util/Scanner;->close()V
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_8a} :catch_8a

    .line 19
    :catch_8a
    :cond_8a
    throw v0

    :catch_8b
    const/4 v8, 0x0

    :catch_8c
    const/4 v4, -0x1

    :goto_8d
    if-eqz v8, :cond_92

    .line 20
    :goto_8f
    :try_start_8f
    invoke-virtual {v8}, Ljava/util/Scanner;->close()V
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_92} :catch_92

    .line 21
    :catch_92
    :cond_92
    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 22
    invoke-interface {v8, v11, v14}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 23
    invoke-interface {v8, v12, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 24
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_9f
    if-ne v4, v9, :cond_a2

    move v4, v13

    :cond_a2
    const-string v8, "dex"

    .line 25
    invoke-virtual {v1, v8, v5}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v10

    if-eq v4, v13, :cond_b2

    const-string v11, "Delete cached dex files."

    .line 26
    invoke-static {v6, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    invoke-static {v10}, Lb/a/b/b/i;->a(Ljava/io/File;)V

    .line 28
    :cond_b2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "webapk"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ".dex"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 29
    new-instance v6, Ljava/io/File;

    .line 30
    invoke-virtual {v0, v8, v5}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v8

    invoke-direct {v6, v8, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 31
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v10, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 32
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_ec

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_ec

    const/4 v11, 0x0

    .line 33
    invoke-static {v7, v6, v11}, Lb/a/b/b/i;->a(Ljava/lang/String;Ljava/io/File;Ljava/io/File;)Ljava/lang/ClassLoader;

    move-result-object v6

    if-eqz v6, :cond_ec

    move-object v4, v6

    goto/16 :goto_162

    .line 34
    :cond_ec
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_fc

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmp-long v6, v11, v13

    if-nez v6, :cond_149

    .line 35
    :cond_fc
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_109

    invoke-virtual {v10}, Ljava/io/File;->mkdirs()Z

    move-result v6

    if-nez v6, :cond_109

    goto :goto_15c

    .line 36
    :cond_109
    :try_start_109
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4
    :try_end_111
    .catch Ljava/io/IOException; {:try_start_109 .. :try_end_111} :catch_130

    .line 37
    :try_start_111
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_116
    .catch Ljava/io/IOException; {:try_start_111 .. :try_end_116} :catch_12e

    const/16 v6, 0x4000

    :try_start_118
    new-array v11, v6, [B

    .line 38
    :goto_11a
    invoke-virtual {v4, v11, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v12

    if-eq v12, v9, :cond_124

    .line 39
    invoke-virtual {v0, v11, v5, v12}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_11a

    .line 40
    :cond_124
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 41
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_12a
    .catch Ljava/io/IOException; {:try_start_118 .. :try_end_12a} :catch_12c

    const/4 v0, 0x1

    goto :goto_13f

    :catch_12c
    nop

    goto :goto_132

    :catch_12e
    const/4 v0, 0x0

    goto :goto_132

    :catch_130
    const/4 v0, 0x0

    const/4 v4, 0x0

    :goto_132
    if-eqz v4, :cond_139

    .line 42
    :try_start_134
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_137
    .catch Ljava/io/IOException; {:try_start_134 .. :try_end_137} :catch_138

    goto :goto_139

    :catch_138
    nop

    :cond_139
    :goto_139
    if-eqz v0, :cond_13e

    .line 43
    :try_start_13b
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_13e
    .catch Ljava/io/IOException; {:try_start_13b .. :try_end_13e} :catch_13e

    :catch_13e
    :cond_13e
    const/4 v0, 0x0

    :goto_13f
    if-nez v0, :cond_149

    const-string v0, "cr.DexLoader"

    const-string v4, "Could not extract dex from assets"

    .line 44
    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15c

    .line 45
    :cond_149
    new-instance v0, Ljava/io/File;

    const-string v4, "optimized"

    invoke-direct {v0, v10, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 46
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_15e

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_15e

    :goto_15c
    const/4 v4, 0x0

    goto :goto_162

    .line 47
    :cond_15e
    invoke-static {v7, v8, v0}, Lb/a/b/b/i;->a(Ljava/lang/String;Ljava/io/File;Ljava/io/File;)Ljava/lang/ClassLoader;

    move-result-object v4

    .line 48
    :goto_162
    sput-object v4, Lb/a/b/b/j;->a:Ljava/lang/ClassLoader;

    .line 49
    :cond_164
    sget-object v4, Lb/a/b/b/j;->a:Ljava/lang/ClassLoader;

    :goto_166
    if-nez v4, :cond_16f

    const-string v0, "Unable to create ClassLoader."

    .line 50
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return-object v2

    .line 51
    :cond_16f
    :try_start_16f
    invoke-virtual {v4, v7}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v4, 0x2

    new-array v6, v4, [Ljava/lang/Class;

    .line 52
    const-class v7, Landroid/content/Context;

    aput-object v7, v6, v5

    const-class v7, Landroid/os/Bundle;

    const/4 v8, 0x1

    aput-object v7, v6, v8

    .line 53
    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6
    :try_end_183
    .catch Ljava/lang/Exception; {:try_start_16f .. :try_end_183} :catch_1be

    if-nez v2, :cond_186

    goto :goto_199

    .line 54
    :cond_186
    :try_start_186
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v7, 0x80

    .line 55
    invoke-virtual {v0, v2, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 56
    iget v9, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_192
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_186 .. :try_end_192} :catch_193
    .catch Ljava/lang/Exception; {:try_start_186 .. :try_end_192} :catch_1be

    goto :goto_199

    :catch_193
    move-exception v0

    .line 57
    :try_start_194
    sget-object v2, La/a/a/a/a/a/a/g;->a:La/a/a/a/a/a/a/a;

    invoke-virtual {v2, v0}, La/a/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    .line 58
    :goto_199
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "small_icon_id"

    const v7, 0x7f040001

    .line 59
    invoke-virtual {v0, v2, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "host_browser_uid"

    .line 60
    invoke-virtual {v0, v2, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v1, v2, v5

    const/4 v4, 0x1

    aput-object v0, v2, v4

    .line 61
    invoke-virtual {v6, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 62
    new-instance v2, Lb/a/b/b/y;

    invoke-direct {v2, v1, v0, v9}, Lb/a/b/b/y;-><init>(Landroid/content/Context;Landroid/os/IBinder;I)V
    :try_end_1bd
    .catch Ljava/lang/Exception; {:try_start_194 .. :try_end_1bd} :catch_1be

    return-object v2

    :catch_1be
    move-exception v0

    const-string v2, "Unable to create WebApkServiceImpl."

    .line 63
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    sget-object v2, La/a/a/a/a/a/a/g;->a:La/a/a/a/a/a/a/a;

    invoke-virtual {v2, v0}, La/a/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    const/4 v2, 0x0

    return-object v2
.end method

.method public setTheme(I)V
    .registers 2

    invoke-static {}, Lb/a/a/a;->b()Z

    invoke-super {p0, p1}, Landroid/app/Service;->setTheme(I)V

    return-void
.end method
