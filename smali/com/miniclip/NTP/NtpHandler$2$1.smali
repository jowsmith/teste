.class Lcom/miniclip/NTP/NtpHandler$2$1;
.super Ljava/lang/Object;
.source "NtpHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/NTP/NtpHandler$2;->success(D)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miniclip/NTP/NtpHandler$2;

.field final synthetic val$time:D


# direct methods
.method constructor <init>(Lcom/miniclip/NTP/NtpHandler$2;D)V
    .locals 0
    .param p1, "this$1"    # Lcom/miniclip/NTP/NtpHandler$2;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/miniclip/NTP/NtpHandler$2$1;->this$1:Lcom/miniclip/NTP/NtpHandler$2;

    iput-wide p2, p0, Lcom/miniclip/NTP/NtpHandler$2$1;->val$time:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 118
    iget-object v0, p0, Lcom/miniclip/NTP/NtpHandler$2$1;->this$1:Lcom/miniclip/NTP/NtpHandler$2;

    iget v0, v0, Lcom/miniclip/NTP/NtpHandler$2;->val$callback:I

    iget-wide v2, p0, Lcom/miniclip/NTP/NtpHandler$2$1;->val$time:D

    const/4 v1, 0x0

    invoke-static {v0, v2, v3, v1}, Lcom/miniclip/nativeJNI/CocoJNI;->MnetworkTimeResponce(IDI)V

    .line 119
    return-void
.end method
