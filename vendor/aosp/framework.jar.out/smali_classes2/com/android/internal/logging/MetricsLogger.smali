.class public Lcom/android/internal/logging/MetricsLogger;
.super Ljava/lang/Object;
.source "MetricsLogger.java"

# interfaces
.implements Lcom/android/internal/logging/MetricsConstants;


# static fields
.field public static final ACTION_ASSIST_LONG_PRESS:I = 0xef

.field public static final ACTION_DOUBLE_TAP_POWER_CAMERA_GESTURE:I = 0xff

.field public static final ACTION_FINGERPRINT_AUTH:I = 0xfc

.field public static final ACTION_FINGERPRINT_DELETE:I = 0xfd

.field public static final ACTION_FINGERPRINT_ENROLL:I = 0xfb

.field public static final ACTION_FINGERPRINT_RENAME:I = 0xfe

.field public static final ACTION_WIGGLE_CAMERA_GESTURE:I = 0x100

.field public static final FINGERPRINT_ENROLLING:I = 0xf0

.field public static final FINGERPRINT_ENROLLING_SETUP:I = 0xf6

.field public static final FINGERPRINT_ENROLL_FINISH:I = 0xf2

.field public static final FINGERPRINT_ENROLL_FINISH_SETUP:I = 0xf8

.field public static final FINGERPRINT_ENROLL_INTRO:I = 0xf3

.field public static final FINGERPRINT_ENROLL_INTRO_SETUP:I = 0xf9

.field public static final FINGERPRINT_ENROLL_ONBOARD:I = 0xf4

.field public static final FINGERPRINT_ENROLL_ONBOARD_SETUP:I = 0xfa

.field public static final FINGERPRINT_ENROLL_SIDECAR:I = 0xf5

.field public static final FINGERPRINT_FIND_SENSOR:I = 0xf1

.field public static final FINGERPRINT_FIND_SENSOR_SETUP:I = 0xf7


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static action(Landroid/content/Context;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "category"    # I

    .prologue
    const-string v0, ""

    invoke-static {p0, p1, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method

.method public static action(Landroid/content/Context;II)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "category"    # I
    .param p2, "value"    # I

    .prologue
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method

.method public static action(Landroid/content/Context;ILjava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "category"    # I
    .param p2, "pkg"    # Ljava/lang/String;

    .prologue
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must define metric category"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p1, p2}, Lcom/android/internal/logging/EventLogTags;->writeSysuiAction(ILjava/lang/String;)V

    return-void
.end method

.method public static action(Landroid/content/Context;IZ)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "category"    # I
    .param p2, "value"    # Z

    .prologue
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method

.method public static count(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    invoke-static {p1, p2}, Lcom/android/internal/logging/EventLogTags;->writeSysuiCount(Ljava/lang/String;I)V

    return-void
.end method

.method public static hidden(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "category"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must define metric category"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p1, v1}, Lcom/android/internal/logging/EventLogTags;->writeSysuiViewVisibility(II)V

    return-void
.end method

.method public static histogram(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "bucket"    # I

    .prologue
    invoke-static {p1, p2}, Lcom/android/internal/logging/EventLogTags;->writeSysuiHistogram(Ljava/lang/String;I)V

    return-void
.end method

.method public static visibility(Landroid/content/Context;II)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "category"    # I
    .param p2, "vis"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    if-nez p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {p0, p1, v0}, Lcom/android/internal/logging/MetricsLogger;->visibility(Landroid/content/Context;IZ)V

    return-void
.end method

.method public static visibility(Landroid/content/Context;IZ)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "category"    # I
    .param p2, "visibile"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    if-eqz p2, :cond_0

    invoke-static {p0, p1}, Lcom/android/internal/logging/MetricsLogger;->visible(Landroid/content/Context;I)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1}, Lcom/android/internal/logging/MetricsLogger;->hidden(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public static visible(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "category"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must define metric category"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/16 v0, 0x64

    invoke-static {p1, v0}, Lcom/android/internal/logging/EventLogTags;->writeSysuiViewVisibility(II)V

    return-void
.end method
