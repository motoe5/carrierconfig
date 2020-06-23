.class public Lcom/android/carrierconfig/DefaultCarrierConfigService;
.super Landroid/service/carrier/CarrierService;
.source "DefaultCarrierConfigService.java"


# instance fields
.field private mFactory:Lorg/xmlpull/v1/XmlPullParserFactory;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/service/carrier/CarrierService;-><init>()V

    .line 47
    const-string/jumbo v0, "DefaultCarrierConfigService"

    const-string/jumbo v1, "Service created"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/carrierconfig/DefaultCarrierConfigService;->mFactory:Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 49
    return-void
.end method

.method static checkFilters(Lorg/xmlpull/v1/XmlPullParser;Landroid/service/carrier/CarrierIdentifier;)Z
    .locals 8
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "id"    # Landroid/service/carrier/CarrierIdentifier;

    .prologue
    const/4 v7, 0x1

    .line 180
    const/4 v2, 0x1

    .line 181
    .local v2, "result":Z
    const/4 v1, 0x0

    .end local v2    # "result":Z
    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v4

    if-ge v1, v4, :cond_12

    .line 182
    invoke-interface {p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, "attribute":Ljava/lang/String;
    invoke-interface {p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    .line 184
    .local v3, "value":Ljava/lang/String;
    const-string/jumbo v4, "mcc"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 186
    if-eqz v2, :cond_8

    invoke-virtual {p1}, Landroid/service/carrier/CarrierIdentifier;->getMcc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 181
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 184
    :cond_0
    const-string/jumbo v4, "mnc"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 189
    if-eqz v2, :cond_9

    invoke-virtual {p1}, Landroid/service/carrier/CarrierIdentifier;->getMnc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .local v2, "result":Z
    goto :goto_1

    .line 184
    .end local v2    # "result":Z
    :cond_1
    const-string/jumbo v4, "gid1"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 192
    if-eqz v2, :cond_a

    invoke-virtual {p1}, Landroid/service/carrier/CarrierIdentifier;->getGid1()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .restart local v2    # "result":Z
    goto :goto_1

    .line 184
    .end local v2    # "result":Z
    :cond_2
    const-string/jumbo v4, "gid2"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 195
    if-eqz v2, :cond_b

    invoke-virtual {p1}, Landroid/service/carrier/CarrierIdentifier;->getGid2()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .restart local v2    # "result":Z
    goto :goto_1

    .line 184
    .end local v2    # "result":Z
    :cond_3
    const-string/jumbo v4, "spn"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 199
    if-eqz v2, :cond_c

    invoke-virtual {p1}, Landroid/service/carrier/CarrierIdentifier;->getSpn()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v7}, Lcom/android/carrierconfig/DefaultCarrierConfigService;->matchMultiAttributeValues(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    .restart local v2    # "result":Z
    goto :goto_1

    .line 184
    .end local v2    # "result":Z
    :cond_4
    const-string/jumbo v4, "imsi"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 202
    if-eqz v2, :cond_d

    invoke-static {v3, p1}, Lcom/android/carrierconfig/DefaultCarrierConfigService;->matchOnImsi(Ljava/lang/String;Landroid/service/carrier/CarrierIdentifier;)Z

    move-result v2

    .restart local v2    # "result":Z
    goto :goto_1

    .line 184
    .end local v2    # "result":Z
    :cond_5
    const-string/jumbo v4, "device"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 206
    if-eqz v2, :cond_e

    sget-object v4, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/carrierconfig/DefaultCarrierConfigService;->matchMultiAttributeValues(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    .restart local v2    # "result":Z
    goto :goto_1

    .line 184
    .end local v2    # "result":Z
    :cond_6
    const-string/jumbo v4, "customerid"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 211
    if-eqz v2, :cond_f

    .line 213
    const-string/jumbo v4, "ro.mot.build.customerid"

    const-string/jumbo v5, ""

    .line 212
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v7}, Lcom/android/carrierconfig/DefaultCarrierConfigService;->matchMultiAttributeValues(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    .restart local v2    # "result":Z
    goto/16 :goto_1

    .line 184
    .end local v2    # "result":Z
    :cond_7
    const-string/jumbo v4, "carrierid"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 218
    if-eqz v2, :cond_10

    .line 220
    const-string/jumbo v4, "ro.carrier"

    const-string/jumbo v5, ""

    .line 219
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .restart local v2    # "result":Z
    goto/16 :goto_1

    .line 186
    .end local v2    # "result":Z
    :cond_8
    const/4 v2, 0x0

    .local v2, "result":Z
    goto/16 :goto_1

    .line 189
    .end local v2    # "result":Z
    :cond_9
    const/4 v2, 0x0

    .restart local v2    # "result":Z
    goto/16 :goto_1

    .line 192
    .end local v2    # "result":Z
    :cond_a
    const/4 v2, 0x0

    .restart local v2    # "result":Z
    goto/16 :goto_1

    .line 195
    .end local v2    # "result":Z
    :cond_b
    const/4 v2, 0x0

    .restart local v2    # "result":Z
    goto/16 :goto_1

    .line 199
    .end local v2    # "result":Z
    :cond_c
    const/4 v2, 0x0

    .restart local v2    # "result":Z
    goto/16 :goto_1

    .line 202
    .end local v2    # "result":Z
    :cond_d
    const/4 v2, 0x0

    .restart local v2    # "result":Z
    goto/16 :goto_1

    .line 206
    .end local v2    # "result":Z
    :cond_e
    const/4 v2, 0x0

    .restart local v2    # "result":Z
    goto/16 :goto_1

    .line 211
    .end local v2    # "result":Z
    :cond_f
    const/4 v2, 0x0

    .restart local v2    # "result":Z
    goto/16 :goto_1

    .line 218
    .end local v2    # "result":Z
    :cond_10
    const/4 v2, 0x0

    .restart local v2    # "result":Z
    goto/16 :goto_1

    .line 224
    .end local v2    # "result":Z
    :cond_11
    const-string/jumbo v4, "DefaultCarrierConfigService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unknown attribute "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    const/4 v2, 0x0

    .line 226
    .restart local v2    # "result":Z
    goto/16 :goto_1

    .line 229
    .end local v0    # "attribute":Ljava/lang/String;
    .end local v2    # "result":Z
    .end local v3    # "value":Ljava/lang/String;
    :cond_12
    return v2
.end method

.method static matchMultiAttributeValues(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 5
    .param p0, "values"    # Ljava/lang/String;
    .param p1, "MatchData"    # Ljava/lang/String;
    .param p2, "useStrictComparation"    # Z

    .prologue
    const/4 v4, 0x1

    .line 281
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    .line 282
    const-string/jumbo v2, "[|]"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 283
    .local v1, "valueArray":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 284
    if-eqz p2, :cond_0

    .line 285
    aget-object v2, v1, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 286
    return v4

    .line 289
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 290
    return v4

    .line 283
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 295
    .end local v0    # "i":I
    .end local v1    # "valueArray":[Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    return v2
.end method

.method static matchOnImsi(Ljava/lang/String;Landroid/service/carrier/CarrierIdentifier;)Z
    .locals 5
    .param p0, "xmlImsi"    # Ljava/lang/String;
    .param p1, "id"    # Landroid/service/carrier/CarrierIdentifier;

    .prologue
    .line 242
    const/4 v2, 0x0

    .line 244
    .local v2, "matchFound":Z
    invoke-virtual {p1}, Landroid/service/carrier/CarrierIdentifier;->getImsi()Ljava/lang/String;

    move-result-object v0

    .line 246
    .local v0, "currentImsi":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 247
    const/4 v4, 0x2

    invoke-static {p0, v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 248
    .local v1, "imsiPattern":Ljava/util/regex/Pattern;
    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 249
    .local v3, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    .line 251
    .end local v1    # "imsiPattern":Ljava/util/regex/Pattern;
    .end local v2    # "matchFound":Z
    .end local v3    # "matcher":Ljava/util/regex/Matcher;
    :cond_0
    return v2
.end method

.method static readConfigFromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/service/carrier/CarrierIdentifier;)Landroid/os/PersistableBundle;
    .locals 5
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "id"    # Landroid/service/carrier/CarrierIdentifier;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 127
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 129
    .local v0, "config":Landroid/os/PersistableBundle;
    if-nez p0, :cond_0

    .line 130
    return-object v0

    .line 136
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .local v2, "event":I
    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    .line 137
    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const-string/jumbo v3, "carrier_config"

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 139
    invoke-static {p0, p1}, Lcom/android/carrierconfig/DefaultCarrierConfigService;->checkFilters(Lorg/xmlpull/v1/XmlPullParser;Landroid/service/carrier/CarrierIdentifier;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 142
    invoke-static {p0}, Landroid/os/PersistableBundle;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 143
    .local v1, "configFragment":Landroid/os/PersistableBundle;
    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->putAll(Landroid/os/PersistableBundle;)V

    goto :goto_0

    .line 147
    .end local v1    # "configFragment":Landroid/os/PersistableBundle;
    :cond_1
    return-object v0
.end method


# virtual methods
.method public onLoadConfig(Landroid/service/carrier/CarrierIdentifier;)Landroid/os/PersistableBundle;
    .locals 9
    .param p1, "id"    # Landroid/service/carrier/CarrierIdentifier;

    .prologue
    const/4 v8, 0x0

    .line 61
    const-string/jumbo v6, "DefaultCarrierConfigService"

    const-string/jumbo v7, "Config being fetched"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    if-nez p1, :cond_0

    .line 64
    return-object v8

    .line 68
    :cond_0
    const/4 v0, 0x0

    .line 70
    .local v0, "config":Landroid/os/PersistableBundle;
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :try_start_1
    iget-object v6, p0, Lcom/android/carrierconfig/DefaultCarrierConfigService;->mFactory:Lorg/xmlpull/v1/XmlPullParserFactory;

    if-nez v6, :cond_1

    .line 72
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v6

    iput-object v6, p0, Lcom/android/carrierconfig/DefaultCarrierConfigService;->mFactory:Lorg/xmlpull/v1/XmlPullParserFactory;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :try_start_2
    monitor-exit p0

    .line 76
    iget-object v6, p0, Lcom/android/carrierconfig/DefaultCarrierConfigService;->mFactory:Lorg/xmlpull/v1/XmlPullParserFactory;

    invoke-virtual {v6}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 77
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "carrier_config_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/service/carrier/CarrierIdentifier;->getMcc()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/service/carrier/CarrierIdentifier;->getMnc()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ".xml"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 78
    .local v2, "fileName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/carrierconfig/DefaultCarrierConfigService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    const-string/jumbo v7, "utf-8"

    invoke-interface {v3, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 79
    invoke-static {v3, p1}, Lcom/android/carrierconfig/DefaultCarrierConfigService;->readConfigFromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/service/carrier/CarrierIdentifier;)Landroid/os/PersistableBundle;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    .line 88
    .end local v2    # "fileName":Ljava/lang/String;
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .local v0, "config":Landroid/os/PersistableBundle;
    :goto_0
    invoke-virtual {p0}, Lcom/android/carrierconfig/DefaultCarrierConfigService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/high16 v7, 0x7f020000

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v5

    .line 90
    .local v5, "vendorInput":Lorg/xmlpull/v1/XmlPullParser;
    :try_start_3
    invoke-static {v5, p1}, Lcom/android/carrierconfig/DefaultCarrierConfigService;->readConfigFromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/service/carrier/CarrierIdentifier;)Landroid/os/PersistableBundle;

    move-result-object v4

    .line 91
    .local v4, "vendorConfig":Landroid/os/PersistableBundle;
    invoke-virtual {v0, v4}, Landroid/os/PersistableBundle;->putAll(Landroid/os/PersistableBundle;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1

    .line 97
    .end local v4    # "vendorConfig":Landroid/os/PersistableBundle;
    :goto_1
    return-object v0

    .line 70
    .end local v5    # "vendorInput":Lorg/xmlpull/v1/XmlPullParser;
    .local v0, "config":Landroid/os/PersistableBundle;
    :catchall_0
    move-exception v6

    :try_start_4
    monitor-exit p0

    throw v6
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0

    .line 81
    :catch_0
    move-exception v1

    .line 82
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "DefaultCarrierConfigService"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    new-instance v0, Landroid/os/PersistableBundle;

    .end local v0    # "config":Landroid/os/PersistableBundle;
    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .local v0, "config":Landroid/os/PersistableBundle;
    goto :goto_0

    .line 93
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v5    # "vendorInput":Lorg/xmlpull/v1/XmlPullParser;
    :catch_1
    move-exception v1

    .line 94
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string/jumbo v6, "DefaultCarrierConfigService"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
