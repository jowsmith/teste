.class Lcom/adcolony/sdk/d$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/ac;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/d;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/d;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/d;)V
    .locals 0

    .prologue
    .line 267
    iput-object p1, p0, Lcom/adcolony/sdk/d$10;->a:Lcom/adcolony/sdk/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/adcolony/sdk/aa;)V
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/adcolony/sdk/d$10;->a:Lcom/adcolony/sdk/d;

    invoke-virtual {v0, p1}, Lcom/adcolony/sdk/d;->b(Lcom/adcolony/sdk/aa;)Z

    .line 271
    return-void
.end method
