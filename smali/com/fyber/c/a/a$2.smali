.class final Lcom/fyber/c/a/a$2;
.super Landroid/webkit/WebViewClient;
.source "MicroBrowser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/c/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Landroid/widget/TextView;

.field final synthetic c:Lcom/fyber/c/a/a;


# direct methods
.method constructor <init>(Lcom/fyber/c/a/a;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/fyber/c/a/a$2;->c:Lcom/fyber/c/a/a;

    iput-object p2, p0, Lcom/fyber/c/a/a$2;->a:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/fyber/c/a/a$2;->b:Landroid/widget/TextView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 165
    iget-object v0, p0, Lcom/fyber/c/a/a$2;->c:Lcom/fyber/c/a/a;

    invoke-static {v0}, Lcom/fyber/c/a/a;->d(Lcom/fyber/c/a/a;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {p1}, Landroid/webkit/WebView;->clearHistory()V

    .line 167
    iget-object v0, p0, Lcom/fyber/c/a/a$2;->c:Lcom/fyber/c/a/a;

    invoke-static {v0}, Lcom/fyber/c/a/a;->e(Lcom/fyber/c/a/a;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 171
    :cond_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 172
    invoke-static {v0}, Lcom/fyber/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 173
    iget-object v1, p0, Lcom/fyber/c/a/a$2;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v0, p0, Lcom/fyber/c/a/a$2;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    :goto_0
    return-void

    .line 176
    :cond_1
    iget-object v0, p0, Lcom/fyber/c/a/a$2;->b:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    iget-object v0, p0, Lcom/fyber/c/a/a$2;->a:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 157
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/fyber/c/a/a$2;->c:Lcom/fyber/c/a/a;

    invoke-static {v0}, Lcom/fyber/c/a/a;->c(Lcom/fyber/c/a/a;)Lcom/fyber/c/a/a$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/fyber/c/a/a$2;->c:Lcom/fyber/c/a/a;

    invoke-static {v0}, Lcom/fyber/c/a/a;->c(Lcom/fyber/c/a/a;)Lcom/fyber/c/a/a$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/fyber/c/a/a$a;->a()V

    .line 161
    :cond_0
    return-void
.end method

.method public final onScaleChanged(Landroid/webkit/WebView;FF)V
    .locals 0

    .prologue
    .line 183
    if-eqz p1, :cond_0

    .line 184
    invoke-virtual {p1}, Landroid/webkit/WebView;->invalidate()V

    .line 186
    :cond_0
    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 147
    iget-object v0, p0, Lcom/fyber/c/a/a$2;->c:Lcom/fyber/c/a/a;

    invoke-static {v0}, Lcom/fyber/c/a/a;->b(Lcom/fyber/c/a/a;)Lcom/fyber/c/a/a$c;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fyber/c/a/a$2;->c:Lcom/fyber/c/a/a;

    invoke-static {v0}, Lcom/fyber/c/a/a;->b(Lcom/fyber/c/a/a;)Lcom/fyber/c/a/a$c;

    move-result-object v0

    iget-object v1, p0, Lcom/fyber/c/a/a$2;->c:Lcom/fyber/c/a/a;

    invoke-interface {v0, v1, p2}, Lcom/fyber/c/a/a$c;->a(Lcom/fyber/c/a/a;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 148
    :goto_0
    if-nez v0, :cond_0

    .line 150
    iget-object v1, p0, Lcom/fyber/c/a/a$2;->a:Landroid/widget/TextView;

    sget-object v2, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->RV_LOADING_MESSAGE:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    invoke-static {v2}, Lcom/fyber/utils/t;->a(Lcom/fyber/Fyber$Settings$UIStringIdentifier;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    :cond_0
    return v0

    .line 147
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
