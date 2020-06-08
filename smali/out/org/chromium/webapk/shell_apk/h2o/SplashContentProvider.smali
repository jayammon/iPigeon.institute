.class public Lorg/chromium/webapk/shell_apk/h2o/SplashContentProvider;
.super Landroid/content/ContentProvider;
.source "SplashContentProvider.java"

# interfaces
.implements Landroid/content/ContentProvider$PipeDataWriter;


# static fields
.field public static b:Landroid/graphics/Bitmap$CompressFormat;

.field public static c:Ljava/util/concurrent/atomic/AtomicReference;


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lorg/chromium/webapk/shell_apk/h2o/SplashContentProvider;->c:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;[BLandroid/graphics/Bitmap$CompressFormat;II)V
    .registers 7

    const-string v0, "org.chromium.webapk.shell_apk"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 2
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "org.chromium.webapk.shell_apk.splash_width"

    .line 3
    invoke-interface {p0, v0, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string p3, "org.chromium.webapk.shell_apk.splash_height"

    .line 4
    invoke-interface {p0, p3, p4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 5
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 6
    sput-object p2, Lorg/chromium/webapk/shell_apk/h2o/SplashContentProvider;->b:Landroid/graphics/Bitmap$CompressFormat;

    .line 7
    invoke-static {p1}, Lorg/chromium/webapk/shell_apk/h2o/SplashContentProvider;->a([B)[B

    return-void
.end method

.method public static a([B)[B
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_b

    .line 8
    new-instance v1, Lb/a/b/b/B/f;

    sget-object v2, Lb/a/b/b/B/e;->a:Ljava/lang/Runnable;

    invoke-direct {v1, p0, v2}, Lb/a/b/b/B/f;-><init>([BLjava/lang/Runnable;)V

    goto :goto_c

    :cond_b
    move-object v1, v0

    .line 9
    :goto_c
    sget-object p0, Lorg/chromium/webapk/shell_apk/h2o/SplashContentProvider;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lb/a/b/b/B/f;

    if-nez p0, :cond_17

    return-object v0

    .line 10
    :cond_17
    iget-object v1, p0, Lb/a/b/b/B/f;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 11
    iget-object p0, p0, Lb/a/b/b/B/f;->a:[B

    return-object p0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 4

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 5

    if-eqz p1, :cond_43

    .line 1
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/chromium/webapk/shell_apk/h2o/SplashContentProvider;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_43

    .line 2
    sget-object p1, Lorg/chromium/webapk/shell_apk/h2o/SplashContentProvider;->b:Landroid/graphics/Bitmap$CompressFormat;

    if-nez p1, :cond_31

    .line 3
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 4
    invoke-static {p1}, Lb/a/b/b/z;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const/4 v0, -0x1

    const-string v1, "org.chromium.webapk.shell_apk.splash_width"

    .line 5
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "org.chromium.webapk.shell_apk.splash_height"

    .line 6
    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 7
    invoke-static {v1, p1}, Lb/a/b/b/B/g;->a(II)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object p1

    sput-object p1, Lorg/chromium/webapk/shell_apk/h2o/SplashContentProvider;->b:Landroid/graphics/Bitmap$CompressFormat;

    .line 8
    :cond_31
    sget-object p1, Lorg/chromium/webapk/shell_apk/h2o/SplashContentProvider;->b:Landroid/graphics/Bitmap$CompressFormat;

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    if-ne p1, v0, :cond_3a

    const-string p1, "image/png"

    return-object p1

    .line 9
    :cond_3a
    sget-object p1, Lorg/chromium/webapk/shell_apk/h2o/SplashContentProvider;->b:Landroid/graphics/Bitmap$CompressFormat;

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    if-ne p1, v0, :cond_43

    const-string p1, "image/jpeg"

    return-object p1

    :cond_43
    const/4 p1, 0x0

    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 3

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public onCreate()Z
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".SplashContentProvider"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/cached_splash_image"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lorg/chromium/webapk/shell_apk/h2o/SplashContentProvider;->a:Ljava/lang/String;

    const/4 v0, 0x1

    return v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 9

    if-eqz p1, :cond_19

    .line 1
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lorg/chromium/webapk/shell_apk/h2o/SplashContentProvider;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p0

    .line 2
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProvider;->openPipeHelper(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;Landroid/content/ContentProvider$PipeDataWriter;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    return-object p1

    :cond_19
    const/4 p1, 0x0

    return-object p1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 6

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public writeDataToPipe(Landroid/os/ParcelFileDescriptor;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;)V
    .registers 8

    .line 1
    check-cast p5, Ljava/lang/Void;

    .line 2
    :try_start_2
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_b} :catch_79

    const/4 p1, 0x0

    .line 3
    :try_start_c
    invoke-static {p1}, Lorg/chromium/webapk/shell_apk/h2o/SplashContentProvider;->a([B)[B

    move-result-object p3

    if-eqz p3, :cond_16

    .line 4
    invoke-virtual {p2, p3}, Ljava/io/OutputStream;->write([B)V

    goto :goto_64

    .line 5
    :cond_16
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    .line 6
    invoke-static {p3}, Lb/a/b/b/z;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p4

    const/4 p5, -0x1

    const-string v0, "org.chromium.webapk.shell_apk.splash_width"

    .line 7
    invoke-interface {p4, v0, p5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "org.chromium.webapk.shell_apk.splash_height"

    .line 8
    invoke-interface {p4, v1, p5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p4

    if-lez v0, :cond_4f

    if-gtz p4, :cond_34

    goto :goto_4f

    .line 9
    :cond_34
    invoke-static {p3}, Lb/a/b/b/B/g;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    const/high16 p3, 0x40000000    # 2.0f

    .line 10
    invoke-static {v0, p3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p5

    .line 11
    invoke-static {p4, p3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    .line 12
    invoke-virtual {p1, p5, p3}, Landroid/view/View;->measure(II)V

    const/4 p3, 0x0

    .line 13
    invoke-virtual {p1, p3, p3, v0, p4}, Landroid/view/View;->layout(IIII)V

    const/high16 p3, 0xc00000

    .line 14
    invoke-static {p1, p3}, Lb/a/b/b/B/g;->a(Landroid/view/View;I)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_4f
    :goto_4f
    if-eqz p1, :cond_64

    .line 15
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p4

    .line 16
    invoke-static {p3, p4}, Lb/a/b/b/B/g;->a(II)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object p3

    sput-object p3, Lorg/chromium/webapk/shell_apk/h2o/SplashContentProvider;->b:Landroid/graphics/Bitmap$CompressFormat;

    const/16 p4, 0x64

    .line 17
    invoke-virtual {p1, p3, p4, p2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 18
    :cond_64
    :goto_64
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V
    :try_end_67
    .catchall {:try_start_c .. :try_end_67} :catchall_6b

    .line 19
    :try_start_67
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_6a} :catch_79

    goto :goto_79

    :catchall_6b
    move-exception p1

    .line 20
    :try_start_6c
    throw p1
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_6d

    :catchall_6d
    move-exception p3

    .line 21
    :try_start_6e
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_71
    .catchall {:try_start_6e .. :try_end_71} :catchall_72

    goto :goto_78

    :catchall_72
    move-exception p2

    .line 22
    :try_start_73
    sget-object p4, La/a/a/a/a/a/a/g;->a:La/a/a/a/a/a/a/a;

    invoke-virtual {p4, p1, p2}, La/a/a/a/a/a/a/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 23
    :goto_78
    throw p3
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_79} :catch_79

    :catch_79
    :goto_79
    return-void
.end method
