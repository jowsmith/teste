.class final Lcom/inmobi/commons/core/configs/ConfigNetworkResponse;
.super Ljava/lang/Object;
.source "ConfigNetworkResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/commons/core/configs/ConfigNetworkResponse$ConfigResponse;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/inmobi/commons/core/configs/a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/inmobi/commons/core/configs/ConfigNetworkResponse$ConfigResponse;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/inmobi/commons/core/network/c;

.field private e:Lcom/inmobi/commons/core/configs/ConfigError;

.field private f:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/inmobi/commons/core/configs/ConfigNetworkResponse;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/commons/core/configs/ConfigNetworkResponse;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/util/Map;Lcom/inmobi/commons/core/network/c;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/inmobi/commons/core/configs/a;",
            ">;",
            "Lcom/inmobi/commons/core/network/c;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/inmobi/commons/core/configs/ConfigNetworkResponse;->b:Ljava/util/Map;

    .line 30
    iput-object p2, p0, Lcom/inmobi/commons/core/configs/ConfigNetworkResponse;->d:Lcom/inmobi/commons/core/network/c;

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/inmobi/commons/core/configs/ConfigNetworkResponse;->c:Ljava/util/Map;

    .line 32
    iput-wide p3, p0, Lcom/inmobi/commons/core/configs/ConfigNetworkResponse;->f:J

    .line 33
    invoke-direct {p0}, Lcom/inmobi/commons/core/configs/ConfigNetworkResponse;->d()V

    .line 34
    return-void
.end method

