.class public final Lcom/vungle/sdk/VungleAdvert_MembersInjector;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector",
        "<",
        "Lcom/vungle/sdk/VungleAdvert;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic a:Z


# instance fields
.field private final b:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/ql;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/bw;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/py;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/cj$b;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/lr;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/gm$a;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/ne$a;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/q;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/vungle/sdk/VungleAdvert_MembersInjector;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/vungle/sdk/VungleAdvert_MembersInjector;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/ql;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/bw;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/py;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/cj$b;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/lr;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/gm$a;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/ne$a;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/q;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p1, "eventBusProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/vungle/publisher/ql;>;"
    .local p2, "uiExecutorProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/vungle/publisher/bw;>;"
    .local p3, "sdkStateProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/vungle/publisher/py;>;"
    .local p4, "adMediatorProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/vungle/publisher/cj$b;>;"
    .local p5, "audioHelperProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/vungle/publisher/lr;>;"
    .local p6, "loggedExceptionFactoryProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/vungle/publisher/gm$a;>;"
    .local p7, "adPresenterMediatorProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/vungle/publisher/ne$a;>;"
    .local p8, "adConfigFactoryProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/vungle/publisher/q;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    sget-boolean v0, Lcom/vungle/sdk/VungleAdvert_MembersInjector;->a:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 46
    :cond_0
    iput-object p1, p0, Lcom/vungle/sdk/VungleAdvert_MembersInjector;->b:Ljavax/inject/Provider;

    .line 47
    sget-boolean v0, Lcom/vungle/sdk/VungleAdvert_MembersInjector;->a:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 48
    :cond_1
    iput-object p2, p0, Lcom/vungle/sdk/VungleAdvert_MembersInjector;->c:Ljavax/inject/Provider;

    .line 49
    sget-boolean v0, Lcom/vungle/sdk/VungleAdvert_MembersInjector;->a:Z

    if-nez v0, :cond_2

    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 50
    :cond_2
    iput-object p3, p0, Lcom/vungle/sdk/VungleAdvert_MembersInjector;->d:Ljavax/inject/Provider;

    .line 51
    sget-boolean v0, Lcom/vungle/sdk/VungleAdvert_MembersInjector;->a:Z

    if-nez v0, :cond_3

    if-nez p4, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 52
    :cond_3
    iput-object p4, p0, Lcom/vungle/sdk/VungleAdvert_MembersInjector;->e:Ljavax/inject/Provider;

    .line 53
    sget-boolean v0, Lcom/vungle/sdk/VungleAdvert_MembersInjector;->a:Z

    if-nez v0, :cond_4

    if-nez p5, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 54
    :cond_4
    iput-object p5, p0, Lcom/vungle/sdk/VungleAdvert_MembersInjector;->f:Ljavax/inject/Provider;

    .line 55
    sget-boolean v0, Lcom/vungle/sdk/VungleAdvert_MembersInjector;->a:Z

    if-nez v0, :cond_5

    if-nez p6, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 56
    :cond_5
    iput-object p6, p0, Lcom/vungle/sdk/VungleAdvert_MembersInjector;->g:Ljavax/inject/Provider;

    .line 57
    sget-boolean v0, Lcom/vungle/sdk/VungleAdvert_MembersInjector;->a:Z

    if-nez v0, :cond_6

    if-nez p7, :cond_6

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 58
    :cond_6
    iput-object p7, p0, Lcom/vungle/sdk/VungleAdvert_MembersInjector;->h:Ljavax/inject/Provider;

    .line 59
    sget-boolean v0, Lcom/vungle/sdk/VungleAdvert_MembersInjector;->a:Z

    if-nez v0, :cond_7

    if-nez p8, :cond_7

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 60
    :cond_7
    iput-object p8, p0, Lcom/vungle/sdk/VungleAdvert_MembersInjector;->i:Ljavax/inject/Provider;

    .line 61
    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/ql;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/bw;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/py;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/cj$b;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/lr;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/gm$a;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/ne$a;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/q;",
            ">;)",
            "Ldagger/MembersInjector",
            "<",
            "Lcom/vungle/sdk/VungleAdvert;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    .local p0, "eventBusProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/vungle/publisher/ql;>;"
    .local p1, "uiExecutorProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/vungle/publisher/bw;>;"
    .local p2, "sdkStateProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/vungle/publisher/py;>;"
    .local p3, "adMediatorProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/vungle/publisher/cj$b;>;"
    .local p4, "audioHelperProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/vungle/publisher/lr;>;"
    .local p5, "loggedExceptionFactoryProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/vungle/publisher/gm$a;>;"
    .local p6, "adPresenterMediatorProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/vungle/publisher/ne$a;>;"
    .local p7, "adConfigFactoryProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/vungle/publisher/q;>;"
    new-instance v0, Lcom/vungle/sdk/VungleAdvert_MembersInjector;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/vungle/sdk/VungleAdvert_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public final injectMembers(Lcom/vungle/sdk/VungleAdvert;)V
    .locals 2
    .param p1, "instance"    # Lcom/vungle/sdk/VungleAdvert;

    .prologue
    .line 85
    if-nez p1, :cond_0

    .line 86
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cannot inject members into a null reference"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/vungle/sdk/VungleAdvert_MembersInjector;->b:Ljavax/inject/Provider;

    invoke-static {p1, v0}, Lcom/vungle/publisher/FullScreenAdActivity_MembersInjector;->injectEventBus(Lcom/vungle/publisher/FullScreenAdActivity;Ljavax/inject/Provider;)V

    .line 90
    iget-object v0, p0, Lcom/vungle/sdk/VungleAdvert_MembersInjector;->c:Ljavax/inject/Provider;

    invoke-static {p1, v0}, Lcom/vungle/publisher/FullScreenAdActivity_MembersInjector;->injectUiExecutor(Lcom/vungle/publisher/FullScreenAdActivity;Ljavax/inject/Provider;)V

    .line 92
    iget-object v0, p0, Lcom/vungle/sdk/VungleAdvert_MembersInjector;->d:Ljavax/inject/Provider;

    invoke-static {p1, v0}, Lcom/vungle/publisher/FullScreenAdActivity_MembersInjector;->injectSdkState(Lcom/vungle/publisher/FullScreenAdActivity;Ljavax/inject/Provider;)V

    .line 94
    iget-object v0, p0, Lcom/vungle/sdk/VungleAdvert_MembersInjector;->e:Ljavax/inject/Provider;

    invoke-static {p1, v0}, Lcom/vungle/publisher/FullScreenAdActivity_MembersInjector;->injectAdMediator(Lcom/vungle/publisher/FullScreenAdActivity;Ljavax/inject/Provider;)V

    .line 96
    iget-object v0, p0, Lcom/vungle/sdk/VungleAdvert_MembersInjector;->f:Ljavax/inject/Provider;

    invoke-static {p1, v0}, Lcom/vungle/publisher/FullScreenAdActivity_MembersInjector;->injectAudioHelper(Lcom/vungle/publisher/FullScreenAdActivity;Ljavax/inject/Provider;)V

    .line 98
    iget-object v0, p0, Lcom/vungle/sdk/VungleAdvert_MembersInjector;->g:Ljavax/inject/Provider;

    invoke-static {p1, v0}, Lcom/vungle/publisher/FullScreenAdActivity_MembersInjector;->injectLoggedExceptionFactory(Lcom/vungle/publisher/FullScreenAdActivity;Ljavax/inject/Provider;)V

    .line 100
    iget-object v0, p0, Lcom/vungle/sdk/VungleAdvert_MembersInjector;->h:Ljavax/inject/Provider;

    invoke-static {p1, v0}, Lcom/vungle/publisher/FullScreenAdActivity_MembersInjector;->injectAdPresenterMediator(Lcom/vungle/publisher/FullScreenAdActivity;Ljavax/inject/Provider;)V

    .line 102
    iget-object v0, p0, Lcom/vungle/sdk/VungleAdvert_MembersInjector;->i:Ljavax/inject/Provider;

    invoke-static {p1, v0}, Lcom/vungle/publisher/FullScreenAdActivity_MembersInjector;->injectAdConfigFactory(Lcom/vungle/publisher/FullScreenAdActivity;Ljavax/inject/Provider;)V

    .line 104
    return-void
.end method

.method public final bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 15
    check-cast p1, Lcom/vungle/sdk/VungleAdvert;

    invoke-virtual {p0, p1}, Lcom/vungle/sdk/VungleAdvert_MembersInjector;->injectMembers(Lcom/vungle/sdk/VungleAdvert;)V

    return-void
.end method
