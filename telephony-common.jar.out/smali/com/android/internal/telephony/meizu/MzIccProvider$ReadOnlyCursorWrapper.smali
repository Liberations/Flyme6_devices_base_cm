.class Lcom/android/internal/telephony/meizu/MzIccProvider$ReadOnlyCursorWrapper;
.super Landroid/database/CrossProcessCursorWrapper;
.source "MzIccProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/meizu/MzIccProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReadOnlyCursorWrapper"
.end annotation


# instance fields
.field private mBundle:Landroid/os/Bundle;

.field private mCursor:Landroid/database/CrossProcessCursor;

.field final synthetic this$0:Lcom/android/internal/telephony/meizu/MzIccProvider;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/meizu/MzIccProvider;Landroid/database/Cursor;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/meizu/MzIccProvider;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "bundle"    # Landroid/os/Bundle;

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/meizu/MzIccProvider$ReadOnlyCursorWrapper;->this$0:Lcom/android/internal/telephony/meizu/MzIccProvider;

    invoke-direct {p0, p2}, Landroid/database/CrossProcessCursorWrapper;-><init>(Landroid/database/Cursor;)V

    check-cast p2, Landroid/database/CrossProcessCursor;

    .end local p2    # "cursor":Landroid/database/Cursor;
    iput-object p2, p0, Lcom/android/internal/telephony/meizu/MzIccProvider$ReadOnlyCursorWrapper;->mCursor:Landroid/database/CrossProcessCursor;

    iput-object p3, p0, Lcom/android/internal/telephony/meizu/MzIccProvider$ReadOnlyCursorWrapper;->mBundle:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public commitUpdates()Z
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Download manager cursors are read-only"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public deleteRow()Z
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Download manager cursors are read-only"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public fillWindow(ILandroid/database/CursorWindow;)V
    .locals 1
    .param p1, "pos"    # I
    .param p2, "window"    # Landroid/database/CursorWindow;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/meizu/MzIccProvider$ReadOnlyCursorWrapper;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v0, p1, p2}, Landroid/database/CrossProcessCursor;->fillWindow(ILandroid/database/CursorWindow;)V

    return-void
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/meizu/MzIccProvider$ReadOnlyCursorWrapper;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public getWindow()Landroid/database/CursorWindow;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/meizu/MzIccProvider$ReadOnlyCursorWrapper;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v0}, Landroid/database/CrossProcessCursor;->getWindow()Landroid/database/CursorWindow;

    move-result-object v0

    return-object v0
.end method

.method public onMove(II)Z
    .locals 1
    .param p1, "oldPosition"    # I
    .param p2, "newPosition"    # I

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/meizu/MzIccProvider$ReadOnlyCursorWrapper;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v0, p1, p2}, Landroid/database/CrossProcessCursor;->onMove(II)Z

    move-result v0

    return v0
.end method
