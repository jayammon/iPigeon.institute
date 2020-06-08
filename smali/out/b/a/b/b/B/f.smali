.class public Lb/a/b/b/B/f;
.super Ljava/lang/Object;
.source "SplashContentProvider.java"


# instance fields
.field public a:[B

.field public b:Landroid/os/Handler;


# direct methods
.method public constructor <init>([BLjava/lang/Runnable;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lb/a/b/b/B/f;->a:[B

    .line 3
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lb/a/b/b/B/f;->b:Landroid/os/Handler;

    const-wide/16 v0, 0x2710

    .line 4
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
