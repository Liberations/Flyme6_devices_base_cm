.class public abstract Lcom/android/internal/app/MediaRouteDialogPresenter;
.super Ljava/lang/Object;
.source "MediaRouteDialogPresenter.java"


# static fields
.field private static final CHOOSER_FRAGMENT_TAG:Ljava/lang/String; = "android.app.MediaRouteButton:MediaRouteChooserDialogFragment"

.field private static final CONTROLLER_FRAGMENT_TAG:Ljava/lang/String; = "android.app.MediaRouteButton:MediaRouteControllerDialogFragment"

.field private static final TAG:Ljava/lang/String; = "MediaRouter"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createDialog(Landroid/content/Context;ILandroid/view/View$OnClickListener;)Landroid/app/Dialog;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "routeTypes"    # I
    .param p2, "extendedSettingsClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    const v5, 0x103012e

    const-string v4, "media_router"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/MediaRouter;

    .local v3, "router":Landroid/media/MediaRouter;
    invoke-virtual {v3}, Landroid/media/MediaRouter;->getSelectedRoute()Landroid/media/MediaRouter$RouteInfo;

    move-result-object v2

    .local v2, "route":Landroid/media/MediaRouter$RouteInfo;
    invoke-virtual {v2}, Landroid/media/MediaRouter$RouteInfo;->isDefault()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2, p1}, Landroid/media/MediaRouter$RouteInfo;->matchesTypes(I)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v1, Lcom/android/internal/app/MediaRouteControllerDialog;

    invoke-direct {v1, p0, v5}, Lcom/android/internal/app/MediaRouteControllerDialog;-><init>(Landroid/content/Context;I)V

    .local v1, "d":Lcom/android/internal/app/MediaRouteControllerDialog;
    return-object v1

    .end local v1    # "d":Lcom/android/internal/app/MediaRouteControllerDialog;
    :cond_0
    new-instance v0, Lcom/android/internal/app/MediaRouteChooserDialog;

    invoke-direct {v0, p0, v5}, Lcom/android/internal/app/MediaRouteChooserDialog;-><init>(Landroid/content/Context;I)V

    .local v0, "d":Lcom/android/internal/app/MediaRouteChooserDialog;
    invoke-virtual {v0, p1}, Lcom/android/internal/app/MediaRouteChooserDialog;->setRouteTypes(I)V

    invoke-virtual {v0, p2}, Lcom/android/internal/app/MediaRouteChooserDialog;->setExtendedSettingsClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public static showDialogFragment(Landroid/app/Activity;ILandroid/view/View$OnClickListener;)Landroid/app/DialogFragment;
    .locals 8
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "routeTypes"    # I
    .param p2, "extendedSettingsClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    const/4 v7, 0x0

    const-string v5, "media_router"

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/MediaRouter;

    .local v4, "router":Landroid/media/MediaRouter;
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    .local v2, "fm":Landroid/app/FragmentManager;
    invoke-virtual {v4}, Landroid/media/MediaRouter;->getSelectedRoute()Landroid/media/MediaRouter$RouteInfo;

    move-result-object v3

    .local v3, "route":Landroid/media/MediaRouter$RouteInfo;
    invoke-virtual {v3}, Landroid/media/MediaRouter$RouteInfo;->isDefault()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v3, p1}, Landroid/media/MediaRouter$RouteInfo;->matchesTypes(I)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "android.app.MediaRouteButton:MediaRouteControllerDialogFragment"

    invoke-virtual {v2, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v5

    if-eqz v5, :cond_2

    const-string v5, "MediaRouter"

    const-string v6, "showDialog(): Route controller dialog already showing!"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v7

    :cond_0
    const-string v5, "android.app.MediaRouteButton:MediaRouteChooserDialogFragment"

    invoke-virtual {v2, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v5

    if-eqz v5, :cond_1

    const-string v5, "MediaRouter"

    const-string v6, "showDialog(): Route chooser dialog already showing!"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v7

    :cond_1
    new-instance v0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;

    invoke-direct {v0}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;-><init>()V

    .local v0, "f":Lcom/android/internal/app/MediaRouteChooserDialogFragment;
    invoke-virtual {v0, p1}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->setRouteTypes(I)V

    invoke-virtual {v0, p2}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->setExtendedSettingsClickListener(Landroid/view/View$OnClickListener;)V

    const-string v5, "android.app.MediaRouteButton:MediaRouteChooserDialogFragment"

    invoke-virtual {v0, v2, v5}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-object v0

    .end local v0    # "f":Lcom/android/internal/app/MediaRouteChooserDialogFragment;
    :cond_2
    new-instance v1, Lcom/android/internal/app/MediaRouteControllerDialogFragment;

    invoke-direct {v1}, Lcom/android/internal/app/MediaRouteControllerDialogFragment;-><init>()V

    .local v1, "f":Lcom/android/internal/app/MediaRouteControllerDialogFragment;
    const-string v5, "android.app.MediaRouteButton:MediaRouteControllerDialogFragment"

    invoke-virtual {v1, v2, v5}, Lcom/android/internal/app/MediaRouteControllerDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-object v1
.end method
