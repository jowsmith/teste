.class public final Lcom/vungle/publisher/gh;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/gh$a;,
        Lcom/vungle/publisher/gh$b;
    }
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/gh$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vungle/publisher/gh$b",
            "<*>;"
        }
    .end annotation
.end field

.field public b:Ljava/lang/String;

.field c:Ljava/lang/Integer;

.field d:Lcom/vungle/publisher/pn;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field e:Lcom/vungle/publisher/py;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/vungle/publisher/gh;->a:Lcom/vungle/publisher/gh$b;

    invoke-interface {v0}, Lcom/vungle/publisher/gh$b;->l()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private j()Lcom/vungle/publisher/el$b;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/vungle/publisher/gh;->a:Lcom/vungle/publisher/gh$b;

    invoke-interface {v0}, Lcom/vungle/publisher/gh$b;->t()Lcom/vungle/publisher/el$b;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method final a()Ljava/io/File;
    .locals 2

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/vungle/publisher/gh;->c()Ljava/lang/String;

    move-result-object v1

    .line 61
    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method final a(Landroid/content/ContentValues;)V
    .locals 2

    .prologue
    .line 195
    const-string v0, "url"

    iget-object v1, p0, Lcom/vungle/publisher/gh;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const-string v0, "size"

    iget-object v1, p0, Lcom/vungle/publisher/gh;->c:Ljava/lang/Integer;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 197
    return-void
.end method

