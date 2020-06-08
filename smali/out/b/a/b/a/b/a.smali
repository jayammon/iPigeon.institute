.class public abstract Lb/a/b/a/b/a;
.super Landroid/os/Binder;
.source "IWebApkApi.java"

# interfaces
.implements Lb/a/b/a/b/b;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "org.chromium.webapk.lib.runtime_library.IWebApkApi"

    .line 2
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 15

    const-string v0, "cr_WebApkService"

    const-string v1, "org.chromium.webapk.lib.runtime_library.IWebApkApi"

    const/4 v2, 0x1

    if-eq p1, v2, :cond_f2

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-eq p1, v5, :cond_66

    if-eq p1, v4, :cond_54

    const/4 v4, 0x4

    if-eq p1, v4, :cond_45

    const/4 v3, 0x5

    if-eq p1, v3, :cond_22

    const v0, 0x5f4e5446

    if-eq p1, v0, :cond_1e

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 2
    :cond_1e
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    .line 3
    :cond_22
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_39

    .line 7
    sget-object p1, Landroid/app/Notification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Notification;

    .line 8
    :cond_39
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    const-string p1, "Should NOT reach WebApkServiceImplWrapper#notifyNotificationWithChannel(String, int, Notification, String)"

    .line 9
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 11
    :cond_45
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    const-string p1, "Should NOT reach WebApkServiceImplWrapper#notificationPermissionEnabled()."

    .line 12
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 14
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 15
    :cond_54
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 17
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    const-string p1, "Should NOT reach WebApkServiceImplWrapper#cancelNotification(String, int)."

    .line 18
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 20
    :cond_66
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 22
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 23
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_80

    .line 24
    sget-object v0, Landroid/app/Notification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/Notification;

    goto :goto_81

    :cond_80
    const/4 p2, 0x0

    .line 25
    :goto_81
    move-object v0, p0

    check-cast v0, Lb/a/b/b/y;

    .line 26
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1a

    if-lt v1, v6, :cond_b6

    const-string v7, "default_channel_id"

    if-lt v1, v6, :cond_a9

    .line 27
    iget-object v1, v0, Lb/a/b/b/y;->c:Landroid/content/Context;

    const-string v6, "notification"

    .line 28
    invoke-virtual {v1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 29
    new-instance v6, Landroid/app/NotificationChannel;

    iget-object v8, v0, Lb/a/b/b/y;->c:Landroid/content/Context;

    const v9, 0x7f080007

    .line 30
    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 31
    invoke-direct {v6, v7, v8, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 32
    invoke-virtual {v1, v6}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 33
    :cond_a9
    iget-object v1, v0, Lb/a/b/b/y;->c:Landroid/content/Context;

    .line 34
    invoke-static {v1, p2}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object p2

    .line 35
    invoke-virtual {p2, v7}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 36
    invoke-virtual {p2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p2

    .line 37
    :cond_b6
    iget-object v1, v0, Lb/a/b/b/y;->b:Landroid/os/IBinder;

    if-nez v1, :cond_bb

    goto :goto_ee

    .line 38
    :cond_bb
    :try_start_bb
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v6, "notifyNotification"

    new-array v7, v4, [Ljava/lang/Class;

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v3

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v2

    const-class v8, Landroid/app/Notification;

    aput-object v8, v7, v5

    invoke-virtual {v1, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 40
    iget-object v0, v0, Lb/a/b/b/y;->b:Landroid/os/IBinder;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v2

    aput-object p2, v4, v5

    invoke-virtual {v1, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e7
    .catch Ljava/lang/Exception; {:try_start_bb .. :try_end_e7} :catch_e8

    goto :goto_ee

    :catch_e8
    move-exception p1

    .line 41
    sget-object p2, La/a/a/a/a/a/a/g;->a:La/a/a/a/a/a/a/a;

    invoke-virtual {p2, p1}, La/a/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    .line 42
    :goto_ee
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 43
    :cond_f2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    const-string p1, "Should NOT reach WebApkServiceImplWrapper#getSmallIconId()."

    .line 44
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    .line 45
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 46
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2
.end method
