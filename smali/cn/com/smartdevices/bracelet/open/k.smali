.class Lcn/com/smartdevices/bracelet/open/k;
.super Lcom/c/a/a/h;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcn/com/smartdevices/bracelet/open/g;


# direct methods
.method constructor <init>(Lcn/com/smartdevices/bracelet/open/g;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/com/smartdevices/bracelet/open/k;->b:Lcn/com/smartdevices/bracelet/open/g;

    iput-object p2, p0, Lcn/com/smartdevices/bracelet/open/k;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/c/a/a/h;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
    .locals 2

    new-instance v0, Lcn/com/smartdevices/bracelet/eventbus/EventPartnerStateChanged;

    invoke-direct {v0}, Lcn/com/smartdevices/bracelet/eventbus/EventPartnerStateChanged;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Lcn/com/smartdevices/bracelet/eventbus/EventPartnerStateChanged;->action:I

    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    invoke-virtual {v1, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;[B)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Lcn/com/smartdevices/bracelet/eventbus/EventPartnerStateChanged;

    invoke-direct {v2}, Lcn/com/smartdevices/bracelet/eventbus/EventPartnerStateChanged;-><init>()V

    iput v0, v2, Lcn/com/smartdevices/bracelet/eventbus/EventPartnerStateChanged;->action:I

    iget-object v3, p0, Lcn/com/smartdevices/bracelet/open/k;->a:Ljava/lang/String;

    iput-object v3, v2, Lcn/com/smartdevices/bracelet/eventbus/EventPartnerStateChanged;->thirdAppId:Ljava/lang/String;

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    new-instance v4, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-direct {v4, p3, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "code"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "data"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v5, "redirect_url"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcn/com/smartdevices/bracelet/eventbus/EventPartnerStateChanged;->url:Ljava/lang/String;

    :cond_0
    if-ne v4, v0, :cond_3

    if-eqz v3, :cond_3

    :goto_0
    iput-boolean v0, v2, Lcn/com/smartdevices/bracelet/eventbus/EventPartnerStateChanged;->success:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-boolean v0, v2, Lcn/com/smartdevices/bracelet/eventbus/EventPartnerStateChanged;->success:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/open/k;->b:Lcn/com/smartdevices/bracelet/open/g;

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/open/g;->b(Lcn/com/smartdevices/bracelet/open/g;)Lcn/com/smartdevices/bracelet/db/r;

    move-result-object v0

    iget-object v3, p0, Lcn/com/smartdevices/bracelet/open/k;->a:Ljava/lang/String;

    iget-object v4, v2, Lcn/com/smartdevices/bracelet/eventbus/EventPartnerStateChanged;->url:Ljava/lang/String;

    invoke-virtual {v0, v3, v1, v4}, Lcn/com/smartdevices/bracelet/db/r;->a(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/u;->d(J)V

    :cond_1
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/open/k;->b:Lcn/com/smartdevices/bracelet/open/g;

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/open/g;->a(Lcn/com/smartdevices/bracelet/open/g;)Lcn/com/smartdevices/bracelet/lua/LuaEvent;

    move-result-object v0

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/open/k;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/com/smartdevices/bracelet/lua/LuaEvent;->deleteLuaItem(Ljava/lang/String;)V

    :cond_2
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void

    :cond_3
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    iput-boolean v1, v2, Lcn/com/smartdevices/bracelet/eventbus/EventPartnerStateChanged;->success:Z

    goto :goto_1
.end method
