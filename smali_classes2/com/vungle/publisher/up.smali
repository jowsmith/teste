.class public final enum Lcom/vungle/publisher/up;
.super Ljava/lang/Enum;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/vungle/publisher/up;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/vungle/publisher/up;

.field public static final enum b:Lcom/vungle/publisher/up;

.field public static final enum c:Lcom/vungle/publisher/up;

.field public static final enum d:Lcom/vungle/publisher/up;

.field public static final enum e:Lcom/vungle/publisher/up;

.field private static final synthetic g:[Lcom/vungle/publisher/up;


# instance fields
.field public final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4
    new-instance v0, Lcom/vungle/publisher/up;

    const-string v1, "disabled"

    const-string v2, "DISABLED"

    invoke-direct {v0, v1, v3, v2}, Lcom/vungle/publisher/up;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/vungle/publisher/up;->a:Lcom/vungle/publisher/up;

    .line 5
    new-instance v0, Lcom/vungle/publisher/up;

    const-string v1, "whitelisted"

    const-string v2, "WHITELISTED"

    invoke-direct {v0, v1, v4, v2}, Lcom/vungle/publisher/up;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/vungle/publisher/up;->b:Lcom/vungle/publisher/up;

    .line 6
    new-instance v0, Lcom/vungle/publisher/up;

    const-string v1, "enabled"

    const-string v2, "ENABLED"

    invoke-direct {v0, v1, v5, v2}, Lcom/vungle/publisher/up;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/vungle/publisher/up;->c:Lcom/vungle/publisher/up;

    .line 7
    new-instance v0, Lcom/vungle/publisher/up;

    const-string v1, "not_applicable"

    const-string v2, "NOT_APPLICABLE"

    invoke-direct {v0, v1, v6, v2}, Lcom/vungle/publisher/up;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/vungle/publisher/up;->d:Lcom/vungle/publisher/up;

    .line 8
    new-instance v0, Lcom/vungle/publisher/up;

    const-string v1, "unknown"

    const-string v2, "UNKNOWN"

    invoke-direct {v0, v1, v7, v2}, Lcom/vungle/publisher/up;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/vungle/publisher/up;->e:Lcom/vungle/publisher/up;

    .line 3
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/vungle/publisher/up;

    sget-object v1, Lcom/vungle/publisher/up;->a:Lcom/vungle/publisher/up;

    aput-object v1, v0, v3

    sget-object v1, Lcom/vungle/publisher/up;->b:Lcom/vungle/publisher/up;

    aput-object v1, v0, v4

    sget-object v1, Lcom/vungle/publisher/up;->c:Lcom/vungle/publisher/up;

    aput-object v1, v0, v5

    sget-object v1, Lcom/vungle/publisher/up;->d:Lcom/vungle/publisher/up;

    aput-object v1, v0, v6

    sget-object v1, Lcom/vungle/publisher/up;->e:Lcom/vungle/publisher/up;

    aput-object v1, v0, v7

    sput-object v0, Lcom/vungle/publisher/up;->g:[Lcom/vungle/publisher/up;

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
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 12
    iput-object p3, p0, Lcom/vungle/publisher/up;->f:Ljava/lang/String;

    .line 13
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vungle/publisher/up;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/vungle/publisher/up;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/up;

    return-object v0
.end method

.method public static values()[Lcom/vungle/publisher/up;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/vungle/publisher/up;->g:[Lcom/vungle/publisher/up;

    invoke-virtual {v0}, [Lcom/vungle/publisher/up;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vungle/publisher/up;

    return-object v0
.end method
