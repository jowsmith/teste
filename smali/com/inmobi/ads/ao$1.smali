.class Lcom/inmobi/ads/ao$1;
.super Ljava/lang/Object;
.source "NativeV2Inflater.java"

# interfaces
.implements Lcom/inmobi/ads/ae$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/ao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/ads/ao;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/ao;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/inmobi/ads/ao$1;->a:Lcom/inmobi/ads/ao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/inmobi/ads/NativeV2Asset;)V
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/inmobi/ads/ao$1;->a:Lcom/inmobi/ads/ao;

    invoke-virtual {v0}, Lcom/inmobi/ads/ao;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    :goto_0
    return-void

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/ao$1;->a:Lcom/inmobi/ads/ao;

    invoke-static {v0}, Lcom/inmobi/ads/ao;->a(Lcom/inmobi/ads/ao;)Lcom/inmobi/ads/ai;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/inmobi/ads/ai;->a(ILcom/inmobi/ads/NativeV2Asset;)V

    goto :goto_0
.end method
