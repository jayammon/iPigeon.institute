.class public abstract Lb/a/b/b/B/g;
.super Ljava/lang/Object;
.source "SplashUtils.java"


# direct methods
.method public static a(II)Landroid/graphics/Bitmap$CompressFormat;
    .registers 2

    mul-int p0, p0, p1

    const/high16 p1, 0x100000

    if-gt p0, p1, :cond_9

    .line 42
    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_b

    .line 43
    :cond_9
    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    :goto_b
    return-object p0
.end method

.method public static a(Landroid/view/View;I)Landroid/graphics/Bitmap;
    .registers 6

    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    if-eqz v0, :cond_42

    if-nez v1, :cond_d

    goto :goto_42

    :cond_d
    const/high16 v2, 0x3f800000    # 1.0f

    int-to-float p1, p1

    mul-int/lit8 v3, v0, 0x4

    mul-int v3, v3, v1

    int-to-float v3, v3

    div-float/2addr p1, v3

    .line 33
    invoke-static {v2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    int-to-float v0, v0

    mul-float v0, v0, p1

    .line 34
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v1, v1

    mul-float v1, v1, p1

    .line 35
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 36
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 37
    invoke-virtual {v2, p1, p1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 38
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 39
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 40
    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 41
    invoke-virtual {p0, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-object p1

    :cond_42
    :goto_42
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Landroid/content/Context;)Landroid/view/View;
    .registers 18

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    :try_start_5
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    const v4, 0x7f040002

    if-lt v2, v3, :cond_13

    .line 3
    invoke-virtual {v0, v4, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_17

    .line 4
    :cond_13
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_17
    if-eqz v2, :cond_20

    .line 5
    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_1f
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_1f} :catch_20

    goto :goto_21

    :catch_20
    :cond_20
    move-object v2, v1

    :goto_21
    const/high16 v3, 0x7f020000

    .line 6
    invoke-static {v0, v3}, Lb/a/b/b/A;->a(Landroid/content/res/Resources;I)I

    move-result v3

    .line 7
    new-instance v4, Landroid/widget/FrameLayout;

    move-object/from16 v5, p0

    invoke-direct {v4, v5}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const v6, 0x7f080006

    .line 8
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x437f0000    # 255.0f

    div-float/2addr v6, v7

    .line 10
    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v7

    .line 11
    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v7

    const v7, 0x414eb852    # 12.92f

    const-wide v10, 0x4003333340000000L    # 2.4000000953674316

    const v12, 0x3f870a3d    # 1.055f

    const v13, 0x3d6147ae    # 0.055f

    const v14, 0x3d20e411    # 0.03928f

    cmpg-float v15, v6, v14

    if-gez v15, :cond_62

    div-float/2addr v6, v7

    move-object/from16 v16, v2

    goto :goto_6c

    :cond_62
    add-float/2addr v6, v13

    div-float/2addr v6, v12

    move-object/from16 v16, v2

    float-to-double v1, v6

    .line 12
    invoke-static {v1, v2, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v6, v1

    :goto_6c
    cmpg-float v1, v8, v14

    if-gez v1, :cond_72

    div-float/2addr v8, v7

    goto :goto_7a

    :cond_72
    add-float/2addr v8, v13

    div-float/2addr v8, v12

    float-to-double v1, v8

    .line 13
    invoke-static {v1, v2, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v8, v1

    :goto_7a
    cmpg-float v1, v9, v14

    if-gez v1, :cond_80

    div-float/2addr v9, v7

    goto :goto_88

    :cond_80
    add-float/2addr v9, v13

    div-float/2addr v9, v12

    float-to-double v1, v9

    .line 14
    invoke-static {v1, v2, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v9, v1

    :goto_88
    const v1, 0x3e59b3d0    # 0.2126f

    mul-float v6, v6, v1

    const v1, 0x3f371759    # 0.7152f

    mul-float v8, v8, v1

    add-float/2addr v8, v6

    const v1, 0x3d93dd98    # 0.0722f

    mul-float v9, v9, v1

    add-float/2addr v9, v8

    const v1, 0x3f866666    # 1.05f

    const v2, 0x3d4ccccd    # 0.05f

    add-float/2addr v9, v2

    div-float/2addr v1, v9

    .line 15
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x40400000    # 3.0f

    const/4 v6, 0x1

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_ae

    const/4 v1, 0x1

    goto :goto_af

    :cond_ae
    const/4 v1, 0x0

    .line 16
    :goto_af
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v7, 0x7f060003

    if-eqz v16, :cond_d8

    .line 17
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    move-object/from16 v9, v16

    .line 18
    invoke-virtual {v9, v8}, Landroid/graphics/Bitmap;->getScaledWidth(Landroid/util/DisplayMetrics;)I

    move-result v10

    invoke-virtual {v9, v8}, Landroid/graphics/Bitmap;->getScaledHeight(Landroid/util/DisplayMetrics;)I

    move-result v8

    invoke-static {v10, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    const v10, 0x7f030008

    .line 19
    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    if-ge v8, v2, :cond_d4

    goto :goto_da

    :cond_d4
    const v7, 0x7f060002

    goto :goto_da

    :cond_d8
    move-object/from16 v9, v16

    .line 20
    :goto_da
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {v2, v7, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    const v6, 0x7f050006

    .line 21
    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 22
    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v1, :cond_10c

    .line 23
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020006

    .line 24
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x17

    if-lt v5, v7, :cond_105

    const/4 v5, 0x0

    .line 25
    invoke-virtual {v0, v1, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    goto :goto_109

    .line 26
    :cond_105
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 27
    :goto_109
    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_10c
    const v0, 0x7f050004

    .line 28
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-nez v0, :cond_118

    goto :goto_11b

    .line 29
    :cond_118
    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 30
    :goto_11b
    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    return-object v4
.end method