.method final a(Landroid/database/Cursor;)V
    .locals 1

    .prologue
    .line 200
    const-string v0, "url"

    invoke-static {p1, v0}, Lcom/vungle/publisher/cb;->f(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/gh;->b:Ljava/lang/String;

    .line 201
    const-string v0, "size"

    invoke-static {p1, v0}, Lcom/vungle/publisher/cb;->d(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/gh;->c:Ljava/lang/Integer;

    .line 202
    return-void
.end method

.method final a(Ljava/lang/StringBuilder;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 207
    const-string v0, "url"

    iget-object v1, p0, Lcom/vungle/publisher/gh;->b:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/vungle/publisher/dl;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 208
    const-string v0, "size"

    iget-object v1, p0, Lcom/vungle/publisher/gh;->c:Ljava/lang/Integer;

    invoke-static {p1, v0, v1, v2}, Lcom/vungle/publisher/dl;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 209
    return-void
.end method

.method final b()Z
    .locals 6

    .prologue
    .line 65
    const/4 v0, 0x0

    .line 66
    invoke-virtual {p0}, Lcom/vungle/publisher/gh;->a()Ljava/io/File;

    move-result-object v1

    .line 67
    if-nez v1, :cond_0

    .line 68
    const-string v1, "VunglePrepare"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "null "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/vungle/publisher/gh;->a:Lcom/vungle/publisher/gh$b;

    invoke-interface {v3}, Lcom/vungle/publisher/gh$b;->t()Lcom/vungle/publisher/el$b;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " file for ad "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/vungle/publisher/gh;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :goto_0
    return v0

    .line 71
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 72
    const/4 v0, 0x1

    .line 73
    const-string v2, "VunglePrepare"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " exists, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " bytes"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 76
    :cond_1
    const-string v2, "VunglePrepare"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " missing "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method final c()Ljava/lang/String;
    .locals 3

    .prologue
    .line 83
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/vungle/publisher/gh;->a:Lcom/vungle/publisher/gh$b;

    invoke-interface {v2}, Lcom/vungle/publisher/gh$b;->d()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/vungle/publisher/gh;->a:Lcom/vungle/publisher/gh$b;

    invoke-interface {v2}, Lcom/vungle/publisher/gh$b;->e()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/vungle/publisher/qx;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final d()I
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/vungle/publisher/gh;->a:Lcom/vungle/publisher/gh$b;

    invoke-interface {v0}, Lcom/vungle/publisher/gh$b;->j()Z

    .line 94
    iget-object v0, p0, Lcom/vungle/publisher/gh;->a:Lcom/vungle/publisher/gh$b;

    invoke-interface {v0}, Lcom/vungle/publisher/gh$b;->k()I

    move-result v0

    return v0
.end method

.method final e()Z
    .locals 5

    .prologue
    .line 105
    iget-object v0, p0, Lcom/vungle/publisher/gh;->a:Lcom/vungle/publisher/gh$b;

    invoke-interface {v0}, Lcom/vungle/publisher/gh$b;->o()Z

    move-result v1

    .line 106
    if-eqz v1, :cond_0

    .line 107
    sget-object v0, Lcom/vungle/publisher/el$a;->c:Lcom/vungle/publisher/el$a;

    .line 108
    const-string v2, "VunglePrepare"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/vungle/publisher/gh;->j()Lcom/vungle/publisher/el$b;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for ad_id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/vungle/publisher/gh;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vungle/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v2, p0, Lcom/vungle/publisher/gh;->a:Lcom/vungle/publisher/gh$b;

    invoke-interface {v2, v0}, Lcom/vungle/publisher/gh$b;->b(Lcom/vungle/publisher/el$a;)V

    .line 121
    :goto_0
    return v1

    .line 112
    :cond_0
    const-string v0, "com.vungle.debug"

    invoke-static {v0}, Lcom/vungle/publisher/agl;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    const-string v2, "VungleAd"

    const-string v3, "in debug mode"

    invoke-static {v2, v3}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    if-eqz v0, :cond_3

    .line 113
    const-string v0, "VunglePrepare"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "debug mode: post-processing failed for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/vungle/publisher/gh;->a:Lcom/vungle/publisher/gh$b;

    invoke-interface {v3}, Lcom/vungle/publisher/gh$b;->z()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - not deleting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/vungle/publisher/gh;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/vungle/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :goto_3
    iget-object v0, p0, Lcom/vungle/publisher/gh;->a:Lcom/vungle/publisher/gh$b;

    sget-object v2, Lcom/vungle/publisher/el$a;->a:Lcom/vungle/publisher/el$a;

    invoke-interface {v0, v2}, Lcom/vungle/publisher/gh$b;->b(Lcom/vungle/publisher/el$a;)V

    goto :goto_0

    .line 112
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const-string v2, "VungleAd"

    const-string v3, "not in debug mode"

    invoke-static {v2, v3}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 116
    :cond_3
    const-string v0, "VunglePrepare"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "post-processing failed for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/vungle/publisher/gh;->a:Lcom/vungle/publisher/gh$b;

    invoke-interface {v3}, Lcom/vungle/publisher/gh$b;->z()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - deleting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/vungle/publisher/gh;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/vungle/publisher/gh;->a:Lcom/vungle/publisher/gh$b;

    invoke-interface {v0}, Lcom/vungle/publisher/gh$b;->j()Z

    goto :goto_3
.end method

.method final f()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vungle/publisher/qs;
        }
    .end annotation

    .prologue
    .line 129
    iget-object v0, p0, Lcom/vungle/publisher/gh;->a:Lcom/vungle/publisher/gh$b;

    invoke-interface {v0}, Lcom/vungle/publisher/gh$b;->p()Z

    move-result v1

    .line 131
    invoke-direct {p0}, Lcom/vungle/publisher/gh;->i()Ljava/lang/String;

    move-result-object v0

    .line 132
    invoke-direct {p0}, Lcom/vungle/publisher/gh;->j()Lcom/vungle/publisher/el$b;

    move-result-object v2

    .line 134
    if-eqz v1, :cond_0

    .line 135
    const-string v3, "VunglePrepare"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " verified for ad_id "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/vungle/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    sget-object v0, Lcom/vungle/publisher/el$a;->c:Lcom/vungle/publisher/el$a;

    .line 142
    :goto_0
    iget-object v2, p0, Lcom/vungle/publisher/gh;->a:Lcom/vungle/publisher/gh$b;

    invoke-interface {v2, v0}, Lcom/vungle/publisher/gh$b;->b(Lcom/vungle/publisher/el$a;)V

    .line 143
    return v1

    .line 139
    :cond_0
    const-string v3, "VunglePrepare"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " failed verification; reprocessing ad_id "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    sget-object v0, Lcom/vungle/publisher/el$a;->a:Lcom/vungle/publisher/el$a;

    goto :goto_0
.end method

.method final g()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vungle/publisher/qs;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 147
    iget-object v0, p0, Lcom/vungle/publisher/gh;->d:Lcom/vungle/publisher/pn;

    invoke-interface {v0}, Lcom/vungle/publisher/pn;->o()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/vungle/publisher/qs;

    invoke-direct {v0}, Lcom/vungle/publisher/qs;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/vungle/publisher/gh;->i()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/vungle/publisher/gh;->j()Lcom/vungle/publisher/el$b;

    move-result-object v4

    iget-object v0, p0, Lcom/vungle/publisher/gh;->c:Ljava/lang/Integer;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/publisher/gh;->c:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for ad_id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VunglePrepare"

    invoke-static {v1, v0}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    :cond_1
    :goto_0
    return v1

    :cond_2
    invoke-virtual {p0}, Lcom/vungle/publisher/gh;->a()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    iget-object v5, p0, Lcom/vungle/publisher/gh;->c:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v0, v5, :cond_4

    const-string v0, "VunglePrepare"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " disk size matched size "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/vungle/publisher/gh;->c:Ljava/lang/Integer;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " for ad_id: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    long-to-int v0, v6

    goto :goto_1

    :cond_4
    const-string v5, "VunglePrepare"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " disk size "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " failed to match size "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, p0, Lcom/vungle/publisher/gh;->c:Ljava/lang/Integer;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " for ad_id: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vungle/publisher/gh;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "VunglePrepare"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "ignoring "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " size mismatch - file exists"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    goto/16 :goto_0
.end method

.method final h()Z
    .locals 4

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/vungle/publisher/gh;->a()Ljava/io/File;

    move-result-object v0

    .line 188
    const-string v1, "VunglePrepare"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "deleting "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
