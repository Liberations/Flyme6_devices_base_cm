.class public abstract Landroid/app/admin/IDevicePolicyManager$Stub;
.super Landroid/os/Binder;
.source "IDevicePolicyManager.java"

# interfaces
.implements Landroid/app/admin/IDevicePolicyManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/IDevicePolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.admin.IDevicePolicyManager"

.field static final TRANSACTION_addCrossProfileIntentFilter:I = 0x50

.field static final TRANSACTION_addCrossProfileWidgetProvider:I = 0x76

.field static final TRANSACTION_addPersistentPreferredActivity:I = 0x49

.field static final TRANSACTION_choosePrivateKeyAlias:I = 0x46

.field static final TRANSACTION_clearCrossProfileIntentFilters:I = 0x51

.field static final TRANSACTION_clearDeviceInitializer:I = 0x7e

.field static final TRANSACTION_clearDeviceOwner:I = 0x3a

.field static final TRANSACTION_clearPackagePersistentPreferredActivities:I = 0x4a

.field static final TRANSACTION_clearProfileOwner:I = 0x40

.field static final TRANSACTION_createAndInitializeUser:I = 0x5b

.field static final TRANSACTION_createUser:I = 0x5a

.field static final TRANSACTION_enableSystemApp:I = 0x5e

.field static final TRANSACTION_enableSystemAppWithIntent:I = 0x5f

.field static final TRANSACTION_enforceCanManageCaCerts:I = 0x44

.field static final TRANSACTION_getAccountTypesWithManagementDisabled:I = 0x61

.field static final TRANSACTION_getAccountTypesWithManagementDisabledAsUser:I = 0x62

.field static final TRANSACTION_getActiveAdmins:I = 0x2e

.field static final TRANSACTION_getApplicationRestrictions:I = 0x4c

.field static final TRANSACTION_getAutoTimeRequired:I = 0x7a

.field static final TRANSACTION_getBluetoothContactSharingDisabled:I = 0x72

.field static final TRANSACTION_getBluetoothContactSharingDisabledForUser:I = 0x73

.field static final TRANSACTION_getCameraDisabled:I = 0x27

.field static final TRANSACTION_getCertInstallerPackage:I = 0x48

.field static final TRANSACTION_getCrossProfileCallerIdDisabled:I = 0x6e

.field static final TRANSACTION_getCrossProfileCallerIdDisabledForUser:I = 0x6f

.field static final TRANSACTION_getCrossProfileWidgetProviders:I = 0x78

.field static final TRANSACTION_getCurrentFailedPasswordAttempts:I = 0x17

.field static final TRANSACTION_getDeviceInitializer:I = 0x80

.field static final TRANSACTION_getDeviceInitializerComponent:I = 0x81

.field static final TRANSACTION_getDeviceOwner:I = 0x38

.field static final TRANSACTION_getDeviceOwnerName:I = 0x39

.field static final TRANSACTION_getDoNotAskCredentialsOnBoot:I = 0x87

.field static final TRANSACTION_getGlobalProxyAdmin:I = 0x21

.field static final TRANSACTION_getKeyguardDisabledFeatures:I = 0x2b

.field static final TRANSACTION_getLockTaskPackages:I = 0x64

.field static final TRANSACTION_getMaximumFailedPasswordsForWipe:I = 0x1a

.field static final TRANSACTION_getMaximumTimeToLock:I = 0x1d

.field static final TRANSACTION_getPasswordExpiration:I = 0x15

.field static final TRANSACTION_getPasswordExpirationTimeout:I = 0x14

.field static final TRANSACTION_getPasswordHistoryLength:I = 0x12

.field static final TRANSACTION_getPasswordMinimumLength:I = 0x4

.field static final TRANSACTION_getPasswordMinimumLetters:I = 0xa

.field static final TRANSACTION_getPasswordMinimumLowerCase:I = 0x8

.field static final TRANSACTION_getPasswordMinimumNonLetter:I = 0x10

.field static final TRANSACTION_getPasswordMinimumNumeric:I = 0xc

.field static final TRANSACTION_getPasswordMinimumSymbols:I = 0xe

.field static final TRANSACTION_getPasswordMinimumUpperCase:I = 0x6

.field static final TRANSACTION_getPasswordQuality:I = 0x2

.field static final TRANSACTION_getPermissionGrantState:I = 0x8c

.field static final TRANSACTION_getPermissionPolicy:I = 0x8a

.field static final TRANSACTION_getPermittedAccessibilityServices:I = 0x53

.field static final TRANSACTION_getPermittedAccessibilityServicesForUser:I = 0x54

.field static final TRANSACTION_getPermittedInputMethods:I = 0x56

.field static final TRANSACTION_getPermittedInputMethodsForCurrentUser:I = 0x57

.field static final TRANSACTION_getProfileOwner:I = 0x3c

.field static final TRANSACTION_getProfileOwnerName:I = 0x3d

.field static final TRANSACTION_getProfileWithMinimumFailedPasswordsForWipe:I = 0x18

.field static final TRANSACTION_getRemoveWarning:I = 0x30

.field static final TRANSACTION_getRestrictionsProvider:I = 0x4e

.field static final TRANSACTION_getScreenCaptureDisabled:I = 0x29

.field static final TRANSACTION_getStorageEncryption:I = 0x24

.field static final TRANSACTION_getStorageEncryptionStatus:I = 0x25

.field static final TRANSACTION_getSystemUpdatePolicy:I = 0x84

.field static final TRANSACTION_getTrustAgentConfiguration:I = 0x75

.field static final TRANSACTION_hasGrantedPolicy:I = 0x32

.field static final TRANSACTION_hasUserSetupCompleted:I = 0x41

.field static final TRANSACTION_installCaCert:I = 0x42

.field static final TRANSACTION_installKeyPair:I = 0x45

.field static final TRANSACTION_isActivePasswordSufficient:I = 0x16

.field static final TRANSACTION_isAdminActive:I = 0x2d

.field static final TRANSACTION_isApplicationHidden:I = 0x59

.field static final TRANSACTION_isDeviceInitializer:I = 0x7d

.field static final TRANSACTION_isDeviceOwner:I = 0x37

.field static final TRANSACTION_isLockTaskPermitted:I = 0x65

.field static final TRANSACTION_isMasterVolumeMuted:I = 0x69

.field static final TRANSACTION_isRemovingAdmin:I = 0x7b

.field static final TRANSACTION_isUninstallBlocked:I = 0x6c

.field static final TRANSACTION_lockNow:I = 0x1e

.field static final TRANSACTION_notifyLockTaskModeChanged:I = 0x6a

.field static final TRANSACTION_notifyPendingSystemUpdate:I = 0x88

.field static final TRANSACTION_packageHasActiveAdmins:I = 0x2f

.field static final TRANSACTION_removeActiveAdmin:I = 0x31

.field static final TRANSACTION_removeCrossProfileWidgetProvider:I = 0x77

.field static final TRANSACTION_removeUser:I = 0x5c

.field static final TRANSACTION_reportFailedPasswordAttempt:I = 0x34

.field static final TRANSACTION_reportSuccessfulPasswordAttempt:I = 0x35

.field static final TRANSACTION_requireSecureKeyguard:I = 0x8d

.field static final TRANSACTION_resetPassword:I = 0x1b

.field static final TRANSACTION_setAccountManagementDisabled:I = 0x60

.field static final TRANSACTION_setActiveAdmin:I = 0x2c

.field static final TRANSACTION_setActivePasswordState:I = 0x33

.field static final TRANSACTION_setApplicationHidden:I = 0x58

.field static final TRANSACTION_setApplicationRestrictions:I = 0x4b

.field static final TRANSACTION_setAutoTimeRequired:I = 0x79

.field static final TRANSACTION_setBluetoothContactSharingDisabled:I = 0x71

.field static final TRANSACTION_setCameraDisabled:I = 0x26

.field static final TRANSACTION_setCertInstallerPackage:I = 0x47

.field static final TRANSACTION_setCrossProfileCallerIdDisabled:I = 0x6d

.field static final TRANSACTION_setDeviceInitializer:I = 0x7f

.field static final TRANSACTION_setDeviceOwner:I = 0x36

.field static final TRANSACTION_setGlobalProxy:I = 0x20

.field static final TRANSACTION_setGlobalSetting:I = 0x66

.field static final TRANSACTION_setKeyguardDisabled:I = 0x85

.field static final TRANSACTION_setKeyguardDisabledFeatures:I = 0x2a

.field static final TRANSACTION_setLockTaskPackages:I = 0x63

.field static final TRANSACTION_setMasterVolumeMuted:I = 0x68

.field static final TRANSACTION_setMaximumFailedPasswordsForWipe:I = 0x19

.field static final TRANSACTION_setMaximumTimeToLock:I = 0x1c

.field static final TRANSACTION_setPasswordExpirationTimeout:I = 0x13

.field static final TRANSACTION_setPasswordHistoryLength:I = 0x11

.field static final TRANSACTION_setPasswordMinimumLength:I = 0x3

.field static final TRANSACTION_setPasswordMinimumLetters:I = 0x9

.field static final TRANSACTION_setPasswordMinimumLowerCase:I = 0x7

.field static final TRANSACTION_setPasswordMinimumNonLetter:I = 0xf

.field static final TRANSACTION_setPasswordMinimumNumeric:I = 0xb

.field static final TRANSACTION_setPasswordMinimumSymbols:I = 0xd

.field static final TRANSACTION_setPasswordMinimumUpperCase:I = 0x5

.field static final TRANSACTION_setPasswordQuality:I = 0x1

.field static final TRANSACTION_setPermissionGrantState:I = 0x8b

.field static final TRANSACTION_setPermissionPolicy:I = 0x89

.field static final TRANSACTION_setPermittedAccessibilityServices:I = 0x52

.field static final TRANSACTION_setPermittedInputMethods:I = 0x55

.field static final TRANSACTION_setProfileEnabled:I = 0x3e

.field static final TRANSACTION_setProfileName:I = 0x3f

.field static final TRANSACTION_setProfileOwner:I = 0x3b

