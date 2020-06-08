.class public final La/a/a/a/a/a/a/f;
.super La/a/a/a/a/a/a/a;
.source "ThrowableExtension.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, La/a/a/a/a/a/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .registers 2

    .line 2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .registers 3

    .line 1
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    return-void
.end method
