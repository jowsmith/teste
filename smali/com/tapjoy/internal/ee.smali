.class Lcom/tapjoy/internal/ee;
.super Lcom/tapjoy/internal/ed;
.source "SourceFile"


# instance fields
.field private b:Z

.field private c:Ljava/lang/String;

.field private d:Lcom/tapjoy/TJCurrency;

.field private e:Lcom/tapjoy/TapjoyCache;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 22
    invoke-direct {p0}, Lcom/tapjoy/internal/ed;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/internal/ee;->b:Z

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/ee;->c:Ljava/lang/String;

    .line 28
    iput-object v1, p0, Lcom/tapjoy/internal/ee;->d:Lcom/tapjoy/TJCurrency;

    .line 29
    iput-object v1, p0, Lcom/tapjoy/internal/ee;->e:Lcom/tapjoy/TapjoyCache;

    return-void
.end method

.method static synthetic a(Lcom/tapjoy/internal/ee;Lcom/tapjoy/TJCurrency;)Lcom/tapjoy/TJCurrency;
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/tapjoy/internal/ee;->d:Lcom/tapjoy/TJCurrency;

    return-object p1
.end method

.method static synthetic a(Lcom/tapjoy/internal/ee;Lcom/tapjoy/TapjoyCache;)Lcom/tapjoy/TapjoyCache;
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/tapjoy/internal/ee;->e:Lcom/tapjoy/TapjoyCache;

    return-object p1
.end method

.method private h(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 419
    iget-boolean v0, p0, Lcom/tapjoy/internal/ee;->a:Z

    if-nez v0, :cond_0

    .line 420
    const-string v0, "TapjoyAPI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can not call "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " because Tapjoy SDK has not successfully connected."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    const/4 v0, 0x0

    .line 423
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private i(Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 430
    iget-boolean v0, p0, Lcom/tapjoy/internal/ee;->b:Z

    if-nez v0, :cond_0

    .line 431
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Can not call "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " because Tapjoy SDK is not initialized."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/ee;->c:Ljava/lang/String;

    .line 432
    const-string v0, "TapjoyAPI"

    new-instance v1, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object v2, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->INTEGRATION_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    iget-object v3, p0, Lcom/tapjoy/internal/ee;->c:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    .line 433
    const/4 v0, 0x0

    .line 435
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/tapjoy/TJPlacementListener;)Lcom/tapjoy/TJPlacement;
    .locals 2

    .prologue
    .line 121
    const-string v0, ""

    const-string v1, ""

    invoke-static {p1, v0, v1, p2}, Lcom/tapjoy/TJPlacementManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tapjoy/TJPlacementListener;)Lcom/tapjoy/TJPlacement;

    move-result-object v0

    return-object v0
.end method

.method public final a(F)V
    .locals 1

    .prologue
    .line 142
    const-string v0, "setCurrencyMultiplier"

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/ee;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getInstance()Lcom/tapjoy/TapjoyConnectCore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tapjoy/TapjoyConnectCore;->setCurrencyMultiplier(F)V

    .line 145
    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 5

    .prologue
    const/4 v0, -0x1

    .line 333
    .line 15125
    invoke-static {}, Lcom/tapjoy/internal/fu;->a()Lcom/tapjoy/internal/fu;

    move-result-object v1

    .line 15360
    const-string v2, "setUserLevel"

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/fu;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 15363
    if-ge p1, v0, :cond_0

    move p1, v0

    .line 15367
    :cond_0
    const-string v0, "setUserLevel({}) called"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lcom/tapjoy/internal/fr;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15368
    iget-object v0, v1, Lcom/tapjoy/internal/fu;->f:Lcom/tapjoy/internal/fx;

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/fx;->a(I)Z

    .line 334
    :cond_1
    return-void
.end method

.method public final a(ILcom/tapjoy/TJAwardCurrencyListener;)V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/tapjoy/internal/ee;->d:Lcom/tapjoy/TJCurrency;

    if-eqz v0, :cond_0

    const-string v0, "awardCurrency"

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/ee;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/tapjoy/internal/ee;->d:Lcom/tapjoy/TJCurrency;

    invoke-virtual {v0, p1, p2}, Lcom/tapjoy/TJCurrency;->awardCurrency(ILcom/tapjoy/TJAwardCurrencyListener;)V

    .line 186
    :cond_0
    return-void
