.class public Lcom/fyber/utils/h;
.super Ljava/lang/Object;
.source "HostInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fyber/utils/h$a;,
        Lcom/fyber/utils/h$b;,
        Lcom/fyber/utils/h$c;,
        Lcom/fyber/utils/h$d;,
        Lcom/fyber/utils/h$e;
    }
.end annotation


# static fields
.field private static a:Lcom/fyber/utils/h;


# instance fields
.field private b:Landroid/view/WindowManager;

.field private c:Landroid/net/ConnectivityManager;

.field private d:I

.field private e:I

.field private f:F

.field private g:F

.field private h:Z

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Z

.field private o:Ljava/lang/String;

.field private p:Landroid/location/LocationManager;

.field private q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private r:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-boolean v2, p0, Lcom/fyber/utils/h;->h:Z

    .line 87
    iput-boolean v1, p0, Lcom/fyber/utils/h;->n:Z

    .line 94
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/fyber/utils/h;->r:Ljava/util/concurrent/CountDownLatch;

    .line 104
    if-nez p1, :cond_0

    .line 105
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "A context is required to initialize HostInfo"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v0, v3, :cond_9

    .line 110
    new-instance v0, Lcom/fyber/utils/h$1;

    const-string v3, "AdvertisingIdRetriever"

    invoke-direct {v0, p0, v3, p1}, Lcom/fyber/utils/h$1;-><init>(Lcom/fyber/utils/h;Ljava/lang/String;Landroid/content/Context;)V

    .line 114
    invoke-virtual {v0}, Lcom/fyber/utils/h$1;->start()V

    .line 1162
    :goto_0
    const-string v0, ""

    iput-object v0, p0, Lcom/fyber/utils/h;->j:Ljava/lang/String;

    .line 1163
    const-string v0, ""

    iput-object v0, p0, Lcom/fyber/utils/h;->i:Ljava/lang/String;

    .line 1165
    const-string v0, "phone"

    .line 1166
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1168
    :try_start_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/fyber/utils/h;->j:Ljava/lang/String;

    .line 1169
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fyber/utils/h;->i:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    .line 2153
    :goto_1
    :try_start_1
    const-string v0, "connectivity"

    .line 2154
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/fyber/utils/h;->c:Landroid/net/ConnectivityManager;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2175
    :goto_2
    iget v0, p0, Lcom/fyber/utils/h;->e:I

    if-nez v0, :cond_1

    .line 2176
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2177
    const-string v0, "window"

    .line 2178
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/fyber/utils/h;->b:Landroid/view/WindowManager;

    .line 2179
    iget-object v0, p0, Lcom/fyber/utils/h;->b:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 2180
    iget v0, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/fyber/utils/h;->d:I

    .line 2181
    iget v0, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/fyber/utils/h;->e:I

    .line 2182
    iget v0, v3, Landroid/util/DisplayMetrics;->xdpi:F

    iput v0, p0, Lcom/fyber/utils/h;->f:F

    .line 2183
    iget v0, v3, Landroid/util/DisplayMetrics;->ydpi:F

    iput v0, p0, Lcom/fyber/utils/h;->g:F

    .line 2189
    :cond_1
    :try_start_2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2190
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 2191
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v0, p0, Lcom/fyber/utils/h;->k:Ljava/lang/String;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 3144
    :goto_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 3145
    invoke-virtual {p0}, Lcom/fyber/utils/h;->d()I

    move-result v3

    .line 3147
    if-eqz v3, :cond_2

    if-ne v3, v5, :cond_3

    :cond_2
    iget v4, v0, Landroid/content/res/Configuration;->orientation:I

    if-eq v4, v5, :cond_5

    :cond_3
    if-eq v3, v1, :cond_4

    const/4 v4, 0x3

    if-ne v3, v4, :cond_a

    :cond_4
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_a

    :cond_5
    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/fyber/utils/h;->h:Z

    .line 3302
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 3303
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_6

    .line 3305
    const-string v0, "gps"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3306
    const-string v0, "passive"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3308
    :cond_6
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_7

    .line 3310
    const-string v0, "network"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3312
    :cond_7
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 3313
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/fyber/utils/h;->p:Landroid/location/LocationManager;

    .line 3314
    iput-object v1, p0, Lcom/fyber/utils/h;->q:Ljava/util/List;

    .line 127
    :cond_8
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fyber/utils/h;->l:Ljava/lang/String;

    .line 128
    return-void

    .line 116
    :cond_9
    invoke-direct {p0, p1}, Lcom/fyber/utils/h;->b(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 2193
    :catch_0
    move-exception v0

    const-string v0, ""

    iput-object v0, p0, Lcom/fyber/utils/h;->k:Ljava/lang/String;

    goto :goto_3

    :cond_a
    move v0, v2

    .line 3147
    goto :goto_4

    :catch_1
    move-exception v0

    goto/16 :goto_2

    :catch_2
    move-exception v0

    goto/16 :goto_1
.end method

.method static synthetic a(Lcom/fyber/utils/h;)I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/fyber/utils/h;->d:I

    return v0
.end method

.method public static a(Landroid/content/Context;)Lcom/fyber/utils/h;
    .locals 2

    .prologue
    .line 60
    sget-object v0, Lcom/fyber/utils/h;->a:Lcom/fyber/utils/h;

    if-nez v0, :cond_1

    .line 61
    const-class v1, Lcom/fyber/utils/h;

    monitor-enter v1

    .line 62
    :try_start_0
    sget-object v0, Lcom/fyber/utils/h;->a:Lcom/fyber/utils/h;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Lcom/fyber/utils/h;

    invoke-direct {v0, p0}, Lcom/fyber/utils/h;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/fyber/utils/h;->a:Lcom/fyber/utils/h;

    .line 65
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    :cond_1
    sget-object v0, Lcom/fyber/utils/h;->a:Lcom/fyber/utils/h;

    return-object v0

    .line 65
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/fyber/utils/h;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/fyber/utils/h;->b(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic b(Lcom/fyber/utils/h;)I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/fyber/utils/h;->e:I

    return v0
.end method

.method private b(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 212
    :try_start_0
    const-string v0, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 214
    const-string v1, "getAdvertisingIdInfo"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 215
    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 217
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getId"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 218
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "isLimitAdTrackingEnabled"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 220
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fyber/utils/h;->m:Ljava/lang/String;

    .line 221
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/fyber/utils/h;->n:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/fyber/utils/h;->r:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 229
    return-void

    .line 223
    :catch_0
    move-exception v0

    .line 224
    const-string v1, "HostInfo"

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/fyber/utils/FyberLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 4241
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fyber/utils/h;->o:Ljava/lang/String;

    .line 4242
    iget-object v0, p0, Lcom/fyber/utils/h;->o:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 4243
    const-string v0, ""

    iput-object v0, p0, Lcom/fyber/utils/h;->o:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic c(Lcom/fyber/utils/h;)F
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/fyber/utils/h;->f:F

    return v0
.end method

.method static synthetic d(Lcom/fyber/utils/h;)F
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/fyber/utils/h;->g:F

    return v0
.end method

.method static synthetic e(Lcom/fyber/utils/h;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/fyber/utils/h;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic f(Lcom/fyber/utils/h;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/fyber/utils/h;->k()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static f()Z
    .locals 1

    .prologue
    .line 289
    const/16 v0, 0xe

    invoke-static {v0}, Lcom/fyber/utils/n;->a(I)Z

    move-result v0

    return v0
.end method

.method static synthetic g(Lcom/fyber/utils/h;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/fyber/utils/h;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/fyber/utils/h;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/fyber/utils/h;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i()Lcom/fyber/utils/h;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/fyber/utils/h;->a:Lcom/fyber/utils/h;

    return-object v0
.end method

.method static synthetic i(Lcom/fyber/utils/h;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 49
    .line 5198
    iget-object v0, p0, Lcom/fyber/utils/h;->c:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_1

    .line 5199
    iget-object v0, p0, Lcom/fyber/utils/h;->c:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 5200
    if-eqz v0, :cond_1

    .line 5201
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    .line 5202
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "wifi"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "cellular"

    goto :goto_0

    .line 5206
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method private j()Ljava/lang/String;
    .locals 4

    .prologue
    .line 233
    :try_start_0
    iget-object v0, p0, Lcom/fyber/utils/h;->r:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v2, 0x5

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    :goto_0
    iget-object v0, p0, Lcom/fyber/utils/h;->m:Ljava/lang/String;

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic j(Lcom/fyber/utils/h;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/fyber/utils/h;->l:Ljava/lang/String;

    return-object v0
.end method

.method private k()Ljava/lang/Boolean;
    .locals 4

    .prologue
    .line 253
    :try_start_0
    iget-object v0, p0, Lcom/fyber/utils/h;->r:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v2, 0x5

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    :goto_0
    iget-boolean v0, p0, Lcom/fyber/utils/h;->n:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic k(Lcom/fyber/utils/h;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/fyber/utils/h;->k:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 136
    iget-object v1, p0, Lcom/fyber/utils/h;->c:Landroid/net/ConnectivityManager;

    if-eqz v1, :cond_0

    .line 137
    iget-object v1, p0, Lcom/fyber/utils/h;->c:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 138
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 140
    :cond_0
    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/fyber/utils/h;->o:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 3

    .prologue
    .line 261
    const/4 v0, 0x5

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v2, "portrait"

    aput-object v2, v1, v0

    const/4 v0, 0x1

    const-string v2, "landscape"

    aput-object v2, v1, v0

    const/4 v0, 0x2

    const-string v2, "portrait"

    aput-object v2, v1, v0

    const/4 v0, 0x3

    const-string v2, "landscape"

    aput-object v2, v1, v0

    const/4 v0, 0x4

    const-string v2, "portrait"

    aput-object v2, v1, v0

    .line 262
    invoke-virtual {p0}, Lcom/fyber/utils/h;->d()I

    move-result v0

    .line 263
    iget-boolean v2, p0, Lcom/fyber/utils/h;->h:Z

    if-eqz v2, :cond_0

    .line 264
    add-int/lit8 v0, v0, 0x1

    .line 266
    :cond_0
    aget-object v0, v1, v0

    return-object v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/fyber/utils/h;->b:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    return v0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 285
    iget-boolean v0, p0, Lcom/fyber/utils/h;->h:Z

    return v0
.end method

.method public final g()Landroid/location/LocationManager;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/fyber/utils/h;->p:Landroid/location/LocationManager;

    return-object v0
.end method

.method public final h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 297
    iget-object v0, p0, Lcom/fyber/utils/h;->q:Ljava/util/List;

    return-object v0
.end method
