.class Lcom/miniclip/googlebilling/IabHelper$2;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/googlebilling/IabHelper;->queryInventoryAsync(ZLjava/util/List;Ljava/util/List;Lcom/miniclip/googlebilling/IabHelper$QueryInventoryFinishedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miniclip/googlebilling/IabHelper;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$listener:Lcom/miniclip/googlebilling/IabHelper$QueryInventoryFinishedListener;

.field final synthetic val$moreItemSkus:Ljava/util/List;

.field final synthetic val$moreSubsSkus:Ljava/util/List;

.field final synthetic val$querySkuDetails:Z


# direct methods
.method constructor <init>(Lcom/miniclip/googlebilling/IabHelper;ZLjava/util/List;Ljava/util/List;Lcom/miniclip/googlebilling/IabHelper$QueryInventoryFinishedListener;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miniclip/googlebilling/IabHelper;

    .prologue
    .line 715
    iput-object p1, p0, Lcom/miniclip/googlebilling/IabHelper$2;->this$0:Lcom/miniclip/googlebilling/IabHelper;

    iput-boolean p2, p0, Lcom/miniclip/googlebilling/IabHelper$2;->val$querySkuDetails:Z

    iput-object p3, p0, Lcom/miniclip/googlebilling/IabHelper$2;->val$moreItemSkus:Ljava/util/List;

    iput-object p4, p0, Lcom/miniclip/googlebilling/IabHelper$2;->val$moreSubsSkus:Ljava/util/List;

    iput-object p5, p0, Lcom/miniclip/googlebilling/IabHelper$2;->val$listener:Lcom/miniclip/googlebilling/IabHelper$QueryInventoryFinishedListener;

    iput-object p6, p0, Lcom/miniclip/googlebilling/IabHelper$2;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 717
    new-instance v3, Lcom/miniclip/googlebilling/IabResult;

    const/4 v5, 0x0

    const-string v6, "Inventory refresh successful."

    invoke-direct {v3, v5, v6}, Lcom/miniclip/googlebilling/IabResult;-><init>(ILjava/lang/String;)V

    .line 718
    .local v3, "result":Lcom/miniclip/googlebilling/IabResult;
    const/4 v1, 0x0

    .line 720
    .local v1, "inv":Lcom/miniclip/googlebilling/Inventory;
    :try_start_0
    iget-object v5, p0, Lcom/miniclip/googlebilling/IabHelper$2;->this$0:Lcom/miniclip/googlebilling/IabHelper;

    iget-boolean v6, p0, Lcom/miniclip/googlebilling/IabHelper$2;->val$querySkuDetails:Z

    iget-object v7, p0, Lcom/miniclip/googlebilling/IabHelper$2;->val$moreItemSkus:Ljava/util/List;

    iget-object v8, p0, Lcom/miniclip/googlebilling/IabHelper$2;->val$moreSubsSkus:Ljava/util/List;

    invoke-virtual {v5, v6, v7, v8}, Lcom/miniclip/googlebilling/IabHelper;->queryInventory(ZLjava/util/List;Ljava/util/List;)Lcom/miniclip/googlebilling/Inventory;
    :try_end_0
    .catch Lcom/miniclip/googlebilling/IabException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 726
    :goto_0
    iget-object v5, p0, Lcom/miniclip/googlebilling/IabHelper$2;->this$0:Lcom/miniclip/googlebilling/IabHelper;

    invoke-virtual {v5}, Lcom/miniclip/googlebilling/IabHelper;->flagEndAsync()V

    .line 728
    move-object v4, v3

    .line 729
    .local v4, "result_f":Lcom/miniclip/googlebilling/IabResult;
    move-object v2, v1

    .line 730
    .local v2, "inv_f":Lcom/miniclip/googlebilling/Inventory;
    iget-object v5, p0, Lcom/miniclip/googlebilling/IabHelper$2;->this$0:Lcom/miniclip/googlebilling/IabHelper;

    iget-boolean v5, v5, Lcom/miniclip/googlebilling/IabHelper;->mDisposed:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/miniclip/googlebilling/IabHelper$2;->val$listener:Lcom/miniclip/googlebilling/IabHelper$QueryInventoryFinishedListener;

    if-eqz v5, :cond_0

    .line 731
    iget-object v5, p0, Lcom/miniclip/googlebilling/IabHelper$2;->val$handler:Landroid/os/Handler;

    new-instance v6, Lcom/miniclip/googlebilling/IabHelper$2$1;

    invoke-direct {v6, p0, v4, v2}, Lcom/miniclip/googlebilling/IabHelper$2$1;-><init>(Lcom/miniclip/googlebilling/IabHelper$2;Lcom/miniclip/googlebilling/IabResult;Lcom/miniclip/googlebilling/Inventory;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 737
    :cond_0
    return-void

    .line 722
    .end local v2    # "inv_f":Lcom/miniclip/googlebilling/Inventory;
    .end local v4    # "result_f":Lcom/miniclip/googlebilling/IabResult;
    :catch_0
    move-exception v0

    .line 723
    .local v0, "ex":Lcom/miniclip/googlebilling/IabException;
    invoke-virtual {v0}, Lcom/miniclip/googlebilling/IabException;->getResult()Lcom/miniclip/googlebilling/IabResult;

    move-result-object v3

    goto :goto_0
.end method