.field static final TRANSACTION_setRecommendedGlobalProxy:I = 0x22

.field static final TRANSACTION_setRestrictionsProvider:I = 0x4d

.field static final TRANSACTION_setScreenCaptureDisabled:I = 0x28

.field static final TRANSACTION_setSecureSetting:I = 0x67

.field static final TRANSACTION_setStatusBarDisabled:I = 0x86

.field static final TRANSACTION_setStorageEncryption:I = 0x23

.field static final TRANSACTION_setSystemUpdatePolicy:I = 0x83

.field static final TRANSACTION_setTrustAgentConfiguration:I = 0x74

.field static final TRANSACTION_setUninstallBlocked:I = 0x6b

.field static final TRANSACTION_setUserEnabled:I = 0x7c

.field static final TRANSACTION_setUserIcon:I = 0x82

.field static final TRANSACTION_setUserRestriction:I = 0x4f

.field static final TRANSACTION_startManagedQuickContact:I = 0x70

.field static final TRANSACTION_switchUser:I = 0x5d

.field static final TRANSACTION_uninstallCaCerts:I = 0x43

.field static final TRANSACTION_wipeData:I = 0x1f


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string v1, "android.app.admin.IDevicePolicyManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/app/admin/IDevicePolicyManager;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 64
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

    move-result v6

    return v6

    :sswitch_0
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v6, 0x1

    return v6

    :sswitch_1
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_0

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/ComponentName;

    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .local v8, "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v8}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordQuality(Landroid/content/ComponentName;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    .end local v8    # "_arg1":I
    :cond_0
    const/16 v17, 0x0

    .local v17, "_arg0":Landroid/content/ComponentName;
    goto :goto_0

    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :sswitch_2
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/ComponentName;

    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v8}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result v49

    .local v49, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    .end local v8    # "_arg1":I
    .end local v49    # "_result":I
    :cond_1
    const/16 v17, 0x0

    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_1

    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :sswitch_3
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/ComponentName;

    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v8}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumLength(Landroid/content/ComponentName;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    .end local v8    # "_arg1":I
    :cond_2
    const/16 v17, 0x0

    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_2

    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :sswitch_4
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/ComponentName;

    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v8}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumLength(Landroid/content/ComponentName;I)I

    move-result v49

    .restart local v49    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    .end local v8    # "_arg1":I
    .end local v49    # "_result":I
    :cond_3
    const/16 v17, 0x0

    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_3

    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :sswitch_5
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/ComponentName;

    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v8}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumUpperCase(Landroid/content/ComponentName;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    .end local v8    # "_arg1":I
    :cond_4
    const/16 v17, 0x0

    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_4

    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :sswitch_6
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_5

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/ComponentName;

    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v8}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumUpperCase(Landroid/content/ComponentName;I)I

    move-result v49

    .restart local v49    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    .end local v8    # "_arg1":I
    .end local v49    # "_result":I
    :cond_5
    const/16 v17, 0x0

    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_5

    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :sswitch_7
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_6

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/ComponentName;

    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v8}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumLowerCase(Landroid/content/ComponentName;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    .end local v8    # "_arg1":I
    :cond_6
    const/16 v17, 0x0

    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_6

    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :sswitch_8
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_7

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/ComponentName;

    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v8}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumLowerCase(Landroid/content/ComponentName;I)I

    move-result v49

    .restart local v49    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    .end local v8    # "_arg1":I
    .end local v49    # "_result":I
    :cond_7
    const/16 v17, 0x0

    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_7

    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :sswitch_9
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_8

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/ComponentName;

    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v8}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumLetters(Landroid/content/ComponentName;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    .end local v8    # "_arg1":I
    :cond_8
    const/16 v17, 0x0

    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_8

    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :sswitch_a
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_9

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/ComponentName;

    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v8}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumLetters(Landroid/content/ComponentName;I)I

    move-result v49

    .restart local v49    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    .end local v8    # "_arg1":I
    .end local v49    # "_result":I
    :cond_9
    const/16 v17, 0x0

    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_9

    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :sswitch_b
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_a

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/ComponentName;

    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v8}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumNumeric(Landroid/content/ComponentName;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    .end local v8    # "_arg1":I
    :cond_a
    const/16 v17, 0x0

    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_a

    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :sswitch_c
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_b

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/ComponentName;

    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v8}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumNumeric(Landroid/content/ComponentName;I)I

    move-result v49

    .restart local v49    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    .end local v8    # "_arg1":I
    .end local v49    # "_result":I
    :cond_b
    const/16 v17, 0x0

    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_b

    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :sswitch_d
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_c

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/ComponentName;

    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v8}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumSymbols(Landroid/content/ComponentName;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    .end local v8    # "_arg1":I
    :cond_c
    const/16 v17, 0x0

    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_c

    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :sswitch_e
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_d

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/ComponentName;

    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v8}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumSymbols(Landroid/content/ComponentName;I)I

    move-result v49

    .restart local v49    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    .end local v8    # "_arg1":I
    .end local v49    # "_result":I
    :cond_d
    const/16 v17, 0x0

    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_d

    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :sswitch_f
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_e

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/ComponentName;

    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v8}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumNonLetter(Landroid/content/ComponentName;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    .end local v8    # "_arg1":I
    :cond_e
    const/16 v17, 0x0

    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_e

    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :sswitch_10
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_f

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/ComponentName;

    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v8}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumNonLetter(Landroid/content/ComponentName;I)I

    move-result v49

    .restart local v49    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    .end local v8    # "_arg1":I
    .end local v49    # "_result":I
    :cond_f
    const/16 v17, 0x0

    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_f

    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :sswitch_11
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_10

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/ComponentName;

    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v8}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordHistoryLength(Landroid/content/ComponentName;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    .end local v8    # "_arg1":I
    :cond_10
    const/16 v17, 0x0

    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_10

    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :sswitch_12
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_11

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/ComponentName;

    :goto_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v8}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordHistoryLength(Landroid/content/ComponentName;I)I

    move-result v49

    .restart local v49    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    .end local v8    # "_arg1":I
    .end local v49    # "_result":I
    :cond_11
    const/16 v17, 0x0

    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_11

    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :sswitch_13
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_12

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/ComponentName;

    :goto_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v26

    .local v26, "_arg1":J
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-wide/from16 v2, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordExpirationTimeout(Landroid/content/ComponentName;J)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    .end local v26    # "_arg1":J
    :cond_12
    const/16 v17, 0x0

    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_12

    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :sswitch_14
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_13

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/ComponentName;

    :goto_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v8}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordExpirationTimeout(Landroid/content/ComponentName;I)J

    move-result-wide v50

    .local v50, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-wide/from16 v1, v50

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v6, 0x1

    return v6

    .end local v8    # "_arg1":I
    .end local v50    # "_result":J
    :cond_13
    const/16 v17, 0x0

    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_13

    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :sswitch_15
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_14

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/ComponentName;

    :goto_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v8}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordExpiration(Landroid/content/ComponentName;I)J

    move-result-wide v50

    .restart local v50    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-wide/from16 v1, v50

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v6, 0x1

    return v6

    .end local v8    # "_arg1":I
    .end local v50    # "_result":J
    :cond_14
    const/16 v17, 0x0

    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_14

    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :sswitch_16
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .local v7, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->isActivePasswordSufficient(I)Z

    move-result v61

    .local v61, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v61, :cond_15

    const/4 v6, 0x1

    :goto_15
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_15
    const/4 v6, 0x0

    goto :goto_15

    .end local v7    # "_arg0":I
    .end local v61    # "_result":Z
    :sswitch_17
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCurrentFailedPasswordAttempts(I)I

    move-result v49

    .restart local v49    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    .end local v7    # "_arg0":I
    .end local v49    # "_result":I
    :sswitch_18
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->getProfileWithMinimumFailedPasswordsForWipe(I)I

    move-result v49

    .restart local v49    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    .end local v7    # "_arg0":I
    .end local v49    # "_result":I
    :sswitch_19
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_16

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/ComponentName;

    :goto_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v8}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    .end local v8    # "_arg1":I
    :cond_16
    const/16 v17, 0x0

    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_16

    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :sswitch_1a
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_17

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/ComponentName;

    :goto_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v8}, Landroid/app/admin/IDevicePolicyManager$Stub;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I

    move-result v49

    .restart local v49    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    .end local v8    # "_arg1":I
    .end local v49    # "_result":I
    :cond_17
    const/16 v17, 0x0

    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_17

    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :sswitch_1b
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .local v24, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v8}, Landroid/app/admin/IDevicePolicyManager$Stub;->resetPassword(Ljava/lang/String;I)Z

    move-result v61

    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v61, :cond_18

    const/4 v6, 0x1

    :goto_18
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_18
    const/4 v6, 0x0

    goto :goto_18

    .end local v8    # "_arg1":I
    .end local v24    # "_arg0":Ljava/lang/String;
    .end local v61    # "_result":Z
    :sswitch_1c
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_19

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/ComponentName;

    :goto_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v26

    .restart local v26    # "_arg1":J
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-wide/from16 v2, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMaximumTimeToLock(Landroid/content/ComponentName;J)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    .end local v26    # "_arg1":J
    :cond_19
    const/16 v17, 0x0

    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_19

    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :sswitch_1d
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1a

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/ComponentName;

    :goto_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v8}, Landroid/app/admin/IDevicePolicyManager$Stub;->getMaximumTimeToLock(Landroid/content/ComponentName;I)J

    move-result-wide v50

    .restart local v50    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-wide/from16 v1, v50

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v6, 0x1

    return v6

    .end local v8    # "_arg1":I
    .end local v50    # "_result":J
    :cond_1a
    const/16 v17, 0x0

    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_1a

    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :sswitch_1e
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->lockNow()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_1f
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Landroid/app/admin/IDevicePolicyManager$Stub;->wipeData(II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":I
    :sswitch_20
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1b

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/ComponentName;

    :goto_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .local v18, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .local v19, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setGlobalProxy(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v53

    .local v53, "_result":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v53, :cond_1c

    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    move-object/from16 v0, v53

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1c
    const/4 v6, 0x1

    return v6

    .end local v18    # "_arg1":Ljava/lang/String;
    .end local v19    # "_arg2":Ljava/lang/String;
    .end local v53    # "_result":Landroid/content/ComponentName;
    :cond_1b
    const/16 v17, 0x0

    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_1b

    .end local v17    # "_arg0":Landroid/content/ComponentName;
    .restart local v18    # "_arg1":Ljava/lang/String;
    .restart local v19    # "_arg2":Ljava/lang/String;
    .restart local v53    # "_result":Landroid/content/ComponentName;
    :cond_1c
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1c

    .end local v18    # "_arg1":Ljava/lang/String;
    .end local v19    # "_arg2":Ljava/lang/String;
    .end local v53    # "_result":Landroid/content/ComponentName;
    :sswitch_21
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->getGlobalProxyAdmin(I)Landroid/content/ComponentName;

    move-result-object v53

    .restart local v53    # "_result":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v53, :cond_1d

    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    move-object/from16 v0, v53

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1d
    const/4 v6, 0x1

    return v6

    :cond_1d
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1d

    .end local v7    # "_arg0":I
    .end local v53    # "_result":Landroid/content/ComponentName;
    :sswitch_22
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1e

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/ComponentName;

    :goto_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1f

    sget-object v6, Landroid/net/ProxyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/net/ProxyInfo;

    :goto_1f
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setRecommendedGlobalProxy(Landroid/content/ComponentName;Landroid/net/ProxyInfo;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :cond_1e
    const/16 v17, 0x0

    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_1e

    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :cond_1f
    const/16 v33, 0x0

    .local v33, "_arg1":Landroid/net/ProxyInfo;
    goto :goto_1f

    .end local v33    # "_arg1":Landroid/net/ProxyInfo;
    :sswitch_23
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_20

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/ComponentName;

    :goto_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_21

    const/16 v38, 0x1

    .local v38, "_arg1":Z
    :goto_21
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setStorageEncryption(Landroid/content/ComponentName;Z)I

    move-result v49

    .restart local v49    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    .end local v38    # "_arg1":Z
    .end local v49    # "_result":I
    :cond_20
    const/16 v17, 0x0

    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_20

    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :cond_21
    const/16 v38, 0x0

    .restart local v38    # "_arg1":Z
    goto :goto_21

    .end local v38    # "_arg1":Z
    :sswitch_24
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_22

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/ComponentName;

    :goto_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v8}, Landroid/app/admin/IDevicePolicyManager$Stub;->getStorageEncryption(Landroid/content/ComponentName;I)Z

    move-result v61

    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v61, :cond_23

    const/4 v6, 0x1

    :goto_23
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    .end local v8    # "_arg1":I
    .end local v61    # "_result":Z
    :cond_22
    const/16 v17, 0x0

    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_22

    .end local v17    # "_arg0":Landroid/content/ComponentName;
    .restart local v8    # "_arg1":I
    .restart local v61    # "_result":Z
    :cond_23
    const/4 v6, 0x0

    goto :goto_23

    .end local v8    # "_arg1":I
    .end local v61    # "_result":Z
    :sswitch_25
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->getStorageEncryptionStatus(I)I

    move-result v49

    .restart local v49    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    .end local v7    # "_arg0":I
    .end local v49    # "_result":I
    :sswitch_26
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_24

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/ComponentName;

    :goto_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_25

    const/16 v38, 0x1

    .restart local v38    # "_arg1":Z
    :goto_25
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setCameraDisabled(Landroid/content/ComponentName;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    .end local v38    # "_arg1":Z
    :cond_24
    const/16 v17, 0x0

    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_24

    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :cond_25
    const/16 v38, 0x0

    .restart local v38    # "_arg1":Z
    goto :goto_25

    .end local v38    # "_arg1":Z
    :sswitch_27
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_26

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/ComponentName;

    :goto_26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v8}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCameraDisabled(Landroid/content/ComponentName;I)Z

    move-result v61

    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v61, :cond_27

    const/4 v6, 0x1

    :goto_27
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    .end local v8    # "_arg1":I
    .end local v61    # "_result":Z
    :cond_26
    const/16 v17, 0x0

    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_26

    .end local v17    # "_arg0":Landroid/content/ComponentName;
    .restart local v8    # "_arg1":I
    .restart local v61    # "_result":Z
    :cond_27
    const/4 v6, 0x0

    goto :goto_27

    .end local v8    # "_arg1":I
    .end local v61    # "_result":Z
    :sswitch_28
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_28

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/ComponentName;

    :goto_28
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_29

    const/16 v38, 0x1

    .restart local v38    # "_arg1":Z
    :goto_29
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setScreenCaptureDisabled(Landroid/content/ComponentName;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    .end local v38    # "_arg1":Z
    :cond_28
    const/16 v17, 0x0

    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_28

    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :cond_29
    const/16 v38, 0x0

    .restart local v38    # "_arg1":Z
    goto :goto_29

    .end local v38    # "_arg1":Z
    :sswitch_29
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2a

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/ComponentName;

    :goto_2a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v8}, Landroid/app/admin/IDevicePolicyManager$Stub;->getScreenCaptureDisabled(Landroid/content/ComponentName;I)Z

    move-result v61

    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v61, :cond_2b

    const/4 v6, 0x1

    :goto_2b
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    .end local v8    # "_arg1":I
    .end local v61    # "_result":Z
    :cond_2a
    const/16 v17, 0x0

    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_2a

    .end local v17    # "_arg0":Landroid/content/ComponentName;
    .restart local v8    # "_arg1":I
    .restart local v61    # "_result":Z
    :cond_2b
    const/4 v6, 0x0

    goto :goto_2b

    .end local v8    # "_arg1":I
    .end local v61    # "_result":Z
    :sswitch_2a
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2c

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/ComponentName;

    :goto_2c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v8}, Landroid/app/admin/IDevicePolicyManager$Stub;->setKeyguardDisabledFeatures(Landroid/content/ComponentName;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    .end local v8    # "_arg1":I
    :cond_2c
    const/16 v17, 0x0

    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_2c

    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :sswitch_2b
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2d

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/ComponentName;

    :goto_2d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v8}, Landroid/app/admin/IDevicePolicyManager$Stub;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v49

    .restart local v49    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    .end local v8    # "_arg1":I
    .end local v49    # "_result":I
    :cond_2d
    const/16 v17, 0x0

    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_2d

    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :sswitch_2c
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2e

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/ComponentName;

    :goto_2e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2f

    const/16 v38, 0x1

    .restart local v38    # "_arg1":Z
    :goto_2f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .local v9, "_arg2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2, v9}, Landroid/app/admin/IDevicePolicyManager$Stub;->setActiveAdmin(Landroid/content/ComponentName;ZI)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    .end local v9    # "_arg2":I
    .end local v38    # "_arg1":Z
    :cond_2e
    const/16 v17, 0x0

    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_2e

    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :cond_2f
    const/16 v38, 0x0

    .restart local v38    # "_arg1":Z
    goto :goto_2f

    .end local v38    # "_arg1":Z
    :sswitch_2d
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_30

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/ComponentName;

    :goto_30
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v8}, Landroid/app/admin/IDevicePolicyManager$Stub;->isAdminActive(Landroid/content/ComponentName;I)Z

    move-result v61

    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v61, :cond_31

    const/4 v6, 0x1

    :goto_31
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    .end local v8    # "_arg1":I
    .end local v61    # "_result":Z
    :cond_30
    const/16 v17, 0x0

    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_30

    .end local v17    # "_arg0":Landroid/content/ComponentName;
    .restart local v8    # "_arg1":I
    .restart local v61    # "_result":Z
    :cond_31
    const/4 v6, 0x0

    goto :goto_31

    .end local v8    # "_arg1":I
    .end local v61    # "_result":Z
    :sswitch_2e
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->getActiveAdmins(I)Ljava/util/List;

    move-result-object v58

    .local v58, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v6, 0x1

    return v6

    .end local v7    # "_arg0":I
    .end local v58    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    :sswitch_2f
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .restart local v24    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v8}, Landroid/app/admin/IDevicePolicyManager$Stub;->packageHasActiveAdmins(Ljava/lang/String;I)Z

    move-result v61

    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v61, :cond_32

    const/4 v6, 0x1

    :goto_32
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_32
    const/4 v6, 0x0

    goto :goto_32

    .end local v8    # "_arg1":I
    .end local v24    # "_arg0":Ljava/lang/String;
    .end local v61    # "_result":Z
    :sswitch_30
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_33

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/ComponentName;

    :goto_33
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_34

    sget-object v6, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/os/RemoteCallback;

    :goto_34
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2, v9}, Landroid/app/admin/IDevicePolicyManager$Stub;->getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    .end local v9    # "_arg2":I
    :cond_33
    const/16 v17, 0x0

    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_33

    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :cond_34
    const/16 v35, 0x0

    .local v35, "_arg1":Landroid/os/RemoteCallback;
    goto :goto_34

    .end local v35    # "_arg1":Landroid/os/RemoteCallback;
    :sswitch_31
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_35

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/ComponentName;

    :goto_35
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v8}, Landroid/app/admin/IDevicePolicyManager$Stub;->removeActiveAdmin(Landroid/content/ComponentName;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    .end local v8    # "_arg1":I
    :cond_35
    const/16 v17, 0x0

    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_35

    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :sswitch_32
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_36

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/ComponentName;

    :goto_36
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .restart local v8    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v8, v9}, Landroid/app/admin/IDevicePolicyManager$Stub;->hasGrantedPolicy(Landroid/content/ComponentName;II)Z

    move-result v61

    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v61, :cond_37

    const/4 v6, 0x1

    :goto_37
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v61    # "_result":Z
    :cond_36
    const/16 v17, 0x0

    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_36

    .end local v17    # "_arg0":Landroid/content/ComponentName;
    .restart local v8    # "_arg1":I
    .restart local v9    # "_arg2":I
    .restart local v61    # "_result":Z
    :cond_37
    const/4 v6, 0x0

    goto :goto_37

    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v61    # "_result":Z
    :sswitch_33
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .restart local v8    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .local v10, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .local v11, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .local v12, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .local v13, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .local v14, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .local v15, "_arg8":I
    move-object/from16 v6, p0

    invoke-virtual/range {v6 .. v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->setActivePasswordState(IIIIIIIII)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v11    # "_arg4":I
    .end local v12    # "_arg5":I
    .end local v13    # "_arg6":I
    .end local v14    # "_arg7":I
    .end local v15    # "_arg8":I
    :sswitch_34
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->reportFailedPasswordAttempt(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    .end local v7    # "_arg0":I
    :sswitch_35
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->reportSuccessfulPasswordAttempt(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    .end local v7    # "_arg0":I
    :sswitch_36
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .restart local v24    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .restart local v18    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setDeviceOwner(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v61

    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v61, :cond_38

    const/4 v6, 0x1

    :goto_38
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_38
    const/4 v6, 0x0

    goto :goto_38

    .end local v18    # "_arg1":Ljava/lang/String;
    .end local v24    # "_arg0":Ljava/lang/String;
    .end local v61    # "_result":Z
    :sswitch_37
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .restart local v24    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->isDeviceOwner(Ljava/lang/String;)Z

    move-result v61

    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v61, :cond_39

    const/4 v6, 0x1

    :goto_39
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_39
    const/4 v6, 0x0

    goto :goto_39

    .end local v24    # "_arg0":Ljava/lang/String;
    .end local v61    # "_result":Z
    :sswitch_38
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDeviceOwner()Ljava/lang/String;

    move-result-object v56

    .local v56, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v6, 0x1

    return v6

    .end local v56    # "_result":Ljava/lang/String;
    :sswitch_39
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDeviceOwnerName()Ljava/lang/String;

    move-result-object v56

    .restart local v56    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v6, 0x1

    return v6

    .end local v56    # "_result":Ljava/lang/String;
    :sswitch_3a
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .restart local v24    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->clearDeviceOwner(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    .end local v24    # "_arg0":Ljava/lang/String;
    :sswitch_3b
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3a

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/ComponentName;

    :goto_3a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .restart local v18    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2, v9}, Landroid/app/admin/IDevicePolicyManager$Stub;->setProfileOwner(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v61

    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v61, :cond_3b

    const/4 v6, 0x1

    :goto_3b
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    .end local v9    # "_arg2":I
    .end local v18    # "_arg1":Ljava/lang/String;
    .end local v61    # "_result":Z
    :cond_3a
    const/16 v17, 0x0

    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_3a

    .end local v17    # "_arg0":Landroid/content/ComponentName;
    .restart local v9    # "_arg2":I
    .restart local v18    # "_arg1":Ljava/lang/String;
    .restart local v61    # "_result":Z
    :cond_3b
    const/4 v6, 0x0

    goto :goto_3b

    .end local v9    # "_arg2":I
    .end local v18    # "_arg1":Ljava/lang/String;
    .end local v61    # "_result":Z
    :sswitch_3c
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->getProfileOwner(I)Landroid/content/ComponentName;

    move-result-object v53

    .restart local v53    # "_result":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v53, :cond_3c

    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    move-object/from16 v0, v53

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_3c
    const/4 v6, 0x1

    return v6

    :cond_3c
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3c

    .end local v7    # "_arg0":I
    .end local v53    # "_result":Landroid/content/ComponentName;
    :sswitch_3d
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->getProfileOwnerName(I)Ljava/lang/String;

    move-result-object v56

    .restart local v56    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v6, 0x1

    return v6

    .end local v7    # "_arg0":I
    .end local v56    # "_result":Ljava/lang/String;
    :sswitch_3e
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3d

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/ComponentName;

    :goto_3d
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setProfileEnabled(Landroid/content/ComponentName;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :cond_3d
    const/16 v17, 0x0

    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_3d

    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :sswitch_3f
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3e

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/ComponentName;

    :goto_3e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .restart local v18    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setProfileName(Landroid/content/ComponentName;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    .end local v18    # "_arg1":Ljava/lang/String;
    :cond_3e
    const/16 v17, 0x0

    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_3e

    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :sswitch_40
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3f

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/ComponentName;

    :goto_3f
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->clearProfileOwner(Landroid/content/ComponentName;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :cond_3f
    const/16 v17, 0x0

    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_3f

    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :sswitch_41
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->hasUserSetupCompleted()Z

    move-result v61

    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v61, :cond_40

    const/4 v6, 0x1

    :goto_40
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_40
    const/4 v6, 0x0

    goto :goto_40

    .end local v61    # "_result":Z
    :sswitch_42
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_41

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/ComponentName;

    :goto_41
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v39

    .local v39, "_arg1":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->installCaCert(Landroid/content/ComponentName;[B)Z

    move-result v61

    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v61, :cond_42

    const/4 v6, 0x1

    :goto_42
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    .end local v39    # "_arg1":[B
    .end local v61    # "_result":Z
    :cond_41
    const/16 v17, 0x0

    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_41

    .end local v17    # "_arg0":Landroid/content/ComponentName;
    .restart local v39    # "_arg1":[B
    .restart local v61    # "_result":Z
    :cond_42
    const/4 v6, 0x0

    goto :goto_42

    .end local v39    # "_arg1":[B
    .end local v61    # "_result":Z
    :sswitch_43
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_43

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/ComponentName;

    :goto_43
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v40

    .local v40, "_arg1":[Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->uninstallCaCerts(Landroid/content/ComponentName;[Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    .end local v40    # "_arg1":[Ljava/lang/String;
    :cond_43
    const/16 v17, 0x0

    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_43

    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :sswitch_44
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_44

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/ComponentName;

    :goto_44
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->enforceCanManageCaCerts(Landroid/content/ComponentName;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :cond_44
    const/16 v17, 0x0

    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_44

    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :sswitch_45
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_45

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/ComponentName;

    :goto_45
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v39

    .restart local v39    # "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v46

    .local v46, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v48

    .local v48, "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v39

    move-object/from16 v3, v46

    move-object/from16 v4, v48

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->installKeyPair(Landroid/content/ComponentName;[B[BLjava/lang/String;)Z

    move-result v61

    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v61, :cond_46

    const/4 v6, 0x1

    :goto_46
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    .end local v39    # "_arg1":[B
    .end local v46    # "_arg2":[B
    .end local v48    # "_arg3":Ljava/lang/String;
    .end local v61    # "_result":Z
    :cond_45
    const/16 v17, 0x0

    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_45

    .end local v17    # "_arg0":Landroid/content/ComponentName;
    .restart local v39    # "_arg1":[B
    .restart local v46    # "_arg2":[B
    .restart local v48    # "_arg3":Ljava/lang/String;
    .restart local v61    # "_result":Z
    :cond_46
    const/4 v6, 0x0

    goto :goto_46

    .end local v39    # "_arg1":[B
    .end local v46    # "_arg2":[B
    .end local v48    # "_arg3":Ljava/lang/String;
    .end local v61    # "_result":Z
    :sswitch_46
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_47

    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/net/Uri;

    :goto_47
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .restart local v19    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v47

    .local v47, "_arg3":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-object/from16 v2, v19

    move-object/from16 v3, v47

    invoke-virtual {v0, v7, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->choosePrivateKeyAlias(ILandroid/net/Uri;Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    .end local v19    # "_arg2":Ljava/lang/String;
    .end local v47    # "_arg3":Landroid/os/IBinder;
    :cond_47
    const/16 v34, 0x0

    .local v34, "_arg1":Landroid/net/Uri;
    goto :goto_47

    .end local v7    # "_arg0":I
    .end local v34    # "_arg1":Landroid/net/Uri;
    :sswitch_47
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_48

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/ComponentName;

    :goto_48
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .restart local v18    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setCertInstallerPackage(Landroid/content/ComponentName;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    .end local v18    # "_arg1":Ljava/lang/String;
    :cond_48
    const/16 v17, 0x0

    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_48

    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :sswitch_48
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_49

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/ComponentName;

    :goto_49
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCertInstallerPackage(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v56

    .restart local v56    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v6, 0x1

    return v6

    .end local v56    # "_result":Ljava/lang/String;
    :cond_49
    const/16 v17, 0x0

    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_49

    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :sswitch_49
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4a

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/ComponentName;

    :goto_4a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4b

    sget-object v6, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/content/IntentFilter;

    :goto_4b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4c

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Landroid/content/ComponentName;

    :goto_4c
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v31

    move-object/from16 v3, v41

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->addPersistentPreferredActivity(Landroid/content/ComponentName;Landroid/content/IntentFilter;Landroid/content/ComponentName;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :cond_4a
    const/16 v17, 0x0

    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_4a

    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :cond_4b
    const/16 v31, 0x0

    .local v31, "_arg1":Landroid/content/IntentFilter;
    goto :goto_4b

    .end local v31    # "_arg1":Landroid/content/IntentFilter;
    :cond_4c
    const/16 v41, 0x0

    .local v41, "_arg2":Landroid/content/ComponentName;
    goto :goto_4c

    .end local v41    # "_arg2":Landroid/content/ComponentName;
    :sswitch_4a
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4d

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/ComponentName;

    :goto_4d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .restart local v18    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->clearPackagePersistentPreferredActivities(Landroid/content/ComponentName;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    .end local v18    # "_arg1":Ljava/lang/String;
    :cond_4d
    const/16 v17, 0x0

    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_4d

    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :sswitch_4b
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4e

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/ComponentName;

    :goto_4e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .restart local v18    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4f

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Landroid/os/Bundle;

    :goto_4f
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v43

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setApplicationRestrictions(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    .end local v18    # "_arg1":Ljava/lang/String;
    :cond_4e
    const/16 v17, 0x0

    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_4e

    .end local v17    # "_arg0":Landroid/content/ComponentName;
    .restart local v18    # "_arg1":Ljava/lang/String;
    :cond_4f
    const/16 v43, 0x0

    .local v43, "_arg2":Landroid/os/Bundle;
    goto :goto_4f

    .end local v18    # "_arg1":Ljava/lang/String;
    .end local v43    # "_arg2":Landroid/os/Bundle;
    :sswitch_4c
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_50

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/ComponentName;

    :goto_50
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .restart local v18    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getApplicationRestrictions(Landroid/content/ComponentName;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v54

    .local v54, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v54, :cond_51

    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    move-object/from16 v0, v54

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_51
    const/4 v6, 0x1

    return v6

    .end local v18    # "_arg1":Ljava/lang/String;
    .end local v54    # "_result":Landroid/os/Bundle;
    :cond_50
    const/16 v17, 0x0

    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_50

    .end local v17    # "_arg0":Landroid/content/ComponentName;
    .restart local v18    # "_arg1":Ljava/lang/String;
    .restart local v54    # "_result":Landroid/os/Bundle;
    :cond_51
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_51

    .end local v18    # "_arg1":Ljava/lang/String;
    .end local v54    # "_result":Landroid/os/Bundle;
    :sswitch_4d
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_52

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/ComponentName;

    :goto_52
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_53

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/content/ComponentName;

    :goto_53
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setRestrictionsProvider(Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :cond_52
    const/16 v17, 0x0

    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_52

    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :cond_53
    const/16 v29, 0x0

    .local v29, "_arg1":Landroid/content/ComponentName;
    goto :goto_53

    .end local v29    # "_arg1":Landroid/content/ComponentName;
    :sswitch_4e
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->getRestrictionsProvider(I)Landroid/content/ComponentName;

    move-result-object v53

    .restart local v53    # "_result":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v53, :cond_54

    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    move-object/from16 v0, v53

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_54
    const/4 v6, 0x1

    return v6

    :cond_54
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_54

    .end local v7    # "_arg0":I
    .end local v53    # "_result":Landroid/content/ComponentName;
    :sswitch_4f
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_55

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/ComponentName;

    :goto_55
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .restart local v18    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_56

    const/16 v45, 0x1

    .local v45, "_arg2":Z
    :goto_56
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move/from16 v3, v45

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setUserRestriction(Landroid/content/ComponentName;Ljava/lang/String;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    .end local v18    # "_arg1":Ljava/lang/String;
    .end local v45    # "_arg2":Z
    :cond_55
    const/16 v17, 0x0

    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_55

    .end local v17    # "_arg0":Landroid/content/ComponentName;
    .restart local v18    # "_arg1":Ljava/lang/String;
    :cond_56
    const/16 v45, 0x0

    .restart local v45    # "_arg2":Z
    goto :goto_56

    .end local v18    # "_arg1":Ljava/lang/String;
    .end local v45    # "_arg2":Z
    :sswitch_50
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_57

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/ComponentName;

    :goto_57
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_58

    sget-object v6, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/content/IntentFilter;

    :goto_58
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2, v9}, Landroid/app/admin/IDevicePolicyManager$Stub;->addCrossProfileIntentFilter(Landroid/content/ComponentName;Landroid/content/IntentFilter;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    .end local v9    # "_arg2":I
    :cond_57
    const/16 v17, 0x0

    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_57

    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :cond_58
    const/16 v31, 0x0

    .restart local v31    # "_arg1":Landroid/content/IntentFilter;
    goto :goto_58

    .end local v31    # "_arg1":Landroid/content/IntentFilter;
    :sswitch_51
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_59

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/ComponentName;

    :goto_59
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->clearCrossProfileIntentFilters(Landroid/content/ComponentName;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :cond_59
    const/16 v17, 0x0

    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_59

    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :sswitch_52
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_5a

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/ComponentName;

    :goto_5a
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v63

    .local v63, "cl":Ljava/lang/ClassLoader;
    move-object/from16 v0, p2

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v37

    .local v37, "_arg1":Ljava/util/List;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPermittedAccessibilityServices(Landroid/content/ComponentName;Ljava/util/List;)Z

    move-result v61

    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v61, :cond_5b

    const/4 v6, 0x1

    :goto_5b
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    .end local v37    # "_arg1":Ljava/util/List;
    .end local v61    # "_result":Z
    .end local v63    # "cl":Ljava/lang/ClassLoader;
    :cond_5a
    const/16 v17, 0x0

    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_5a

    .end local v17    # "_arg0":Landroid/content/ComponentName;
    .restart local v37    # "_arg1":Ljava/util/List;
    .restart local v61    # "_result":Z
    .restart local v63    # "cl":Ljava/lang/ClassLoader;
    :cond_5b
    const/4 v6, 0x0

    goto :goto_5b

    .end local v37    # "_arg1":Ljava/util/List;
    .end local v61    # "_result":Z
    .end local v63    # "cl":Ljava/lang/ClassLoader;
    :sswitch_53
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_5c

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/ComponentName;

    :goto_5c
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPermittedAccessibilityServices(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v57

    .local v57, "_result":Ljava/util/List;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    const/4 v6, 0x1

    return v6

    .end local v57    # "_result":Ljava/util/List;
    :cond_5c
    const/16 v17, 0x0

    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_5c

    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :sswitch_54
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPermittedAccessibilityServicesForUser(I)Ljava/util/List;

    move-result-object v57

    .restart local v57    # "_result":Ljava/util/List;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    const/4 v6, 0x1

    return v6

    .end local v7    # "_arg0":I
    .end local v57    # "_result":Ljava/util/List;
    :sswitch_55
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_5d

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/ComponentName;

    :goto_5d
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v63

    .restart local v63    # "cl":Ljava/lang/ClassLoader;
    move-object/from16 v0, p2

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v37

    .restart local v37    # "_arg1":Ljava/util/List;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPermittedInputMethods(Landroid/content/ComponentName;Ljava/util/List;)Z

    move-result v61

    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v61, :cond_5e

    const/4 v6, 0x1

    :goto_5e
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    .end local v37    # "_arg1":Ljava/util/List;
    .end local v61    # "_result":Z
    .end local v63    # "cl":Ljava/lang/ClassLoader;
    :cond_5d
    const/16 v17, 0x0

    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_5d

    .end local v17    # "_arg0":Landroid/content/ComponentName;
    .restart local v37    # "_arg1":Ljava/util/List;
    .restart local v61    # "_result":Z
    .restart local v63    # "cl":Ljava/lang/ClassLoader;
    :cond_5e
    const/4 v6, 0x0

    goto :goto_5e

    .end local v37    # "_arg1":Ljava/util/List;
    .end local v61    # "_result":Z
    .end local v63    # "cl":Ljava/lang/ClassLoader;
    :sswitch_56
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_5f

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/ComponentName;

    :goto_5f
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPermittedInputMethods(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v57

    .restart local v57    # "_result":Ljava/util/List;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    const/4 v6, 0x1

    return v6

    .end local v57    # "_result":Ljava/util/List;
    :cond_5f
    const/16 v17, 0x0

    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_5f

    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :sswitch_57
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPermittedInputMethodsForCurrentUser()Ljava/util/List;

    move-result-object v57

    .restart local v57    # "_result":Ljava/util/List;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    const/4 v6, 0x1

    return v6

    .end local v57    # "_result":Ljava/util/List;
    :sswitch_58
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_60

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/ComponentName;

    :goto_60
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .restart local v18    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_61

    const/16 v45, 0x1

    .restart local v45    # "_arg2":Z
    :goto_61
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move/from16 v3, v45

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setApplicationHidden(Landroid/content/ComponentName;Ljava/lang/String;Z)Z

    move-result v61

    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v61, :cond_62

    const/4 v6, 0x1

    :goto_62
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    .end local v18    # "_arg1":Ljava/lang/String;
    .end local v45    # "_arg2":Z
    .end local v61    # "_result":Z
    :cond_60
    const/16 v17, 0x0

    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_60

    .end local v17    # "_arg0":Landroid/content/ComponentName;
    .restart local v18    # "_arg1":Ljava/lang/String;
    :cond_61
    const/16 v45, 0x0

    .restart local v45    # "_arg2":Z
    goto :goto_61

    .restart local v61    # "_result":Z
    :cond_62
    const/4 v6, 0x0

    goto :goto_62

    .end local v18    # "_arg1":Ljava/lang/String;
    .end local v45    # "_arg2":Z
    .end local v61    # "_result":Z
    :sswitch_59
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_63

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/ComponentName;

    :goto_63
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .restart local v18    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->isApplicationHidden(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v61

    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v61, :cond_64

    const/4 v6, 0x1

    :goto_64
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    .end local v18    # "_arg1":Ljava/lang/String;
    .end local v61    # "_result":Z
    :cond_63
    const/16 v17, 0x0

    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_63

    .end local v17    # "_arg0":Landroid/content/ComponentName;
    .restart local v18    # "_arg1":Ljava/lang/String;
    .restart local v61    # "_result":Z
    :cond_64
    const/4 v6, 0x0

    goto :goto_64

    .end local v18    # "_arg1":Ljava/lang/String;
    .end local v61    # "_result":Z
    :sswitch_5a
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_65

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/ComponentName;

    :goto_65
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .restart local v18    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->createUser(Landroid/content/ComponentName;Ljava/lang/String;)Landroid/os/UserHandle;

    move-result-object v55

    .local v55, "_result":Landroid/os/UserHandle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v55, :cond_66

    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    move-object/from16 v0, v55

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/os/UserHandle;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_66
    const/4 v6, 0x1

    return v6

    .end local v18    # "_arg1":Ljava/lang/String;
    .end local v55    # "_result":Landroid/os/UserHandle;
    :cond_65
    const/16 v17, 0x0

    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_65

    .end local v17    # "_arg0":Landroid/content/ComponentName;
    .restart local v18    # "_arg1":Ljava/lang/String;
    .restart local v55    # "_result":Landroid/os/UserHandle;
    :cond_66
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_66

    .end local v18    # "_arg1":Ljava/lang/String;
    .end local v55    # "_result":Landroid/os/UserHandle;
    :sswitch_5b
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_67

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/ComponentName;

    :goto_67
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .restart local v18    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .restart local v19    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_68

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/ComponentName;

    :goto_68
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_69

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/os/Bundle;

    :goto_69
    move-object/from16 v16, p0

    invoke-virtual/range {v16 .. v21}, Landroid/app/admin/IDevicePolicyManager$Stub;->createAndInitializeUser(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/Bundle;)Landroid/os/UserHandle;

    move-result-object v55

    .restart local v55    # "_result":Landroid/os/UserHandle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v55, :cond_6a

    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    move-object/from16 v0, v55

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/os/UserHandle;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_6a
    const/4 v6, 0x1

    return v6

    .end local v18    # "_arg1":Ljava/lang/String;
    .end local v19    # "_arg2":Ljava/lang/String;
    .end local v55    # "_result":Landroid/os/UserHandle;
    :cond_67
    const/16 v17, 0x0

    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_67

    .end local v17    # "_arg0":Landroid/content/ComponentName;
    .restart local v18    # "_arg1":Ljava/lang/String;
    .restart local v19    # "_arg2":Ljava/lang/String;
    :cond_68
    const/16 v20, 0x0

    .local v20, "_arg3":Landroid/content/ComponentName;
    goto :goto_68

    .end local v20    # "_arg3":Landroid/content/ComponentName;
    :cond_69
    const/16 v21, 0x0

    .local v21, "_arg4":Landroid/os/Bundle;
    goto :goto_69

    .end local v21    # "_arg4":Landroid/os/Bundle;
    .restart local v55    # "_result":Landroid/os/UserHandle;
    :cond_6a
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6a

    .end local v18    # "_arg1":Ljava/lang/String;
    .end local v19    # "_arg2":Ljava/lang/String;
    .end local v55    # "_result":Landroid/os/UserHandle;
    :sswitch_5c
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_6b

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/ComponentName;

    :goto_6b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_6c

    sget-object v6, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/os/UserHandle;

    :goto_6c
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->removeUser(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z

    move-result v61

    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v61, :cond_6d

    const/4 v6, 0x1

    :goto_6d
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    .end local v61    # "_result":Z
    :cond_6b
    const/16 v17, 0x0

    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_6b

    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :cond_6c
    const/16 v36, 0x0

    .local v36, "_arg1":Landroid/os/UserHandle;
    goto :goto_6c

    .end local v36    # "_arg1":Landroid/os/UserHandle;
    .restart local v61    # "_result":Z
    :cond_6d
    const/4 v6, 0x0

    goto :goto_6d

    .end local v61    # "_result":Z
    :sswitch_5d
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_6e

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/ComponentName;

    :goto_6e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_6f

    sget-object v6, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/os/UserHandle;

    :goto_6f
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->switchUser(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z

    move-result v61

    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v61, :cond_70

    const/4 v6, 0x1

    :goto_70
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    .end local v61    # "_result":Z
    :cond_6e
    const/16 v17, 0x0

    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_6e

    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :cond_6f
    const/16 v36, 0x0

    .restart local v36    # "_arg1":Landroid/os/UserHandle;
    goto :goto_6f

    .end local v36    # "_arg1":Landroid/os/UserHandle;
    .restart local v61    # "_result":Z
    :cond_70
    const/4 v6, 0x0

    goto :goto_70

    .end local v61    # "_result":Z
    :sswitch_5e
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_71

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/ComponentName;

    :goto_71
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .restart local v18    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->enableSystemApp(Landroid/content/ComponentName;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    .end local v18    # "_arg1":Ljava/lang/String;
    :cond_71
    const/16 v17, 0x0

    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_71

    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :sswitch_5f
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_72

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/ComponentName;

    :goto_72
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_73

    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/content/Intent;

    :goto_73
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->enableSystemAppWithIntent(Landroid/content/ComponentName;Landroid/content/Intent;)I

    move-result v49

    .restart local v49    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    .end local v49    # "_result":I
    :cond_72
    const/16 v17, 0x0

    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_72

    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :cond_73
    const/16 v30, 0x0

    .local v30, "_arg1":Landroid/content/Intent;
    goto :goto_73

    .end local v30    # "_arg1":Landroid/content/Intent;
    :sswitch_60
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_74

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/ComponentName;

    :goto_74
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .restart local v18    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_75

    const/16 v45, 0x1

    .restart local v45    # "_arg2":Z
    :goto_75
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move/from16 v3, v45

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAccountManagementDisabled(Landroid/content/ComponentName;Ljava/lang/String;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    .end local v18    # "_arg1":Ljava/lang/String;
    .end local v45    # "_arg2":Z
    :cond_74
    const/16 v17, 0x0

    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_74

    .end local v17    # "_arg0":Landroid/content/ComponentName;
    .restart local v18    # "_arg1":Ljava/lang/String;
    :cond_75
    const/16 v45, 0x0

    .restart local v45    # "_arg2":Z
    goto :goto_75

    .end local v18    # "_arg1":Ljava/lang/String;
    .end local v45    # "_arg2":Z
    :sswitch_61
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAccountTypesWithManagementDisabled()[Ljava/lang/String;

    move-result-object v62

    .local v62, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    const/4 v6, 0x1

    return v6

    .end local v62    # "_result":[Ljava/lang/String;
    :sswitch_62
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAccountTypesWithManagementDisabledAsUser(I)[Ljava/lang/String;

    move-result-object v62

    .restart local v62    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    const/4 v6, 0x1

    return v6

    .end local v7    # "_arg0":I
    .end local v62    # "_result":[Ljava/lang/String;
    :sswitch_63
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_76

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/ComponentName;

    :goto_76
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v40

    .restart local v40    # "_arg1":[Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setLockTaskPackages(Landroid/content/ComponentName;[Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    .end local v40    # "_arg1":[Ljava/lang/String;
    :cond_76
    const/16 v17, 0x0

    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_76

    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :sswitch_64
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_77

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/ComponentName;

    :goto_77
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getLockTaskPackages(Landroid/content/ComponentName;)[Ljava/lang/String;

    move-result-object v62

    .restart local v62    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    const/4 v6, 0x1

    return v6

    .end local v62    # "_result":[Ljava/lang/String;
    :cond_77
    const/16 v17, 0x0

    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_77

    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :sswitch_65
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .restart local v24    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->isLockTaskPermitted(Ljava/lang/String;)Z

    move-result v61

    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v61, :cond_78

    const/4 v6, 0x1

    :goto_78
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_78
    const/4 v6, 0x0

    goto :goto_78

    .end local v24    # "_arg0":Ljava/lang/String;
    .end local v61    # "_result":Z
    :sswitch_66
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_79

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/ComponentName;

    :goto_79
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .restart local v18    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .restart local v19    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setGlobalSetting(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    .end local v18    # "_arg1":Ljava/lang/String;
    .end local v19    # "_arg2":Ljava/lang/String;
    :cond_79
    const/16 v17, 0x0

    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_79

    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :sswitch_67
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_7a

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/ComponentName;

    :goto_7a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .restart local v18    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .restart local v19    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setSecureSetting(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    .end local v18    # "_arg1":Ljava/lang/String;
    .end local v19    # "_arg2":Ljava/lang/String;
    :cond_7a
    const/16 v17, 0x0

    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_7a

    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :sswitch_68
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_7b

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/ComponentName;

    :goto_7b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_7c

    const/16 v38, 0x1

    .restart local v38    # "_arg1":Z
    :goto_7c
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMasterVolumeMuted(Landroid/content/ComponentName;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    .end local v38    # "_arg1":Z
    :cond_7b
    const/16 v17, 0x0

    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_7b

    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :cond_7c
    const/16 v38, 0x0

    .restart local v38    # "_arg1":Z
    goto :goto_7c

    .end local v38    # "_arg1":Z
    :sswitch_69
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_7d

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/ComponentName;

    :goto_7d
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->isMasterVolumeMuted(Landroid/content/ComponentName;)Z

    move-result v61

    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v61, :cond_7e

    const/4 v6, 0x1

    :goto_7e
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    .end local v61    # "_result":Z
    :cond_7d
    const/16 v17, 0x0

    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_7d

    .end local v17    # "_arg0":Landroid/content/ComponentName;
    .restart local v61    # "_result":Z
    :cond_7e
    const/4 v6, 0x0

    goto :goto_7e

    .end local v61    # "_result":Z
    :sswitch_6a
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_7f

    const/16 v25, 0x1

    .local v25, "_arg0":Z
    :goto_7f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .restart local v18    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v25

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2, v9}, Landroid/app/admin/IDevicePolicyManager$Stub;->notifyLockTaskModeChanged(ZLjava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    .end local v9    # "_arg2":I
    .end local v18    # "_arg1":Ljava/lang/String;
    .end local v25    # "_arg0":Z
    :cond_7f
    const/16 v25, 0x0

    .restart local v25    # "_arg0":Z
    goto :goto_7f

    .end local v25    # "_arg0":Z
    :sswitch_6b
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_80

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/ComponentName;

    :goto_80
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .restart local v18    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_81

    const/16 v45, 0x1

    .restart local v45    # "_arg2":Z
    :goto_81
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move/from16 v3, v45

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setUninstallBlocked(Landroid/content/ComponentName;Ljava/lang/String;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    .end local v18    # "_arg1":Ljava/lang/String;
    .end local v45    # "_arg2":Z
    :cond_80
    const/16 v17, 0x0

    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_80

    .end local v17    # "_arg0":Landroid/content/ComponentName;
    .restart local v18    # "_arg1":Ljava/lang/String;
    :cond_81
    const/16 v45, 0x0

    .restart local v45    # "_arg2":Z
    goto :goto_81

    .end local v18    # "_arg1":Ljava/lang/String;
    .end local v45    # "_arg2":Z
    :sswitch_6c
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_82

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/ComponentName;

    :goto_82
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .restart local v18    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->isUninstallBlocked(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v61

    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v61, :cond_83

    const/4 v6, 0x1

    :goto_83
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    .end local v18    # "_arg1":Ljava/lang/String;
    .end local v61    # "_result":Z
    :cond_82
    const/16 v17, 0x0

    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_82

    .end local v17    # "_arg0":Landroid/content/ComponentName;
    .restart local v18    # "_arg1":Ljava/lang/String;
    .restart local v61    # "_result":Z
    :cond_83
    const/4 v6, 0x0

    goto :goto_83

    .end local v18    # "_arg1":Ljava/lang/String;
    .end local v61    # "_result":Z
    :sswitch_6d
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_84

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/ComponentName;

    :goto_84
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_85

    const/16 v38, 0x1

    .restart local v38    # "_arg1":Z
    :goto_85
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setCrossProfileCallerIdDisabled(Landroid/content/ComponentName;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    .end local v38    # "_arg1":Z
    :cond_84
    const/16 v17, 0x0

    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_84

    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :cond_85
    const/16 v38, 0x0

    .restart local v38    # "_arg1":Z
    goto :goto_85

    .end local v38    # "_arg1":Z
    :sswitch_6e
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_86

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/ComponentName;

    :goto_86
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCrossProfileCallerIdDisabled(Landroid/content/ComponentName;)Z

    move-result v61

    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v61, :cond_87

    const/4 v6, 0x1

    :goto_87
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    .end local v61    # "_result":Z
    :cond_86
    const/16 v17, 0x0

    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_86

    .end local v17    # "_arg0":Landroid/content/ComponentName;
    .restart local v61    # "_result":Z
    :cond_87
    const/4 v6, 0x0

    goto :goto_87

    .end local v61    # "_result":Z
    :sswitch_6f
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCrossProfileCallerIdDisabledForUser(I)Z

    move-result v61

    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v61, :cond_88

    const/4 v6, 0x1

    :goto_88
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_88
    const/4 v6, 0x0

    goto :goto_88

    .end local v7    # "_arg0":I
    .end local v61    # "_result":Z
    :sswitch_70
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .restart local v24    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v26

    .restart local v26    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_89

    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Landroid/content/Intent;

    :goto_89
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-wide/from16 v2, v26

    move-object/from16 v4, v42

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->startManagedQuickContact(Ljava/lang/String;JLandroid/content/Intent;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :cond_89
    const/16 v42, 0x0

    .local v42, "_arg2":Landroid/content/Intent;
    goto :goto_89

    .end local v24    # "_arg0":Ljava/lang/String;
    .end local v26    # "_arg1":J
    .end local v42    # "_arg2":Landroid/content/Intent;
    :sswitch_71
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_8a

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/ComponentName;

    :goto_8a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_8b

    const/16 v38, 0x1

    .restart local v38    # "_arg1":Z
    :goto_8b
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setBluetoothContactSharingDisabled(Landroid/content/ComponentName;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    .end local v38    # "_arg1":Z
    :cond_8a
    const/16 v17, 0x0

    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_8a

    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :cond_8b
    const/16 v38, 0x0

    .restart local v38    # "_arg1":Z
    goto :goto_8b

    .end local v38    # "_arg1":Z
    :sswitch_72
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_8c

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/ComponentName;

    :goto_8c
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getBluetoothContactSharingDisabled(Landroid/content/ComponentName;)Z

    move-result v61

    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v61, :cond_8d

    const/4 v6, 0x1

    :goto_8d
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    .end local v61    # "_result":Z
    :cond_8c
    const/16 v17, 0x0

    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_8c

    .end local v17    # "_arg0":Landroid/content/ComponentName;
    .restart local v61    # "_result":Z
    :cond_8d
    const/4 v6, 0x0

    goto :goto_8d

    .end local v61    # "_result":Z
    :sswitch_73
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->getBluetoothContactSharingDisabledForUser(I)Z

    move-result v61

    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v61, :cond_8e

    const/4 v6, 0x1

    :goto_8e
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_8e
    const/4 v6, 0x0

    goto :goto_8e

    .end local v7    # "_arg0":I
    .end local v61    # "_result":Z
    :sswitch_74
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_8f

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/ComponentName;

    :goto_8f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_90

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/content/ComponentName;

    :goto_90
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_91

    sget-object v6, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Landroid/os/PersistableBundle;

    :goto_91
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v29

    move-object/from16 v3, v44

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/os/PersistableBundle;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :cond_8f
    const/16 v17, 0x0

    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_8f

    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :cond_90
    const/16 v29, 0x0

    .restart local v29    # "_arg1":Landroid/content/ComponentName;
    goto :goto_90

    .end local v29    # "_arg1":Landroid/content/ComponentName;
    :cond_91
    const/16 v44, 0x0

    .local v44, "_arg2":Landroid/os/PersistableBundle;
    goto :goto_91

    .end local v44    # "_arg2":Landroid/os/PersistableBundle;
    :sswitch_75
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_92

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/ComponentName;

    :goto_92
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_93

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/content/ComponentName;

    :goto_93
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2, v9}, Landroid/app/admin/IDevicePolicyManager$Stub;->getTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v59

    .local v59, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/PersistableBundle;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v6, 0x1

    return v6

    .end local v9    # "_arg2":I
    .end local v59    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/PersistableBundle;>;"
    :cond_92
    const/16 v17, 0x0

    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_92

    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :cond_93
    const/16 v29, 0x0

    .restart local v29    # "_arg1":Landroid/content/ComponentName;
    goto :goto_93

    .end local v29    # "_arg1":Landroid/content/ComponentName;
    :sswitch_76
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_94

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/ComponentName;

    :goto_94
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .restart local v18    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->addCrossProfileWidgetProvider(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v61

    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v61, :cond_95

    const/4 v6, 0x1

    :goto_95
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    .end local v18    # "_arg1":Ljava/lang/String;
    .end local v61    # "_result":Z
    :cond_94
    const/16 v17, 0x0

    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_94

    .end local v17    # "_arg0":Landroid/content/ComponentName;
    .restart local v18    # "_arg1":Ljava/lang/String;
    .restart local v61    # "_result":Z
    :cond_95
    const/4 v6, 0x0

    goto :goto_95

    .end local v18    # "_arg1":Ljava/lang/String;
    .end local v61    # "_result":Z
    :sswitch_77
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_96

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/ComponentName;

    :goto_96
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .restart local v18    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->removeCrossProfileWidgetProvider(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v61

    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v61, :cond_97

    const/4 v6, 0x1

    :goto_97
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    .end local v18    # "_arg1":Ljava/lang/String;
    .end local v61    # "_result":Z
    :cond_96
    const/16 v17, 0x0

    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_96

    .end local v17    # "_arg0":Landroid/content/ComponentName;
    .restart local v18    # "_arg1":Ljava/lang/String;
    .restart local v61    # "_result":Z
    :cond_97
    const/4 v6, 0x0

    goto :goto_97

    .end local v18    # "_arg1":Ljava/lang/String;
    .end local v61    # "_result":Z
    :sswitch_78
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_98

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/ComponentName;

    :goto_98
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCrossProfileWidgetProviders(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v60

    .local v60, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    const/4 v6, 0x1

    return v6

    .end local v60    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_98
    const/16 v17, 0x0

    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_98

    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :sswitch_79
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_99

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/ComponentName;

    :goto_99
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_9a

    const/16 v38, 0x1

    .restart local v38    # "_arg1":Z
    :goto_9a
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAutoTimeRequired(Landroid/content/ComponentName;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    .end local v38    # "_arg1":Z
    :cond_99
    const/16 v17, 0x0

    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_99

    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :cond_9a
    const/16 v38, 0x0

    .restart local v38    # "_arg1":Z
    goto :goto_9a

    .end local v38    # "_arg1":Z
    :sswitch_7a
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAutoTimeRequired()Z

    move-result v61

    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v61, :cond_9b

    const/4 v6, 0x1

    :goto_9b
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_9b
    const/4 v6, 0x0

    goto :goto_9b

    .end local v61    # "_result":Z
    :sswitch_7b
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_9c

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/ComponentName;

    :goto_9c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v8}, Landroid/app/admin/IDevicePolicyManager$Stub;->isRemovingAdmin(Landroid/content/ComponentName;I)Z

    move-result v61

    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v61, :cond_9d

    const/4 v6, 0x1

    :goto_9d
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    .end local v8    # "_arg1":I
    .end local v61    # "_result":Z
    :cond_9c
    const/16 v17, 0x0

    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_9c

    .end local v17    # "_arg0":Landroid/content/ComponentName;
    .restart local v8    # "_arg1":I
    .restart local v61    # "_result":Z
    :cond_9d
    const/4 v6, 0x0

    goto :goto_9d

    .end local v8    # "_arg1":I
    .end local v61    # "_result":Z
    :sswitch_7c
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_9e

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/ComponentName;

    :goto_9e
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setUserEnabled(Landroid/content/ComponentName;)Z

    move-result v61

    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v61, :cond_9f

    const/4 v6, 0x1

    :goto_9f
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    .end local v61    # "_result":Z
    :cond_9e
    const/16 v17, 0x0

    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_9e

    .end local v17    # "_arg0":Landroid/content/ComponentName;
    .restart local v61    # "_result":Z
    :cond_9f
    const/4 v6, 0x0

    goto :goto_9f

    .end local v61    # "_result":Z
    :sswitch_7d
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .restart local v24    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->isDeviceInitializer(Ljava/lang/String;)Z

    move-result v61

    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v61, :cond_a0

    const/4 v6, 0x1

    :goto_a0
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_a0
    const/4 v6, 0x0

    goto :goto_a0

    .end local v24    # "_arg0":Ljava/lang/String;
    .end local v61    # "_result":Z
    :sswitch_7e
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_a1

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/ComponentName;

    :goto_a1
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->clearDeviceInitializer(Landroid/content/ComponentName;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :cond_a1
    const/16 v17, 0x0

    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_a1

    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :sswitch_7f
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_a2

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/ComponentName;

    :goto_a2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_a3

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/content/ComponentName;

    :goto_a3
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setDeviceInitializer(Landroid/content/ComponentName;Landroid/content/ComponentName;)Z

    move-result v61

    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v61, :cond_a4

    const/4 v6, 0x1

    :goto_a4
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    .end local v61    # "_result":Z
    :cond_a2
    const/16 v17, 0x0

    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_a2

    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :cond_a3
    const/16 v29, 0x0

    .restart local v29    # "_arg1":Landroid/content/ComponentName;
    goto :goto_a3

    .end local v29    # "_arg1":Landroid/content/ComponentName;
    .restart local v61    # "_result":Z
    :cond_a4
    const/4 v6, 0x0

    goto :goto_a4

    .end local v61    # "_result":Z
    :sswitch_80
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDeviceInitializer()Ljava/lang/String;

    move-result-object v56

    .restart local v56    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v6, 0x1

    return v6

    .end local v56    # "_result":Ljava/lang/String;
    :sswitch_81
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDeviceInitializerComponent()Landroid/content/ComponentName;

    move-result-object v53

    .restart local v53    # "_result":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v53, :cond_a5

    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    move-object/from16 v0, v53

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_a5
    const/4 v6, 0x1

    return v6

    :cond_a5
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a5

    .end local v53    # "_result":Landroid/content/ComponentName;
    :sswitch_82
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_a6

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/ComponentName;

    :goto_a6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_a7

    sget-object v6, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/graphics/Bitmap;

    :goto_a7
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setUserIcon(Landroid/content/ComponentName;Landroid/graphics/Bitmap;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :cond_a6
    const/16 v17, 0x0

    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_a6

    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :cond_a7
    const/16 v32, 0x0

    .local v32, "_arg1":Landroid/graphics/Bitmap;
    goto :goto_a7

    .end local v32    # "_arg1":Landroid/graphics/Bitmap;
    :sswitch_83
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_a8

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/ComponentName;

    :goto_a8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_a9

    sget-object v6, Landroid/app/admin/SystemUpdatePolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/app/admin/SystemUpdatePolicy;

    :goto_a9
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setSystemUpdatePolicy(Landroid/content/ComponentName;Landroid/app/admin/SystemUpdatePolicy;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :cond_a8
    const/16 v17, 0x0

    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_a8

    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :cond_a9
    const/16 v28, 0x0

    .local v28, "_arg1":Landroid/app/admin/SystemUpdatePolicy;
    goto :goto_a9

    .end local v28    # "_arg1":Landroid/app/admin/SystemUpdatePolicy;
    :sswitch_84
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getSystemUpdatePolicy()Landroid/app/admin/SystemUpdatePolicy;

    move-result-object v52

    .local v52, "_result":Landroid/app/admin/SystemUpdatePolicy;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v52, :cond_aa

    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    move-object/from16 v0, v52

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/admin/SystemUpdatePolicy;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_aa
    const/4 v6, 0x1

    return v6

    :cond_aa
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_aa

    .end local v52    # "_result":Landroid/app/admin/SystemUpdatePolicy;
    :sswitch_85
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_ab

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/ComponentName;

    :goto_ab
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_ac

    const/16 v38, 0x1

    .restart local v38    # "_arg1":Z
    :goto_ac
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setKeyguardDisabled(Landroid/content/ComponentName;Z)Z

    move-result v61

    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v61, :cond_ad

    const/4 v6, 0x1

    :goto_ad
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    .end local v38    # "_arg1":Z
    .end local v61    # "_result":Z
    :cond_ab
    const/16 v17, 0x0

    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_ab

    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :cond_ac
    const/16 v38, 0x0

    .restart local v38    # "_arg1":Z
    goto :goto_ac

    .restart local v61    # "_result":Z
    :cond_ad
    const/4 v6, 0x0

    goto :goto_ad

    .end local v38    # "_arg1":Z
    .end local v61    # "_result":Z
    :sswitch_86
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_ae

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/ComponentName;

    :goto_ae
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_af

    const/16 v38, 0x1

    .restart local v38    # "_arg1":Z
    :goto_af
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setStatusBarDisabled(Landroid/content/ComponentName;Z)Z

    move-result v61

    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v61, :cond_b0

    const/4 v6, 0x1

    :goto_b0
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    .end local v38    # "_arg1":Z
    .end local v61    # "_result":Z
    :cond_ae
    const/16 v17, 0x0

    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_ae

    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :cond_af
    const/16 v38, 0x0

    .restart local v38    # "_arg1":Z
    goto :goto_af

    .restart local v61    # "_result":Z
    :cond_b0
    const/4 v6, 0x0

    goto :goto_b0

    .end local v38    # "_arg1":Z
    .end local v61    # "_result":Z
    :sswitch_87
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDoNotAskCredentialsOnBoot()Z

    move-result v61

    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v61, :cond_b1

    const/4 v6, 0x1

    :goto_b1
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_b1
    const/4 v6, 0x0

    goto :goto_b1

    .end local v61    # "_result":Z
    :sswitch_88
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v22

    .local v22, "_arg0":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->notifyPendingSystemUpdate(J)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    .end local v22    # "_arg0":J
    :sswitch_89
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_b2

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/ComponentName;

    :goto_b2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v8}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPermissionPolicy(Landroid/content/ComponentName;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    .end local v8    # "_arg1":I
    :cond_b2
    const/16 v17, 0x0

    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_b2

    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :sswitch_8a
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_b3

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/ComponentName;

    :goto_b3
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPermissionPolicy(Landroid/content/ComponentName;)I

    move-result v49

    .restart local v49    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    .end local v49    # "_result":I
    :cond_b3
    const/16 v17, 0x0

    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_b3

    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :sswitch_8b
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_b4

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/ComponentName;

    :goto_b4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .restart local v18    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .restart local v19    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .restart local v10    # "_arg3":I
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3, v10}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPermissionGrantState(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v61

    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v61, :cond_b5

    const/4 v6, 0x1

    :goto_b5
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    .end local v10    # "_arg3":I
    .end local v18    # "_arg1":Ljava/lang/String;
    .end local v19    # "_arg2":Ljava/lang/String;
    .end local v61    # "_result":Z
    :cond_b4
    const/16 v17, 0x0

    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_b4

    .end local v17    # "_arg0":Landroid/content/ComponentName;
    .restart local v10    # "_arg3":I
    .restart local v18    # "_arg1":Ljava/lang/String;
    .restart local v19    # "_arg2":Ljava/lang/String;
    .restart local v61    # "_result":Z
    :cond_b5
    const/4 v6, 0x0

    goto :goto_b5

    .end local v10    # "_arg3":I
    .end local v18    # "_arg1":Ljava/lang/String;
    .end local v19    # "_arg2":Ljava/lang/String;
    .end local v61    # "_result":Z
    :sswitch_8c
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_b6

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/ComponentName;

    :goto_b6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .restart local v18    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .restart local v19    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPermissionGrantState(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)I

    move-result v49

    .restart local v49    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    .end local v18    # "_arg1":Ljava/lang/String;
    .end local v19    # "_arg2":Ljava/lang/String;
    .end local v49    # "_result":I
    :cond_b6
    const/16 v17, 0x0

    .restart local v17    # "_arg0":Landroid/content/ComponentName;
    goto :goto_b6

    .end local v17    # "_arg0":Landroid/content/ComponentName;
    :sswitch_8d
    const-string v6, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->requireSecureKeyguard(I)Z

    move-result v61

    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v61, :cond_b7

    const/4 v6, 0x1

    :goto_b7
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_b7
    const/4 v6, 0x0

    goto :goto_b7

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
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x40 -> :sswitch_40
        0x41 -> :sswitch_41
        0x42 -> :sswitch_42
        0x43 -> :sswitch_43
        0x44 -> :sswitch_44
        0x45 -> :sswitch_45
        0x46 -> :sswitch_46
        0x47 -> :sswitch_47
        0x48 -> :sswitch_48
        0x49 -> :sswitch_49
        0x4a -> :sswitch_4a
        0x4b -> :sswitch_4b
        0x4c -> :sswitch_4c
        0x4d -> :sswitch_4d
        0x4e -> :sswitch_4e
        0x4f -> :sswitch_4f
        0x50 -> :sswitch_50
        0x51 -> :sswitch_51
        0x52 -> :sswitch_52
        0x53 -> :sswitch_53
        0x54 -> :sswitch_54
        0x55 -> :sswitch_55
        0x56 -> :sswitch_56
        0x57 -> :sswitch_57
        0x58 -> :sswitch_58
        0x59 -> :sswitch_59
        0x5a -> :sswitch_5a
        0x5b -> :sswitch_5b
        0x5c -> :sswitch_5c
        0x5d -> :sswitch_5d
        0x5e -> :sswitch_5e
        0x5f -> :sswitch_5f
        0x60 -> :sswitch_60
        0x61 -> :sswitch_61
        0x62 -> :sswitch_62
        0x63 -> :sswitch_63
        0x64 -> :sswitch_64
        0x65 -> :sswitch_65
        0x66 -> :sswitch_66
        0x67 -> :sswitch_67
        0x68 -> :sswitch_68
        0x69 -> :sswitch_69
        0x6a -> :sswitch_6a
        0x6b -> :sswitch_6b
        0x6c -> :sswitch_6c
        0x6d -> :sswitch_6d
        0x6e -> :sswitch_6e
        0x6f -> :sswitch_6f
        0x70 -> :sswitch_70
        0x71 -> :sswitch_71
        0x72 -> :sswitch_72
        0x73 -> :sswitch_73
        0x74 -> :sswitch_74
        0x75 -> :sswitch_75
        0x76 -> :sswitch_76
        0x77 -> :sswitch_77
        0x78 -> :sswitch_78
        0x79 -> :sswitch_79
        0x7a -> :sswitch_7a
        0x7b -> :sswitch_7b
        0x7c -> :sswitch_7c
        0x7d -> :sswitch_7d
        0x7e -> :sswitch_7e
        0x7f -> :sswitch_7f
        0x80 -> :sswitch_80
        0x81 -> :sswitch_81
        0x82 -> :sswitch_82
        0x83 -> :sswitch_83
        0x84 -> :sswitch_84
        0x85 -> :sswitch_85
        0x86 -> :sswitch_86
        0x87 -> :sswitch_87
        0x88 -> :sswitch_88
        0x89 -> :sswitch_89
        0x8a -> :sswitch_8a
        0x8b -> :sswitch_8b
        0x8c -> :sswitch_8c
        0x8d -> :sswitch_8d
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
