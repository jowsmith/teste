.class public final Lcom/vungle/publisher/wx$a;
.super Lcom/vungle/publisher/wu$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/wx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/wu$a",
        "<",
        "Lcom/vungle/publisher/wx;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/acf$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/wx;",
            ">;"
        }
    .end annotation

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
    invoke-direct {p0}, Lcom/vungle/publisher/wu$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Lcom/vungle/publisher/wx;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vungle/publisher/gm;",
            ">;)",
            "Lcom/vungle/publisher/wx;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/vungle/publisher/wx$a;->d()Lcom/vungle/publisher/wu;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/wx;

    .line 37
    iget-object v1, p0, Lcom/vungle/publisher/wx$a;->a:Lcom/vungle/publisher/acf$a;

    iget-object v1, v1, Lcom/vungle/publisher/acf$a;->a:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/publisher/acf;

    iput-object p1, v1, Lcom/vungle/publisher/acf;->a:Ljava/util/List;

    invoke-virtual {v1}, Lcom/vungle/publisher/acf;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/vs;->d:Ljava/lang/String;

    .line 38
    return-object v0
.end method

.method protected final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    const-string v0, "api/v1/sdkErrors"

    return-object v0
.end method

.method protected final synthetic b()Lcom/vungle/publisher/vs;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/vungle/publisher/wx$a;->d:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/wx;

    return-object v0
.end method
