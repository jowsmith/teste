.class Lcom/miniclip/nativeJNI/ClearGLSurfaceView$8$1;
.super Ljava/lang/Object;
.source "ClearGLSurfaceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/nativeJNI/ClearGLSurfaceView$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miniclip/nativeJNI/ClearGLSurfaceView$8;


# direct methods
.method constructor <init>(Lcom/miniclip/nativeJNI/ClearGLSurfaceView$8;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miniclip/nativeJNI/ClearGLSurfaceView$8;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/miniclip/nativeJNI/ClearGLSurfaceView$8$1;->this$1:Lcom/miniclip/nativeJNI/ClearGLSurfaceView$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/miniclip/nativeJNI/ClearGLSurfaceView$8$1;->this$1:Lcom/miniclip/nativeJNI/ClearGLSurfaceView$8;

    iget-object v0, v0, Lcom/miniclip/nativeJNI/ClearGLSurfaceView$8;->this$0:Lcom/miniclip/nativeJNI/ClearGLSurfaceView;

    iget-object v0, v0, Lcom/miniclip/nativeJNI/ClearGLSurfaceView;->mRenderer:Lcom/miniclip/nativeJNI/ClearRenderer;

    invoke-virtual {v0}, Lcom/miniclip/nativeJNI/ClearRenderer;->handleOnResume()V

    .line 182
    return-void
.end method
