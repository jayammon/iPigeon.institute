.class public Lb/a/b/b/d;
.super Ljava/lang/Object;
.source "ChooseHostBrowserDialog.java"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5

    .line 1
    check-cast p1, Lb/a/b/b/f;

    check-cast p2, Lb/a/b/b/f;

    .line 2
    iget-boolean v0, p1, Lb/a/b/b/f;->d:Z

    iget-boolean v1, p2, Lb/a/b/b/f;->d:Z

    if-ne v0, v1, :cond_13

    .line 3
    iget-object p1, p1, Lb/a/b/b/f;->a:Ljava/lang/String;

    iget-object p2, p2, Lb/a/b/b/f;->a:Ljava/lang/String;

    .line 4
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    goto :goto_18

    :cond_13
    if-eqz v0, :cond_17

    const/4 p1, -0x1

    goto :goto_18

    :cond_17
    const/4 p1, 0x1

    :goto_18
    return p1
.end method
