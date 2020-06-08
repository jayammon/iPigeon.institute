.class public abstract La/a/a/a/a/a/a/g;
.super Ljava/lang/Object;
.source "ThrowableExtension.java"


# static fields
.field public static final a:La/a/a/a/a/a/a/a;


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "android.os.Build$VERSION"

    .line 1
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "SDK_INT"

    .line 2
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 3
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_13} :catch_17
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    move-object v0, v1

    goto :goto_24

    :catchall_15
    move-exception v1

    goto :goto_4a

    :catch_17
    move-exception v1

    .line 4
    :try_start_18
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Failed to retrieve value from android.os.Build$VERSION.SDK_INT due to the following exception."

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 5
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v2}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    :goto_24
    if-eqz v0, :cond_34

    .line 6
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x13

    if-lt v1, v2, :cond_34

    .line 7
    new-instance v1, La/a/a/a/a/a/a/f;

    invoke-direct {v1}, La/a/a/a/a/a/a/f;-><init>()V

    goto :goto_75

    :cond_34
    const-string v1, "com.google.devtools.build.android.desugar.runtime.twr_disable_mimic"

    .line 8
    invoke-static {v1}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_44

    .line 9
    new-instance v1, La/a/a/a/a/a/a/d;

    invoke-direct {v1}, La/a/a/a/a/a/a/d;-><init>()V

    goto :goto_75

    .line 10
    :cond_44
    new-instance v1, La/a/a/a/a/a/a/e;

    invoke-direct {v1}, La/a/a/a/a/a/a/e;-><init>()V
    :try_end_49
    .catchall {:try_start_18 .. :try_end_49} :catchall_15

    goto :goto_75

    .line 11
    :goto_4a
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "An error has occured when initializing the try-with-resources desuguring strategy. The default strategy "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v4, La/a/a/a/a/a/a/e;

    .line 12
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "will be used. The error is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 13
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 14
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 15
    new-instance v1, La/a/a/a/a/a/a/e;

    invoke-direct {v1}, La/a/a/a/a/a/a/e;-><init>()V

    .line 16
    :goto_75
    sput-object v1, La/a/a/a/a/a/a/g;->a:La/a/a/a/a/a/a/a;

    if-nez v0, :cond_7a

    goto :goto_7d

    .line 17
    :cond_7a
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    :goto_7d
    return-void
.end method
