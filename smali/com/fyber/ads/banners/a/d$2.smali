.class final Lcom/fyber/ads/banners/a/d$2;
.super Lcom/fyber/utils/d;
.source "InternalBannerAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fyber/ads/banners/a/d;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/fyber/ads/banners/a/d;


# direct methods
.method constructor <init>(Lcom/fyber/ads/banners/a/d;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/fyber/ads/banners/a/d$2;->a:Lcom/fyber/ads/banners/a/d;

    invoke-direct {p0}, Lcom/fyber/utils/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 109
    iget-object v0, p0, Lcom/fyber/ads/banners/a/d$2;->a:Lcom/fyber/ads/banners/a/d;

    invoke-static {v0}, Lcom/fyber/ads/banners/a/d;->a(Lcom/fyber/ads/banners/a/d;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 110
    iget-object v0, p0, Lcom/fyber/ads/banners/a/d$2;->a:Lcom/fyber/ads/banners/a/d;

    invoke-static {v0}, Lcom/fyber/ads/banners/a/d;->a(Lcom/fyber/ads/banners/a/d;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/fyber/ads/banners/a/d$2;->a:Lcom/fyber/ads/banners/a/d;

    invoke-static {v0}, Lcom/fyber/ads/banners/a/d;->b(Lcom/fyber/ads/banners/a/d;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/fyber/ads/banners/a/d$2;->a:Lcom/fyber/ads/banners/a/d;

    invoke-static {v0}, Lcom/fyber/ads/banners/a/d;->b(Lcom/fyber/ads/banners/a/d;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0
.end method
