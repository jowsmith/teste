.class public Lcom/fyber/utils/testsuite/IntegrationReport;
.super Ljava/lang/Object;
.source "IntegrationReport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fyber/utils/testsuite/IntegrationReport$a;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fyber/utils/testsuite/MediationBundleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fyber/utils/testsuite/MediationBundleInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(ZZLjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/fyber/utils/testsuite/MediationBundleInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/fyber/utils/testsuite/MediationBundleInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-boolean p1, p0, Lcom/fyber/utils/testsuite/IntegrationReport;->a:Z

    .line 82
    iput-boolean p2, p0, Lcom/fyber/utils/testsuite/IntegrationReport;->b:Z

    .line 83
    iput-object p3, p0, Lcom/fyber/utils/testsuite/IntegrationReport;->c:Ljava/lang/String;

    .line 84
    iput-object p4, p0, Lcom/fyber/utils/testsuite/IntegrationReport;->d:Ljava/lang/String;

    .line 85
    iput-object p5, p0, Lcom/fyber/utils/testsuite/IntegrationReport;->e:Ljava/util/List;

    .line 86
    iput-object p6, p0, Lcom/fyber/utils/testsuite/IntegrationReport;->f:Ljava/util/List;

    .line 87
    return-void
.end method

.method synthetic constructor <init>(ZZLjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;B)V
    .locals 0

    .prologue
    .line 12
    invoke-direct/range {p0 .. p6}, Lcom/fyber/utils/testsuite/IntegrationReport;-><init>(ZZLjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public getAppID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/fyber/utils/testsuite/IntegrationReport;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getFyberSdkVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/fyber/Fyber;->RELEASE_VERSION_STRING:Ljava/lang/String;

    return-object v0
.end method

.method public getStartedBundles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fyber/utils/testsuite/MediationBundleInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/fyber/utils/testsuite/IntegrationReport;->e:Ljava/util/List;

    return-object v0
.end method

.method public getTestSuiteVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    const-string v0, "1.0.0"

    return-object v0
.end method

.method public getUnstartedBundles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fyber/utils/testsuite/MediationBundleInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lcom/fyber/utils/testsuite/IntegrationReport;->f:Ljava/util/List;

    return-object v0
.end method

.method public getUserID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/fyber/utils/testsuite/IntegrationReport;->d:Ljava/lang/String;

    return-object v0
.end method

.method public isAnnotationsCompatible()Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/fyber/utils/testsuite/IntegrationReport;->b:Z

    return v0
.end method

.method public isAnnotationsCorrectlyIntegrated()Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/fyber/utils/testsuite/IntegrationReport;->a:Z

    return v0
.end method
