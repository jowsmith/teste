.class public final Lcom/fyber/b/a/a$a;
.super Ljava/lang/Object;
.source "BannerAdsProcessorOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/b/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fyber/ads/banners/a/d;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fyber/ads/banners/NetworkBannerSize;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fyber/ads/banners/a/d;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/fyber/ads/banners/NetworkBannerSize;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/fyber/b/a/a$a;->a:Ljava/util/List;

    .line 89
    iput-object p2, p0, Lcom/fyber/b/a/a$a;->b:Ljava/util/List;

    .line 90
    return-void
.end method


# virtual methods
.method public final a()Lcom/fyber/b/a/a;
    .locals 3

    .prologue
    .line 93
    new-instance v0, Lcom/fyber/b/a/a;

    iget-object v1, p0, Lcom/fyber/b/a/a$a;->a:Ljava/util/List;

    iget-object v2, p0, Lcom/fyber/b/a/a$a;->b:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/fyber/b/a/a;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method
