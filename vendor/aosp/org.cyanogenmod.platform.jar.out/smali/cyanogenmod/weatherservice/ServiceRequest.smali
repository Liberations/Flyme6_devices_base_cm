.class public final Lcyanogenmod/weatherservice/ServiceRequest;
.super Ljava/lang/Object;
.source "ServiceRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/weatherservice/ServiceRequest$Status;
    }
.end annotation


# instance fields
.field private final mClient:Lcyanogenmod/weatherservice/IWeatherProviderServiceClient;

.field private final mInfo:Lcyanogenmod/weather/RequestInfo;

.field private mStatus:Lcyanogenmod/weatherservice/ServiceRequest$Status;


# direct methods
.method constructor <init>(Lcyanogenmod/weather/RequestInfo;Lcyanogenmod/weatherservice/IWeatherProviderServiceClient;)V
    .locals 1
    .param p1, "info"    # Lcyanogenmod/weather/RequestInfo;
    .param p2, "client"    # Lcyanogenmod/weatherservice/IWeatherProviderServiceClient;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcyanogenmod/weatherservice/ServiceRequest;->mInfo:Lcyanogenmod/weather/RequestInfo;

    iput-object p2, p0, Lcyanogenmod/weatherservice/ServiceRequest;->mClient:Lcyanogenmod/weatherservice/IWeatherProviderServiceClient;

    sget-object v0, Lcyanogenmod/weatherservice/ServiceRequest$Status;->IN_PROGRESS:Lcyanogenmod/weatherservice/ServiceRequest$Status;

    iput-object v0, p0, Lcyanogenmod/weatherservice/ServiceRequest;->mStatus:Lcyanogenmod/weatherservice/ServiceRequest$Status;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcyanogenmod/weatherservice/ServiceRequest$Status;->CANCELLED:Lcyanogenmod/weatherservice/ServiceRequest$Status;

    iput-object v0, p0, Lcyanogenmod/weatherservice/ServiceRequest;->mStatus:Lcyanogenmod/weatherservice/ServiceRequest$Status;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public complete(Lcyanogenmod/weatherservice/ServiceRequestResult;)V
    .locals 6
    .param p1, "result"    # Lcyanogenmod/weatherservice/ServiceRequestResult;

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcyanogenmod/weatherservice/ServiceRequest;->mStatus:Lcyanogenmod/weatherservice/ServiceRequest$Status;

    sget-object v3, Lcyanogenmod/weatherservice/ServiceRequest$Status;->IN_PROGRESS:Lcyanogenmod/weatherservice/ServiceRequest$Status;

    invoke-virtual {v2, v3}, Lcyanogenmod/weatherservice/ServiceRequest$Status;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    :try_start_1
    iget-object v2, p0, Lcyanogenmod/weatherservice/ServiceRequest;->mInfo:Lcyanogenmod/weather/RequestInfo;

    invoke-virtual {v2}, Lcyanogenmod/weather/RequestInfo;->getRequestType()I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .local v1, "requestType":I
    packed-switch v1, :pswitch_data_0

    .end local v1    # "requestType":I
    :goto_0
    :try_start_2
    sget-object v2, Lcyanogenmod/weatherservice/ServiceRequest$Status;->COMPLETED:Lcyanogenmod/weatherservice/ServiceRequest$Status;

    iput-object v2, p0, Lcyanogenmod/weatherservice/ServiceRequest;->mStatus:Lcyanogenmod/weatherservice/ServiceRequest$Status;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    .restart local v1    # "requestType":I
    :pswitch_0
    :try_start_3
    invoke-virtual {p1}, Lcyanogenmod/weatherservice/ServiceRequestResult;->getWeatherInfo()Lcyanogenmod/weather/WeatherInfo;

    move-result-object v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "The service request result doesn\'t contain a valid WeatherInfo object"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .end local v1    # "requestType":I
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "requestType":I
    :cond_1
    iget-object v2, p0, Lcyanogenmod/weatherservice/ServiceRequest;->mClient:Lcyanogenmod/weatherservice/IWeatherProviderServiceClient;

    iget-object v3, p0, Lcyanogenmod/weatherservice/ServiceRequest;->mInfo:Lcyanogenmod/weather/RequestInfo;

    const/4 v4, 0x1

    invoke-interface {v2, v3, p1, v4}, Lcyanogenmod/weatherservice/IWeatherProviderServiceClient;->setServiceRequestState(Lcyanogenmod/weather/RequestInfo;Lcyanogenmod/weatherservice/ServiceRequestResult;I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .end local v1    # "requestType":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .restart local v1    # "requestType":I
    :pswitch_1
    :try_start_4
    invoke-virtual {p1}, Lcyanogenmod/weatherservice/ServiceRequestResult;->getLocationLookupList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcyanogenmod/weatherservice/ServiceRequestResult;->getLocationLookupList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcyanogenmod/weatherservice/ServiceRequest;->mClient:Lcyanogenmod/weatherservice/IWeatherProviderServiceClient;

    iget-object v3, p0, Lcyanogenmod/weatherservice/ServiceRequest;->mInfo:Lcyanogenmod/weather/RequestInfo;

    const/4 v4, 0x0

    const/4 v5, -0x4

    invoke-interface {v2, v3, v4, v5}, Lcyanogenmod/weatherservice/IWeatherProviderServiceClient;->setServiceRequestState(Lcyanogenmod/weather/RequestInfo;Lcyanogenmod/weatherservice/ServiceRequestResult;I)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcyanogenmod/weatherservice/ServiceRequest;->mClient:Lcyanogenmod/weatherservice/IWeatherProviderServiceClient;

    iget-object v3, p0, Lcyanogenmod/weatherservice/ServiceRequest;->mInfo:Lcyanogenmod/weather/RequestInfo;

    const/4 v4, 0x1

    invoke-interface {v2, v3, p1, v4}, Lcyanogenmod/weatherservice/IWeatherProviderServiceClient;->setServiceRequestState(Lcyanogenmod/weather/RequestInfo;Lcyanogenmod/weatherservice/ServiceRequestResult;I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public fail()V
    .locals 6

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcyanogenmod/weatherservice/ServiceRequest;->mStatus:Lcyanogenmod/weatherservice/ServiceRequest$Status;

    sget-object v3, Lcyanogenmod/weatherservice/ServiceRequest$Status;->IN_PROGRESS:Lcyanogenmod/weatherservice/ServiceRequest$Status;

    invoke-virtual {v2, v3}, Lcyanogenmod/weatherservice/ServiceRequest$Status;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    :try_start_1
    iget-object v2, p0, Lcyanogenmod/weatherservice/ServiceRequest;->mInfo:Lcyanogenmod/weather/RequestInfo;

    invoke-virtual {v2}, Lcyanogenmod/weather/RequestInfo;->getRequestType()I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .local v1, "requestType":I
    packed-switch v1, :pswitch_data_0

    .end local v1    # "requestType":I
    :goto_0
    :try_start_2
    sget-object v2, Lcyanogenmod/weatherservice/ServiceRequest$Status;->FAILED:Lcyanogenmod/weatherservice/ServiceRequest$Status;

    iput-object v2, p0, Lcyanogenmod/weatherservice/ServiceRequest;->mStatus:Lcyanogenmod/weatherservice/ServiceRequest$Status;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    .restart local v1    # "requestType":I
    :pswitch_0
    :try_start_3
    iget-object v2, p0, Lcyanogenmod/weatherservice/ServiceRequest;->mClient:Lcyanogenmod/weatherservice/IWeatherProviderServiceClient;

    iget-object v3, p0, Lcyanogenmod/weatherservice/ServiceRequest;->mInfo:Lcyanogenmod/weather/RequestInfo;

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-interface {v2, v3, v4, v5}, Lcyanogenmod/weatherservice/IWeatherProviderServiceClient;->setServiceRequestState(Lcyanogenmod/weather/RequestInfo;Lcyanogenmod/weatherservice/ServiceRequestResult;I)V

    goto :goto_0

    .end local v1    # "requestType":I
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "requestType":I
    :pswitch_1
    iget-object v2, p0, Lcyanogenmod/weatherservice/ServiceRequest;->mClient:Lcyanogenmod/weatherservice/IWeatherProviderServiceClient;

    iget-object v3, p0, Lcyanogenmod/weatherservice/ServiceRequest;->mInfo:Lcyanogenmod/weather/RequestInfo;

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-interface {v2, v3, v4, v5}, Lcyanogenmod/weatherservice/IWeatherProviderServiceClient;->setServiceRequestState(Lcyanogenmod/weather/RequestInfo;Lcyanogenmod/weatherservice/ServiceRequestResult;I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .end local v1    # "requestType":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getRequestInfo()Lcyanogenmod/weather/RequestInfo;
    .locals 1

    .prologue
    iget-object v0, p0, Lcyanogenmod/weatherservice/ServiceRequest;->mInfo:Lcyanogenmod/weather/RequestInfo;

    return-object v0
.end method

.method public reject(I)V
    .locals 4
    .param p1, "status"    # I

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcyanogenmod/weatherservice/ServiceRequest;->mStatus:Lcyanogenmod/weatherservice/ServiceRequest$Status;

    sget-object v2, Lcyanogenmod/weatherservice/ServiceRequest$Status;->IN_PROGRESS:Lcyanogenmod/weatherservice/ServiceRequest$Status;

    invoke-virtual {v1, v2}, Lcyanogenmod/weatherservice/ServiceRequest$Status;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    packed-switch p1, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t reject with status "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :pswitch_0
    :try_start_1
    iget-object v1, p0, Lcyanogenmod/weatherservice/ServiceRequest;->mClient:Lcyanogenmod/weatherservice/IWeatherProviderServiceClient;

    iget-object v2, p0, Lcyanogenmod/weatherservice/ServiceRequest;->mInfo:Lcyanogenmod/weather/RequestInfo;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3, p1}, Lcyanogenmod/weatherservice/IWeatherProviderServiceClient;->setServiceRequestState(Lcyanogenmod/weather/RequestInfo;Lcyanogenmod/weatherservice/ServiceRequestResult;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    sget-object v1, Lcyanogenmod/weatherservice/ServiceRequest$Status;->REJECTED:Lcyanogenmod/weatherservice/ServiceRequest$Status;

    iput-object v1, p0, Lcyanogenmod/weatherservice/ServiceRequest;->mStatus:Lcyanogenmod/weatherservice/ServiceRequest$Status;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
