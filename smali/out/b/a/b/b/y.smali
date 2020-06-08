.class public Lb/a/b/b/y;
.super Lb/a/b/a/b/a;
.source "WebApkServiceImplWrapper.java"


# instance fields
.field public final a:I

.field public b:Landroid/os/IBinder;

.field public c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/IBinder;I)V
    .registers 4

    .line 1
    invoke-direct {p0}, Lb/a/b/a/b/a;-><init>()V

    .line 2
    iput-object p1, p0, Lb/a/b/b/y;->c:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lb/a/b/b/y;->b:Landroid/os/IBinder;

    .line 4
    iput p3, p0, Lb/a/b/b/y;->a:I

    return-void
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 14

    const-string v0, "TRANSACTION_notifyNotification"

    .line 1
    iget-object v1, p0, Lb/a/b/b/y;->b:Landroid/os/IBinder;

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-nez v1, :cond_9

    goto :goto_2a

    .line 2
    :cond_9
    :try_start_9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 3
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_23} :catch_24

    goto :goto_2a

    :catch_24
    move-exception v0

    .line 5
    sget-object v1, La/a/a/a/a/a/a/g;->a:La/a/a/a/a/a/a/a;

    invoke-virtual {v1, v0}, La/a/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :goto_2a
    if-ne p1, v2, :cond_5a

    .line 6
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 7
    iget v1, p0, Lb/a/b/b/y;->a:I

    if-ne v1, v0, :cond_39

    .line 8
    invoke-super {p0, p1, p2, p3, p4}, Lb/a/b/a/b/a;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 9
    :cond_39
    new-instance p1, Landroid/os/RemoteException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unauthorized caller "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " does not match expected host="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lb/a/b/b/y;->a:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_5a
    iget-object v0, p0, Lb/a/b/b/y;->b:Landroid/os/IBinder;

    const/4 v1, 0x0

    if-nez v0, :cond_60

    goto :goto_a7

    .line 11
    :cond_60
    :try_start_60
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "onTransact"

    const/4 v4, 0x4

    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v1

    const-class v6, Landroid/os/Parcel;

    aput-object v6, v5, v3

    const-class v6, Landroid/os/Parcel;

    const/4 v7, 0x2

    aput-object v6, v5, v7

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x3

    aput-object v6, v5, v8

    invoke-virtual {v0, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 12
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 13
    iget-object v2, p0, Lb/a/b/b/y;->b:Landroid/os/IBinder;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v1

    aput-object p2, v4, v3

    aput-object p3, v4, v7

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v8

    invoke-virtual {v0, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_a0} :catch_a1

    goto :goto_a7

    :catch_a1
    move-exception p1

    .line 14
    sget-object p2, La/a/a/a/a/a/a/g;->a:La/a/a/a/a/a/a/a;

    invoke-virtual {p2, p1}, La/a/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :goto_a7
    return v1
.end method
