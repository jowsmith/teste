.class public final Lcom/vungle/publisher/he;
.super Lcom/vungle/publisher/cr;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/he$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/cr",
        "<",
        "Lcom/vungle/publisher/gy;",
        ">;"
    }
.end annotation


# instance fields
.field e:Lcom/vungle/publisher/he$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/vungle/publisher/cr;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic a_()Lcom/vungle/publisher/dl$a;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/vungle/publisher/he;->e:Lcom/vungle/publisher/he$a;

    return-object v0
.end method
