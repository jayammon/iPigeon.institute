.class public final La/a/a/a/a/a/a/d;
.super La/a/a/a/a/a/a/a;
.source "ThrowableExtension.java"


# instance fields
.field public final a:La/a/a/a/a/a/a/c;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, La/a/a/a/a/a/a/a;-><init>()V

    .line 2
    new-instance v0, La/a/a/a/a/a/a/c;

    invoke-direct {v0}, La/a/a/a/a/a/a/c;-><init>()V

    iput-object v0, p0, La/a/a/a/a/a/a/d;->a:La/a/a/a/a/a/a/c;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .registers 6

    .line 4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 5
    iget-object v0, p0, La/a/a/a/a/a/a/d;->a:La/a/a/a/a/a/a/c;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, La/a/a/a/a/a/a/c;->a(Ljava/lang/Throwable;Z)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_d

    return-void

    .line 6
    :cond_d
    monitor-enter p1

    .line 7
    :try_start_e
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    .line 8
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Suppressed: "

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_12

    .line 10
    :cond_29
    monitor-exit p1

    return-void

    :catchall_2b
    move-exception v0

    monitor-exit p1
    :try_end_2d
    .catchall {:try_start_e .. :try_end_2d} :catchall_2b

    goto :goto_2f

    :goto_2e
    throw v0

    :goto_2f
    goto :goto_2e
.end method

.method public a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .registers 5

    if-eq p2, p1, :cond_17

    if-eqz p2, :cond_f

    .line 1
    iget-object v0, p0, La/a/a/a/a/a/a/d;->a:La/a/a/a/a/a/a/c;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, La/a/a/a/a/a/a/c;->a(Ljava/lang/Throwable;Z)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 2
    :cond_f
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "The suppressed exception cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Self suppression is not allowed."

    invoke-direct {p1, v0, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method
