.class public abstract Lcom/fyber/b/e$a;
.super Ljava/lang/Object;
.source "EventNetworkOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/fyber/b/e;",
        "U:",
        "Lcom/fyber/b/e$a;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final b:Ljava/lang/String;

.field protected final c:Lcom/fyber/utils/u;

.field d:Ljava/lang/StringBuilder;

.field e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/fyber/b/e$a;->d:Ljava/lang/StringBuilder;

    .line 66
    const-string v0, ""

    iput-object v0, p0, Lcom/fyber/b/e$a;->e:Ljava/lang/String;

    .line 69
    iput-object p1, p0, Lcom/fyber/b/e$a;->b:Ljava/lang/String;

    .line 70
    invoke-virtual {p0}, Lcom/fyber/b/e$a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fyber/utils/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71
    invoke-static {}, Lcom/fyber/Fyber;->getConfigs()Lcom/fyber/Fyber$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fyber/Fyber$a;->e()Lcom/fyber/a/a;

    move-result-object v1

    .line 73
    invoke-static {v0, v1}, Lcom/fyber/utils/u;->a(Ljava/lang/String;Lcom/fyber/a/a;)Lcom/fyber/utils/u;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Lcom/fyber/utils/u;->a()Lcom/fyber/utils/u;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Lcom/fyber/utils/u;->b()Lcom/fyber/utils/u;

    move-result-object v0

    const-string v1, "event"

    .line 76
    invoke-virtual {v0, v1, p1}, Lcom/fyber/utils/u;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/fyber/utils/u;

    move-result-object v0

    iput-object v0, p0, Lcom/fyber/b/e$a;->c:Lcom/fyber/utils/u;

    .line 77
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Map;)Lcom/fyber/b/e$a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)TU;"
        }
    .end annotation

    .prologue
    .line 82
    invoke-static {p1}, Lcom/fyber/utils/m;->b(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/fyber/b/e$a;->c:Lcom/fyber/utils/u;

    invoke-virtual {v0, p1}, Lcom/fyber/utils/u;->a(Ljava/util/Map;)Lcom/fyber/utils/u;

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/fyber/b/e$a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\t\tAdditional parameters:\n\t\t\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\t\t\t"

    .line 85
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fyber/b/e$a;->e:Ljava/lang/String;

    .line 87
    :cond_0
    invoke-virtual {p0}, Lcom/fyber/b/e$a;->e()Lcom/fyber/b/e$a;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Lcom/fyber/b/e$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TU;"
        }
    .end annotation

    .prologue
    .line 91
    invoke-static {p1}, Lcom/fyber/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/fyber/b/e$a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\t\tEvent attribute: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fyber/b/e$a;->e:Ljava/lang/String;

    .line 93
    iget-object v0, p0, Lcom/fyber/b/e$a;->c:Lcom/fyber/utils/u;

    iget-object v1, p0, Lcom/fyber/b/e$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/fyber/utils/u;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/fyber/utils/u;

    .line 95
    :cond_0
    invoke-virtual {p0}, Lcom/fyber/b/e$a;->e()Lcom/fyber/b/e$a;

    move-result-object v0

    return-object v0
.end method

.method protected abstract c()Ljava/lang/String;
.end method

.method protected abstract d()Lcom/fyber/b/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method protected abstract e()Lcom/fyber/b/e$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TU;"
        }
    .end annotation
.end method

.method protected f()Lcom/fyber/b/e;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 103
    iget-object v0, p0, Lcom/fyber/b/e$a;->d:Ljava/lang/StringBuilder;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "Notifying tracker of event=%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/fyber/b/e$a;->b:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fyber/b/e$a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {p0}, Lcom/fyber/b/e$a;->d()Lcom/fyber/b/e;

    move-result-object v0

    return-object v0
.end method
