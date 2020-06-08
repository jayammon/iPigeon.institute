.class public final La/a/a/a/a/a/a/b;
.super Ljava/lang/ref/WeakReference;
.source "ThrowableExtension.java"


# instance fields
.field public final a:I


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;Ljava/lang/ref/ReferenceQueue;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    if-eqz p1, :cond_c

    .line 2
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, La/a/a/a/a/a/a/b;->a:I

    return-void

    .line 3
    :cond_c
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "The referent cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_23

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, La/a/a/a/a/a/a/b;

    if-eq v1, v2, :cond_c

    goto :goto_23

    :cond_c
    const/4 v1, 0x1

    if-ne p0, p1, :cond_10

    return v1

    .line 2
    :cond_10
    check-cast p1, La/a/a/a/a/a/a/b;

    .line 3
    iget v2, p0, La/a/a/a/a/a/a/b;->a:I

    iget v3, p1, La/a/a/a/a/a/a/b;->a:I

    if-ne v2, v3, :cond_23

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-ne v2, p1, :cond_23

    const/4 v0, 0x1

    :cond_23
    :goto_23
    return v0
.end method

.method public hashCode()I
    .registers 2

    .line 1
    iget v0, p0, La/a/a/a/a/a/a/b;->a:I

    return v0
.end method
