.class Lcn/com/smartdevices/bracelet/ui/ed;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/com/smartdevices/bracelet/ui/Y;


# instance fields
.field final synthetic a:Lcn/com/smartdevices/bracelet/ui/W;

.field final synthetic b:Lcn/com/smartdevices/bracelet/ui/ea;


# direct methods
.method constructor <init>(Lcn/com/smartdevices/bracelet/ui/ea;Lcn/com/smartdevices/bracelet/ui/W;)V
    .locals 0

    iput-object p1, p0, Lcn/com/smartdevices/bracelet/ui/ed;->b:Lcn/com/smartdevices/bracelet/ui/ea;

    iput-object p2, p0, Lcn/com/smartdevices/bracelet/ui/ed;->a:Lcn/com/smartdevices/bracelet/ui/W;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/DialogFragment;)V
    .locals 0

    return-void
.end method

.method public b(Landroid/app/DialogFragment;)V
    .locals 2

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/ed;->a:Lcn/com/smartdevices/bracelet/ui/W;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/ui/W;->dismiss()V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/ed;->b:Lcn/com/smartdevices/bracelet/ui/ea;

    iget-object v0, v0, Lcn/com/smartdevices/bracelet/ui/ea;->a:Lcn/com/smartdevices/bracelet/ui/StatisticFragment;

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/ui/ed;->b:Lcn/com/smartdevices/bracelet/ui/ea;

    iget-object v1, v1, Lcn/com/smartdevices/bracelet/ui/ea;->a:Lcn/com/smartdevices/bracelet/ui/StatisticFragment;

    invoke-static {v1}, Lcn/com/smartdevices/bracelet/ui/StatisticFragment;->I(Lcn/com/smartdevices/bracelet/ui/StatisticFragment;)Lcn/com/smartdevices/bracelet/weight/WeightInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/ui/StatisticFragment;->b(Lcn/com/smartdevices/bracelet/ui/StatisticFragment;Lcn/com/smartdevices/bracelet/weight/WeightInfo;)V

    return-void
.end method

.method public c(Landroid/app/DialogFragment;)V
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/ed;->a:Lcn/com/smartdevices/bracelet/ui/W;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/ui/W;->dismiss()V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/ed;->b:Lcn/com/smartdevices/bracelet/ui/ea;

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/ui/ea;->c(Lcn/com/smartdevices/bracelet/ui/ea;)Lcn/com/smartdevices/bracelet/weight/WeightInfo;

    move-result-object v0

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/weight/x;->a(Lcn/com/smartdevices/bracelet/weight/WeightInfo;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/ed;->b:Lcn/com/smartdevices/bracelet/ui/ea;

    iget-object v0, v0, Lcn/com/smartdevices/bracelet/ui/ea;->a:Lcn/com/smartdevices/bracelet/ui/StatisticFragment;

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/ui/StatisticFragment;->Q(Lcn/com/smartdevices/bracelet/ui/StatisticFragment;)V

    return-void
.end method
