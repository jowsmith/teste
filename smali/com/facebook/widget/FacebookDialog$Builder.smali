.class public abstract Lcom/facebook/widget/FacebookDialog$Builder;
.super Ljava/lang/Object;
.source "FacebookDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/widget/FacebookDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CONCRETE:",
        "Lcom/facebook/widget/FacebookDialog$Builder",
        "<*>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final activity:Landroid/app/Activity;

.field protected final appCall:Lcom/facebook/widget/FacebookDialog$PendingCall;

.field protected final applicationId:Ljava/lang/String;

.field protected applicationName:Ljava/lang/String;

.field protected fragment:Landroid/support/v4/app/Fragment;

.field protected imageAttachments:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field protected mediaAttachmentFiles:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 589
    .local p0, "this":Lcom/facebook/widget/FacebookDialog$Builder;, "Lcom/facebook/widget/FacebookDialog$Builder<TCONCRETE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 581
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/widget/FacebookDialog$Builder;->imageAttachments:Ljava/util/HashMap;

    .line 582
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/widget/FacebookDialog$Builder;->mediaAttachmentFiles:Ljava/util/HashMap;

    .line 590
    const-string v0, "activity"

    invoke-static {p1, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 592
    iput-object p1, p0, Lcom/facebook/widget/FacebookDialog$Builder;->activity:Landroid/app/Activity;

    .line 593
    invoke-static {p1}, Lcom/facebook/internal/Utility;->getMetadataApplicationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/widget/FacebookDialog$Builder;->applicationId:Ljava/lang/String;

    .line 594
    new-instance v0, Lcom/facebook/widget/FacebookDialog$PendingCall;

    const v1, 0xfacf

    invoke-direct {v0, v1}, Lcom/facebook/widget/FacebookDialog$PendingCall;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/widget/FacebookDialog$Builder;->appCall:Lcom/facebook/widget/FacebookDialog$PendingCall;

    .line 595
    return-void
.end method


# virtual methods
.method protected addImageAttachment(Ljava/lang/String;Landroid/graphics/Bitmap;)Lcom/facebook/widget/FacebookDialog$Builder;
    .locals 2
    .param p1, "imageName"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ")TCONCRETE;"
        }
    .end annotation

    .prologue
    .line 819
    .local p0, "this":Lcom/facebook/widget/FacebookDialog$Builder;, "Lcom/facebook/widget/FacebookDialog$Builder<TCONCRETE;>;"
    iget-object v1, p0, Lcom/facebook/widget/FacebookDialog$Builder;->imageAttachments:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 821
    move-object v0, p0

    .line 822
    .local v0, "result":Lcom/facebook/widget/FacebookDialog$Builder;, "TCONCRETE;"
    return-object v0
.end method

.method protected addImageAttachment(Ljava/lang/String;Ljava/io/File;)Lcom/facebook/widget/FacebookDialog$Builder;
    .locals 2
    .param p1, "imageName"    # Ljava/lang/String;
    .param p2, "attachment"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ")TCONCRETE;"
        }
    .end annotation

    .prologue
    .line 826
    .local p0, "this":Lcom/facebook/widget/FacebookDialog$Builder;, "Lcom/facebook/widget/FacebookDialog$Builder<TCONCRETE;>;"
    iget-object v1, p0, Lcom/facebook/widget/FacebookDialog$Builder;->mediaAttachmentFiles:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 828
    move-object v0, p0

    .line 829
    .local v0, "result":Lcom/facebook/widget/FacebookDialog$Builder;, "TCONCRETE;"
    return-object v0
.end method

