.class public abstract Lcom/vungle/publisher/yg$a;
.super Lcom/vungle/publisher/yf$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/yg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O:",
        "Lcom/vungle/publisher/ace;",
        "H:",
        "Lcom/vungle/publisher/yg",
        "<TO;TT;>;T:",
        "Lcom/vungle/publisher/cq",
        "<TT;***>;>",
        "Lcom/vungle/publisher/yf$a",
        "<TH;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/vungle/publisher/yf$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/vungle/publisher/cq;)Lcom/vungle/publisher/yg;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TH;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vungle/publisher/sd;
        }
    .end annotation

    .prologue
    .line 103
    :try_start_0
    invoke-virtual {p0}, Lcom/vungle/publisher/yg$a;->a()Lcom/vungle/publisher/yf;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/yg;

    .line 104
    if-nez p1, :cond_1

    const/4 v1, 0x0

    :goto_0
    iput-object v1, v0, Lcom/vungle/publisher/yg;->e:Lcom/vungle/publisher/cj;

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/vungle/publisher/yg$a;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "reportAd"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/vs;->b:Ljava/lang/String;

    .line 106
    const-string v1, "Content-Encoding"

    const-string v2, "gzip"

    invoke-virtual {v0, v1, v2}, Lcom/vungle/publisher/yg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v1, "Content-Type"

    const-string v2, "application/json"

    invoke-virtual {v0, v1, v2}, Lcom/vungle/publisher/yg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-virtual {p1}, Lcom/vungle/publisher/cq;->w()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iput-object v1, v0, Lcom/vungle/publisher/yg;->f:Ljava/lang/Integer;

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/vungle/publisher/yg$a;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "reportAd"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/vs;->b:Ljava/lang/String;

    .line 110
    invoke-virtual {p0}, Lcom/vungle/publisher/yg$a;->d()Lcom/vungle/publisher/ace$a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/vungle/publisher/ace$a;->a(Lcom/vungle/publisher/cq;)Lcom/vungle/publisher/ace;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/yg;->g:Lcom/vungle/publisher/ace;

    .line 111
    if-eqz v1, :cond_0

    .line 112
    invoke-virtual {v1}, Lcom/vungle/publisher/ace;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/vs;->d:Ljava/lang/String;

    .line 114
    :cond_0
    return-object v0

    .line 104
    :cond_1
    invoke-virtual {p1}, Lcom/vungle/publisher/cq;->h()Lcom/vungle/publisher/cj;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    new-instance v1, Lcom/vungle/publisher/sd;

    invoke-direct {v1, v0}, Lcom/vungle/publisher/sd;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected synthetic b()Lcom/vungle/publisher/vs;
    .locals 1

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/vungle/publisher/yg$a;->e()Lcom/vungle/publisher/yg;

    move-result-object v0

    return-object v0
.end method

.method protected abstract d()Lcom/vungle/publisher/ace$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vungle/publisher/ace$a",
            "<*TO;TT;*>;"
        }
    .end annotation
.end method

.method protected abstract e()Lcom/vungle/publisher/yg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TH;"
        }
    .end annotation
.end method