.class Lcn/com/smartdevices/bracelet/ui/dd;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcn/com/smartdevices/bracelet/ui/db;


# direct methods
.method constructor <init>(Lcn/com/smartdevices/bracelet/ui/db;)V
    .locals 0

    iput-object p1, p0, Lcn/com/smartdevices/bracelet/ui/dd;->a:Lcn/com/smartdevices/bracelet/ui/db;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
