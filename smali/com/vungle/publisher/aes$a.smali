.class public abstract Lcom/vungle/publisher/aes$a;
.super Lcom/vungle/publisher/acb$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/aes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Lcom/vungle/publisher/cp",
        "<*TP;TE;>;E:",
        "Lcom/vungle/publisher/cr",
        "<TP;>;>",
        "Lcom/vungle/publisher/acb$a",
        "<TP;TE;",
        "Lcom/vungle/publisher/aes;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/vungle/publisher/acb$a;-><init>()V

    return-void
.end method

.method private b(Lcom/vungle/publisher/cp;)Lcom/vungle/publisher/aes;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;)",
            "Lcom/vungle/publisher/aes;"
        }
    .end annotation

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/vungle/publisher/acb$a;->a(Lcom/vungle/publisher/cp;)Lcom/vungle/publisher/acb;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/aes;

    .line 32
    if-eqz v0, :cond_0

    .line 34
    :try_start_0
    iget-object v1, p1, Lcom/vungle/publisher/cp;->a:Lcom/vungle/publisher/cq;

    invoke-virtual {v1}, Lcom/vungle/publisher/cq;->p()Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/aes;->d:Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :goto_0
    iget-object v1, p1, Lcom/vungle/publisher/cp;->b:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/vungle/publisher/aes;->a:Ljava/lang/Integer;

    .line 41
    :cond_0
    return-object v0

    .line 37
    :catch_0
    move-exception v1

    const-string v1, "VungleProtocol"

    const-string v2, "null play report parent"

    invoke-static {v1, v2}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic a(Lcom/vungle/publisher/cp;)Lcom/vungle/publisher/acb;
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/vungle/publisher/aes$a;->b(Lcom/vungle/publisher/cp;)Lcom/vungle/publisher/aes;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic a(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    new-array v0, p1, [Lcom/vungle/publisher/aes;

    return-object v0
.end method

.method protected final synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/vungle/publisher/aes;

    invoke-direct {v0}, Lcom/vungle/publisher/aes;-><init>()V

    return-object v0
.end method
