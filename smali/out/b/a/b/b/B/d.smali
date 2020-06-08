.class public Lb/a/b/b/B/d;
.super Landroid/os/AsyncTask;
.source "SplashActivity.java"


# instance fields
.field public final synthetic a:Landroid/graphics/Bitmap;

.field public final synthetic b:Lorg/chromium/webapk/shell_apk/h2o/SplashActivity;


# direct methods
.method public constructor <init>(Lorg/chromium/webapk/shell_apk/h2o/SplashActivity;Landroid/graphics/Bitmap;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lb/a/b/b/B/d;->b:Lorg/chromium/webapk/shell_apk/h2o/SplashActivity;

    iput-object p2, p0, Lb/a/b/b/B/d;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 1
    check-cast p1, [Ljava/lang/Void;

    .line 2
    :try_start_2
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_7} :catch_38

    .line 3
    :try_start_7
    iget-object v0, p0, Lb/a/b/b/B/d;->a:Landroid/graphics/Bitmap;

    .line 4
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lb/a/b/b/B/d;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 5
    invoke-static {v0, v1}, Lb/a/b/b/B/g;->a(II)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lb/a/b/b/B/d;->a:Landroid/graphics/Bitmap;

    const/16 v2, 0x64

    invoke-virtual {v1, v0, v2, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 7
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0
    :try_end_26
    .catchall {:try_start_7 .. :try_end_26} :catchall_2a

    .line 8
    :try_start_26
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_38

    goto :goto_39

    :catchall_2a
    move-exception v0

    .line 9
    :try_start_2b
    throw v0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2c

    :catchall_2c
    move-exception v1

    .line 10
    :try_start_2d
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_31

    goto :goto_37

    :catchall_31
    move-exception p1

    .line 11
    :try_start_32
    sget-object v2, La/a/a/a/a/a/a/g;->a:La/a/a/a/a/a/a/a;

    invoke-virtual {v2, v0, p1}, La/a/a/a/a/a/a/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 12
    :goto_37
    throw v1
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_38} :catch_38

    :catch_38
    const/4 v0, 0x0

    :goto_39
    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .registers 4

    .line 1
    check-cast p1, Landroid/util/Pair;

    .line 2
    iget-object v0, p0, Lb/a/b/b/B/d;->b:Lorg/chromium/webapk/shell_apk/h2o/SplashActivity;

    const/4 v1, 0x0

    .line 3
    iput-object v1, v0, Lorg/chromium/webapk/shell_apk/h2o/SplashActivity;->b:Landroid/os/AsyncTask;

    if-nez p1, :cond_a

    goto :goto_e

    .line 4
    :cond_a
    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, [B

    :goto_e
    if-nez p1, :cond_13

    .line 5
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_17

    .line 6
    :cond_13
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Bitmap$CompressFormat;

    .line 7
    :goto_17
    invoke-virtual {v0, v1, p1}, Lorg/chromium/webapk/shell_apk/h2o/SplashActivity;->a([BLandroid/graphics/Bitmap$CompressFormat;)V

    return-void
.end method
