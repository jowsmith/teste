.class public final enum Lcom/fyber/ads/internal/a;
.super Ljava/lang/Enum;
.source "AdEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fyber/ads/internal/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/fyber/ads/internal/a;

.field public static final enum b:Lcom/fyber/ads/internal/a;

.field public static final enum c:Lcom/fyber/ads/internal/a;

.field public static final enum d:Lcom/fyber/ads/internal/a;

.field public static final enum e:Lcom/fyber/ads/internal/a;

.field public static final enum f:Lcom/fyber/ads/internal/a;

.field public static final enum g:Lcom/fyber/ads/internal/a;

.field public static final enum h:Lcom/fyber/ads/internal/a;

.field public static final enum i:Lcom/fyber/ads/internal/a;

.field public static final enum j:Lcom/fyber/ads/internal/a;

.field public static final enum k:Lcom/fyber/ads/internal/a;

.field public static final enum l:Lcom/fyber/ads/internal/a;

.field public static final enum m:Lcom/fyber/ads/internal/a;

.field private static final synthetic o:[Lcom/fyber/ads/internal/a;


# instance fields
.field private final n:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 17
    new-instance v0, Lcom/fyber/ads/internal/a;

    const-string v1, "ValidationRequest"

    const-string v2, "request"

    invoke-direct {v0, v1, v4, v2}, Lcom/fyber/ads/internal/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fyber/ads/internal/a;->a:Lcom/fyber/ads/internal/a;

    .line 21
    new-instance v0, Lcom/fyber/ads/internal/a;

    const-string v1, "ValidationFill"

    const-string v2, "fill"

    invoke-direct {v0, v1, v5, v2}, Lcom/fyber/ads/internal/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fyber/ads/internal/a;->b:Lcom/fyber/ads/internal/a;

    .line 25
    new-instance v0, Lcom/fyber/ads/internal/a;

    const-string v1, "ValidationNoFill"

    const-string v2, "no_fill"

    invoke-direct {v0, v1, v6, v2}, Lcom/fyber/ads/internal/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fyber/ads/internal/a;->c:Lcom/fyber/ads/internal/a;

    .line 29
    new-instance v0, Lcom/fyber/ads/internal/a;

    const-string v1, "ValidationError"

    const-string v2, "error"

    invoke-direct {v0, v1, v7, v2}, Lcom/fyber/ads/internal/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fyber/ads/internal/a;->d:Lcom/fyber/ads/internal/a;

    .line 33
    new-instance v0, Lcom/fyber/ads/internal/a;

    const-string v1, "ValidationTimeout"

    const-string v2, "timeout"

    invoke-direct {v0, v1, v8, v2}, Lcom/fyber/ads/internal/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fyber/ads/internal/a;->e:Lcom/fyber/ads/internal/a;

    .line 37
    new-instance v0, Lcom/fyber/ads/internal/a;

    const-string v1, "ShowImpression"

    const/4 v2, 0x5

    const-string v3, "impression"

    invoke-direct {v0, v1, v2, v3}, Lcom/fyber/ads/internal/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fyber/ads/internal/a;->f:Lcom/fyber/ads/internal/a;

    .line 41
    new-instance v0, Lcom/fyber/ads/internal/a;

    const-string v1, "ShowRotation"

    const/4 v2, 0x6

    const-string v3, "rotation"

    invoke-direct {v0, v1, v2, v3}, Lcom/fyber/ads/internal/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fyber/ads/internal/a;->g:Lcom/fyber/ads/internal/a;

    .line 45
    new-instance v0, Lcom/fyber/ads/internal/a;

    const-string v1, "ShowClick"

    const/4 v2, 0x7

    const-string v3, "click"

    invoke-direct {v0, v1, v2, v3}, Lcom/fyber/ads/internal/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fyber/ads/internal/a;->h:Lcom/fyber/ads/internal/a;

    .line 49
    new-instance v0, Lcom/fyber/ads/internal/a;

    const-string v1, "ShowClose"

    const/16 v2, 0x8

    const-string v3, "close"

    invoke-direct {v0, v1, v2, v3}, Lcom/fyber/ads/internal/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fyber/ads/internal/a;->i:Lcom/fyber/ads/internal/a;

    .line 53
    new-instance v0, Lcom/fyber/ads/internal/a;

    const-string v1, "ShowError"

    const/16 v2, 0x9

    const-string v3, "error"

    invoke-direct {v0, v1, v2, v3}, Lcom/fyber/ads/internal/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fyber/ads/internal/a;->j:Lcom/fyber/ads/internal/a;

    .line 57
    new-instance v0, Lcom/fyber/ads/internal/a;

    const-string v1, "NotIntegrated"

    const/16 v2, 0xa

    const-string v3, "no_sdk"

    invoke-direct {v0, v1, v2, v3}, Lcom/fyber/ads/internal/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fyber/ads/internal/a;->k:Lcom/fyber/ads/internal/a;

    .line 59
    new-instance v0, Lcom/fyber/ads/internal/a;

    const-string v1, "Progress"

    const/16 v2, 0xb

    const-string v3, "progress"

    invoke-direct {v0, v1, v2, v3}, Lcom/fyber/ads/internal/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fyber/ads/internal/a;->l:Lcom/fyber/ads/internal/a;

    .line 61
    new-instance v0, Lcom/fyber/ads/internal/a;

    const-string v1, "Interaction"

    const/16 v2, 0xc

    const-string v3, "interaction"

    invoke-direct {v0, v1, v2, v3}, Lcom/fyber/ads/internal/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fyber/ads/internal/a;->m:Lcom/fyber/ads/internal/a;

    .line 13
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/fyber/ads/internal/a;

    sget-object v1, Lcom/fyber/ads/internal/a;->a:Lcom/fyber/ads/internal/a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fyber/ads/internal/a;->b:Lcom/fyber/ads/internal/a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/fyber/ads/internal/a;->c:Lcom/fyber/ads/internal/a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/fyber/ads/internal/a;->d:Lcom/fyber/ads/internal/a;

    aput-object v1, v0, v7

    sget-object v1, Lcom/fyber/ads/internal/a;->e:Lcom/fyber/ads/internal/a;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/fyber/ads/internal/a;->f:Lcom/fyber/ads/internal/a;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/fyber/ads/internal/a;->g:Lcom/fyber/ads/internal/a;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/fyber/ads/internal/a;->h:Lcom/fyber/ads/internal/a;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/fyber/ads/internal/a;->i:Lcom/fyber/ads/internal/a;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/fyber/ads/internal/a;->j:Lcom/fyber/ads/internal/a;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/fyber/ads/internal/a;->k:Lcom/fyber/ads/internal/a;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/fyber/ads/internal/a;->l:Lcom/fyber/ads/internal/a;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/fyber/ads/internal/a;->m:Lcom/fyber/ads/internal/a;

    aput-object v2, v0, v1

    sput-object v0, Lcom/fyber/ads/internal/a;->o:[Lcom/fyber/ads/internal/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 120
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 121
    iput-object p3, p0, Lcom/fyber/ads/internal/a;->n:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fyber/ads/internal/a;
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/fyber/ads/internal/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fyber/ads/internal/a;

    return-object v0
.end method

.method public static values()[Lcom/fyber/ads/internal/a;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/fyber/ads/internal/a;->o:[Lcom/fyber/ads/internal/a;

    invoke-virtual {v0}, [Lcom/fyber/ads/internal/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fyber/ads/internal/a;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/fyber/ads/internal/a;->n:Ljava/lang/String;

    return-object v0
.end method
