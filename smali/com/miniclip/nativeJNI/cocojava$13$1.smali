.class Lcom/miniclip/nativeJNI/cocojava$13$1;
.super Ljava/lang/Object;
.source "cocojava.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/nativeJNI/cocojava$13;->onDateSet(Landroid/widget/DatePicker;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miniclip/nativeJNI/cocojava$13;

.field final synthetic val$day:I

.field final synthetic val$month:I

.field final synthetic val$year:I


# direct methods
.method constructor <init>(Lcom/miniclip/nativeJNI/cocojava$13;III)V
    .locals 0
    .param p1, "this$1"    # Lcom/miniclip/nativeJNI/cocojava$13;

    .prologue
    .line 894
    iput-object p1, p0, Lcom/miniclip/nativeJNI/cocojava$13$1;->this$1:Lcom/miniclip/nativeJNI/cocojava$13;

    iput p2, p0, Lcom/miniclip/nativeJNI/cocojava$13$1;->val$year:I

    iput p3, p0, Lcom/miniclip/nativeJNI/cocojava$13$1;->val$month:I

    iput p4, p0, Lcom/miniclip/nativeJNI/cocojava$13$1;->val$day:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 897
    iget v0, p0, Lcom/miniclip/nativeJNI/cocojava$13$1;->val$year:I

    iget v1, p0, Lcom/miniclip/nativeJNI/cocojava$13$1;->val$month:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/miniclip/nativeJNI/cocojava$13$1;->val$day:I

    invoke-static {v0, v1, v2}, Lcom/miniclip/nativeJNI/CocoJNI;->MdatePickerResponce(III)V

    .line 898
    invoke-static {}, Lcom/miniclip/nativeJNI/CocoJNI;->MdatePickerClosed()V

    .line 899
    return-void
.end method