.end method

.method public final a(ILcom/tapjoy/TJSpendCurrencyListener;)V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/tapjoy/internal/ee;->d:Lcom/tapjoy/TJCurrency;

    if-eqz v0, :cond_0

    const-string v0, "spendCurrency"

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/ee;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/tapjoy/internal/ee;->d:Lcom/tapjoy/TJCurrency;

    invoke-virtual {v0, p1, p2}, Lcom/tapjoy/TJCurrency;->spendCurrency(ILcom/tapjoy/TJSpendCurrencyListener;)V

    .line 179
    :cond_0
    return-void
.end method

.method public final a(ILjava/lang/String;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 348
    .line 18147
    invoke-static {}, Lcom/tapjoy/internal/fu;->a()Lcom/tapjoy/internal/fu;

    move-result-object v3

    .line 18384
    const-string v0, "setUserCohortVariable"

    invoke-virtual {v3, v0}, Lcom/tapjoy/internal/fu;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 18387
    if-lez p1, :cond_2

    const/4 v0, 0x5

    if-gt p1, v0, :cond_2

    move v0, v1

    :goto_0
    const-string v4, "setCohortVariable: variableIndex is out of range"

    .line 19095
    sget-boolean v5, Lcom/tapjoy/internal/fr;->a:Z

    if-eqz v5, :cond_0

    .line 19096
    if-nez v0, :cond_0

    .line 19097
    invoke-static {v4}, Lcom/tapjoy/internal/fr;->b(Ljava/lang/String;)V

    .line 18387
    :cond_0
    if-eqz v0, :cond_1

    .line 18392
    const-string v0, "setUserCohortVariable({}, {}) called"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    aput-object p2, v4, v1

    invoke-static {v0, v4}, Lcom/tapjoy/internal/fr;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20014
    invoke-static {p2}, Lcom/tapjoy/internal/fp;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 18394
    iget-object v1, v3, Lcom/tapjoy/internal/fu;->f:Lcom/tapjoy/internal/fx;

    invoke-virtual {v1, p1, v0}, Lcom/tapjoy/internal/fx;->a(ILjava/lang/String;)Z

    .line 349
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 18387
    goto :goto_0
.end method

.method public final a(Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 126
    if-eqz p1, :cond_0

    .line 127
    invoke-static {p1}, Lcom/tapjoy/internal/d;->a(Landroid/app/Activity;)V

    .line 131
    :goto_0
    return-void

    .line 129
    :cond_0
    const-string v0, "TapjoyAPI"

    new-instance v1, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object v2, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->INTEGRATION_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    const-string v3, "Cannot set activity to NULL"

    invoke-direct {v1, v2, v3}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    goto :goto_0
.end method

.method public final a(Landroid/opengl/GLSurfaceView;)V
    .locals 0

    .prologue
    .line 407
    .line 23091
    invoke-static {}, Lcom/tapjoy/internal/fu;->a()Lcom/tapjoy/internal/fu;

    invoke-static {p1}, Lcom/tapjoy/internal/fu;->a(Landroid/opengl/GLSurfaceView;)V

    .line 408
    return-void
.end method

.method public final a(Lcom/tapjoy/TJEarnedCurrencyListener;)V
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/tapjoy/internal/ee;->d:Lcom/tapjoy/TJCurrency;

    if-eqz v0, :cond_0

    const-string v0, "setEarnedCurrencyListener"

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/ee;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/tapjoy/internal/ee;->d:Lcom/tapjoy/TJCurrency;

    invoke-virtual {v0, p1}, Lcom/tapjoy/TJCurrency;->setEarnedCurrencyListener(Lcom/tapjoy/TJEarnedCurrencyListener;)V

    .line 193
    :cond_0
    return-void
.end method

.method public final a(Lcom/tapjoy/TJGetCurrencyBalanceListener;)V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/tapjoy/internal/ee;->d:Lcom/tapjoy/TJCurrency;

    if-eqz v0, :cond_0

    const-string v0, "getCurrencyBalance"

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/ee;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/tapjoy/internal/ee;->d:Lcom/tapjoy/TJCurrency;

    invoke-virtual {v0, p1}, Lcom/tapjoy/TJCurrency;->getCurrencyBalance(Lcom/tapjoy/TJGetCurrencyBalanceListener;)V

    .line 172
    :cond_0
    return-void
.end method

.method public final a(Lcom/tapjoy/TJVideoListener;)V
    .locals 1

    .prologue
    .line 201
    const-string v0, "setVideoListener"

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/ee;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    sput-object p1, Lcom/tapjoy/TJAdUnit;->publisherVideoListener:Lcom/tapjoy/TJVideoListener;

    .line 204
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 230
    const-wide/16 v4, 0x0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v0

    invoke-static/range {v0 .. v5}, Lcom/tapjoy/internal/fi;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 231
    return-void
.end method

.method public final a(Ljava/lang/String;J)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 235
    move-object v1, p1

    move-object v2, v0

    move-object v3, v0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/tapjoy/internal/fi;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 236
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/tapjoy/TJSetUserIDListener;)V
    .locals 2

    .prologue
    .line 321
    const-string v0, "setUserID"

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/ee;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 322
    invoke-static {p1, p2}, Lcom/tapjoy/TapjoyConnectCore;->setUserID(Ljava/lang/String;Lcom/tapjoy/TJSetUserIDListener;)V

    .line 14115
    invoke-static {}, Lcom/tapjoy/internal/fu;->a()Lcom/tapjoy/internal/fu;

    move-result-object v0

    .line 14352
    const-string v1, "setUserId"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/fu;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 15010
    invoke-static {p1}, Lcom/tapjoy/internal/fp;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 14356
    iget-object v0, v0, Lcom/tapjoy/internal/fu;->f:Lcom/tapjoy/internal/fx;

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/fx;->b(Ljava/lang/String;)Z

    .line 329
    :cond_0
    :goto_0
    return-void

    .line 325
    :cond_1
    if-eqz p2, :cond_0

    .line 326
    iget-object v0, p0, Lcom/tapjoy/internal/ee;->c:Ljava/lang/String;

    invoke-interface {p2, v0}, Lcom/tapjoy/TJSetUserIDListener;->onSetUserIDFailure(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 221
    invoke-static {p1, v0, v0, p2}, Lcom/tapjoy/internal/fi;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;)V
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 211
    .line 10419
    invoke-static {}, Lcom/tapjoy/internal/fu;->a()Lcom/tapjoy/internal/fu;

    move-result-object v0

    .line 10586
    const-string v1, "trackPurchase"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/fu;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10589
    const-string v1, "trackPurchase"

    const-string v2, "productId"

    invoke-static {p1, v1, v2}, Lcom/tapjoy/internal/fp;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 10592
    const-string v1, "trackPurchase"

    const-string v3, "currencyCode"

    invoke-static {p2, v1, v3}, Lcom/tapjoy/internal/fp;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 10595
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    .line 10596
    const-string v0, "trackPurchase"

    const-string v1, "currencyCode"

    const-string v2, "invalid currency code"

    invoke-static {v0, v1, v2}, Lcom/tapjoy/internal/fr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10597
    :cond_0
    :goto_0
    return-void

    .line 10599
    :cond_1
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 10600
    invoke-static {p5}, Lcom/tapjoy/internal/fp;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 10602
    iget-object v1, v0, Lcom/tapjoy/internal/fu;->g:Lcom/tapjoy/internal/ft;

    move-wide v4, p3

    move-object v7, v6

    invoke-virtual/range {v1 .. v8}, Lcom/tapjoy/internal/ft;->a(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10603
    const-string v0, "trackPurchase called"

    invoke-static {v0}, Lcom/tapjoy/internal/fr;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 240
    move-object v0, p1

    move-object v1, p2

    move-object v3, v2

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lcom/tapjoy/internal/fi;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 241
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 216
    invoke-static {p1, p2, p3, p4}, Lcom/tapjoy/internal/fi;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    .prologue
    .line 250
    invoke-static/range {p1 .. p6}, Lcom/tapjoy/internal/fi;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 251
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 14

    .prologue
    .line 255
    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-wide/from16 v6, p6

    invoke-static/range {v1 .. v13}, Lcom/tapjoy/internal/fi;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;J)V

    .line 256
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;J)V
    .locals 14

    .prologue
    .line 260
    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    move-wide/from16 v9, p9

    invoke-static/range {v1 .. v13}, Lcom/tapjoy/internal/fi;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;J)V

    .line 261
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;J)V
    .locals 0

    .prologue
    .line 266
    invoke-static/range {p1 .. p13}, Lcom/tapjoy/internal/fi;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;J)V

    .line 267
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 8

    .prologue
    .line 271
    .line 11396
    invoke-static {}, Lcom/tapjoy/internal/fu;->a()Lcom/tapjoy/internal/fu;

    move-result-object v2

    .line 11803
    const-string v0, "trackEvent"

    invoke-virtual {v2, v0}, Lcom/tapjoy/internal/fu;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11806
    invoke-static {p2}, Lcom/tapjoy/internal/cr;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 11810
    invoke-static {}, Lcom/tapjoy/internal/cv;->b()Ljava/util/LinkedHashMap;

    move-result-object v5

    .line 11811
    if-eqz p5, :cond_4

    invoke-interface {p5}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 11812
    invoke-interface {p5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 11813
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 11814
    if-nez v1, :cond_2

    .line 11815
    const-string v0, "trackEvent"

    const-string v1, "key in values map"

    .line 12073
    sget-boolean v2, Lcom/tapjoy/internal/fr;->a:Z

    if-eqz v2, :cond_1

    .line 12074
    const-string v2, "Tapjoy"

    const-string v3, "{}: {} must not be null"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    invoke-static {v2, v3, v4}, Lcom/tapjoy/internal/ac;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11827
    :cond_1
    :goto_1
    return-void

    .line 11817
    :cond_2
    instance-of v4, v1, Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 11818
    check-cast v1, Ljava/lang/String;

    .line 11819
    const-string v4, "trackEvent"

    const-string v6, "key in values map"

    invoke-static {v1, v4, v6}, Lcom/tapjoy/internal/fp;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 11822
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 11823
    instance-of v4, v0, Ljava/lang/Number;

    if-eqz v4, :cond_3

    .line 11824
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 11826
    :cond_3
    const-string v0, "trackEvent"

    const-string v1, "value in values map"

    const-string v2, "must be a long"

    invoke-static {v0, v1, v2}, Lcom/tapjoy/internal/fr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 11832
    :cond_4
    iget-object v0, v2, Lcom/tapjoy/internal/fu;->g:Lcom/tapjoy/internal/ft;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/tapjoy/internal/ft;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 11833
    const-string v0, "trackEvent category:{}, name:{}, p1:{}, p2:{}, values:{} called"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x3

    aput-object p4, v1, v2

    const/4 v2, 0x4

    aput-object v5, v1, v2

    invoke-static {v0, v1}, Lcom/tapjoy/internal/fr;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public final a(Ljava/util/Set;)V
    .locals 1

    .prologue
    .line 358
    invoke-static {}, Lcom/tapjoy/internal/fu;->a()Lcom/tapjoy/internal/fu;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/fu;->a(Ljava/util/Set;)V

    .line 359
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 38
    invoke-static {p1}, Lcom/tapjoy/TapjoyLog;->setDebugEnabled(Z)V

    .line 39
    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/tapjoy/internal/ee;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/TJConnectListener;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/TJConnectListener;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 54
    monitor-enter p0

    :try_start_0
    const-string v2, "event"

    invoke-static {v2}, Lcom/tapjoy/TapjoyConnectCore;->setSDKType(Ljava/lang/String;)V

    .line 56
    if-nez p1, :cond_1

    .line 57
    const-string v1, "TapjoyAPI"

    new-instance v2, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object v3, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->INTEGRATION_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    const-string v4, "The application context is NULL"

    invoke-direct {v2, v3, v4}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    .line 58
    if-eqz p4, :cond_0

    .line 59
    invoke-interface {p4}, Lcom/tapjoy/TJConnectListener;->onConnectFailure()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 63
    :cond_1
    :try_start_1
    invoke-static {p3}, Lcom/tapjoy/FiveRocksIntegration;->a(Ljava/util/Hashtable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    :try_start_2
    invoke-static {p1}, Lcom/tapjoy/TapjoyAppSettings;->init(Landroid/content/Context;)V

    .line 69
    new-instance v2, Lcom/tapjoy/internal/ee$1;

    invoke-direct {v2, p0, p1, p4}, Lcom/tapjoy/internal/ee$1;-><init>(Lcom/tapjoy/internal/ee;Landroid/content/Context;Lcom/tapjoy/TJConnectListener;)V

    invoke-static {p1, p2, p3, v2}, Lcom/tapjoy/TapjoyConnectCore;->requestTapjoyConnect(Landroid/content/Context;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/TJConnectListener;)V
    :try_end_2
    .catch Lcom/tapjoy/TapjoyIntegrationException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/tapjoy/TapjoyException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 114
    const/4 v2, 0x1

    :try_start_3
    iput-boolean v2, p0, Lcom/tapjoy/internal/ee;->b:Z

    .line 9439
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-ge v2, v3, :cond_2

    .line 9440
    const-string v0, "TapjoyAPI"

    const-string v2, "Automatic session tracking is not available on this device."

    invoke-static {v0, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    move v0, v1

    .line 116
    goto :goto_0

    .line 102
    :catch_0
    move-exception v1

    .line 103
    const-string v2, "TapjoyAPI"

    new-instance v3, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object v4, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->INTEGRATION_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    invoke-virtual {v1}, Lcom/tapjoy/TapjoyIntegrationException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v4, v1}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    .line 104
    if-eqz p4, :cond_0

    .line 105
    invoke-interface {p4}, Lcom/tapjoy/TJConnectListener;->onConnectFailure()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 107
    :catch_1
    move-exception v1

    .line 108
    :try_start_4
    const-string v2, "TapjoyAPI"

    new-instance v3, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object v4, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->SDK_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    invoke-virtual {v1}, Lcom/tapjoy/TapjoyException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v4, v1}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    .line 109
    if-eqz p4, :cond_0

    .line 110
    invoke-interface {p4}, Lcom/tapjoy/TJConnectListener;->onConnectFailure()V

    goto :goto_0

    .line 9445
    :cond_2
    if-eqz p3, :cond_3

    .line 9446
    const-string v2, "TJC_OPTION_DISABLE_AUTOMATIC_SESSION_TRACKING"

    invoke-virtual {p3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 9447
    if-eqz v2, :cond_3

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v1

    .line 9451
    :cond_3
    if-nez v0, :cond_4

    .line 9452
    invoke-static {p1}, Lcom/tapjoy/internal/ej;->a(Landroid/content/Context;)V

    goto :goto_1

    .line 9455
    :cond_4
    const-string v0, "TapjoyAPI"

    const-string v2, "Automatic session tracking is disabled."

    invoke-static {v0, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    const-string v0, "11.9.0"

    return-object v0
.end method

.method public final b(I)V
    .locals 6

    .prologue
    const/4 v0, -0x1

    .line 338
    .line 16135
    invoke-static {}, Lcom/tapjoy/internal/fu;->a()Lcom/tapjoy/internal/fu;

    move-result-object v1

    .line 16372
    const-string v2, "setUserFriendCount"

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/fu;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 16375
    const-string v2, "setUserFriendCount({}) called"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/tapjoy/internal/fr;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16376
    if-ge p1, v0, :cond_0

    move p1, v0

    .line 16380
    :cond_0
    iget-object v0, v1, Lcom/tapjoy/internal/fu;->f:Lcom/tapjoy/internal/fx;

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/fx;->b(I)Z

    .line 339
    :cond_1
    return-void
.end method

.method public final b(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 299
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 300
    invoke-static {}, Lcom/tapjoy/internal/ej;->a()V

    .line 302
    :cond_0
    invoke-static {}, Lcom/tapjoy/internal/fu;->a()Lcom/tapjoy/internal/fu;

    move-result-object v0

    .line 13962
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/tapjoy/internal/fu;->n:Z

    .line 303
    invoke-static {p1}, Lcom/tapjoy/internal/fi;->a(Landroid/app/Activity;)V

    .line 304
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 343
    .line 17105
    invoke-static {}, Lcom/tapjoy/internal/fu;->a()Lcom/tapjoy/internal/fu;

    move-result-object v0

    .line 17344
    const-string v1, "setAppDataVersion"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/fu;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 18006
    invoke-static {p1}, Lcom/tapjoy/internal/fp;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 17348
    iget-object v0, v0, Lcom/tapjoy/internal/fu;->f:Lcom/tapjoy/internal/fx;

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/fx;->a(Ljava/lang/String;)Z

    .line 344
    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 245
    const-wide/16 v4, 0x0

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    invoke-static/range {v0 .. v5}, Lcom/tapjoy/internal/fi;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 246
    return-void
.end method

.method public final b(Z)V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 402
    invoke-static {}, Lcom/tapjoy/internal/fu;->a()Lcom/tapjoy/internal/fu;

    move-result-object v5

    .line 22269
    const-string v0, "setPushNotificationDisabled"

    invoke-virtual {v5, v0}, Lcom/tapjoy/internal/fu;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22272
    iget-object v0, v5, Lcom/tapjoy/internal/fu;->f:Lcom/tapjoy/internal/fx;

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/fx;->a(Z)Z

    move-result v6

    .line 22274
    if-eqz v6, :cond_1

    .line 22275
    const-string v3, "setPushNotificationDisabled({}) called"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    move-object v4, v3

    move-object v3, v2

    .line 22279
    :goto_0
    aput-object v0, v2, v1

    .line 22278
    invoke-static {v4, v3}, Lcom/tapjoy/internal/fr;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22283
    if-eqz v6, :cond_0

    iget-boolean v0, v5, Lcom/tapjoy/internal/fu;->k:Z

    if-eqz v0, :cond_0

    iget-object v0, v5, Lcom/tapjoy/internal/fu;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/tapjoy/internal/cr;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 22284
    iget-object v0, v5, Lcom/tapjoy/internal/fu;->o:Ljava/lang/String;

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 22286
    :goto_1
    invoke-virtual {v5, v0}, Lcom/tapjoy/internal/fu;->a(Ljava/lang/String;)V

    .line 403
    :cond_0
    return-void

    .line 22278
    :cond_1
    const-string v4, "setPushNotificationDisabled({}) called, but it is already {}"

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    .line 22279
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v3, v1

    if-eqz p1, :cond_2

    const-string v0, "disabled"

    move v1, v2

    move-object v2, v3

    goto :goto_0

    :cond_2
    const-string v0, "enabled"

    move v1, v2

    move-object v2, v3

    goto :goto_0

    .line 22284
    :cond_3
    iget-object v0, v5, Lcom/tapjoy/internal/fu;->e:Landroid/content/Context;

    .line 22285
    invoke-static {v0}, Lcom/tapjoy/internal/fw;->b(Landroid/content/Context;)Lcom/tapjoy/internal/fw;

    move-result-object v0

    .line 23066
    iget-object v1, v0, Lcom/tapjoy/internal/r;->b:Lcom/tapjoy/internal/t;

    iget-object v0, v0, Lcom/tapjoy/internal/r;->a:Landroid/content/Context;

    invoke-interface {v1, v0}, Lcom/tapjoy/internal/t;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 22285
    invoke-static {v0}, Lcom/tapjoy/internal/cr;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public final c()F
    .locals 1

    .prologue
    .line 150
    const-string v0, "getCurrencyMultiplier"

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/ee;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getInstance()Lcom/tapjoy/TapjoyConnectCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyConnectCore;->getCurrencyMultiplier()F

    move-result v0

    .line 153
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public final c(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 308
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 309
    invoke-static {}, Lcom/tapjoy/internal/ej;->a()V

    .line 311
    :cond_0
    invoke-static {p1}, Lcom/tapjoy/internal/fi;->b(Landroid/app/Activity;)V

    .line 312
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 368
    invoke-static {p1}, Lcom/tapjoy/internal/cr;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 376
    :cond_0
    :goto_0
    return-void

    .line 371
    :cond_1
    invoke-static {}, Lcom/tapjoy/internal/fu;->a()Lcom/tapjoy/internal/fu;

    move-result-object v0

    .line 372
    invoke-virtual {v0}, Lcom/tapjoy/internal/fu;->c()Ljava/util/Set;

    move-result-object v1

    .line 373
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 374
    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/fu;->a(Ljava/util/Set;)V

    goto :goto_0
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 276
    const-string v0, "startSession"

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/ee;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 277
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 278
    invoke-static {}, Lcom/tapjoy/internal/ej;->a()V

    .line 280
    :cond_0
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getInstance()Lcom/tapjoy/TapjoyConnectCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyConnectCore;->appResume()V

    .line 281
    invoke-static {}, Lcom/tapjoy/internal/fi;->a()V

    .line 283
    :cond_1
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 380
    invoke-static {p1}, Lcom/tapjoy/internal/cr;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 388
    :cond_0
    :goto_0
    return-void

    .line 383
    :cond_1
    invoke-static {}, Lcom/tapjoy/internal/fu;->a()Lcom/tapjoy/internal/fu;

    move-result-object v0

    .line 384
    invoke-virtual {v0}, Lcom/tapjoy/internal/fu;->c()Ljava/util/Set;

    move-result-object v1

    .line 385
    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 386
    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/fu;->a(Ljava/util/Set;)V

    goto :goto_0
.end method

.method public final e()V
    .locals 2

    .prologue
    .line 287
    const-string v0, "endSession"

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/ee;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 288
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 289
    invoke-static {}, Lcom/tapjoy/internal/ej;->a()V

    .line 291
    :cond_0
    invoke-static {}, Lcom/tapjoy/internal/fu;->a()Lcom/tapjoy/internal/fu;

    move-result-object v0

    .line 12962
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/tapjoy/internal/fu;->n:Z

    .line 292
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getInstance()Lcom/tapjoy/TapjoyConnectCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyConnectCore;->appPause()V

    .line 293
    invoke-static {}, Lcom/tapjoy/internal/fi;->b()V

    .line 295
    :cond_1
    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 135
    const-string v0, "enablePaidAppWithActionID"

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/ee;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getInstance()Lcom/tapjoy/TapjoyConnectCore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tapjoy/TapjoyConnectCore;->enablePaidAppWithActionID(Ljava/lang/String;)V

    .line 138
    :cond_0
    return-void
.end method

.method public final f()Ljava/util/Set;
    .locals 1

    .prologue
    .line 353
    invoke-static {}, Lcom/tapjoy/internal/fu;->a()Lcom/tapjoy/internal/fu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/fu;->c()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final f(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 162
    const-string v0, "actionComplete"

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/ee;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getInstance()Lcom/tapjoy/TapjoyConnectCore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tapjoy/TapjoyConnectCore;->actionComplete(Ljava/lang/String;)V

    .line 165
    :cond_0
    return-void
.end method

.method public final g()V
    .locals 2

    .prologue
    .line 363
    invoke-static {}, Lcom/tapjoy/internal/fu;->a()Lcom/tapjoy/internal/fu;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/fu;->a(Ljava/util/Set;)V

    .line 364
    return-void
.end method

.method public final g(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 392
    .line 20072
    invoke-static {}, Lcom/tapjoy/internal/fu;->a()Lcom/tapjoy/internal/fu;

    move-result-object v0

    .line 20206
    const-string v1, "setGcmSender({}) called"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lcom/tapjoy/internal/fr;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20207
    invoke-static {p1}, Lcom/tapjoy/internal/cr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tapjoy/internal/fu;->d:Ljava/lang/String;

    .line 20208
    invoke-virtual {v0}, Lcom/tapjoy/internal/fu;->b()V

    .line 393
    return-void
.end method

.method public final h()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 397
    invoke-static {}, Lcom/tapjoy/internal/fu;->a()Lcom/tapjoy/internal/fu;

    move-result-object v1

    .line 20260
    const-string v2, "isPushNotificationDisabled"

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/fu;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 20261
    :goto_0
    return v0

    .line 20263
    :cond_0
    iget-object v1, v1, Lcom/tapjoy/internal/fu;->f:Lcom/tapjoy/internal/fx;

    .line 20771
    iget-object v1, v1, Lcom/tapjoy/internal/fx;->b:Lcom/tapjoy/internal/gl$z$a;

    .line 21701
    iget-boolean v1, v1, Lcom/tapjoy/internal/gl$z$a;->o:Z

    .line 20264
    const-string v2, "isPushNotificationDisabled = {}"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Lcom/tapjoy/internal/fr;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 397
    goto :goto_0
.end method

.method public final i()Z
    .locals 1

    .prologue
    .line 412
    iget-boolean v0, p0, Lcom/tapjoy/internal/ee;->a:Z

    return v0
.end method
