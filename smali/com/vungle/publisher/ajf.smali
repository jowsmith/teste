.class public final Lcom/vungle/publisher/ajf;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/ahr;


# static fields
.field public static final g:Lcom/vungle/publisher/ahr;


# instance fields
.field public a:J

.field public b:Lcom/vungle/publisher/ahr;

.field public c:Z

.field d:J

.field public e:J

.field public f:Lcom/vungle/publisher/ahr;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/vungle/publisher/ajf$1;

    invoke-direct {v0}, Lcom/vungle/publisher/ajf$1;-><init>()V

    sput-object v0, Lcom/vungle/publisher/ajf;->g:Lcom/vungle/publisher/ahr;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const-wide v2, 0x7fffffffffffffffL

    const-wide/16 v10, 0x0

    .line 145
    :cond_0
    :goto_0
    monitor-enter p0

    .line 146
    :try_start_0
    iget-wide v4, p0, Lcom/vungle/publisher/ajf;->d:J

    .line 147
    iget-wide v6, p0, Lcom/vungle/publisher/ajf;->e:J

    .line 148
    iget-object v8, p0, Lcom/vungle/publisher/ajf;->f:Lcom/vungle/publisher/ahr;

    .line 149
    cmp-long v0, v4, v10

    if-nez v0, :cond_1

    cmp-long v0, v6, v10

    if-nez v0, :cond_1

    if-nez v8, :cond_1

    .line 152
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vungle/publisher/ajf;->c:Z

    .line 153
    monitor-exit p0

    return-void

    .line 155
    :cond_1
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vungle/publisher/ajf;->d:J

    .line 156
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vungle/publisher/ajf;->e:J

    .line 157
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vungle/publisher/ajf;->f:Lcom/vungle/publisher/ahr;

    .line 158
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    iget-wide v0, p0, Lcom/vungle/publisher/ajf;->a:J

    .line 162
    cmp-long v9, v0, v2

    if-eqz v9, :cond_3

    .line 163
    add-long/2addr v0, v4

    .line 164
    cmp-long v9, v0, v10

    if-ltz v9, :cond_2

    cmp-long v9, v0, v2

    if-nez v9, :cond_4

    .line 166
    :cond_2
    iput-wide v2, p0, Lcom/vungle/publisher/ajf;->a:J

    move-wide v0, v2

    .line 176
    :cond_3
    :goto_1
    if-eqz v8, :cond_7

    .line 177
    sget-object v4, Lcom/vungle/publisher/ajf;->g:Lcom/vungle/publisher/ahr;

    if-ne v8, v4, :cond_6

    .line 178
    iput-object v12, p0, Lcom/vungle/publisher/ajf;->b:Lcom/vungle/publisher/ahr;

    goto :goto_0

    .line 158
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 168
    :cond_4
    sub-long/2addr v0, v6

    .line 169
    cmp-long v6, v0, v10

    if-gez v6, :cond_5

    .line 170
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "more produced than requested"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_5
    iput-wide v0, p0, Lcom/vungle/publisher/ajf;->a:J

    goto :goto_1

    .line 180
    :cond_6
    iput-object v8, p0, Lcom/vungle/publisher/ajf;->b:Lcom/vungle/publisher/ahr;

    .line 181
    invoke-interface {v8, v0, v1}, Lcom/vungle/publisher/ahr;->a(J)V

    goto :goto_0

    .line 184
    :cond_7
    iget-object v0, p0, Lcom/vungle/publisher/ajf;->b:Lcom/vungle/publisher/ahr;

    .line 185
    if-eqz v0, :cond_0

    cmp-long v1, v4, v10

    if-eqz v1, :cond_0

    .line 186
    invoke-interface {v0, v4, v5}, Lcom/vungle/publisher/ahr;->a(J)V

    goto :goto_0
.end method

.method public final a(J)V
    .locals 5

    .prologue
    const-wide/16 v2, 0x0

    .line 42
    cmp-long v0, p1, v2

    if-gez v0, :cond_0

    .line 43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "n >= 0 required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_0
    cmp-long v0, p1, v2

    if-nez v0, :cond_1

    .line 70
    :goto_0
    return-void

    .line 48
    :cond_1
    monitor-enter p0

    .line 49
    :try_start_0
    iget-boolean v0, p0, Lcom/vungle/publisher/ajf;->c:Z

    if-eqz v0, :cond_2

    .line 50
    iget-wide v0, p0, Lcom/vungle/publisher/ajf;->d:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/vungle/publisher/ajf;->d:J

    .line 51
    monitor-exit p0

    goto :goto_0

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 53
    :cond_2
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/vungle/publisher/ajf;->c:Z

    .line 54
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    :try_start_2
    iget-wide v0, p0, Lcom/vungle/publisher/ajf;->a:J

    .line 58
    add-long/2addr v0, p1

    .line 59
    cmp-long v2, v0, v2

    if-gez v2, :cond_3

    .line 60
    const-wide v0, 0x7fffffffffffffffL

    .line 62
    :cond_3
    iput-wide v0, p0, Lcom/vungle/publisher/ajf;->a:J

    .line 64
    iget-object v0, p0, Lcom/vungle/publisher/ajf;->b:Lcom/vungle/publisher/ahr;

    .line 65
    if-eqz v0, :cond_4

    .line 66
    invoke-interface {v0, p1, p2}, Lcom/vungle/publisher/ahr;->a(J)V

    .line 69
    :cond_4
    invoke-virtual {p0}, Lcom/vungle/publisher/ajf;->a()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 73
    :catchall_1
    move-exception v0

    monitor-enter p0

    .line 74
    const/4 v1, 0x0

    :try_start_3
    iput-boolean v1, p0, Lcom/vungle/publisher/ajf;->c:Z

    .line 75
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0
.end method
