.class public final Lcom/fyber/b/g;
.super Lcom/fyber/b/k;
.source "MediationConfigurationNetworkOperation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fyber/b/k",
        "<",
        "Ljava/lang/String;",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field private b:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Lcom/fyber/utils/u;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/fyber/b/k;-><init>(Lcom/fyber/utils/u;Ljava/lang/String;)V

    .line 49
    const-string v0, "MediationConfigurationNetworkOperation"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/fyber/b/g;->b:Landroid/content/SharedPreferences;

    .line 50
    return-void
.end method

.method public static a(Lcom/fyber/a/a;Landroid/app/Activity;)Ljava/util/concurrent/Future;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fyber/a/a;",
            "Landroid/app/Activity;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;>;"
        }
    .end annotation

    .prologue
    .line 39
    const-string v0, "config"

    invoke-static {v0}, Lcom/fyber/utils/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 40
    invoke-static {v0, p0}, Lcom/fyber/utils/u;->a(Ljava/lang/String;Lcom/fyber/a/a;)Lcom/fyber/utils/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/utils/u;->c()Lcom/fyber/utils/u;

    move-result-object v0

    .line 41
    invoke-static {}, Lcom/fyber/Fyber;->getConfigs()Lcom/fyber/Fyber$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fyber/Fyber$a;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 42
    invoke-static {}, Lcom/fyber/Fyber;->getConfigs()Lcom/fyber/Fyber$a;

    move-result-object v1

    new-instance v2, Lcom/fyber/b/g;

    invoke-virtual {p0}, Lcom/fyber/a/a;->c()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3, p1}, Lcom/fyber/b/g;-><init>(Lcom/fyber/utils/u;Ljava/lang/String;Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Lcom/fyber/Fyber$a;->a(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 44
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 54
    invoke-static {p1}, Lcom/fyber/utils/StringUtils;->nullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    const-string v0, "MediationConfigurationNetworkOperation"

    const-string v1, "No configs from the server, fallback to cached version."

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/fyber/b/g;->b:Landroid/content/SharedPreferences;

    const-string v1, "MediationConfigurationNetworkOperation"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 58
    invoke-static {p1}, Lcom/fyber/utils/StringUtils;->nullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    const-string v0, "MediationConfigurationNetworkOperation"

    const-string v1, "There were no cached version to use."

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/fyber/b/g;->c(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 61
    :cond_1
    const-string v0, "MediationConfigurationNetworkOperation"

    const-string v1, "Using cached json file."

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static c(Ljava/lang/String;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 111
    const-string v0, "MediationConfigurationNetworkOperation"

    const-string v1, "Reading config file"

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 115
    invoke-static {p0}, Lcom/fyber/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 117
    :try_start_0
    const-string v0, "MediationConfigurationNetworkOperation"

    const-string v1, "Parsing configurations"

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 119
    const-string v1, "adapters"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 120
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 121
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 122
    const-string v4, "name"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 123
    const-string v5, "settings"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 124
    const-string v5, "settings"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 125
    new-instance v6, Ljava/util/HashMap;

    .line 126
    invoke-virtual {v5}, Lorg/json/JSONObject;->length()I

    move-result v0

    invoke-direct {v6, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 128
    invoke-virtual {v5}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v7

    .line 129
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 131
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 132
    invoke-interface {v6, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 141
    :catch_0
    move-exception v0

    .line 142
    const-string v1, "MediationConfigurationNetworkOperation"

    const-string v3, "A JSON error occurred while parsing the configuration file, there will be no mediation configurations."

    invoke-static {v1, v3, v0}, Lcom/fyber/utils/FyberLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 148
    :goto_2
    return-object v2

    .line 134
    :cond_0
    :try_start_1
    invoke-interface {v2, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 136
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    .line 137
    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 140
    :cond_2
    const-string v0, "MediationConfigurationNetworkOperation"

    const-string v1, "configuration loaded successfully"

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 146
    :cond_3
    const-string v0, "MediationConfigurationNetworkOperation"

    const-string v1, "Configuration was not found, there will be no mediation configurations."

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method


# virtual methods
.method protected final synthetic a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 32
    .line 2070
    invoke-virtual {p0, p2, p3}, Lcom/fyber/b/g;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2071
    const-string v0, "MediationConfigurationNetworkOperation"

    const-string v1, "Invalid signature, those configs will not be used."

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2073
    :cond_0
    const-string v0, ""

    .line 32
    return-object v0
.end method

.method protected final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/fyber/b/g;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 32
    .line 1078
    const-string v0, "MediationConfigurationNetworkOperation"

    const-string v1, "The signature is valid, proceeding..."

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1080
    const-string v0, ""

    .line 1082
    invoke-static {p1}, Lcom/fyber/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1084
    iget-object v0, p0, Lcom/fyber/b/g;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "MediationConfigurationNetworkOperation"

    .line 1085
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1086
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    .line 1088
    if-eqz v0, :cond_0

    .line 1089
    const-string v0, "MediationConfigurationNetworkOperation"

    const-string v1, "Server Side Configuration has been saved successfully."

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    :goto_0
    return-object p1

    .line 1091
    :cond_0
    const-string v0, "MediationConfigurationNetworkOperation"

    const-string v1, "Failed to save Server Side Configuration."

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object p1, v0

    goto :goto_0
.end method

.method protected final a_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    const-string v0, "MediationConfigurationNetworkOperation"

    return-object v0
.end method

.method protected final synthetic b(Ljava/io/IOException;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 32
    .line 2101
    const-string v0, "MediationConfigurationNetworkOperation"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Connection error - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2102
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/fyber/b/g;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 32
    return-object v0
.end method
