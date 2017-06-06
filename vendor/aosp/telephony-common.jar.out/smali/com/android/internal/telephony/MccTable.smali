.class public final Lcom/android/internal/telephony/MccTable;
.super Ljava/lang/Object;
.source "MccTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/MccTable$MccEntry;
    }
.end annotation


# static fields
.field private static final FALLBACKS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/Locale;",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation
.end field

.field static final LOG_TAG:Ljava/lang/String; = "MccTable"

.field static sTable:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/MccTable$MccEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v6, 0xf0

    const/4 v5, 0x3

    const/4 v4, 0x2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/MccTable;->FALLBACKS:Ljava/util/Map;

    sget-object v0, Lcom/android/internal/telephony/MccTable;->FALLBACKS:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->CANADA:Ljava/util/Locale;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "gr"

    const/16 v3, 0xca

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "nl"

    const/16 v3, 0xcc

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "be"

    const/16 v3, 0xce

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "fr"

    const/16 v3, 0xd0

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "mc"

    const/16 v3, 0xd4

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "ad"

    const/16 v3, 0xd5

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "es"

    const/16 v3, 0xd6

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "hu"

    const/16 v3, 0xd8

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "ba"

    const/16 v3, 0xda

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "hr"

    const/16 v3, 0xdb

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "rs"

    const/16 v3, 0xdc

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "it"

    const/16 v3, 0xde

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "va"

    const/16 v3, 0xe1

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "ro"

    const/16 v3, 0xe2

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "ch"

    const/16 v3, 0xe4

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "cz"

    const/16 v3, 0xe6

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "sk"

    const/16 v3, 0xe7

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "at"

    const/16 v3, 0xe8

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "gb"

    const/16 v3, 0xea

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "gb"

    const/16 v3, 0xeb

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "dk"

    const/16 v3, 0xee

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "se"

    invoke-direct {v1, v6, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "no"

    const/16 v3, 0xf2

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "fi"

    const/16 v3, 0xf4

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "lt"

    const/16 v3, 0xf6

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "lv"

    const/16 v3, 0xf7

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "ee"

    const/16 v3, 0xf8

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "ru"

    const/16 v3, 0xfa

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "ua"

    const/16 v3, 0xff

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "by"

    const/16 v3, 0x101

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "md"

    const/16 v3, 0x103

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "pl"

    const/16 v3, 0x104

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "de"

    const/16 v3, 0x106

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "gi"

    const/16 v3, 0x10a

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "pt"

    const/16 v3, 0x10c

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "lu"

    const/16 v3, 0x10e

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "ie"

    const/16 v3, 0x110

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "is"

    const/16 v3, 0x112

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "al"

    const/16 v3, 0x114

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "mt"

    const/16 v3, 0x116

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "cy"

    const/16 v3, 0x118

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "ge"

    const/16 v3, 0x11a

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "am"

    const/16 v3, 0x11b

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "bg"

    const/16 v3, 0x11c

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "tr"

    const/16 v3, 0x11e

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "fo"

    const/16 v3, 0x120

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "ge"

    const/16 v3, 0x121

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "gl"

    const/16 v3, 0x122

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "sm"

    const/16 v3, 0x124

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "si"

    const/16 v3, 0x125

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "mk"

    const/16 v3, 0x126

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "li"

    const/16 v3, 0x127

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "me"

    const/16 v3, 0x129

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "ca"

    const/16 v3, 0x12e

    invoke-direct {v1, v3, v2, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "pm"

    const/16 v3, 0x134

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "us"

    const/16 v3, 0x136

    invoke-direct {v1, v3, v2, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "us"

    const/16 v3, 0x137

    invoke-direct {v1, v3, v2, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "us"

    const/16 v3, 0x138

    invoke-direct {v1, v3, v2, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "us"

    const/16 v3, 0x139

    invoke-direct {v1, v3, v2, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "us"

    const/16 v3, 0x13a

    invoke-direct {v1, v3, v2, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "us"

    const/16 v3, 0x13b

    invoke-direct {v1, v3, v2, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "us"

    const/16 v3, 0x13c

    invoke-direct {v1, v3, v2, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "pr"

    const/16 v3, 0x14a

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "vi"

    const/16 v3, 0x14c

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "mx"

    const/16 v3, 0x14e

    invoke-direct {v1, v3, v2, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "jm"

    const/16 v3, 0x152

    invoke-direct {v1, v3, v2, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "gp"

    const/16 v3, 0x154

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "bb"

    const/16 v3, 0x156

    invoke-direct {v1, v3, v2, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "ag"

    const/16 v3, 0x158

    invoke-direct {v1, v3, v2, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "ky"

    const/16 v3, 0x15a

    invoke-direct {v1, v3, v2, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "vg"

    const/16 v3, 0x15c

    invoke-direct {v1, v3, v2, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "bm"

    const/16 v3, 0x15e

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "gd"

    const/16 v3, 0x160

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "ms"

    const/16 v3, 0x162

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "kn"

    const/16 v3, 0x164

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "lc"

    const/16 v3, 0x166

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "vc"

    const/16 v3, 0x168

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "ai"

    const/16 v3, 0x16a

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "aw"

    const/16 v3, 0x16b

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "bs"

    const/16 v3, 0x16c

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "ai"

    const/16 v3, 0x16d

    invoke-direct {v1, v3, v2, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "dm"

    const/16 v3, 0x16e

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "cu"

    const/16 v3, 0x170

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "do"

    const/16 v3, 0x172

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "ht"

    const/16 v3, 0x174

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "tt"

    const/16 v3, 0x176

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "tc"

    const/16 v3, 0x178

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "az"

    const/16 v3, 0x190

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "kz"

    const/16 v3, 0x191

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "bt"

    const/16 v3, 0x192

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "in"

    const/16 v3, 0x194

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "in"

    const/16 v3, 0x195

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "in"

    const/16 v3, 0x196

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "pk"

    const/16 v3, 0x19a

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "af"

    const/16 v3, 0x19c

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "lk"

    const/16 v3, 0x19d

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "mm"

    const/16 v3, 0x19e

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "lb"

    const/16 v3, 0x19f

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "jo"

    const/16 v3, 0x1a0

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "sy"

    const/16 v3, 0x1a1

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "iq"

    const/16 v3, 0x1a2

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "kw"

    const/16 v3, 0x1a3

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "sa"

    const/16 v3, 0x1a4

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "ye"

    const/16 v3, 0x1a5

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "om"

    const/16 v3, 0x1a6

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "ps"

    const/16 v3, 0x1a7

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "ae"

    const/16 v3, 0x1a8

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "il"

    const/16 v3, 0x1a9

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "bh"

    const/16 v3, 0x1aa

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "qa"

    const/16 v3, 0x1ab

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "mn"

    const/16 v3, 0x1ac

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "np"

    const/16 v3, 0x1ad

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "ae"

    const/16 v3, 0x1ae

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "ae"

    const/16 v3, 0x1af

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "ir"

    const/16 v3, 0x1b0

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "uz"

    const/16 v3, 0x1b2

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "tj"

    const/16 v3, 0x1b4

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "kg"

    const/16 v3, 0x1b5

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "tm"

    const/16 v3, 0x1b6

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "jp"

    const/16 v3, 0x1b8

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "jp"

    const/16 v3, 0x1b9

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "kr"

    const/16 v3, 0x1c2

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "vn"

    const/16 v3, 0x1c4

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "hk"

    const/16 v3, 0x1c6

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "mo"

    const/16 v3, 0x1c7

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "kh"

    const/16 v3, 0x1c8

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "la"

    const/16 v3, 0x1c9

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "cn"

    const/16 v3, 0x1cc

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "cn"

    const/16 v3, 0x1cd

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "tw"

    const/16 v3, 0x1d2

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "kp"

    const/16 v3, 0x1d3

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "bd"

    const/16 v3, 0x1d6

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "mv"

    const/16 v3, 0x1d8

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "my"

    const/16 v3, 0x1f6

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "au"

    const/16 v3, 0x1f9

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "id"

    const/16 v3, 0x1fe

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "tl"

    const/16 v3, 0x202

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "ph"

    const/16 v3, 0x203

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "th"

    const/16 v3, 0x208

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "sg"

    const/16 v3, 0x20d

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "bn"

    const/16 v3, 0x210

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "nz"

    const/16 v3, 0x212

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "mp"

    const/16 v3, 0x216

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "gu"

    const/16 v3, 0x217

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "nr"

    const/16 v3, 0x218

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "pg"

    const/16 v3, 0x219

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "to"

    const/16 v3, 0x21b

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "sb"

    const/16 v3, 0x21c

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "vu"

    const/16 v3, 0x21d

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "fj"

    const/16 v3, 0x21e

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "wf"

    const/16 v3, 0x21f

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "as"

    const/16 v3, 0x220

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "ki"

    const/16 v3, 0x221

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "nc"

    const/16 v3, 0x222

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "pf"

    const/16 v3, 0x223

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "ck"

    const/16 v3, 0x224

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "ws"

    const/16 v3, 0x225

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "fm"

    const/16 v3, 0x226

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "mh"

    const/16 v3, 0x227

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "pw"

    const/16 v3, 0x228

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "tv"

    const/16 v3, 0x229

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "nu"

    const/16 v3, 0x22b

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "eg"

    const/16 v3, 0x25a

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "dz"

    const/16 v3, 0x25b

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "ma"

    const/16 v3, 0x25c

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "tn"

    const/16 v3, 0x25d

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "ly"

    const/16 v3, 0x25e

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "gm"

    const/16 v3, 0x25f

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "sn"

    const/16 v3, 0x260

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "mr"

    const/16 v3, 0x261

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "ml"

    const/16 v3, 0x262

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "gn"

    const/16 v3, 0x263

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "ci"

    const/16 v3, 0x264

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "bf"

    const/16 v3, 0x265

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "ne"

    const/16 v3, 0x266

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "tg"

    const/16 v3, 0x267

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "bj"

    const/16 v3, 0x268

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "mu"

    const/16 v3, 0x269

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "lr"

    const/16 v3, 0x26a

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "sl"

    const/16 v3, 0x26b

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "gh"

    const/16 v3, 0x26c

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "ng"

    const/16 v3, 0x26d

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "td"

    const/16 v3, 0x26e

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "cf"

    const/16 v3, 0x26f

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "cm"

    const/16 v3, 0x270

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "cv"

    const/16 v3, 0x271

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "st"

    const/16 v3, 0x272

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "gq"

    const/16 v3, 0x273

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "ga"

    const/16 v3, 0x274

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "cg"

    const/16 v3, 0x275

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "cg"

    const/16 v3, 0x276

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "ao"

    const/16 v3, 0x277

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "gw"

    const/16 v3, 0x278

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "sc"

    const/16 v3, 0x279

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "sd"

    const/16 v3, 0x27a

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "rw"

    const/16 v3, 0x27b

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "et"

    const/16 v3, 0x27c

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "so"

    const/16 v3, 0x27d

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "dj"

    const/16 v3, 0x27e

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "ke"

    const/16 v3, 0x27f

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "tz"

    const/16 v3, 0x280

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "ug"

    const/16 v3, 0x281

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "bi"

    const/16 v3, 0x282

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "mz"

    const/16 v3, 0x283

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "zm"

    const/16 v3, 0x285

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "mg"

    const/16 v3, 0x286

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "re"

    const/16 v3, 0x287

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "zw"

    const/16 v3, 0x288

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "na"

    const/16 v3, 0x289

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "mw"

    const/16 v3, 0x28a

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "ls"

    const/16 v3, 0x28b

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "bw"

    const/16 v3, 0x28c

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "sz"

    const/16 v3, 0x28d

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "km"

    const/16 v3, 0x28e

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "za"

    const/16 v3, 0x28f

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "er"

    const/16 v3, 0x291

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "sh"

    const/16 v3, 0x292

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "ss"

    const/16 v3, 0x293

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "bz"

    const/16 v3, 0x2be

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "gt"

    const/16 v3, 0x2c0

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "sv"

    const/16 v3, 0x2c2

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "hn"

    const/16 v3, 0x2c4

    invoke-direct {v1, v3, v2, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "ni"

    const/16 v3, 0x2c6

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "cr"

    const/16 v3, 0x2c8

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "pa"

    const/16 v3, 0x2ca

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "pe"

    const/16 v3, 0x2cc

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "ar"

    const/16 v3, 0x2d2

    invoke-direct {v1, v3, v2, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "br"

    const/16 v3, 0x2d4

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "cl"

    const/16 v3, 0x2da

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "co"

    const/16 v3, 0x2dc

    invoke-direct {v1, v3, v2, v5}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "ve"

    const/16 v3, 0x2de

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "bo"

    const/16 v3, 0x2e0

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "gy"

    const/16 v3, 0x2e2

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "ec"

    const/16 v3, 0x2e4

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "gf"

    const/16 v3, 0x2e6

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "py"

    const/16 v3, 0x2e8

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "sr"

    const/16 v3, 0x2ea

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "uy"

    const/16 v3, 0x2ec

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "fk"

    const/16 v3, 0x2ee

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static chooseBestFallback(Ljava/util/Locale;Ljava/util/List;)Ljava/util/Locale;
    .locals 3
    .param p0, "target"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Locale;",
            "Ljava/util/List",
            "<",
            "Ljava/util/Locale;",
            ">;)",
            "Ljava/util/Locale;"
        }
    .end annotation

    .prologue
    .local p1, "candidates":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    move-object v0, p0

    .local v0, "fallback":Ljava/util/Locale;
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/MccTable;->FALLBACKS:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "fallback":Ljava/util/Locale;
    check-cast v0, Ljava/util/Locale;

    .restart local v0    # "fallback":Ljava/util/Locale;
    if-eqz v0, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_2
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Locale;

    return-object v1
.end method

.method public static countryCodeForMcc(I)Ljava/lang/String;
    .locals 2
    .param p0, "mcc"    # I

    .prologue
    invoke-static {p0}, Lcom/android/internal/telephony/MccTable;->entryForMcc(I)Lcom/android/internal/telephony/MccTable$MccEntry;

    move-result-object v0

    .local v0, "entry":Lcom/android/internal/telephony/MccTable$MccEntry;
    if-nez v0, :cond_0

    const-string v1, ""

    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/android/internal/telephony/MccTable$MccEntry;->mIso:Ljava/lang/String;

    return-object v1
.end method

.method public static defaultLanguageForMcc(I)Ljava/lang/String;
    .locals 7
    .param p0, "mcc"    # I

    .prologue
    const/4 v6, 0x0

    invoke-static {p0}, Lcom/android/internal/telephony/MccTable;->entryForMcc(I)Lcom/android/internal/telephony/MccTable$MccEntry;

    move-result-object v0

    .local v0, "entry":Lcom/android/internal/telephony/MccTable$MccEntry;
    if-nez v0, :cond_0

    const-string v3, "MccTable"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "defaultLanguageForMcc("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "): no country for mcc"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    :cond_0
    new-instance v3, Ljava/util/Locale;

    const-string v4, "und"

    iget-object v5, v0, Lcom/android/internal/telephony/MccTable$MccEntry;->mIso:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Llibcore/icu/ICU;->addLikelySubtags(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v2

    .local v2, "likelyLocale":Ljava/util/Locale;
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .local v1, "likelyLanguage":Ljava/lang/String;
    const-string v3, "MccTable"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "defaultLanguageForMcc("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "): country "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/android/internal/telephony/MccTable$MccEntry;->mIso:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " uses "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public static defaultTimeZoneForMcc(I)Ljava/lang/String;
    .locals 7
    .param p0, "mcc"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    invoke-static {p0}, Lcom/android/internal/telephony/MccTable;->entryForMcc(I)Lcom/android/internal/telephony/MccTable$MccEntry;

    move-result-object v0

    .local v0, "entry":Lcom/android/internal/telephony/MccTable$MccEntry;
    if-nez v0, :cond_0

    return-object v5

    :cond_0
    new-instance v1, Ljava/util/Locale;

    const-string v3, ""

    iget-object v4, v0, Lcom/android/internal/telephony/MccTable$MccEntry;->mIso:Ljava/lang/String;

    invoke-direct {v1, v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v1, "locale":Ljava/util/Locale;
    invoke-static {v1}, Llibcore/icu/TimeZoneNames;->forLocale(Ljava/util/Locale;)[Ljava/lang/String;

    move-result-object v2

    .local v2, "tz":[Ljava/lang/String;
    array-length v3, v2

    if-nez v3, :cond_1

    return-object v5

    :cond_1
    aget-object v3, v2, v6

    return-object v3
.end method

.method private static entryForMcc(I)Lcom/android/internal/telephony/MccTable$MccEntry;
    .locals 4
    .param p0, "mcc"    # I

    .prologue
    const/4 v3, 0x0

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, ""

    invoke-direct {v1, p0, v2, v3}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    .local v1, "m":Lcom/android/internal/telephony/MccTable$MccEntry;
    sget-object v2, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    invoke-static {v2, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    .local v0, "index":I
    if-gez v0, :cond_0

    const/4 v2, 0x0

    return-object v2

    :cond_0
    sget-object v2, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/MccTable$MccEntry;

    return-object v2
.end method

.method private static getLocaleForLanguageCountry(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "language"    # Ljava/lang/String;
    .param p2, "country"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x0

    if-nez p1, :cond_0

    const-string v9, "MccTable"

    const-string v10, "getLocaleForLanguageCountry: skipping no language"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v12

    :cond_0
    if-nez p2, :cond_1

    const-string p2, ""

    :cond_1
    new-instance v8, Ljava/util/Locale;

    invoke-direct {v8, p1, p2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v8, "target":Ljava/util/Locale;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v6

    .local v6, "localeArray":[Ljava/lang/String;
    new-instance v7, Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .local v7, "locales":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v9, "ar-XB"

    invoke-interface {v7, v9}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const-string v9, "en-XA"

    invoke-interface {v7, v9}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .local v3, "languageMatches":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "locale$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .local v4, "locale":Ljava/lang/String;
    const/16 v9, 0x5f

    const/16 v10, 0x2d

    invoke-virtual {v4, v9, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v2

    .local v2, "l":Ljava/util/Locale;
    if-eqz v2, :cond_2

    const-string v9, "und"

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    const-string v9, "MccTable"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getLocaleForLanguageCountry: got perfect match: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_3
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v2    # "l":Ljava/util/Locale;
    .end local v3    # "languageMatches":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    .end local v4    # "locale":Ljava/lang/String;
    .end local v5    # "locale$iterator":Ljava/util/Iterator;
    .end local v6    # "localeArray":[Ljava/lang/String;
    .end local v7    # "locales":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v9, "MccTable"

    const-string v10, "getLocaleForLanguageCountry: exception"

    invoke-static {v9, v10, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v12

    .restart local v3    # "languageMatches":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    .restart local v5    # "locale$iterator":Ljava/util/Iterator;
    .restart local v6    # "localeArray":[Ljava/lang/String;
    .restart local v7    # "locales":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    :try_start_1
    invoke-static {v8, v3}, Lcom/android/internal/telephony/MccTable;->chooseBestFallback(Ljava/util/Locale;Ljava/util/List;)Ljava/util/Locale;

    move-result-object v0

    .local v0, "bestMatch":Ljava/util/Locale;
    if-eqz v0, :cond_5

    const-string v9, "MccTable"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getLocaleForLanguageCountry: got a language-only match: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_5
    const-string v9, "MccTable"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getLocaleForLanguageCountry: no locales for language "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static getLocaleFromMcc(Landroid/content/Context;ILjava/lang/String;)Ljava/util/Locale;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mcc"    # I
    .param p2, "simLanguage"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    if-nez p2, :cond_0

    invoke-static {p1}, Lcom/android/internal/telephony/MccTable;->defaultLanguageForMcc(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "language":Ljava/lang/String;
    :goto_0
    invoke-static {p1}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "country":Ljava/lang/String;
    const-string v3, "MccTable"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getLocaleFromMcc("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, v1, v0}, Lcom/android/internal/telephony/MccTable;->getLocaleForLanguageCountry(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v2

    .local v2, "locale":Ljava/util/Locale;
    if-nez v2, :cond_1

    if-eqz p2, :cond_1

    invoke-static {p1}, Lcom/android/internal/telephony/MccTable;->defaultLanguageForMcc(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "MccTable"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[retry ] getLocaleFromMcc("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, v6, v0}, Lcom/android/internal/telephony/MccTable;->getLocaleForLanguageCountry(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v3

    return-object v3

    .end local v0    # "country":Ljava/lang/String;
    .end local v1    # "language":Ljava/lang/String;
    .end local v2    # "locale":Ljava/util/Locale;
    :cond_0
    move-object v1, p2

    .restart local v1    # "language":Ljava/lang/String;
    goto :goto_0

    .restart local v0    # "country":Ljava/lang/String;
    .restart local v2    # "locale":Ljava/util/Locale;
    :cond_1
    return-object v2
.end method

.method private static setTimezoneFromMccIfNeeded(Landroid/content/Context;I)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mcc"    # I

    .prologue
    const-string v3, "persist.sys.timezone"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "timezone":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    invoke-static {p1}, Lcom/android/internal/telephony/MccTable;->defaultTimeZoneForMcc(I)Ljava/lang/String;

    move-result-object v2

    .local v2, "zoneId":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .local v0, "alarm":Landroid/app/AlarmManager;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    const-string v3, "MccTable"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "timezone set to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "alarm":Landroid/app/AlarmManager;
    .end local v2    # "zoneId":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private static setWifiCountryCodeFromMcc(Landroid/content/Context;I)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mcc"    # I

    .prologue
    invoke-static {p1}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "country":Ljava/lang/String;
    const-string v2, "MccTable"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WIFI_COUNTRY_CODE set to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "wifi"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .local v1, "wM":Landroid/net/wifi/WifiManager;
    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/WifiManager;->setCountryCode(Ljava/lang/String;Z)V

    return-void
.end method

.method public static smallestDigitsMccForMnc(I)I
    .locals 2
    .param p0, "mcc"    # I

    .prologue
    invoke-static {p0}, Lcom/android/internal/telephony/MccTable;->entryForMcc(I)Lcom/android/internal/telephony/MccTable$MccEntry;

    move-result-object v0

    .local v0, "entry":Lcom/android/internal/telephony/MccTable$MccEntry;
    if-nez v0, :cond_0

    const/4 v1, 0x2

    return v1

    :cond_0
    iget v1, v0, Lcom/android/internal/telephony/MccTable$MccEntry;->mSmallestDigitsMnc:I

    return v1
.end method

.method public static updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mccmnc"    # Ljava/lang/String;
    .param p2, "fromServiceState"    # Z

    .prologue
    const/4 v11, 0x0

    const-string v8, "MccTable"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateMccMncConfiguration mccmnc=\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\' fromServiceState="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v8, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v8, :cond_0

    const-string v8, "persist.sys.override_mcc"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, "overrideMcc":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    move-object p1, v6

    const-string v8, "MccTable"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateMccMncConfiguration overriding mccmnc=\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v6    # "overrideMcc":Ljava/lang/String;
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getSimOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    .local v1, "defaultMccMnc":Ljava/lang/String;
    const-string v8, "MccTable"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateMccMncConfiguration defaultMccMnc="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    const/4 v9, 0x3

    :try_start_0
    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .local v4, "mcc":I
    const/4 v8, 0x3

    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .local v5, "mnc":I
    const-string v8, "MccTable"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateMccMncConfiguration: mcc="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mnc="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_1

    invoke-static {p0, v4}, Lcom/android/internal/telephony/MccTable;->setTimezoneFromMccIfNeeded(Landroid/content/Context;I)V

    :cond_1
    if-eqz p2, :cond_3

    invoke-static {p0, v4}, Lcom/android/internal/telephony/MccTable;->setWifiCountryCodeFromMcc(Landroid/content/Context;I)V

    .end local v1    # "defaultMccMnc":Ljava/lang/String;
    .end local v4    # "mcc":I
    .end local v5    # "mnc":I
    :cond_2
    :goto_0
    return-void

    .restart local v1    # "defaultMccMnc":Ljava/lang/String;
    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/NumberFormatException;
    const-string v8, "MccTable"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error parsing IMSI: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .end local v3    # "e":Ljava/lang/NumberFormatException;
    .restart local v4    # "mcc":I
    .restart local v5    # "mnc":I
    :cond_3
    :try_start_1
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .local v0, "config":Landroid/content/res/Configuration;
    const/4 v7, 0x0

    .local v7, "updateConfig":Z
    if-eqz v4, :cond_5

    iput v4, v0, Landroid/content/res/Configuration;->mcc:I

    if-nez v5, :cond_4

    const v5, 0xffff

    .end local v5    # "mnc":I
    :cond_4
    iput v5, v0, Landroid/content/res/Configuration;->mnc:I

    const/4 v7, 0x1

    :cond_5
    if-eqz v7, :cond_6

    const-string v8, "MccTable"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateMccMncConfiguration updateConfig config="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v8

    invoke-interface {v8, v0}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .end local v0    # "config":Landroid/content/res/Configuration;
    .end local v7    # "updateConfig":Z
    :catch_1
    move-exception v2

    .local v2, "e":Landroid/os/RemoteException;
    const-string v8, "MccTable"

    const-string v9, "Can\'t update configuration"

    invoke-static {v8, v9, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v0    # "config":Landroid/content/res/Configuration;
    .restart local v7    # "updateConfig":Z
    :cond_6
    :try_start_2
    const-string v8, "MccTable"

    const-string v9, "updateMccMncConfiguration nothing to update"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .end local v0    # "config":Landroid/content/res/Configuration;
    .end local v1    # "defaultMccMnc":Ljava/lang/String;
    .end local v4    # "mcc":I
    .end local v7    # "updateConfig":Z
    :cond_7
    if-eqz p2, :cond_2

    invoke-static {p0, v11}, Lcom/android/internal/telephony/MccTable;->setWifiCountryCodeFromMcc(Landroid/content/Context;I)V

    goto :goto_0
.end method
