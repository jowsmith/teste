.class public abstract Lcom/vungle/publisher/ne;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/ne$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Lcom/vungle/publisher/cj;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/cj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field b:Lcom/vungle/publisher/FullScreenAdActivity;

.field public c:Lcom/vungle/publisher/ms;

.field d:Lcom/vungle/publisher/mr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vungle/publisher/mr",
            "<*>;"
        }
    .end annotation
.end field

.field e:Lcom/vungle/publisher/afx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vungle/publisher/afx",
            "<*>;"
        }
    .end annotation
.end field

.field protected f:Ljava/lang/String;

.field g:Lcom/vungle/publisher/ql;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public h:Lcom/vungle/publisher/gm$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field i:Lcom/vungle/publisher/agp;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field j:Lcom/vungle/publisher/pn;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private k:Lcom/vungle/publisher/n;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a()Lcom/vungle/publisher/mr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vungle/publisher/mr",
            "<*>;"
        }
    .end annotation
.end method

.method protected final a(I)V
    .locals 4

    .prologue
    .line 141
    :try_start_0
    iget-object v0, p0, Lcom/vungle/publisher/ne;->b:Lcom/vungle/publisher/FullScreenAdActivity;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/FullScreenAdActivity;->setRequestedOrientation(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :goto_0
    return-void

    .line 142
    :catch_0
    move-exception v0

    .line 143
    iget-object v1, p0, Lcom/vungle/publisher/ne;->h:Lcom/vungle/publisher/gm$a;

    const-string v2, "VungleAd"

    const-string v3, "could not set orientation"

    invoke-virtual {v1, v2, v3, v0}, Lcom/vungle/publisher/gm$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method final a(Landroid/net/Uri;)V
    .locals 5

    .prologue
    .line 115
    :try_start_0
    const-string v0, "android.intent.action.VIEW"

    invoke-static {v0, p1}, Lcom/vungle/publisher/agp;->a(Ljava/lang/String;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 116
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 117
    iget-object v1, p0, Lcom/vungle/publisher/ne;->b:Lcom/vungle/publisher/FullScreenAdActivity;

    invoke-virtual {v1, v0}, Lcom/vungle/publisher/FullScreenAdActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :goto_0
    return-void

    .line 118
    :catch_0
    move-exception v0

    .line 119
    iget-object v1, p0, Lcom/vungle/publisher/ne;->h:Lcom/vungle/publisher/gm$a;

    const-string v2, "VungleAd"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "error loading URL: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/vungle/publisher/gm$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Lcom/vungle/publisher/FullScreenAdActivity;)V
    .locals 0

    .prologue
    .line 93
    return-void
.end method

.method public a(Lcom/vungle/publisher/FullScreenAdActivity;Lcom/vungle/publisher/cj;Lcom/vungle/publisher/n;Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/FullScreenAdActivity;",
            "TA;",
            "Lcom/vungle/publisher/n;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 57
    iput-object p2, p0, Lcom/vungle/publisher/ne;->a:Lcom/vungle/publisher/cj;

    .line 58
    iput-object p1, p0, Lcom/vungle/publisher/ne;->b:Lcom/vungle/publisher/FullScreenAdActivity;

    .line 59
    iput-object p3, p0, Lcom/vungle/publisher/ne;->k:Lcom/vungle/publisher/n;

    .line 60
    invoke-virtual {p0}, Lcom/vungle/publisher/ne;->a()Lcom/vungle/publisher/mr;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/ne;->d:Lcom/vungle/publisher/mr;

    .line 61
    invoke-virtual {p0}, Lcom/vungle/publisher/ne;->b()Lcom/vungle/publisher/afx;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/ne;->e:Lcom/vungle/publisher/afx;

    .line 62
    iget-object v0, p0, Lcom/vungle/publisher/ne;->d:Lcom/vungle/publisher/mr;

    invoke-virtual {v0}, Lcom/vungle/publisher/mr;->registerOnce()V

    .line 63
    iget-object v0, p0, Lcom/vungle/publisher/ne;->e:Lcom/vungle/publisher/afx;

    invoke-virtual {v0}, Lcom/vungle/publisher/afx;->registerOnce()V

    .line 65
    if-eqz p4, :cond_1

    const/4 v0, 0x1

    .line 66
    :goto_0
    if-nez v0, :cond_0

    .line 67
    iget-object v1, p0, Lcom/vungle/publisher/ne;->g:Lcom/vungle/publisher/ql;

    new-instance v2, Lcom/vungle/publisher/aq;

    invoke-direct {v2, p2, p3}, Lcom/vungle/publisher/aq;-><init>(Lcom/vungle/publisher/cj;Lcom/vungle/publisher/n;)V

    invoke-virtual {v1, v2}, Lcom/vungle/publisher/ql;->a(Ljava/lang/Object;)V

    .line 69
    :cond_0
    if-eqz v0, :cond_2

    const-string v0, "currentFragment"

    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/vungle/publisher/ne;->f:Ljava/lang/String;

    .line 70
    return-void

    .line 65
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 69
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected final a(Lcom/vungle/publisher/ms;)V
    .locals 3

    .prologue
    .line 128
    iget-object v0, p0, Lcom/vungle/publisher/ne;->c:Lcom/vungle/publisher/ms;

    if-eq p1, v0, :cond_2

    .line 129
    iget-object v0, p0, Lcom/vungle/publisher/ne;->b:Lcom/vungle/publisher/FullScreenAdActivity;

    invoke-virtual {v0}, Lcom/vungle/publisher/FullScreenAdActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 130
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 131
    iget-object v1, p0, Lcom/vungle/publisher/ne;->k:Lcom/vungle/publisher/n;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vungle/publisher/ne;->k:Lcom/vungle/publisher/n;

    invoke-interface {v1}, Lcom/vungle/publisher/n;->isTransitionAnimationEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 132
    :cond_0
    const/16 v1, 0x1003

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 134
    :cond_1
    const v1, 0x1020002

    iput-object p1, p0, Lcom/vungle/publisher/ne;->c:Lcom/vungle/publisher/ms;

    invoke-virtual {p1}, Lcom/vungle/publisher/ms;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 135
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 137
    :cond_2
    return-void
.end method

.method final a(ZZ)V
    .locals 4

    .prologue
    .line 97
    :try_start_0
    iget-object v1, p0, Lcom/vungle/publisher/ne;->g:Lcom/vungle/publisher/ql;

    if-eqz p1, :cond_0

    new-instance v0, Lcom/vungle/publisher/bq;

    iget-object v2, p0, Lcom/vungle/publisher/ne;->a:Lcom/vungle/publisher/cj;

    invoke-direct {v0, v2, p2}, Lcom/vungle/publisher/bq;-><init>(Lcom/vungle/publisher/cj;Z)V

    :goto_0
    invoke-virtual {v1, v0}, Lcom/vungle/publisher/ql;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    iget-object v0, p0, Lcom/vungle/publisher/ne;->b:Lcom/vungle/publisher/FullScreenAdActivity;

    invoke-virtual {v0}, Lcom/vungle/publisher/FullScreenAdActivity;->finish()V

    .line 103
    :goto_1
    return-void

    .line 97
    :cond_0
    :try_start_1
    new-instance v0, Lcom/vungle/publisher/bp;

    iget-object v2, p0, Lcom/vungle/publisher/ne;->a:Lcom/vungle/publisher/cj;

    invoke-direct {v0, v2, p2}, Lcom/vungle/publisher/bp;-><init>(Lcom/vungle/publisher/cj;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 99
    :catch_0
    move-exception v0

    .line 100
    :try_start_2
    iget-object v1, p0, Lcom/vungle/publisher/ne;->h:Lcom/vungle/publisher/gm$a;

    const-string v2, "VungleAd"

    const-string v3, "error exiting ad"

    invoke-virtual {v1, v2, v3, v0}, Lcom/vungle/publisher/gm$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 102
    iget-object v0, p0, Lcom/vungle/publisher/ne;->b:Lcom/vungle/publisher/FullScreenAdActivity;

    invoke-virtual {v0}, Lcom/vungle/publisher/FullScreenAdActivity;->finish()V

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/vungle/publisher/ne;->b:Lcom/vungle/publisher/FullScreenAdActivity;

    invoke-virtual {v1}, Lcom/vungle/publisher/FullScreenAdActivity;->finish()V

    throw v0
.end method

.method protected abstract b()Lcom/vungle/publisher/afx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vungle/publisher/afx",
            "<*>;"
        }
    .end annotation
.end method
