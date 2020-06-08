.class public final La/a/a/a/a/a/a/c;
.super Ljava/lang/Object;
.source "ThrowableExtension.java"


# instance fields
.field public final a:Ljava/util/concurrent/ConcurrentHashMap;

.field public final b:Ljava/lang/ref/ReferenceQueue;


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/high16 v1, 0x3f400000    # 0.75f

    const/16 v2, 0xa

    const/16 v3, 0x10

    invoke-direct {v0, v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, La/a/a/a/a/a/a/c;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, La/a/a/a/a/a/a/c;->b:Ljava/lang/ref/ReferenceQueue;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;Z)Ljava/util/List;
    .registers 6

    .line 1
    :goto_0
    iget-object v0, p0, La/a/a/a/a/a/a/c;->b:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 2
    iget-object v1, p0, La/a/a/a/a/a/a/c;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3
    :cond_e
    new-instance v0, La/a/a/a/a/a/a/b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, La/a/a/a/a/a/a/b;-><init>(Ljava/lang/Throwable;Ljava/lang/ref/ReferenceQueue;)V

    .line 4
    iget-object v1, p0, La/a/a/a/a/a/a/c;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez p2, :cond_1f

    return-object v0

    :cond_1f
    if-eqz v0, :cond_22

    return-object v0

    .line 5
    :cond_22
    new-instance p2, Ljava/util/Vector;

    const/4 v0, 0x2

    invoke-direct {p2, v0}, Ljava/util/Vector;-><init>(I)V

    .line 6
    iget-object v0, p0, La/a/a/a/a/a/a/c;->a:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, La/a/a/a/a/a/a/b;

    iget-object v2, p0, La/a/a/a/a/a/a/c;->b:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1, p1, v2}, La/a/a/a/a/a/a/b;-><init>(Ljava/lang/Throwable;Ljava/lang/ref/ReferenceQueue;)V

    invoke-virtual {v0, v1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_3a

    move-object p1, p2

    :cond_3a
    return-object p1
.end method
