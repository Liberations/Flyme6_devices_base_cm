.class public abstract Landroid/location/ILocationManager$Stub;
.super Landroid/os/Binder;
.source "ILocationManager.java"

# interfaces
.implements Landroid/location/ILocationManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/ILocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/ILocationManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.location.ILocationManager"

.field static final TRANSACTION_addGpsMeasurementsListener:I = 0xc

.field static final TRANSACTION_addGpsNavigationMessageListener:I = 0xe

.field static final TRANSACTION_addGpsStatusListener:I = 0x6

.field static final TRANSACTION_addTestProvider:I = 0x17

.field static final TRANSACTION_clearTestProviderEnabled:I = 0x1c

.field static final TRANSACTION_clearTestProviderLocation:I = 0x1a

.field static final TRANSACTION_clearTestProviderStatus:I = 0x1e

.field static final TRANSACTION_geocoderIsPresent:I = 0x8

.field static final TRANSACTION_getAllProviders:I = 0x10

.field static final TRANSACTION_getBestProvider:I = 0x12

.field static final TRANSACTION_getFromLocation:I = 0x9

.field static final TRANSACTION_getFromLocationName:I = 0xa

.field static final TRANSACTION_getLastLocation:I = 0x5

.field static final TRANSACTION_getNetworkProviderPackage:I = 0x15

.field static final TRANSACTION_getProviderProperties:I = 0x14

.field static final TRANSACTION_getProviders:I = 0x11

.field static final TRANSACTION_isProviderEnabled:I = 0x16

.field static final TRANSACTION_locationCallbackFinished:I = 0x21

.field static final TRANSACTION_providerMeetsCriteria:I = 0x13

.field static final TRANSACTION_removeGeofence:I = 0x4

.field static final TRANSACTION_removeGpsMeasurementsListener:I = 0xd

.field static final TRANSACTION_removeGpsNavigationMessageListener:I = 0xf

.field static final TRANSACTION_removeGpsStatusListener:I = 0x7

.field static final TRANSACTION_removeTestProvider:I = 0x18

.field static final TRANSACTION_removeUpdates:I = 0x2

.field static final TRANSACTION_reportLocation:I = 0x20

.field static final TRANSACTION_requestGeofence:I = 0x3

.field static final TRANSACTION_requestLocationUpdates:I = 0x1

.field static final TRANSACTION_sendExtraCommand:I = 0x1f

.field static final TRANSACTION_sendNiResponse:I = 0xb

.field static final TRANSACTION_setTestProviderEnabled:I = 0x1b

.field static final TRANSACTION_setTestProviderLocation:I = 0x19

