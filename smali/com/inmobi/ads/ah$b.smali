.class final enum Lcom/inmobi/ads/ah$b;
.super Ljava/lang/Enum;
.source "NativeStrandTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/ah;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/inmobi/ads/ah$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/inmobi/ads/ah$b;

.field public static final enum b:Lcom/inmobi/ads/ah$b;

.field public static final enum c:Lcom/inmobi/ads/ah$b;

.field public static final enum d:Lcom/inmobi/ads/ah$b;

.field private static final synthetic e:[Lcom/inmobi/ads/ah$b;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    new-instance v0, Lcom/inmobi/ads/ah$b;

    const-string v1, "TRACKER_TYPE_UNKNOWN_OR_UNSUPPORTED"

    invoke-direct {v0, v1, v2}, Lcom/inmobi/ads/ah$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/ads/ah$b;->a:Lcom/inmobi/ads/ah$b;

    .line 24
    new-instance v0, Lcom/inmobi/ads/ah$b;

    const-string v1, "TRACKER_TYPE_URL_PING"

    invoke-direct {v0, v1, v3}, Lcom/inmobi/ads/ah$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/ads/ah$b;->b:Lcom/inmobi/ads/ah$b;

    .line 25
    new-instance v0, Lcom/inmobi/ads/ah$b;

    const-string v1, "TRACKER_TYPE_URL_WEBVIEW_PING"

    invoke-direct {v0, v1, v4}, Lcom/inmobi/ads/ah$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/ads/ah$b;->c:Lcom/inmobi/ads/ah$b;

    .line 26
    new-instance v0, Lcom/inmobi/ads/ah$b;

    const-string v1, "TRACKER_TYPE_HTML_SCRIPT"

    invoke-direct {v0, v1, v5}, Lcom/inmobi/ads/ah$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/ads/ah$b;->d:Lcom/inmobi/ads/ah$b;

    .line 22
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/inmobi/ads/ah$b;

    sget-object v1, Lcom/inmobi/ads/ah$b;->a:Lcom/inmobi/ads/ah$b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/inmobi/ads/ah$b;->b:Lcom/inmobi/ads/ah$b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/inmobi/ads/ah$b;->c:Lcom/inmobi/ads/ah$b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/inmobi/ads/ah$b;->d:Lcom/inmobi/ads/ah$b;

    aput-object v1, v0, v5

    sput-object v0, Lcom/inmobi/ads/ah$b;->e:[Lcom/inmobi/ads/ah$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/inmobi/ads/ah$b;
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/inmobi/ads/ah$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/ah$b;

    return-object v0
.end method

.method public static values()[Lcom/inmobi/ads/ah$b;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/inmobi/ads/ah$b;->e:[Lcom/inmobi/ads/ah$b;

    invoke-virtual {v0}, [Lcom/inmobi/ads/ah$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/inmobi/ads/ah$b;

    return-object v0
.end method
