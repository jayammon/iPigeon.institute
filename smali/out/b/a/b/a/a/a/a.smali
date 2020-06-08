.class public abstract Lb/a/b/a/a/a/a;
.super Landroid/os/Binder;
.source "IIdentityService.java"

# interfaces
.implements Lb/a/b/a/a/a/b;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "org.chromium.webapk.lib.common.identity_service.IIdentityService"

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
    .registers 8

    const/4 v0, 0x1

    const-string v1, "org.chromium.webapk.lib.common.identity_service.IIdentityService"

    if-eq p1, v0, :cond_13

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_f

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 2
    :cond_f
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 3
    :cond_13
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4
    move-object p1, p0

    check-cast p1, Lb/a/b/b/n;

    .line 5
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object p2

    .line 6
    :try_start_1d
    iget-object p1, p1, Lb/a/b/b/n;->a:Lorg/chromium/webapk/shell_apk/IdentityService;

    .line 7
    invoke-virtual {p1}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 8
    invoke-static {p1}, Lb/a/b/b/m;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1
    :try_end_27
    .catchall {:try_start_1d .. :try_end_27} :catchall_31

    .line 9
    invoke-static {p2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 10
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 11
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    :catchall_31
    move-exception p1

    .line 12
    invoke-static {p2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw p1
.end method