.field static final TRANSACTION_setTestProviderStatus:I = 0x1d


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.location.ILocationManager"

    invoke-virtual {p0, p0, v0}, Landroid/location/ILocationManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/location/ILocationManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string v1, "android.location.ILocationManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/location/ILocationManager;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/location/ILocationManager;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/location/ILocationManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/location/ILocationManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 59
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    sparse-switch p1, :sswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    return v7

    :sswitch_0
    const-string v7, "android.location.ILocationManager"

    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v7, 0x1

    return v7

    :sswitch_1
    const-string v7, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_0

    sget-object v7, Landroid/location/LocationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v7, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Landroid/location/LocationRequest;

    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/location/ILocationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationListener;

    move-result-object v46

    .local v46, "_arg1":Landroid/location/ILocationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_1

    sget-object v7, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v7, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Landroid/app/PendingIntent;

    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v53

    .local v53, "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v42

    move-object/from16 v2, v46

    move-object/from16 v3, v51

    move-object/from16 v4, v53

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/location/ILocationManager$Stub;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/ILocationListener;Landroid/app/PendingIntent;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v7, 0x1

    return v7

    .end local v46    # "_arg1":Landroid/location/ILocationListener;
    .end local v53    # "_arg3":Ljava/lang/String;
    :cond_0
    const/16 v42, 0x0

    .local v42, "_arg0":Landroid/location/LocationRequest;
    goto :goto_0

    .end local v42    # "_arg0":Landroid/location/LocationRequest;
    .restart local v46    # "_arg1":Landroid/location/ILocationListener;
    :cond_1
    const/16 v51, 0x0

    .local v51, "_arg2":Landroid/app/PendingIntent;
    goto :goto_1

    .end local v46    # "_arg1":Landroid/location/ILocationListener;
    .end local v51    # "_arg2":Landroid/app/PendingIntent;
    :sswitch_2
    const-string v7, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/location/ILocationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationListener;

    move-result-object v40

    .local v40, "_arg0":Landroid/location/ILocationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_2

    sget-object v7, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v7, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Landroid/app/PendingIntent;

    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v52

    .local v52, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object/from16 v2, v43

    move-object/from16 v3, v52

    invoke-virtual {v0, v1, v2, v3}, Landroid/location/ILocationManager$Stub;->removeUpdates(Landroid/location/ILocationListener;Landroid/app/PendingIntent;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v7, 0x1

    return v7

    .end local v52    # "_arg2":Ljava/lang/String;
    :cond_2
    const/16 v43, 0x0

    .local v43, "_arg1":Landroid/app/PendingIntent;
    goto :goto_2

    .end local v40    # "_arg0":Landroid/location/ILocationListener;
    .end local v43    # "_arg1":Landroid/app/PendingIntent;
    :sswitch_3
    const-string v7, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_3

    sget-object v7, Landroid/location/LocationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v7, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Landroid/location/LocationRequest;

    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_4

    sget-object v7, Landroid/location/Geofence;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v7, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Landroid/location/Geofence;

    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_5

    sget-object v7, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v7, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Landroid/app/PendingIntent;

    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v53

    .restart local v53    # "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v42

    move-object/from16 v2, v45

    move-object/from16 v3, v51

    move-object/from16 v4, v53

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/location/ILocationManager$Stub;->requestGeofence(Landroid/location/LocationRequest;Landroid/location/Geofence;Landroid/app/PendingIntent;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v7, 0x1

    return v7

    .end local v53    # "_arg3":Ljava/lang/String;
    :cond_3
    const/16 v42, 0x0

    .restart local v42    # "_arg0":Landroid/location/LocationRequest;
    goto :goto_3

    .end local v42    # "_arg0":Landroid/location/LocationRequest;
    :cond_4
    const/16 v45, 0x0

    .local v45, "_arg1":Landroid/location/Geofence;
    goto :goto_4

    .end local v45    # "_arg1":Landroid/location/Geofence;
    :cond_5
    const/16 v51, 0x0

    .restart local v51    # "_arg2":Landroid/app/PendingIntent;
    goto :goto_5

    .end local v51    # "_arg2":Landroid/app/PendingIntent;
    :sswitch_4
    const-string v7, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_6

    sget-object v7, Landroid/location/Geofence;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v7, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/location/Geofence;

    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_7

    sget-object v7, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v7, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Landroid/app/PendingIntent;

    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v52

    .restart local v52    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v43

    move-object/from16 v3, v52

    invoke-virtual {v0, v1, v2, v3}, Landroid/location/ILocationManager$Stub;->removeGeofence(Landroid/location/Geofence;Landroid/app/PendingIntent;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v7, 0x1

    return v7

    .end local v52    # "_arg2":Ljava/lang/String;
    :cond_6
    const/16 v29, 0x0

    .local v29, "_arg0":Landroid/location/Geofence;
    goto :goto_6

    .end local v29    # "_arg0":Landroid/location/Geofence;
    :cond_7
    const/16 v43, 0x0

    .restart local v43    # "_arg1":Landroid/app/PendingIntent;
    goto :goto_7

    .end local v43    # "_arg1":Landroid/app/PendingIntent;
    :sswitch_5
    const-string v7, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_8

    sget-object v7, Landroid/location/LocationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v7, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Landroid/location/LocationRequest;

    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v49

    .local v49, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v42

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Landroid/location/ILocationManager$Stub;->getLastLocation(Landroid/location/LocationRequest;Ljava/lang/String;)Landroid/location/Location;

    move-result-object v54

    .local v54, "_result":Landroid/location/Location;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v54, :cond_9

    const/4 v7, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v7, 0x1

    move-object/from16 v0, v54

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v7}, Landroid/location/Location;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_9
    const/4 v7, 0x1

    return v7

    .end local v49    # "_arg1":Ljava/lang/String;
    .end local v54    # "_result":Landroid/location/Location;
    :cond_8
    const/16 v42, 0x0

    .restart local v42    # "_arg0":Landroid/location/LocationRequest;
    goto :goto_8

    .end local v42    # "_arg0":Landroid/location/LocationRequest;
    .restart local v49    # "_arg1":Ljava/lang/String;
    .restart local v54    # "_result":Landroid/location/Location;
    :cond_9
    const/4 v7, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .end local v49    # "_arg1":Ljava/lang/String;
    .end local v54    # "_result":Landroid/location/Location;
    :sswitch_6
    const-string v7, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/location/IGpsStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGpsStatusListener;

    move-result-object v39

    .local v39, "_arg0":Landroid/location/IGpsStatusListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v49

    .restart local v49    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Landroid/location/ILocationManager$Stub;->addGpsStatusListener(Landroid/location/IGpsStatusListener;Ljava/lang/String;)Z

    move-result v58

    .local v58, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v58, :cond_a

    const/4 v7, 0x1

    :goto_a
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v7, 0x1

    return v7

    :cond_a
    const/4 v7, 0x0

    goto :goto_a

    .end local v39    # "_arg0":Landroid/location/IGpsStatusListener;
    .end local v49    # "_arg1":Ljava/lang/String;
    .end local v58    # "_result":Z
    :sswitch_7
    const-string v7, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/location/IGpsStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGpsStatusListener;

    move-result-object v39

    .restart local v39    # "_arg0":Landroid/location/IGpsStatusListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/location/ILocationManager$Stub;->removeGpsStatusListener(Landroid/location/IGpsStatusListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v7, 0x1

    return v7

    .end local v39    # "_arg0":Landroid/location/IGpsStatusListener;
    :sswitch_8
    const-string v7, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/location/ILocationManager$Stub;->geocoderIsPresent()Z

    move-result v58

    .restart local v58    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v58, :cond_b

    const/4 v7, 0x1

    :goto_b
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v7, 0x1

    return v7

    :cond_b
    const/4 v7, 0x0

    goto :goto_b

    .end local v58    # "_result":Z
    :sswitch_9
    const-string v7, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v8

    .local v8, "_arg0":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v10

    .local v10, "_arg1":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .local v12, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_c

    sget-object v7, Landroid/location/GeocoderParams;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v7, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/location/GeocoderParams;

    :goto_c
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .local v14, "_arg4":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    move-object/from16 v7, p0

    invoke-virtual/range {v7 .. v14}, Landroid/location/ILocationManager$Stub;->getFromLocation(DDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;

    move-result-object v56

    .local v56, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v7, 0x1

    return v7

    .end local v14    # "_arg4":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    .end local v56    # "_result":Ljava/lang/String;
    :cond_c
    const/4 v13, 0x0

    .local v13, "_arg3":Landroid/location/GeocoderParams;
    goto :goto_c

    .end local v8    # "_arg0":D
    .end local v10    # "_arg1":D
    .end local v12    # "_arg2":I
    .end local v13    # "_arg3":Landroid/location/GeocoderParams;
    :sswitch_a
    const-string v7, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .local v17, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v10

    .restart local v10    # "_arg1":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v20

    .local v20, "_arg2":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v22

    .local v22, "_arg3":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v24

    .local v24, "_arg4":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    .local v26, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_d

    sget-object v7, Landroid/location/GeocoderParams;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v7, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/location/GeocoderParams;

    :goto_d
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    .local v28, "_arg7":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    move-object/from16 v16, p0

    move-wide/from16 v18, v10

    invoke-virtual/range {v16 .. v28}, Landroid/location/ILocationManager$Stub;->getFromLocationName(Ljava/lang/String;DDDDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;

    move-result-object v56

    .restart local v56    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v0, p3

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v7, 0x1

    return v7

    .end local v28    # "_arg7":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    .end local v56    # "_result":Ljava/lang/String;
    :cond_d
    const/16 v27, 0x0

    .local v27, "_arg6":Landroid/location/GeocoderParams;
    goto :goto_d

    .end local v10    # "_arg1":D
    .end local v17    # "_arg0":Ljava/lang/String;
    .end local v20    # "_arg2":D
    .end local v22    # "_arg3":D
    .end local v24    # "_arg4":D
    .end local v26    # "_arg5":I
    .end local v27    # "_arg6":Landroid/location/GeocoderParams;
    :sswitch_b
    const-string v7, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v32

    .local v32, "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v6, v1}, Landroid/location/ILocationManager$Stub;->sendNiResponse(II)Z

    move-result v58

    .restart local v58    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v58, :cond_e

    const/4 v7, 0x1

    :goto_e
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v7, 0x1

    return v7

    :cond_e
    const/4 v7, 0x0

    goto :goto_e

    .end local v6    # "_arg0":I
    .end local v32    # "_arg1":I
    .end local v58    # "_result":Z
    :sswitch_c
    const-string v7, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/location/IGpsMeasurementsListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGpsMeasurementsListener;

    move-result-object v37

    .local v37, "_arg0":Landroid/location/IGpsMeasurementsListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v49

    .restart local v49    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Landroid/location/ILocationManager$Stub;->addGpsMeasurementsListener(Landroid/location/IGpsMeasurementsListener;Ljava/lang/String;)Z

    move-result v58

    .restart local v58    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v58, :cond_f

    const/4 v7, 0x1

    :goto_f
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v7, 0x1

    return v7

    :cond_f
    const/4 v7, 0x0

    goto :goto_f

    .end local v37    # "_arg0":Landroid/location/IGpsMeasurementsListener;
    .end local v49    # "_arg1":Ljava/lang/String;
    .end local v58    # "_result":Z
    :sswitch_d
    const-string v7, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/location/IGpsMeasurementsListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGpsMeasurementsListener;

    move-result-object v37

    .restart local v37    # "_arg0":Landroid/location/IGpsMeasurementsListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/location/ILocationManager$Stub;->removeGpsMeasurementsListener(Landroid/location/IGpsMeasurementsListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v7, 0x1

    return v7

    .end local v37    # "_arg0":Landroid/location/IGpsMeasurementsListener;
    :sswitch_e
    const-string v7, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/location/IGpsNavigationMessageListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGpsNavigationMessageListener;

    move-result-object v38

    .local v38, "_arg0":Landroid/location/IGpsNavigationMessageListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v49

    .restart local v49    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Landroid/location/ILocationManager$Stub;->addGpsNavigationMessageListener(Landroid/location/IGpsNavigationMessageListener;Ljava/lang/String;)Z

    move-result v58

    .restart local v58    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v58, :cond_10

    const/4 v7, 0x1

    :goto_10
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v7, 0x1

    return v7

    :cond_10
    const/4 v7, 0x0

    goto :goto_10

    .end local v38    # "_arg0":Landroid/location/IGpsNavigationMessageListener;
    .end local v49    # "_arg1":Ljava/lang/String;
    .end local v58    # "_result":Z
    :sswitch_f
    const-string v7, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/location/IGpsNavigationMessageListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGpsNavigationMessageListener;

    move-result-object v38

    .restart local v38    # "_arg0":Landroid/location/IGpsNavigationMessageListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/location/ILocationManager$Stub;->removeGpsNavigationMessageListener(Landroid/location/IGpsNavigationMessageListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v7, 0x1

    return v7

    .end local v38    # "_arg0":Landroid/location/IGpsNavigationMessageListener;
    :sswitch_10
    const-string v7, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/location/ILocationManager$Stub;->getAllProviders()Ljava/util/List;

    move-result-object v57

    .local v57, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    const/4 v7, 0x1

    return v7

    .end local v57    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_11
    const-string v7, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_11

    sget-object v7, Landroid/location/Criteria;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v7, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/location/Criteria;

    :goto_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_12

    const/16 v50, 0x1

    .local v50, "_arg1":Z
    :goto_12
    move-object/from16 v0, p0

    move/from16 v1, v50

    invoke-virtual {v0, v15, v1}, Landroid/location/ILocationManager$Stub;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object v57

    .restart local v57    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    const/4 v7, 0x1

    return v7

    .end local v50    # "_arg1":Z
    .end local v57    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_11
    const/4 v15, 0x0

    .local v15, "_arg0":Landroid/location/Criteria;
    goto :goto_11

    .end local v15    # "_arg0":Landroid/location/Criteria;
    :cond_12
    const/16 v50, 0x0

    .restart local v50    # "_arg1":Z
    goto :goto_12

    .end local v50    # "_arg1":Z
    :sswitch_12
    const-string v7, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_13

    sget-object v7, Landroid/location/Criteria;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v7, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/location/Criteria;

    :goto_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_14

    const/16 v50, 0x1

    .restart local v50    # "_arg1":Z
    :goto_14
    move-object/from16 v0, p0

    move/from16 v1, v50

    invoke-virtual {v0, v15, v1}, Landroid/location/ILocationManager$Stub;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v56

    .restart local v56    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v7, 0x1

    return v7

    .end local v50    # "_arg1":Z
    .end local v56    # "_result":Ljava/lang/String;
    :cond_13
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/location/Criteria;
    goto :goto_13

    .end local v15    # "_arg0":Landroid/location/Criteria;
    :cond_14
    const/16 v50, 0x0

    .restart local v50    # "_arg1":Z
    goto :goto_14

    .end local v50    # "_arg1":Z
    :sswitch_13
    const-string v7, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .restart local v17    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_15

    sget-object v7, Landroid/location/Criteria;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v7, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Landroid/location/Criteria;

    :goto_15
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/location/ILocationManager$Stub;->providerMeetsCriteria(Ljava/lang/String;Landroid/location/Criteria;)Z

    move-result v58

    .restart local v58    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v58, :cond_16

    const/4 v7, 0x1

    :goto_16
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v7, 0x1

    return v7

    .end local v58    # "_result":Z
    :cond_15
    const/16 v44, 0x0

    .local v44, "_arg1":Landroid/location/Criteria;
    goto :goto_15

    .end local v44    # "_arg1":Landroid/location/Criteria;
    .restart local v58    # "_result":Z
    :cond_16
    const/4 v7, 0x0

    goto :goto_16

    .end local v17    # "_arg0":Ljava/lang/String;
    .end local v58    # "_result":Z
    :sswitch_14
    const-string v7, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .restart local v17    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/location/ILocationManager$Stub;->getProviderProperties(Ljava/lang/String;)Lcom/android/internal/location/ProviderProperties;

    move-result-object v55

    .local v55, "_result":Lcom/android/internal/location/ProviderProperties;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v55, :cond_17

    const/4 v7, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v7, 0x1

    move-object/from16 v0, v55

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v7}, Lcom/android/internal/location/ProviderProperties;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_17
    const/4 v7, 0x1

    return v7

    :cond_17
    const/4 v7, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_17

    .end local v17    # "_arg0":Ljava/lang/String;
    .end local v55    # "_result":Lcom/android/internal/location/ProviderProperties;
    :sswitch_15
    const-string v7, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/location/ILocationManager$Stub;->getNetworkProviderPackage()Ljava/lang/String;

    move-result-object v56

    .restart local v56    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v7, 0x1

    return v7

    .end local v56    # "_result":Ljava/lang/String;
    :sswitch_16
    const-string v7, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .restart local v17    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/location/ILocationManager$Stub;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v58

    .restart local v58    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v58, :cond_18

    const/4 v7, 0x1

    :goto_18
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v7, 0x1

    return v7

    :cond_18
    const/4 v7, 0x0

    goto :goto_18

    .end local v17    # "_arg0":Ljava/lang/String;
    .end local v58    # "_result":Z
    :sswitch_17
    const-string v7, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .restart local v17    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_19

    sget-object v7, Lcom/android/internal/location/ProviderProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v7, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Lcom/android/internal/location/ProviderProperties;

    :goto_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v52

    .restart local v52    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v48

    move-object/from16 v3, v52

    invoke-virtual {v0, v1, v2, v3}, Landroid/location/ILocationManager$Stub;->addTestProvider(Ljava/lang/String;Lcom/android/internal/location/ProviderProperties;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v7, 0x1

    return v7

    .end local v52    # "_arg2":Ljava/lang/String;
    :cond_19
    const/16 v48, 0x0

    .local v48, "_arg1":Lcom/android/internal/location/ProviderProperties;
    goto :goto_19

    .end local v17    # "_arg0":Ljava/lang/String;
    .end local v48    # "_arg1":Lcom/android/internal/location/ProviderProperties;
    :sswitch_18
    const-string v7, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .restart local v17    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v49

    .restart local v49    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Landroid/location/ILocationManager$Stub;->removeTestProvider(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v7, 0x1

    return v7

    .end local v17    # "_arg0":Ljava/lang/String;
    .end local v49    # "_arg1":Ljava/lang/String;
    :sswitch_19
    const-string v7, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .restart local v17    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_1a

    sget-object v7, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v7, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Landroid/location/Location;

    :goto_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v52

    .restart local v52    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v47

    move-object/from16 v3, v52

    invoke-virtual {v0, v1, v2, v3}, Landroid/location/ILocationManager$Stub;->setTestProviderLocation(Ljava/lang/String;Landroid/location/Location;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v7, 0x1

    return v7

    .end local v52    # "_arg2":Ljava/lang/String;
    :cond_1a
    const/16 v47, 0x0

    .local v47, "_arg1":Landroid/location/Location;
    goto :goto_1a

    .end local v17    # "_arg0":Ljava/lang/String;
    .end local v47    # "_arg1":Landroid/location/Location;
    :sswitch_1a
    const-string v7, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .restart local v17    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v49

    .restart local v49    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Landroid/location/ILocationManager$Stub;->clearTestProviderLocation(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v7, 0x1

    return v7

    .end local v17    # "_arg0":Ljava/lang/String;
    .end local v49    # "_arg1":Ljava/lang/String;
    :sswitch_1b
    const-string v7, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .restart local v17    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_1b

    const/16 v50, 0x1

    .restart local v50    # "_arg1":Z
    :goto_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v52

    .restart local v52    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v50

    move-object/from16 v3, v52

    invoke-virtual {v0, v1, v2, v3}, Landroid/location/ILocationManager$Stub;->setTestProviderEnabled(Ljava/lang/String;ZLjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v7, 0x1

    return v7

    .end local v50    # "_arg1":Z
    .end local v52    # "_arg2":Ljava/lang/String;
    :cond_1b
    const/16 v50, 0x0

    .restart local v50    # "_arg1":Z
    goto :goto_1b

    .end local v17    # "_arg0":Ljava/lang/String;
    .end local v50    # "_arg1":Z
    :sswitch_1c
    const-string v7, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .restart local v17    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v49

    .restart local v49    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Landroid/location/ILocationManager$Stub;->clearTestProviderEnabled(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v7, 0x1

    return v7

    .end local v17    # "_arg0":Ljava/lang/String;
    .end local v49    # "_arg1":Ljava/lang/String;
    :sswitch_1d
    const-string v7, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .restart local v17    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v32

    .restart local v32    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_1c

    sget-object v7, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v7, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/os/Bundle;

    :goto_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v34

    .local v34, "_arg3":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v36

    .local v36, "_arg4":Ljava/lang/String;
    move-object/from16 v30, p0

    move-object/from16 v31, v17

    invoke-virtual/range {v30 .. v36}, Landroid/location/ILocationManager$Stub;->setTestProviderStatus(Ljava/lang/String;ILandroid/os/Bundle;JLjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v7, 0x1

    return v7

    .end local v34    # "_arg3":J
    .end local v36    # "_arg4":Ljava/lang/String;
    :cond_1c
    const/16 v33, 0x0

    .local v33, "_arg2":Landroid/os/Bundle;
    goto :goto_1c

    .end local v17    # "_arg0":Ljava/lang/String;
    .end local v32    # "_arg1":I
    .end local v33    # "_arg2":Landroid/os/Bundle;
    :sswitch_1e
    const-string v7, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .restart local v17    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v49

    .restart local v49    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Landroid/location/ILocationManager$Stub;->clearTestProviderStatus(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v7, 0x1

    return v7

    .end local v17    # "_arg0":Ljava/lang/String;
    .end local v49    # "_arg1":Ljava/lang/String;
    :sswitch_1f
    const-string v7, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .restart local v17    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v49

    .restart local v49    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_1d

    sget-object v7, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v7, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/os/Bundle;

    :goto_1d
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v49

    move-object/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Landroid/location/ILocationManager$Stub;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v58

    .restart local v58    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v58, :cond_1e

    const/4 v7, 0x1

    :goto_1e
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz v33, :cond_1f

    const/4 v7, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v7, 0x1

    move-object/from16 v0, v33

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v7}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1f
    const/4 v7, 0x1

    return v7

    .end local v58    # "_result":Z
    :cond_1d
    const/16 v33, 0x0

    .restart local v33    # "_arg2":Landroid/os/Bundle;
    goto :goto_1d

    .end local v33    # "_arg2":Landroid/os/Bundle;
    .restart local v58    # "_result":Z
    :cond_1e
    const/4 v7, 0x0

    goto :goto_1e

    :cond_1f
    const/4 v7, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1f

    .end local v17    # "_arg0":Ljava/lang/String;
    .end local v49    # "_arg1":Ljava/lang/String;
    .end local v58    # "_result":Z
    :sswitch_20
    const-string v7, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_20

    sget-object v7, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v7, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Landroid/location/Location;

    :goto_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_21

    const/16 v50, 0x1

    .restart local v50    # "_arg1":Z
    :goto_21
    move-object/from16 v0, p0

    move-object/from16 v1, v41

    move/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Landroid/location/ILocationManager$Stub;->reportLocation(Landroid/location/Location;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v7, 0x1

    return v7

    .end local v50    # "_arg1":Z
    :cond_20
    const/16 v41, 0x0

    .local v41, "_arg0":Landroid/location/Location;
    goto :goto_20

    .end local v41    # "_arg0":Landroid/location/Location;
    :cond_21
    const/16 v50, 0x0

    .restart local v50    # "_arg1":Z
    goto :goto_21

    .end local v50    # "_arg1":Z
    :sswitch_21
    const-string v7, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/location/ILocationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationListener;

    move-result-object v40

    .restart local v40    # "_arg0":Landroid/location/ILocationListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/location/ILocationManager$Stub;->locationCallbackFinished(Landroid/location/ILocationListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v7, 0x1

    return v7

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