.method protected addImageAttachmentFiles(Ljava/util/Collection;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/io/File;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 777
    .local p0, "this":Lcom/facebook/widget/FacebookDialog$Builder;, "Lcom/facebook/widget/FacebookDialog$Builder<TCONCRETE;>;"
    .local p1, "bitmapFiles":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/io/File;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 778
    .local v1, "attachmentUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 779
    .local v2, "bitmapFile":Ljava/io/File;
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 781
    .local v0, "attachmentName":Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Lcom/facebook/widget/FacebookDialog$Builder;->addImageAttachment(Ljava/lang/String;Ljava/io/File;)Lcom/facebook/widget/FacebookDialog$Builder;

    .line 783
    iget-object v5, p0, Lcom/facebook/widget/FacebookDialog$Builder;->applicationId:Ljava/lang/String;

    iget-object v6, p0, Lcom/facebook/widget/FacebookDialog$Builder;->appCall:Lcom/facebook/widget/FacebookDialog$PendingCall;

    invoke-virtual {v6}, Lcom/facebook/widget/FacebookDialog$PendingCall;->getCallId()Ljava/util/UUID;

    move-result-object v6

    invoke-static {v5, v6, v0}, Lcom/facebook/NativeAppCallContentProvider;->getAttachmentUrl(Ljava/lang/String;Ljava/util/UUID;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 785
    .local v4, "url":Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 788
    .end local v0    # "attachmentName":Ljava/lang/String;
    .end local v2    # "bitmapFile":Ljava/io/File;
    .end local v4    # "url":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method protected addImageAttachments(Ljava/util/Collection;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 762
    .local p0, "this":Lcom/facebook/widget/FacebookDialog$Builder;, "Lcom/facebook/widget/FacebookDialog$Builder<TCONCRETE;>;"
    .local p1, "bitmaps":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/graphics/Bitmap;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 763
    .local v1, "attachmentUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 764
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 766
    .local v0, "attachmentName":Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Lcom/facebook/widget/FacebookDialog$Builder;->addImageAttachment(Ljava/lang/String;Landroid/graphics/Bitmap;)Lcom/facebook/widget/FacebookDialog$Builder;

    .line 768
    iget-object v5, p0, Lcom/facebook/widget/FacebookDialog$Builder;->applicationId:Ljava/lang/String;

    iget-object v6, p0, Lcom/facebook/widget/FacebookDialog$Builder;->appCall:Lcom/facebook/widget/FacebookDialog$PendingCall;

    invoke-virtual {v6}, Lcom/facebook/widget/FacebookDialog$PendingCall;->getCallId()Ljava/util/UUID;

    move-result-object v6

    invoke-static {v5, v6, v0}, Lcom/facebook/NativeAppCallContentProvider;->getAttachmentUrl(Ljava/lang/String;Ljava/util/UUID;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 770
    .local v4, "url":Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 773
    .end local v0    # "attachmentName":Ljava/lang/String;
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "url":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method protected addVideoAttachment(Ljava/lang/String;Ljava/io/File;)Lcom/facebook/widget/FacebookDialog$Builder;
    .locals 2
    .param p1, "videoName"    # Ljava/lang/String;
    .param p2, "attachment"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ")TCONCRETE;"
        }
    .end annotation

    .prologue
    .line 833
    .local p0, "this":Lcom/facebook/widget/FacebookDialog$Builder;, "Lcom/facebook/widget/FacebookDialog$Builder<TCONCRETE;>;"
    iget-object v1, p0, Lcom/facebook/widget/FacebookDialog$Builder;->mediaAttachmentFiles:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 835
    move-object v0, p0

    .line 836
    .local v0, "result":Lcom/facebook/widget/FacebookDialog$Builder;, "TCONCRETE;"
    return-object v0
.end method

.method protected addVideoAttachmentFile(Ljava/io/File;)Ljava/lang/String;
    .locals 4
    .param p1, "videoFile"    # Ljava/io/File;

    .prologue
    .line 792
    .local p0, "this":Lcom/facebook/widget/FacebookDialog$Builder;, "Lcom/facebook/widget/FacebookDialog$Builder<TCONCRETE;>;"
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 793
    .local v0, "attachmentName":Ljava/lang/String;
    invoke-virtual {p0, v0, p1}, Lcom/facebook/widget/FacebookDialog$Builder;->addVideoAttachment(Ljava/lang/String;Ljava/io/File;)Lcom/facebook/widget/FacebookDialog$Builder;

    .line 794
    iget-object v2, p0, Lcom/facebook/widget/FacebookDialog$Builder;->applicationId:Ljava/lang/String;

    iget-object v3, p0, Lcom/facebook/widget/FacebookDialog$Builder;->appCall:Lcom/facebook/widget/FacebookDialog$PendingCall;

    invoke-virtual {v3}, Lcom/facebook/widget/FacebookDialog$PendingCall;->getCallId()Ljava/util/UUID;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/facebook/NativeAppCallContentProvider;->getAttachmentUrl(Ljava/lang/String;Ljava/util/UUID;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 796
    .local v1, "url":Ljava/lang/String;
    return-object v1
.end method

.method public build()Lcom/facebook/widget/FacebookDialog;
    .locals 13

    .prologue
    .line 647
    .local p0, "this":Lcom/facebook/widget/FacebookDialog$Builder;, "Lcom/facebook/widget/FacebookDialog$Builder<TCONCRETE;>;"
    invoke-virtual {p0}, Lcom/facebook/widget/FacebookDialog$Builder;->validate()V

    .line 649
    invoke-virtual {p0}, Lcom/facebook/widget/FacebookDialog$Builder;->getDialogFeatures()Ljava/util/EnumSet;

    move-result-object v0

    # invokes: Lcom/facebook/widget/FacebookDialog;->getActionForFeatures(Ljava/lang/Iterable;)Ljava/lang/String;
    invoke-static {v0}, Lcom/facebook/widget/FacebookDialog;->access$100(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    .line 650
    .local v2, "action":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/widget/FacebookDialog$Builder;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/facebook/widget/FacebookDialog$Builder;->applicationId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/facebook/widget/FacebookDialog$Builder;->getDialogFeatures()Ljava/util/EnumSet;

    move-result-object v4

    # invokes: Lcom/facebook/widget/FacebookDialog;->getVersionSpecForFeatures(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Iterable;)[I
    invoke-static {v1, v2, v4}, Lcom/facebook/widget/FacebookDialog;->access$200(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Iterable;)[I

    move-result-object v1

    # invokes: Lcom/facebook/widget/FacebookDialog;->getProtocolVersionForNativeDialog(Landroid/content/Context;Ljava/lang/String;[I)I
    invoke-static {v0, v2, v1}, Lcom/facebook/widget/FacebookDialog;->access$300(Landroid/content/Context;Ljava/lang/String;[I)I

    move-result v3

    .line 653
    .local v3, "protocolVersion":I
    const/4 v5, 0x0

    .line 654
    .local v5, "extras":Landroid/os/Bundle;
    invoke-static {v3}, Lcom/facebook/internal/NativeProtocol;->isVersionCompatibleWithBucketedIntent(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 656
    invoke-virtual {p0}, Lcom/facebook/widget/FacebookDialog$Builder;->getMethodArguments()Landroid/os/Bundle;

    move-result-object v5

    .line 662
    :goto_0
    iget-object v0, p0, Lcom/facebook/widget/FacebookDialog$Builder;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/facebook/widget/FacebookDialog$Builder;->appCall:Lcom/facebook/widget/FacebookDialog$PendingCall;

    invoke-virtual {v1}, Lcom/facebook/widget/FacebookDialog$PendingCall;->getCallId()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/facebook/widget/FacebookDialog$Builder;->applicationName:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/facebook/internal/NativeProtocol;->createPlatformActivityIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v12

    .line 669
    .local v12, "intent":Landroid/content/Intent;
    if-nez v12, :cond_1

    .line 670
    iget-object v0, p0, Lcom/facebook/widget/FacebookDialog$Builder;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/facebook/widget/FacebookDialog$Builder;->fragment:Landroid/support/v4/app/Fragment;

    const-string v4, "com.facebook.platform.extra.PHOTOS"

    invoke-virtual {v5, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    const/4 v6, 0x0

    # invokes: Lcom/facebook/widget/FacebookDialog;->getEventName(Ljava/lang/String;ZZ)Ljava/lang/String;
    invoke-static {v2, v4, v6}, Lcom/facebook/widget/FacebookDialog;->access$400(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v4

    const-string v6, "Failed"

    # invokes: Lcom/facebook/widget/FacebookDialog;->logDialogActivity(Landroid/app/Activity;Landroid/support/v4/app/Fragment;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v4, v6}, Lcom/facebook/widget/FacebookDialog;->access$500(Landroid/app/Activity;Landroid/support/v4/app/Fragment;Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "Unable to create Intent; this likely means the Facebook app is not installed."

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 659
    .end local v12    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0}, Lcom/facebook/widget/FacebookDialog$Builder;->setBundleExtras(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v5

    goto :goto_0

    .line 678
    .restart local v12    # "intent":Landroid/content/Intent;
    :cond_1
    iget-object v0, p0, Lcom/facebook/widget/FacebookDialog$Builder;->appCall:Lcom/facebook/widget/FacebookDialog$PendingCall;

    # invokes: Lcom/facebook/widget/FacebookDialog$PendingCall;->setRequestIntent(Landroid/content/Intent;)V
    invoke-static {v0, v12}, Lcom/facebook/widget/FacebookDialog$PendingCall;->access$600(Lcom/facebook/widget/FacebookDialog$PendingCall;Landroid/content/Intent;)V

    .line 680
    new-instance v6, Lcom/facebook/widget/FacebookDialog;

    iget-object v7, p0, Lcom/facebook/widget/FacebookDialog$Builder;->activity:Landroid/app/Activity;

    iget-object v8, p0, Lcom/facebook/widget/FacebookDialog$Builder;->fragment:Landroid/support/v4/app/Fragment;

    iget-object v9, p0, Lcom/facebook/widget/FacebookDialog$Builder;->appCall:Lcom/facebook/widget/FacebookDialog$PendingCall;

    invoke-virtual {p0}, Lcom/facebook/widget/FacebookDialog$Builder;->getOnPresentCallback()Lcom/facebook/widget/FacebookDialog$OnPresentCallback;

    move-result-object v10

    const/4 v11, 0x0

    invoke-direct/range {v6 .. v11}, Lcom/facebook/widget/FacebookDialog;-><init>(Landroid/app/Activity;Landroid/support/v4/app/Fragment;Lcom/facebook/widget/FacebookDialog$PendingCall;Lcom/facebook/widget/FacebookDialog$OnPresentCallback;Lcom/facebook/widget/FacebookDialog$1;)V

    return-object v6
.end method

.method public canPresent()Z
    .locals 2

    .prologue
    .line 739
    .local p0, "this":Lcom/facebook/widget/FacebookDialog$Builder;, "Lcom/facebook/widget/FacebookDialog$Builder<TCONCRETE;>;"
    iget-object v0, p0, Lcom/facebook/widget/FacebookDialog$Builder;->activity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/facebook/widget/FacebookDialog$Builder;->getDialogFeatures()Ljava/util/EnumSet;

    move-result-object v1

    # invokes: Lcom/facebook/widget/FacebookDialog;->handleCanPresent(Landroid/content/Context;Ljava/lang/Iterable;)Z
    invoke-static {v0, v1}, Lcom/facebook/widget/FacebookDialog;->access$800(Landroid/content/Context;Ljava/lang/Iterable;)Z

    move-result v0

    return v0
.end method

.method protected abstract getDialogFeatures()Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet",
            "<+",
            "Lcom/facebook/widget/FacebookDialog$DialogFeature;",
            ">;"
        }
    .end annotation
.end method

.method getImageAttachmentNames()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 800
    .local p0, "this":Lcom/facebook/widget/FacebookDialog$Builder;, "Lcom/facebook/widget/FacebookDialog$Builder<TCONCRETE;>;"
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/facebook/widget/FacebookDialog$Builder;->imageAttachments:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method protected abstract getMethodArguments()Landroid/os/Bundle;
.end method

.method getOnPresentCallback()Lcom/facebook/widget/FacebookDialog$OnPresentCallback;
    .locals 1

    .prologue
    .line 746
    .local p0, "this":Lcom/facebook/widget/FacebookDialog$Builder;, "Lcom/facebook/widget/FacebookDialog$Builder<TCONCRETE;>;"
    new-instance v0, Lcom/facebook/widget/FacebookDialog$Builder$1;

    invoke-direct {v0, p0}, Lcom/facebook/widget/FacebookDialog$Builder$1;-><init>(Lcom/facebook/widget/FacebookDialog$Builder;)V

    return-object v0
.end method

.method protected getWebFallbackUrlInternal()Ljava/lang/String;
    .locals 14

    .prologue
    .local p0, "this":Lcom/facebook/widget/FacebookDialog$Builder;, "Lcom/facebook/widget/FacebookDialog$Builder<TCONCRETE;>;"
    const/4 v10, 0x0

    .line 688
    invoke-virtual {p0}, Lcom/facebook/widget/FacebookDialog$Builder;->getDialogFeatures()Ljava/util/EnumSet;

    move-result-object v5

    .line 689
    .local v5, "features":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/facebook/widget/FacebookDialog$DialogFeature;>;"
    const/4 v4, 0x0

    .line 690
    .local v4, "featureName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 691
    .local v0, "action":Ljava/lang/String;
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/widget/FacebookDialog$DialogFeature;

    .line 694
    .local v3, "feature":Lcom/facebook/widget/FacebookDialog$DialogFeature;
    invoke-interface {v3}, Lcom/facebook/widget/FacebookDialog$DialogFeature;->name()Ljava/lang/String;

    move-result-object v4

    .line 695
    invoke-interface {v3}, Lcom/facebook/widget/FacebookDialog$DialogFeature;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 699
    .end local v3    # "feature":Lcom/facebook/widget/FacebookDialog$DialogFeature;
    :cond_0
    iget-object v11, p0, Lcom/facebook/widget/FacebookDialog$Builder;->applicationId:Ljava/lang/String;

    invoke-static {v11, v0, v4}, Lcom/facebook/internal/Utility;->getDialogFeatureConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/internal/Utility$DialogFeatureConfig;

    move-result-object v1

    .line 701
    .local v1, "config":Lcom/facebook/internal/Utility$DialogFeatureConfig;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/facebook/internal/Utility$DialogFeatureConfig;->getFallbackUrl()Landroid/net/Uri;

    move-result-object v2

    .local v2, "fallbackUrl":Landroid/net/Uri;
    if-nez v2, :cond_2

    .line 728
    .end local v2    # "fallbackUrl":Landroid/net/Uri;
    :cond_1
    :goto_0
    return-object v10

    .line 707
    .restart local v2    # "fallbackUrl":Landroid/net/Uri;
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/widget/FacebookDialog$Builder;->getMethodArguments()Landroid/os/Bundle;

    move-result-object v7

    .line 708
    .local v7, "methodArguments":Landroid/os/Bundle;
    invoke-static {}, Lcom/facebook/internal/NativeProtocol;->getLatestKnownVersion()I

    move-result v8

    .line 709
    .local v8, "protocolVersion":I
    iget-object v11, p0, Lcom/facebook/widget/FacebookDialog$Builder;->activity:Landroid/app/Activity;

    iget-object v12, p0, Lcom/facebook/widget/FacebookDialog$Builder;->appCall:Lcom/facebook/widget/FacebookDialog$PendingCall;

    invoke-virtual {v12}, Lcom/facebook/widget/FacebookDialog$PendingCall;->getCallId()Ljava/util/UUID;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v12

    iget-object v13, p0, Lcom/facebook/widget/FacebookDialog$Builder;->applicationName:Ljava/lang/String;

    invoke-static {v11, v12, v8, v13, v7}, Lcom/facebook/internal/ServerProtocol;->getQueryParamsForPlatformActivityIntentWebFallback(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v9

    .line 715
    .local v9, "webParams":Landroid/os/Bundle;
    if-eqz v9, :cond_1

    .line 721
    invoke-virtual {v2}, Landroid/net/Uri;->isRelative()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 722
    invoke-static {}, Lcom/facebook/internal/ServerProtocol;->getDialogAuthority()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v9}, Lcom/facebook/internal/Utility;->buildUri(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/net/Uri;

    move-result-object v2

    .line 728
    :cond_3
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_0
.end method

.method protected putExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "extras"    # Landroid/os/Bundle;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 811
    .local p0, "this":Lcom/facebook/widget/FacebookDialog$Builder;, "Lcom/facebook/widget/FacebookDialog$Builder<TCONCRETE;>;"
    if-eqz p3, :cond_0

    .line 812
    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    :cond_0
    return-void
.end method

.method public setApplicationName(Ljava/lang/String;)Lcom/facebook/widget/FacebookDialog$Builder;
    .locals 1
    .param p1, "applicationName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TCONCRETE;"
        }
    .end annotation

    .prologue
    .line 619
    .local p0, "this":Lcom/facebook/widget/FacebookDialog$Builder;, "Lcom/facebook/widget/FacebookDialog$Builder<TCONCRETE;>;"
    iput-object p1, p0, Lcom/facebook/widget/FacebookDialog$Builder;->applicationName:Ljava/lang/String;

    .line 621
    move-object v0, p0

    .line 622
    .local v0, "result":Lcom/facebook/widget/FacebookDialog$Builder;, "TCONCRETE;"
    return-object v0
.end method

.method protected setBundleExtras(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 805
    .local p0, "this":Lcom/facebook/widget/FacebookDialog$Builder;, "Lcom/facebook/widget/FacebookDialog$Builder<TCONCRETE;>;"
    return-object p1
.end method

.method public setFragment(Landroid/support/v4/app/Fragment;)Lcom/facebook/widget/FacebookDialog$Builder;
    .locals 1
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/Fragment;",
            ")TCONCRETE;"
        }
    .end annotation

    .prologue
    .line 634
    .local p0, "this":Lcom/facebook/widget/FacebookDialog$Builder;, "Lcom/facebook/widget/FacebookDialog$Builder<TCONCRETE;>;"
    iput-object p1, p0, Lcom/facebook/widget/FacebookDialog$Builder;->fragment:Landroid/support/v4/app/Fragment;

    .line 636
    move-object v0, p0

    .line 637
    .local v0, "result":Lcom/facebook/widget/FacebookDialog$Builder;, "TCONCRETE;"
    return-object v0
.end method

.method public setRequestCode(I)Lcom/facebook/widget/FacebookDialog$Builder;
    .locals 2
    .param p1, "requestCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TCONCRETE;"
        }
    .end annotation

    .prologue
    .line 605
    .local p0, "this":Lcom/facebook/widget/FacebookDialog$Builder;, "Lcom/facebook/widget/FacebookDialog$Builder<TCONCRETE;>;"
    iget-object v1, p0, Lcom/facebook/widget/FacebookDialog$Builder;->appCall:Lcom/facebook/widget/FacebookDialog$PendingCall;

    # invokes: Lcom/facebook/widget/FacebookDialog$PendingCall;->setRequestCode(I)V
    invoke-static {v1, p1}, Lcom/facebook/widget/FacebookDialog$PendingCall;->access$000(Lcom/facebook/widget/FacebookDialog$PendingCall;I)V

    .line 607
    move-object v0, p0

    .line 608
    .local v0, "result":Lcom/facebook/widget/FacebookDialog$Builder;, "TCONCRETE;"
    return-object v0
.end method

.method validate()V
    .locals 0

    .prologue
    .line 743
    .local p0, "this":Lcom/facebook/widget/FacebookDialog$Builder;, "Lcom/facebook/widget/FacebookDialog$Builder<TCONCRETE;>;"
    return-void
.end method
