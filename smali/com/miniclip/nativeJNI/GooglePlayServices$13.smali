.class final Lcom/miniclip/nativeJNI/GooglePlayServices$13;
.super Ljava/lang/Object;
.source "GooglePlayServices.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/nativeJNI/GooglePlayServices;->GPM_gift()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 935
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 937
    # getter for: Lcom/miniclip/nativeJNI/GooglePlayServices;->mActivity:Lcom/miniclip/eightballpool/EightBallPoolGoogleBaseActivity;
    invoke-static {}, Lcom/miniclip/nativeJNI/GooglePlayServices;->access$100()Lcom/miniclip/eightballpool/EightBallPoolGoogleBaseActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/miniclip/eightballpool/EightBallPoolGoogleBaseActivity;->gPlay:Lcom/miniclip/nativeJNI/GooglePlayServices;

    invoke-virtual {v0}, Lcom/miniclip/nativeJNI/GooglePlayServices;->signOut()V

    .line 938
    return-void
.end method
