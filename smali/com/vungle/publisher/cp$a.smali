.class public abstract Lcom/vungle/publisher/cp$a;
.super Lcom/vungle/publisher/dl$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/cp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/vungle/publisher/cq",
        "<TT;TP;TE;*>;P:",
        "Lcom/vungle/publisher/cp",
        "<TT;TP;TE;>;E:",
        "Lcom/vungle/publisher/cr",
        "<TP;>;>",
        "Lcom/vungle/publisher/dl$a",
        "<TP;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/vungle/publisher/dl$a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/vungle/publisher/cq;)Lcom/vungle/publisher/cp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TP;"
        }
    .end annotation

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/vungle/publisher/cp$a;->c_()Lcom/vungle/publisher/dl;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/cp;

    .line 127
    iput-object p1, v0, Lcom/vungle/publisher/cp;->a:Lcom/vungle/publisher/cq;

    .line 128
    return-object v0
.end method

.method protected final synthetic a(Lcom/vungle/publisher/dl;Landroid/database/Cursor;)Lcom/vungle/publisher/dl;
    .locals 1

    .prologue
    .line 119
    check-cast p1, Lcom/vungle/publisher/cp;

    const-string v0, "id"

    invoke-static {p2, v0}, Lcom/vungle/publisher/cb;->d(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/cp;->t:Ljava/lang/Object;

    const-string v0, "watched_millis"

    invoke-static {p2, v0}, Lcom/vungle/publisher/cb;->d(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/cp;->b:Ljava/lang/Integer;

    const-string v0, "start_millis"

    invoke-static {p2, v0}, Lcom/vungle/publisher/cb;->e(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/cp;->c:Ljava/lang/Long;

    return-object p1
.end method

.method protected final b(Lcom/vungle/publisher/cq;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/List",
            "<TP;>;"
        }
    .end annotation

    .prologue
    .line 132
    if-nez p1, :cond_0

    .line 133
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null ad_report"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_0
    invoke-virtual {p1}, Lcom/vungle/publisher/cq;->w()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 136
    if-nez v0, :cond_1

    .line 137
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null report_id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_1
    const-string v1, "report_id = ?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    const-string v0, "start_millis ASC"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/vungle/publisher/cp$a;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 140
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/cp;

    .line 141
    iput-object p1, v0, Lcom/vungle/publisher/cp;->a:Lcom/vungle/publisher/cq;

    goto :goto_0

    .line 143
    :cond_2
    return-object v1
.end method

.method protected final bridge synthetic b(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 119
    new-array v0, p1, [Ljava/lang/Integer;

    return-object v0
.end method

.method protected final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    const-string v0, "ad_play"

    return-object v0
.end method
