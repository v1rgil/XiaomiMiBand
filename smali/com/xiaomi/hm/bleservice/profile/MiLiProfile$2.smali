.class Lcom/xiaomi/hm/bleservice/profile/MiLiProfile$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/hm/bleservice/gatt/IGattCallback$INotifyCallback;


# instance fields
.field final synthetic this$0:Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;


# direct methods
.method constructor <init>(Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/hm/bleservice/profile/MiLiProfile$2;->this$0:Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notify([B)V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_1

    # getter for: Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "value is null!!!"

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/x;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    array-length v0, p1

    if-ne v0, v4, :cond_2

    aget-byte v0, p1, v2

    and-int/lit16 v0, v0, 0xff

    aget-byte v1, p1, v3

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    :goto_1
    iget-object v1, p0, Lcom/xiaomi/hm/bleservice/profile/MiLiProfile$2;->this$0:Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;

    # invokes: Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;->onRealtimeStepsChanged(I)V
    invoke-static {v1, v0}, Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;->access$200(Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RealtimeSteps: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/com/smartdevices/bracelet/x;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/hm/bleservice/profile/MiLiProfile$2;->this$0:Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;

    # getter for: Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;->miliCallback:Lcom/xiaomi/hm/bleservice/profile/MiLiCallback;
    invoke-static {v1}, Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;->access$000(Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;)Lcom/xiaomi/hm/bleservice/profile/MiLiCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/hm/bleservice/profile/MiLiProfile$2;->this$0:Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;

    # getter for: Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;->miliCallback:Lcom/xiaomi/hm/bleservice/profile/MiLiCallback;
    invoke-static {v1}, Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;->access$000(Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;)Lcom/xiaomi/hm/bleservice/profile/MiLiCallback;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/hm/bleservice/profile/MiLiCallback;->sendOnRealtimeStepsChangedMsg(I)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    aget-byte v0, p1, v2

    and-int/lit16 v0, v0, 0xff

    aget-byte v1, p1, v3

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    aget-byte v1, p1, v4

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    const/4 v1, 0x3

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    goto :goto_1

    :cond_3
    # getter for: Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wrong notify data length:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/com/smartdevices/bracelet/x;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
