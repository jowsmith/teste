.class public abstract Lcom/fyber/ads/Ad;
.super Ljava/lang/Object;
.source "Ad.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Lcom/fyber/ads/Ad",
        "<TV;TU;>;U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected a:Lcom/fyber/ads/internal/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fyber/ads/internal/b",
            "<TU;>;"
        }
    .end annotation
.end field

.field protected b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/fyber/ads/internal/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/fyber/ads/internal/b",
            "<TU;>;)V"
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/fyber/ads/Ad;->b:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/fyber/ads/Ad;->a:Lcom/fyber/ads/internal/b;

    .line 22
    return-void
.end method


# virtual methods
.method public abstract canStart()Z
.end method

.method public abstract getAdFormat()Lcom/fyber/ads/AdFormat;
.end method

.method public getPlacementId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/fyber/ads/Ad;->b:Ljava/lang/String;

    return-object v0
.end method

.method public abstract start(Landroid/app/Activity;)V
.end method

.method public withListener(Ljava/lang/Object;)Lcom/fyber/ads/Ad;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)TV;"
        }
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Lcom/fyber/ads/Ad;->a:Lcom/fyber/ads/internal/b;

    invoke-interface {v0, p1}, Lcom/fyber/ads/internal/b;->a(Ljava/lang/Object;)V

    .line 32
    return-object p0
.end method
