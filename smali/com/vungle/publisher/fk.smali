.class public final Lcom/vungle/publisher/fk;
.super Lcom/vungle/publisher/jo;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/fk$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/jo",
        "<",
        "Lcom/vungle/publisher/fe;",
        ">;"
    }
.end annotation


# instance fields
.field e:Lcom/vungle/publisher/fk$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/vungle/publisher/jo;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic a_()Lcom/vungle/publisher/dl$a;
    .locals 1

    .prologue
    .line 7
    iget-object v0, p0, Lcom/vungle/publisher/fk;->e:Lcom/vungle/publisher/fk$a;

    return-object v0
.end method
