.class final Lcom/fyber/utils/e$1;
.super Ljava/util/HashMap;
.source "FyberBaseUrlProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/utils/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/fyber/utils/e;


# direct methods
.method constructor <init>(Lcom/fyber/utils/e;)V
    .locals 2

    .prologue
    .line 22
    iput-object p1, p0, Lcom/fyber/utils/e$1;->a:Lcom/fyber/utils/e;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 23
    const-string v0, "actions"

    const-string v1, "https://service.fyber.com/actions/v2"

    invoke-virtual {p0, v0, v1}, Lcom/fyber/utils/e$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    const-string v0, "installs"

    const-string v1, "https://service.fyber.com/installs/v2"

    invoke-virtual {p0, v0, v1}, Lcom/fyber/utils/e$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    const-string v0, "vcs"

    const-string v1, "https://api.fyber.com/vcs/v1/new_credit.json"

    invoke-virtual {p0, v0, v1}, Lcom/fyber/utils/e$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    const-string v0, "videos"

    const-string v1, "https://video.fyber.com"

    invoke-virtual {p0, v0, v1}, Lcom/fyber/utils/e$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    const-string v0, "rewarded_video_tracking"

    const-string v1, "https://rewarded-video.fyber.com/tracker"

    invoke-virtual {p0, v0, v1}, Lcom/fyber/utils/e$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    const-string v0, "ofw"

    const-string v1, "https://offer.fyber.com/mobile"

    invoke-virtual {p0, v0, v1}, Lcom/fyber/utils/e$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    const-string v0, "interstitial"

    const-string v1, "https://interstitial.fyber.com/interstitial"

    invoke-virtual {p0, v0, v1}, Lcom/fyber/utils/e$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    const-string v0, "interstitial_tracking"

    const-string v1, "https://interstitial.fyber.com/tracker"

    invoke-virtual {p0, v0, v1}, Lcom/fyber/utils/e$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    const-string v0, "config"

    const-string v1, "https://engine.fyber.com/sdk-config"

    invoke-virtual {p0, v0, v1}, Lcom/fyber/utils/e$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    const-string v0, "precaching"

    const-string v1, "https://engine.fyber.com/video-cache"

    invoke-virtual {p0, v0, v1}, Lcom/fyber/utils/e$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    const-string v0, "banner"

    const-string v1, "https://banner.fyber.com/banner"

    invoke-virtual {p0, v0, v1}, Lcom/fyber/utils/e$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    const-string v0, "banner_tracking"

    const-string v1, "https://banner.fyber.com/tracker"

    invoke-virtual {p0, v0, v1}, Lcom/fyber/utils/e$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    const-string v0, "testsuite_tracking"

    const-string v1, "https://testsuite.fyber.com/tracker"

    invoke-virtual {p0, v0, v1}, Lcom/fyber/utils/e$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    return-void
.end method
