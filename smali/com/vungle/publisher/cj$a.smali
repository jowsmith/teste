.class public abstract Lcom/vungle/publisher/cj$a;
.super Lcom/vungle/publisher/dl$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/cj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Lcom/vungle/publisher/cj;",
        "R:",
        "Lcom/vungle/publisher/ade;",
        ">",
        "Lcom/vungle/publisher/dl$a",
        "<TA;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/ql;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Lcom/vungle/publisher/agt;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 307
    invoke-direct {p0}, Lcom/vungle/publisher/dl$a;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/util/List;)I
    .locals 1

    .prologue
    .line 307
    invoke-super {p0, p1}, Lcom/vungle/publisher/dl$a;->a(Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method protected final a(Ljava/util/List;Lcom/vungle/publisher/cj$c;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/vungle/publisher/cj;",
            ">;",
            "Lcom/vungle/publisher/cj$c;",
            ")I"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 392
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    .line 393
    new-array v4, v7, [Ljava/lang/String;

    .line 396
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v2, v3

    move v6, v3

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/cj;

    .line 397
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v0}, Lcom/vungle/publisher/cj;->w()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    aput-object v1, v4, v2

    .line 398
    invoke-virtual {v0}, Lcom/vungle/publisher/cj;->g()Lcom/vungle/publisher/cj$c;

    move-result-object v1

    sget-object v2, Lcom/vungle/publisher/cj$c;->e:Lcom/vungle/publisher/cj$c;

    if-eq p2, v2, :cond_0

    sget-object v2, Lcom/vungle/publisher/cj$c;->e:Lcom/vungle/publisher/cj$c;

    if-ne v1, v2, :cond_0

    const/4 v1, -0x1

    :goto_1
    add-int/2addr v1, v6

    .line 399
    invoke-virtual {v0, p2}, Lcom/vungle/publisher/cj;->a(Lcom/vungle/publisher/cj$c;)V

    move v2, v5

    move v6, v1

    .line 400
    goto :goto_0

    .line 398
    :cond_0
    sget-object v2, Lcom/vungle/publisher/cj$c;->e:Lcom/vungle/publisher/cj$c;

    if-ne p2, v2, :cond_4

    sget-object v2, Lcom/vungle/publisher/cj$c;->e:Lcom/vungle/publisher/cj$c;

    if-eq v1, v2, :cond_4

    const/4 v1, 0x1

    goto :goto_1

    .line 401
    :cond_1
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 402
    const-string v0, "status"

    invoke-virtual {p2}, Lcom/vungle/publisher/cj$c;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "id IN ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lcom/vungle/publisher/cb;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 404
    const-string v0, "VungleDatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "updating status of ads "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/vungle/publisher/ags;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " to "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    iget-object v0, p0, Lcom/vungle/publisher/cj$a;->d:Lcom/vungle/publisher/cf;

    .line 406
    invoke-virtual {v0}, Lcom/vungle/publisher/cf;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 407
    invoke-virtual {p0}, Lcom/vungle/publisher/cj$a;->c()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x3

    invoke-virtual/range {v0 .. v5}, Landroid/database/sqlite/SQLiteDatabase;->updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I

    move-result v0

    .line 408
    if-lez v0, :cond_2

    if-lez v6, :cond_3

    const-string v1, "VungleDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ad availability increased by "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vungle/publisher/cj$a;->a:Lcom/vungle/publisher/ql;

    new-instance v2, Lcom/vungle/publisher/ag;

    invoke-direct {v2}, Lcom/vungle/publisher/ag;-><init>()V

    invoke-virtual {v1, v2}, Lcom/vungle/publisher/ql;->a(Ljava/lang/Object;)V

    .line 409
    :cond_2
    :goto_2
    return v0

    .line 408
    :cond_3
    if-gez v6, :cond_2

    const-string v1, "VungleDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ad availability decreased by "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vungle/publisher/cj$a;->a:Lcom/vungle/publisher/ql;

    new-instance v2, Lcom/vungle/publisher/ab;

    invoke-direct {v2}, Lcom/vungle/publisher/ab;-><init>()V

    invoke-virtual {v1, v2}, Lcom/vungle/publisher/ql;->a(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    move v1, v3

    goto/16 :goto_1
.end method

.method public a(Lcom/vungle/publisher/ade;)Lcom/vungle/publisher/cj;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)TA;"
        }
    .end annotation

    .prologue
    .line 318
    invoke-virtual {p0}, Lcom/vungle/publisher/cj$a;->c_()Lcom/vungle/publisher/dl;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/cj;

    .line 319
    iget-object v1, p1, Lcom/vungle/publisher/ade;->f:Ljava/lang/String;

    .line 320
    iput-object v1, v0, Lcom/vungle/publisher/cj;->t:Ljava/lang/Object;

    .line 321
    invoke-virtual {p0}, Lcom/vungle/publisher/cj$a;->a()Lcom/vungle/publisher/j;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/cj;->d:Lcom/vungle/publisher/j;

    .line 322
    const-class v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/vungle/publisher/cj;->s:Ljava/lang/Class;

    .line 323
    iget-object v1, p1, Lcom/vungle/publisher/ade;->c:Ljava/lang/Long;

    iput-object v1, v0, Lcom/vungle/publisher/cj;->l:Ljava/lang/Long;

    .line 324
    invoke-virtual {p0, v0, p1}, Lcom/vungle/publisher/cj$a;->a(Lcom/vungle/publisher/cj;Lcom/vungle/publisher/ade;)Lcom/vungle/publisher/cj;

    .line 325
    return-object v0
.end method

.method protected a(Lcom/vungle/publisher/cj;Landroid/database/Cursor;Z)Lcom/vungle/publisher/cj;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;",
            "Landroid/database/Cursor;",
            "Z)TA;"
        }
    .end annotation

    .prologue
    .line 414
    const-string v0, "advertising_app_vungle_id"

    invoke-static {p2, v0}, Lcom/vungle/publisher/cb;->f(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/cj;->j:Ljava/lang/String;

    .line 415
    const-string v0, "delivery_id"

    invoke-static {p2, v0}, Lcom/vungle/publisher/cb;->f(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/cj;->i:Ljava/lang/String;

    .line 416
    const-string v0, "id"

    invoke-static {p2, v0}, Lcom/vungle/publisher/cb;->f(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/cj;->t:Ljava/lang/Object;

    .line 417
    const-string v0, "insert_timestamp_millis"

    invoke-static {p2, v0}, Lcom/vungle/publisher/cb;->e(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/vungle/publisher/cj;->f:J

    .line 418
    const-string v0, "status"

    const-class v1, Lcom/vungle/publisher/cj$c;

    invoke-static {p2, v0, v1}, Lcom/vungle/publisher/cb;->a(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/cj$c;

    iput-object v0, p1, Lcom/vungle/publisher/cj;->e:Lcom/vungle/publisher/cj$c;

    .line 419
    const-string v0, "type"

    const-class v1, Lcom/vungle/publisher/j;

    invoke-static {p2, v0, v1}, Lcom/vungle/publisher/cb;->a(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/j;

    iput-object v0, p1, Lcom/vungle/publisher/cj;->d:Lcom/vungle/publisher/j;

    .line 420
    const-string v0, "update_timestamp_millis"

    invoke-static {p2, v0}, Lcom/vungle/publisher/cb;->e(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/vungle/publisher/cj;->g:J

    .line 421
    const-string v0, "failed_timestamp_millis"

    invoke-static {p2, v0}, Lcom/vungle/publisher/cb;->e(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/vungle/publisher/cj;->h:J

    .line 422
    const-string v0, "delete_local_content_attempts"

    invoke-static {p2, v0}, Lcom/vungle/publisher/cb;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/vungle/publisher/cj;->k:I

    .line 423
    const-string v0, "expiration_timestamp_seconds"

    invoke-static {p2, v0}, Lcom/vungle/publisher/cb;->e(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/cj;->l:Ljava/lang/Long;

    .line 424
    const-string v0, "prepare_retry_count"

    invoke-static {p2, v0}, Lcom/vungle/publisher/cb;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/vungle/publisher/cj;->n:I

    .line 425
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/vungle/publisher/cj;->o:J

    .line 426
    return-object p1
.end method

.method protected a(Lcom/vungle/publisher/cj;Lcom/vungle/publisher/ade;)Lcom/vungle/publisher/cj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TR;)TA;"
        }
    .end annotation

    .prologue
    .line 329
    iget-object v0, p2, Lcom/vungle/publisher/ade;->h:Ljava/lang/String;

    iput-object v0, p1, Lcom/vungle/publisher/cj;->j:Ljava/lang/String;

    .line 330
    invoke-virtual {p2}, Lcom/vungle/publisher/ade;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/cj;->i:Ljava/lang/String;

    .line 331
    return-object p1
.end method

.method protected bridge synthetic a(Lcom/vungle/publisher/dl;Landroid/database/Cursor;)Lcom/vungle/publisher/dl;
    .locals 1

    .prologue
    .line 307
    check-cast p1, Lcom/vungle/publisher/cj;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/vungle/publisher/cj$a;->a(Lcom/vungle/publisher/cj;Landroid/database/Cursor;Z)Lcom/vungle/publisher/cj;

    move-result-object v0

    return-object v0
.end method

.method protected abstract a()Lcom/vungle/publisher/j;
.end method

.method public final bridge synthetic a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 1

    .prologue
    .line 307
    invoke-super {p0, p1, p2}, Lcom/vungle/publisher/dl$a;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/vungle/publisher/cj;)Z
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "id = ? AND "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/vungle/publisher/cj;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " AND ((expiration_timestamp_seconds IS NULL OR expiration_timestamp_seconds <= ?) OR status != ?)"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 360
    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    .line 361
    invoke-virtual {p1}, Lcom/vungle/publisher/cj;->w()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v4, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    const/4 v0, 0x2

    sget-object v5, Lcom/vungle/publisher/cj$c;->e:Lcom/vungle/publisher/cj$c;

    invoke-virtual {v5}, Lcom/vungle/publisher/cj$c;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 360
    invoke-virtual {p0, v3, v4}, Lcom/vungle/publisher/cj$a;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 362
    const-string v0, "VungleDatabase"

    const-string v3, "deleting ad after successful report"

    invoke-static {v0, v3}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    invoke-virtual {p1}, Lcom/vungle/publisher/cj;->n()I

    move-result v0

    if-lez v0, :cond_0

    move v0, v1

    .line 365
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 363
    goto :goto_0

    :cond_1
    move v0, v2

    .line 365
    goto :goto_0
.end method

.method protected a_(I)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 436
    new-array v0, p1, [Ljava/lang/String;

    return-object v0
.end method

.method protected final b()I
    .locals 6

    .prologue
    .line 340
    sget-object v0, Lcom/vungle/publisher/cj$c;->g:Lcom/vungle/publisher/cj$c;

    .line 341
    const-string v1, "VungleDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "deleting "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vungle/publisher/cj$a;->a()Lcom/vungle/publisher/j;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " records without pending reports in status "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    iget-object v1, p0, Lcom/vungle/publisher/cj$a;->d:Lcom/vungle/publisher/cf;

    invoke-virtual {v1}, Lcom/vungle/publisher/cf;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "ad"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/vungle/publisher/cj;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND status = ?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 345
    invoke-virtual {v0}, Lcom/vungle/publisher/cj$c;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    .line 343
    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 342
    return v0
.end method

.method public b(Lcom/vungle/publisher/cj;Lcom/vungle/publisher/ade;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TR;)I"
        }
    .end annotation

    .prologue
    .line 335
    iget-object v0, p2, Lcom/vungle/publisher/ade;->c:Ljava/lang/Long;

    iput-object v0, p1, Lcom/vungle/publisher/cj;->l:Ljava/lang/Long;

    .line 336
    invoke-virtual {p1}, Lcom/vungle/publisher/cj;->b_()I

    move-result v0

    return v0
.end method

.method protected synthetic b(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 307
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/cj$a;->a_(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 431
    const-string v0, "ad"

    return-object v0
.end method

.method public final bridge synthetic c(I)Ljava/util/List;
    .locals 1

    .prologue
    .line 307
    invoke-super {p0, p1}, Lcom/vungle/publisher/dl$a;->c(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic d()Ljava/util/List;
    .locals 1

    .prologue
    .line 307
    invoke-super {p0}, Lcom/vungle/publisher/dl$a;->d()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