.method private static a(Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/inmobi/commons/core/configs/a;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 191
    const-string v0, ""

    .line 192
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 193
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 194
    goto :goto_0

    .line 195
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/inmobi/commons/core/configs/ConfigError;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/inmobi/commons/core/configs/ConfigNetworkResponse;->e:Lcom/inmobi/commons/core/configs/ConfigError;

    .line 100
    return-void
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/inmobi/commons/core/configs/ConfigNetworkResponse;->a:Ljava/lang/String;

    return-object v0
.end method

.method private d()V
    .locals 6

    .prologue
    .line 37
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/ConfigNetworkResponse;->d:Lcom/inmobi/commons/core/network/c;

    invoke-virtual {v0}, Lcom/inmobi/commons/core/network/c;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 39
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/inmobi/commons/core/configs/ConfigNetworkResponse;->d:Lcom/inmobi/commons/core/network/c;

    invoke-virtual {v0}, Lcom/inmobi/commons/core/network/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 42
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 44
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 46
    iget-object v1, p0, Lcom/inmobi/commons/core/configs/ConfigNetworkResponse;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 47
    new-instance v5, Lcom/inmobi/commons/core/configs/ConfigNetworkResponse$ConfigResponse;

    iget-object v1, p0, Lcom/inmobi/commons/core/configs/ConfigNetworkResponse;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/commons/core/configs/a;

    invoke-direct {v5, v4, v1}, Lcom/inmobi/commons/core/configs/ConfigNetworkResponse$ConfigResponse;-><init>(Lorg/json/JSONObject;Lcom/inmobi/commons/core/configs/a;)V

    .line 48
    iget-object v1, p0, Lcom/inmobi/commons/core/configs/ConfigNetworkResponse;->c:Ljava/util/Map;

    invoke-interface {v1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 51
    :catch_0
    move-exception v0

    .line 52
    new-instance v1, Lcom/inmobi/commons/core/configs/ConfigError;

    sget-object v2, Lcom/inmobi/commons/core/configs/ConfigError$ErrorCode;->PARSING_ERROR:Lcom/inmobi/commons/core/configs/ConfigError$ErrorCode;

    invoke-virtual {v0}, Lorg/json/JSONException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/inmobi/commons/core/configs/ConfigError;-><init>(Lcom/inmobi/commons/core/configs/ConfigError$ErrorCode;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/inmobi/commons/core/configs/ConfigNetworkResponse;->a(Lcom/inmobi/commons/core/configs/ConfigError;)V

    .line 53
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/commons/core/configs/ConfigNetworkResponse;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error code:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/inmobi/commons/core/configs/ConfigNetworkResponse;->b()Lcom/inmobi/commons/core/configs/ConfigError;

    move-result-object v4

    invoke-virtual {v4}, Lcom/inmobi/commons/core/configs/ConfigError;->a()Lcom/inmobi/commons/core/configs/ConfigError$ErrorCode;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Error message:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/inmobi/commons/core/configs/ConfigNetworkResponse;->b()Lcom/inmobi/commons/core/configs/ConfigError;

    move-result-object v4

    invoke-virtual {v4}, Lcom/inmobi/commons/core/configs/ConfigError;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 55
    :try_start_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 56
    const-string v2, "name"

    iget-object v3, p0, Lcom/inmobi/commons/core/configs/ConfigNetworkResponse;->b:Ljava/util/Map;

    invoke-static {v3}, Lcom/inmobi/commons/core/configs/ConfigNetworkResponse;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-string v2, "errorCode"

    const-string v3, "ParsingError"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const-string v2, "reason"

    invoke-virtual {v0}, Lorg/json/JSONException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string v0, "latency"

    iget-wide v2, p0, Lcom/inmobi/commons/core/configs/ConfigNetworkResponse;->f:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v0

    const-string v2, "root"

    const-string v3, "InvalidConfig"

    invoke-virtual {v0, v2, v3, v1}, Lcom/inmobi/commons/core/d/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 88
    :cond_1
    :goto_1
    return-void

    .line 61
    :catch_1
    move-exception v0

    .line 62
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/commons/core/configs/ConfigNetworkResponse;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in submitting telemetry event : ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 63
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 62
    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 67
    :cond_2
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/ConfigNetworkResponse;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 68
    new-instance v3, Lcom/inmobi/commons/core/configs/ConfigNetworkResponse$ConfigResponse;

    const/4 v4, 0x0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/commons/core/configs/a;

    invoke-direct {v3, v4, v1}, Lcom/inmobi/commons/core/configs/ConfigNetworkResponse$ConfigResponse;-><init>(Lorg/json/JSONObject;Lcom/inmobi/commons/core/configs/a;)V

    .line 69
    new-instance v1, Lcom/inmobi/commons/core/configs/ConfigError;

    sget-object v4, Lcom/inmobi/commons/core/configs/ConfigError$ErrorCode;->NETWORK_ERROR:Lcom/inmobi/commons/core/configs/ConfigError$ErrorCode;

    const-string v5, "Network error in fetching config."

    invoke-direct {v1, v4, v5}, Lcom/inmobi/commons/core/configs/ConfigError;-><init>(Lcom/inmobi/commons/core/configs/ConfigError$ErrorCode;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lcom/inmobi/commons/core/configs/ConfigNetworkResponse$ConfigResponse;->a(Lcom/inmobi/commons/core/configs/ConfigError;)V

    .line 70
    iget-object v1, p0, Lcom/inmobi/commons/core/configs/ConfigNetworkResponse;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 74
    :cond_3
    new-instance v0, Lcom/inmobi/commons/core/configs/ConfigError;

    sget-object v1, Lcom/inmobi/commons/core/configs/ConfigError$ErrorCode;->NETWORK_ERROR:Lcom/inmobi/commons/core/configs/ConfigError$ErrorCode;

    iget-object v2, p0, Lcom/inmobi/commons/core/configs/ConfigNetworkResponse;->d:Lcom/inmobi/commons/core/network/c;

    invoke-virtual {v2}, Lcom/inmobi/commons/core/network/c;->e()Lcom/inmobi/commons/core/network/NetworkError;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/commons/core/network/NetworkError;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/inmobi/commons/core/configs/ConfigError;-><init>(Lcom/inmobi/commons/core/configs/ConfigError$ErrorCode;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/inmobi/commons/core/configs/ConfigNetworkResponse;->a(Lcom/inmobi/commons/core/configs/ConfigError;)V

    .line 75
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/commons/core/configs/ConfigNetworkResponse;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error code:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/inmobi/commons/core/configs/ConfigNetworkResponse;->b()Lcom/inmobi/commons/core/configs/ConfigError;

    move-result-object v3

    invoke-virtual {v3}, Lcom/inmobi/commons/core/configs/ConfigError;->a()Lcom/inmobi/commons/core/configs/ConfigError$ErrorCode;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Error message:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/inmobi/commons/core/configs/ConfigNetworkResponse;->b()Lcom/inmobi/commons/core/configs/ConfigError;

    move-result-object v3

    invoke-virtual {v3}, Lcom/inmobi/commons/core/configs/ConfigError;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :try_start_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 78
    const-string v1, "name"

    iget-object v2, p0, Lcom/inmobi/commons/core/configs/ConfigNetworkResponse;->b:Ljava/util/Map;

    invoke-static {v2}, Lcom/inmobi/commons/core/configs/ConfigNetworkResponse;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string v1, "errorCode"

    iget-object v2, p0, Lcom/inmobi/commons/core/configs/ConfigNetworkResponse;->d:Lcom/inmobi/commons/core/network/c;

    invoke-virtual {v2}, Lcom/inmobi/commons/core/network/c;->e()Lcom/inmobi/commons/core/network/NetworkError;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/commons/core/network/NetworkError;->a()Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string v1, "reason"

    iget-object v2, p0, Lcom/inmobi/commons/core/configs/ConfigNetworkResponse;->d:Lcom/inmobi/commons/core/network/c;

    invoke-virtual {v2}, Lcom/inmobi/commons/core/network/c;->e()Lcom/inmobi/commons/core/network/NetworkError;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/commons/core/network/NetworkError;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-string v1, "latency"

    iget-wide v2, p0, Lcom/inmobi/commons/core/configs/ConfigNetworkResponse;->f:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    const-string v2, "root"

    const-string v3, "InvalidConfig"

    invoke-virtual {v1, v2, v3, v0}, Lcom/inmobi/commons/core/d/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    .line 83
    :catch_2
    move-exception v0

    .line 84
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/commons/core/configs/ConfigNetworkResponse;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in submitting telemetry event : ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 85
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 84
    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/inmobi/commons/core/configs/ConfigNetworkResponse$ConfigResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/ConfigNetworkResponse;->c:Ljava/util/Map;

    return-object v0
.end method

.method public b()Lcom/inmobi/commons/core/configs/ConfigError;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/ConfigNetworkResponse;->e:Lcom/inmobi/commons/core/configs/ConfigError;

    return-object v0
.end method
