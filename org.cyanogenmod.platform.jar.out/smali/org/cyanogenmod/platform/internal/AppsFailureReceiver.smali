.class public Lorg/cyanogenmod/platform/internal/AppsFailureReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AppsFailureReceiver.java"


# static fields
.field private static final EXPIRATION_TIME_IN_MILLISECONDS:I = 0x7530

.field private static final FAILURES_THRESHOLD:I = 0x3


# instance fields
.field private mFailuresCount:I

.field private mStartTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/cyanogenmod/platform/internal/AppsFailureReceiver;->mFailuresCount:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/cyanogenmod/platform/internal/AppsFailureReceiver;->mStartTime:J

    return-void
.end method

.method private postThemeResetNotification(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v8, 0x3f060058

    const-string v4, "notification"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .local v1, "nm":Landroid/app/NotificationManager;
    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .local v3, "title":Ljava/lang/String;
    const v4, 0x3f060059

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "body":Ljava/lang/String;
    new-instance v4, Landroid/app/Notification$Builder;

    invoke-direct {v4, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    new-instance v5, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v5}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v5, v0}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v4

    const v5, 0x1080078

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v4

    const-string v5, "sys"

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    .local v2, "notice":Landroid/app/Notification;
    invoke-virtual {v1, v8, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, "action":Ljava/lang/String;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .local v2, "currentTime":J
    const-string v7, "cyanogenmod.intent.action.APP_FAILURE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-wide v8, p0, Lorg/cyanogenmod/platform/internal/AppsFailureReceiver;->mStartTime:J

    sub-long v8, v2, v8

    const-wide/16 v10, 0x7530

    cmp-long v7, v8, v10

    if-lez v7, :cond_0

    iput-wide v2, p0, Lorg/cyanogenmod/platform/internal/AppsFailureReceiver;->mStartTime:J

    const/4 v7, 0x0

    iput v7, p0, Lorg/cyanogenmod/platform/internal/AppsFailureReceiver;->mFailuresCount:I

    :cond_0
    iget v7, p0, Lorg/cyanogenmod/platform/internal/AppsFailureReceiver;->mFailuresCount:I

    const/4 v8, 0x3

    if-gt v7, v8, :cond_1

    iget v7, p0, Lorg/cyanogenmod/platform/internal/AppsFailureReceiver;->mFailuresCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lorg/cyanogenmod/platform/internal/AppsFailureReceiver;->mFailuresCount:I

    iget v7, p0, Lorg/cyanogenmod/platform/internal/AppsFailureReceiver;->mFailuresCount:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_1

    const-string v7, "cmthemes"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcyanogenmod/themes/IThemeService$Stub;->asInterface(Landroid/os/IBinder;)Lcyanogenmod/themes/IThemeService;

    move-result-object v6

    .local v6, "tm":Lcyanogenmod/themes/IThemeService;
    const-string v5, "system"

    .local v5, "themePkgName":Ljava/lang/String;
    new-instance v1, Lcyanogenmod/themes/ThemeChangeRequest$Builder;

    invoke-direct {v1}, Lcyanogenmod/themes/ThemeChangeRequest$Builder;-><init>()V

    .local v1, "builder":Lcyanogenmod/themes/ThemeChangeRequest$Builder;
    const-string v7, "system"

    invoke-virtual {v1, v7}, Lcyanogenmod/themes/ThemeChangeRequest$Builder;->setOverlay(Ljava/lang/String;)Lcyanogenmod/themes/ThemeChangeRequest$Builder;

    move-result-object v7

    const-string v8, "system"

    invoke-virtual {v7, v8}, Lcyanogenmod/themes/ThemeChangeRequest$Builder;->setStatusBar(Ljava/lang/String;)Lcyanogenmod/themes/ThemeChangeRequest$Builder;

    move-result-object v7

    const-string v8, "system"

    invoke-virtual {v7, v8}, Lcyanogenmod/themes/ThemeChangeRequest$Builder;->setNavBar(Ljava/lang/String;)Lcyanogenmod/themes/ThemeChangeRequest$Builder;

    move-result-object v7

    const-string v8, "system"

    invoke-virtual {v7, v8}, Lcyanogenmod/themes/ThemeChangeRequest$Builder;->setIcons(Ljava/lang/String;)Lcyanogenmod/themes/ThemeChangeRequest$Builder;

    move-result-object v7

    const-string v8, "system"

    invoke-virtual {v7, v8}, Lcyanogenmod/themes/ThemeChangeRequest$Builder;->setFont(Ljava/lang/String;)Lcyanogenmod/themes/ThemeChangeRequest$Builder;

    move-result-object v7

    const-string v8, "system"

    invoke-virtual {v7, v8}, Lcyanogenmod/themes/ThemeChangeRequest$Builder;->setBootanimation(Ljava/lang/String;)Lcyanogenmod/themes/ThemeChangeRequest$Builder;

    move-result-object v7

    const-string v8, "system"

    invoke-virtual {v7, v8}, Lcyanogenmod/themes/ThemeChangeRequest$Builder;->setWallpaper(Ljava/lang/String;)Lcyanogenmod/themes/ThemeChangeRequest$Builder;

    move-result-object v7

    const-string v8, "system"

    invoke-virtual {v7, v8}, Lcyanogenmod/themes/ThemeChangeRequest$Builder;->setLockWallpaper(Ljava/lang/String;)Lcyanogenmod/themes/ThemeChangeRequest$Builder;

    move-result-object v7

    const-string v8, "system"

    invoke-virtual {v7, v8}, Lcyanogenmod/themes/ThemeChangeRequest$Builder;->setAlarm(Ljava/lang/String;)Lcyanogenmod/themes/ThemeChangeRequest$Builder;

    move-result-object v7

    const-string v8, "system"

    invoke-virtual {v7, v8}, Lcyanogenmod/themes/ThemeChangeRequest$Builder;->setNotification(Ljava/lang/String;)Lcyanogenmod/themes/ThemeChangeRequest$Builder;

    move-result-object v7

    const-string v8, "system"

    invoke-virtual {v7, v8}, Lcyanogenmod/themes/ThemeChangeRequest$Builder;->setRingtone(Ljava/lang/String;)Lcyanogenmod/themes/ThemeChangeRequest$Builder;

    move-result-object v7

    sget-object v8, Lcyanogenmod/themes/ThemeChangeRequest$RequestType;->THEME_RESET:Lcyanogenmod/themes/ThemeChangeRequest$RequestType;

    invoke-virtual {v7, v8}, Lcyanogenmod/themes/ThemeChangeRequest$Builder;->setRequestType(Lcyanogenmod/themes/ThemeChangeRequest$RequestType;)Lcyanogenmod/themes/ThemeChangeRequest$Builder;

    :try_start_0
    invoke-virtual {v1}, Lcyanogenmod/themes/ThemeChangeRequest$Builder;->build()Lcyanogenmod/themes/ThemeChangeRequest;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v6, v7, v8}, Lcyanogenmod/themes/IThemeService;->requestThemeChange(Lcyanogenmod/themes/ThemeChangeRequest;Z)V

    invoke-direct {p0, p1}, Lorg/cyanogenmod/platform/internal/AppsFailureReceiver;->postThemeResetNotification(Landroid/content/Context;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "builder":Lcyanogenmod/themes/ThemeChangeRequest$Builder;
    .end local v5    # "themePkgName":Ljava/lang/String;
    .end local v6    # "tm":Lcyanogenmod/themes/IThemeService;
    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v7, "org.cyanogenmod.intent.action.THEME_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    iput-wide v2, p0, Lorg/cyanogenmod/platform/internal/AppsFailureReceiver;->mStartTime:J

    const/4 v7, 0x0

    iput v7, p0, Lorg/cyanogenmod/platform/internal/AppsFailureReceiver;->mFailuresCount:I

    goto :goto_0

    .restart local v1    # "builder":Lcyanogenmod/themes/ThemeChangeRequest$Builder;
    .restart local v5    # "themePkgName":Ljava/lang/String;
    .restart local v6    # "tm":Lcyanogenmod/themes/IThemeService;
    :catch_0
    move-exception v4

    .local v4, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
