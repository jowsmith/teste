.class final Lcom/vungle/publisher/alp$14;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/aii;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/alp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/vungle/publisher/aii",
        "<",
        "Lcom/vungle/publisher/aie;",
        "Lcom/vungle/publisher/aie;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 144
    check-cast p1, Lcom/vungle/publisher/aie;

    invoke-static {}, Lcom/vungle/publisher/als;->a()Lcom/vungle/publisher/als;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/publisher/als;->f()Lcom/vungle/publisher/alt;

    invoke-static {p1}, Lcom/vungle/publisher/alt;->a(Lcom/vungle/publisher/aie;)Lcom/vungle/publisher/aie;

    move-result-object v0

    return-object v0
.end method
