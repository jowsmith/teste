.class Lcom/miniclip/NTP/NtpHandler$3$1;
.super Ljava/lang/Object;
.source "NtpHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/NTP/NtpHandler$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miniclip/NTP/NtpHandler$3;


# direct methods
.method constructor <init>(Lcom/miniclip/NTP/NtpHandler$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miniclip/NTP/NtpHandler$3;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/miniclip/NTP/NtpHandler$3$1;->this$1:Lcom/miniclip/NTP/NtpHandler$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 137
    iget-object v0, p0, Lcom/miniclip/NTP/NtpHandler$3$1;->this$1:Lcom/miniclip/NTP/NtpHandler$3;

    iget v0, v0, Lcom/miniclip/NTP/NtpHandler$3;->val$callback:I

    const-wide/16 v2, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v2, v3, v1}, Lcom/miniclip/nativeJNI/CocoJNI;->MnetworkTimeResponce(IDI)V

    .line 138
    return-void
.end method
