.class public final Lcom/vungle/publisher/eu$a;
.super Lcom/vungle/publisher/dx$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/eu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/dx$a",
        "<",
        "Lcom/vungle/publisher/eo;",
        "Lcom/vungle/publisher/adr;",
        "Lcom/vungle/publisher/eo$a;",
        "Lcom/vungle/publisher/eu;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/eu;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/vungle/publisher/dx$a;-><init>()V

    return-void
.end method


# virtual methods
.method final bridge synthetic a()Lcom/vungle/publisher/dx;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/vungle/publisher/eu$a;->a:Lcom/vungle/publisher/eu;

    return-object v0
.end method
