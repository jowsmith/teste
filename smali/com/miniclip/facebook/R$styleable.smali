.class public final Lcom/miniclip/facebook/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miniclip/facebook/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final com_facebook_friend_picker_fragment:[I

.field public static final com_facebook_friend_picker_fragment_multi_select:I = 0x0

.field public static final com_facebook_like_view:[I

.field public static final com_facebook_like_view_auxiliary_view_position:I = 0x3

.field public static final com_facebook_like_view_foreground_color:I = 0x0

.field public static final com_facebook_like_view_horizontal_alignment:I = 0x4

.field public static final com_facebook_like_view_object_id:I = 0x1

.field public static final com_facebook_like_view_style:I = 0x2

.field public static final com_facebook_login_view:[I

.field public static final com_facebook_login_view_confirm_logout:I = 0x0

.field public static final com_facebook_login_view_fetch_user_info:I = 0x1

.field public static final com_facebook_login_view_login_text:I = 0x2

.field public static final com_facebook_login_view_logout_text:I = 0x3

.field public static final com_facebook_picker_fragment:[I

.field public static final com_facebook_picker_fragment_done_button_background:I = 0x6

.field public static final com_facebook_picker_fragment_done_button_text:I = 0x4

.field public static final com_facebook_picker_fragment_extra_fields:I = 0x1

.field public static final com_facebook_picker_fragment_show_pictures:I = 0x0

.field public static final com_facebook_picker_fragment_show_title_bar:I = 0x2

.field public static final com_facebook_picker_fragment_title_bar_background:I = 0x5

.field public static final com_facebook_picker_fragment_title_text:I = 0x3

.field public static final com_facebook_place_picker_fragment:[I

.field public static final com_facebook_place_picker_fragment_radius_in_meters:I = 0x0

.field public static final com_facebook_place_picker_fragment_results_limit:I = 0x1

.field public static final com_facebook_place_picker_fragment_search_text:I = 0x2

.field public static final com_facebook_place_picker_fragment_show_search_box:I = 0x3

.field public static final com_facebook_profile_picture_view:[I

.field public static final com_facebook_profile_picture_view_is_cropped:I = 0x1

.field public static final com_facebook_profile_picture_view_preset_size:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 229
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f01001f

    aput v2, v0, v1

    sput-object v0, Lcom/miniclip/facebook/R$styleable;->com_facebook_friend_picker_fragment:[I

    .line 231
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/miniclip/facebook/R$styleable;->com_facebook_like_view:[I

    .line 237
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/miniclip/facebook/R$styleable;->com_facebook_login_view:[I

    .line 242
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/miniclip/facebook/R$styleable;->com_facebook_picker_fragment:[I

    .line 250
    new-array v0, v3, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/miniclip/facebook/R$styleable;->com_facebook_place_picker_fragment:[I

    .line 255
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/miniclip/facebook/R$styleable;->com_facebook_profile_picture_view:[I

    return-void

    .line 231
    nop

    :array_0
    .array-data 4
        0x7f010020
        0x7f010021
        0x7f010022
        0x7f010023
        0x7f010024
    .end array-data

    .line 237
    :array_1
    .array-data 4
        0x7f010025
        0x7f010026
        0x7f010027
        0x7f010028
    .end array-data

    .line 242
    :array_2
    .array-data 4
        0x7f010029
        0x7f01002a
        0x7f01002b
        0x7f01002c
        0x7f01002d
        0x7f01002e
        0x7f01002f
    .end array-data

    .line 250
    :array_3
    .array-data 4
        0x7f010030
        0x7f010031
        0x7f010032
        0x7f010033
    .end array-data

    .line 255
    :array_4
    .array-data 4
        0x7f010034
        0x7f010035
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
