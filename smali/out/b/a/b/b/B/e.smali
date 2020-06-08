.class public final synthetic Lb/a/b/b/B/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final a:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lb/a/b/b/B/e;

    invoke-direct {v0}, Lb/a/b/b/B/e;-><init>()V

    sput-object v0, Lb/a/b/b/B/e;->a:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lorg/chromium/webapk/shell_apk/h2o/SplashContentProvider;->a([B)[B

    return-void
.end method
