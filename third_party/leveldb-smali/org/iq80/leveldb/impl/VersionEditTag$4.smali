.class final enum Lorg/iq80/leveldb/impl/VersionEditTag$4;
.super Lorg/iq80/leveldb/impl/VersionEditTag;
.source "VersionEditTag.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/iq80/leveldb/impl/VersionEditTag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p3, "persistentId"    # I

    .prologue
    .line 95
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/iq80/leveldb/impl/VersionEditTag;-><init>(Ljava/lang/String;IILorg/iq80/leveldb/impl/VersionEditTag$1;)V

    return-void
.end method


# virtual methods
.method public readValue(Lorg/iq80/leveldb/util/SliceInput;Lorg/iq80/leveldb/impl/VersionEdit;)V
    .locals 2
    .param p1, "sliceInput"    # Lorg/iq80/leveldb/util/SliceInput;
    .param p2, "versionEdit"    # Lorg/iq80/leveldb/impl/VersionEdit;

    .prologue
    .line 100
    invoke-static {p1}, Lorg/iq80/leveldb/util/VariableLengthQuantity;->readVariableLengthLong(Lorg/iq80/leveldb/util/SliceInput;)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lorg/iq80/leveldb/impl/VersionEdit;->setNextFileNumber(J)V

    .line 101
    return-void
.end method

.method public writeValue(Lorg/iq80/leveldb/util/SliceOutput;Lorg/iq80/leveldb/impl/VersionEdit;)V
    .locals 4
    .param p1, "sliceOutput"    # Lorg/iq80/leveldb/util/SliceOutput;
    .param p2, "versionEdit"    # Lorg/iq80/leveldb/impl/VersionEdit;

    .prologue
    .line 106
    invoke-virtual {p2}, Lorg/iq80/leveldb/impl/VersionEdit;->getNextFileNumber()Ljava/lang/Long;

    move-result-object v0

    .line 107
    .local v0, "nextFileNumber":Ljava/lang/Long;
    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {p0}, Lorg/iq80/leveldb/impl/VersionEditTag$4;->getPersistentId()I

    move-result v1

    invoke-static {v1, p1}, Lorg/iq80/leveldb/util/VariableLengthQuantity;->writeVariableLengthInt(ILorg/iq80/leveldb/util/SliceOutput;)V

    .line 109
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3, p1}, Lorg/iq80/leveldb/util/VariableLengthQuantity;->writeVariableLengthLong(JLorg/iq80/leveldb/util/SliceOutput;)V

    .line 111
    :cond_0
    return-void
.end method
