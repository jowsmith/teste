.class final enum Lcom/inmobi/ads/ar$a$a;
.super Ljava/lang/Enum;
.source "NativeV2TextAsset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/ar$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/inmobi/ads/ar$a$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/inmobi/ads/ar$a$a;

.field public static final enum b:Lcom/inmobi/ads/ar$a$a;

.field public static final enum c:Lcom/inmobi/ads/ar$a$a;

.field private static final synthetic d:[Lcom/inmobi/ads/ar$a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 54
    new-instance v0, Lcom/inmobi/ads/ar$a$a;

    const-string v1, "TEXT_LEFT_ALIGNED"

    invoke-direct {v0, v1, v2}, Lcom/inmobi/ads/ar$a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/ads/ar$a$a;->a:Lcom/inmobi/ads/ar$a$a;

    .line 55
    new-instance v0, Lcom/inmobi/ads/ar$a$a;

    const-string v1, "TEXT_RIGHT_ALIGNED"

    invoke-direct {v0, v1, v3}, Lcom/inmobi/ads/ar$a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/ads/ar$a$a;->b:Lcom/inmobi/ads/ar$a$a;

    .line 56
    new-instance v0, Lcom/inmobi/ads/ar$a$a;

    const-string v1, "TEXT_CENTER_ALIGNED"

    invoke-direct {v0, v1, v4}, Lcom/inmobi/ads/ar$a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/ads/ar$a$a;->c:Lcom/inmobi/ads/ar$a$a;

    .line 53
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/inmobi/ads/ar$a$a;

    sget-object v1, Lcom/inmobi/ads/ar$a$a;->a:Lcom/inmobi/ads/ar$a$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/inmobi/ads/ar$a$a;->b:Lcom/inmobi/ads/ar$a$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/inmobi/ads/ar$a$a;->c:Lcom/inmobi/ads/ar$a$a;

    aput-object v1, v0, v4

    sput-object v0, Lcom/inmobi/ads/ar$a$a;->d:[Lcom/inmobi/ads/ar$a$a;

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
    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/inmobi/ads/ar$a$a;
    .locals 1

    .prologue
    .line 53
    const-class v0, Lcom/inmobi/ads/ar$a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/ar$a$a;

    return-object v0
.end method

.method public static values()[Lcom/inmobi/ads/ar$a$a;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/inmobi/ads/ar$a$a;->d:[Lcom/inmobi/ads/ar$a$a;

    invoke-virtual {v0}, [Lcom/inmobi/ads/ar$a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/inmobi/ads/ar$a$a;

    return-object v0
.end method
