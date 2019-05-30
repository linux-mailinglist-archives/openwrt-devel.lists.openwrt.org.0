Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23E832FF7B
	for <lists+openwrt-devel@lfdr.de>; Thu, 30 May 2019 17:35:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:In-Reply-To:
	References:Message-ID:Date:To:From:Reply-To:Cc:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=STNim97wu0FThvv+D7bfrtiH8l7ZYuAF3A4XY+6Nhbs=; b=h2HXPoPpkyYidx
	RG2qdWUQsI1rCUHacktSw02OtjeNsyUNWntqFCFNvpC/6mceQhGr6MSDE+otv5HzU+O10jen6tCPx
	S7/e5fuaA+ZMgJwsetgF3TrLW/l7pbL14kBx6oFABknuIQfTaf8L8XKYHbAzNKAPYBjftFmopmw2F
	TsV30/d9z4ZJXSXN+Ru4IHFvM6WduX2BcYoHIiNz1g6pzfcCWmAOLHkOsA9+gVt6MbkiRJkrpltPG
	mrIXo5Nwjq+/yWzaJq70eM+hMMNNwoxaZVo3X+3Acao5MOlBuniWc5wP2fYHfJEVn9oaGp/+7rs2B
	IjpZQja7otMLvlhHS8mw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWN5d-0004Pr-Ut; Thu, 30 May 2019 15:35:37 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWN5W-0004PO-8x
 for openwrt-devel@lists.openwrt.org; Thu, 30 May 2019 15:35:32 +0000
Received-SPF: Pass (esa5.microchip.iphmx.com: domain of
 Sandeep.Sheriker@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Sandeep.Sheriker@microchip.com";
 x-sender="Sandeep.Sheriker@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa5.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Sandeep.Sheriker@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa5.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Sandeep.Sheriker@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
X-IronPort-AV: E=Sophos;i="5.60,531,1549954800"; d="scan'208";a="33603742"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 30 May 2019 08:35:27 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.87.72) by
 chn-vm-ex01.mchp-main.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 30 May 2019 08:33:59 -0700
Received: from NAM05-DM3-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Thu, 30 May 2019 08:33:59 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector1-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tKSxSnNECFwAgeTCFTSq7gMZ0ue6255ckfjAA6soRDs=;
 b=R54UNop8Rc7U7SahsPdeclIzjjE3RfQS9p236EbUVJOxX7xCaJ+MJkA8kpg0VS7g7GaAEIYo7UnfRAoo120OvDK11xbJAlX7rdWTBoTjlDJq2gXl9asYWgXFZderF3M1G9lGwzWFvbssJWDLW1LIz/V1W324NLSTbywwYyA193g=
Received: from BYAPR11MB3157.namprd11.prod.outlook.com (20.177.126.222) by
 BYAPR11MB3207.namprd11.prod.outlook.com (20.177.127.156) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.18; Thu, 30 May 2019 15:33:57 +0000
Received: from BYAPR11MB3157.namprd11.prod.outlook.com
 ([fe80::c05:e2:ad3d:58b1]) by BYAPR11MB3157.namprd11.prod.outlook.com
 ([fe80::c05:e2:ad3d:58b1%3]) with mapi id 15.20.1922.021; Thu, 30 May 2019
 15:33:57 +0000
From: <Sandeep.Sheriker@microchip.com>
To: <hauke@hauke-m.de>, <openwrt-devel@lists.openwrt.org>
Thread-Topic: [OpenWrt-Devel] [OpenWrt-Devel, 3/7] at91: Generate sdcard
 images for at91sam9x5ek boards.
Thread-Index: AQHVFXqaZAvlyx8Pi0ilGiZAoUbYtKaDkIUAgAA+S4A=
Date: Thu, 30 May 2019 15:33:57 +0000
Message-ID: <BYAPR11MB31572F39882A61755058C3AC82180@BYAPR11MB3157.namprd11.prod.outlook.com>
References: <cover.1559063195.git.sandeep.sheriker@microchip.com>
 <15eeaa33f9e573d2078fcdce24d3dd6514d2bb3d.1559063196.git.sandeep.sheriker@microchip.com>
 <f1b03c6d-b831-080f-1cd9-8581c792819f@hauke-m.de>
In-Reply-To: <f1b03c6d-b831-080f-1cd9-8581c792819f@hauke-m.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [198.175.253.81]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0fdee3c1-66d9-4723-0d84-08d6e5143b14
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:BYAPR11MB3207; 
x-ms-traffictypediagnostic: BYAPR11MB3207:
x-microsoft-antispam-prvs: <BYAPR11MB3207610148CE90321718332982180@BYAPR11MB3207.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:785;
x-forefront-prvs: 00531FAC2C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(39860400002)(396003)(366004)(136003)(346002)(13464003)(189003)(199004)(99286004)(229853002)(14454004)(7696005)(6246003)(11346002)(478600001)(446003)(76176011)(74316002)(476003)(110136005)(6506007)(66476007)(25786009)(64756008)(66446008)(2906002)(66556008)(6116002)(3846002)(316002)(76116006)(66946007)(72206003)(73956011)(5660300002)(53546011)(53936002)(8936002)(81166006)(68736007)(486006)(8676002)(2501003)(14444005)(256004)(52536014)(55016002)(9686003)(102836004)(305945005)(71190400001)(186003)(33656002)(71200400001)(81156014)(7736002)(6436002)(66066001)(26005)(86362001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR11MB3207;
 H:BYAPR11MB3157.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: /46rqtwPcURi/D1dQ3264o3gSYK4Jfwnre0UXfeoQ4vfrAmLfi29Jx66VmUg37JBc/HkHGGVvuUwWXGyh89mUhGvRLZL12P26RllHlXqONHn1zbggoIb4O373BIjYFhfEe3U8q4l2C+nm92pkm95KNf4diZrnn0q8Sxvs+J/sdDWSp5aextq/zwFSIE/bYThCT168T5iFhwya+w2bsSuFsF7/06MC3B+Fdos41iZmg4wLkIVSIyl94Zv/1CtvMW6sDtZ3WJk5yWkLaJKfU9p7bkyQHgstPDCFDtfU44PZK/8WG8OyCU990LNk01vwK0GIgdOAuv4RUFor61/2I0woOx0piiHVrY6/vqoaQ7JJepVDZQdWuxqUUZU4Hn2Wbs2GmODmZsWe4SWgJYNe2av+RxdedpvrmdjgRl5+PQafA8=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 0fdee3c1-66d9-4723-0d84-08d6e5143b14
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 May 2019 15:33:57.1131 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sandeepsheriker.mallikarjun@microchip.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3207
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_083530_492836_70E1E5DC 
X-CRM114-Status: GOOD (  12.60  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.150.166 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [OpenWrt-Devel,
 3/7] at91: Generate sdcard images for at91sam9x5ek boards.
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org



> -----Original Message-----
> From: Hauke Mehrtens <hauke@hauke-m.de>
> Sent: Thursday, May 30, 2019 4:50 AM
> To: Sandeep Sheriker Mallikarjun - C17018
> <Sandeep.Sheriker@microchip.com>; openwrt-devel@lists.openwrt.org
> Cc: Sandeep Sheriker Mallikarjun - C17018
> <Sandeep.Sheriker@microchip.com>
> Subject: Re: [OpenWrt-Devel] [OpenWrt-Devel, 3/7] at91: Generate sdcard
> images for at91sam9x5ek boards.
> 
> External E-Mail
> 
> 
> On 5/28/19 7:21 PM, Sandeep Sheriker M wrote:
> > From: Sandeep Sheriker Mallikarjun
> > <sandeepsheriker.mallikarjun@microchip.com>
> >
> > Signed-off-by: Sandeep Sheriker Mallikarjun
> > <sandeepsheriker.mallikarjun@microchip.com>
> > Signed-off-by: Sandeep Sheriker M <sandeep.sheriker@microchip.com>
> > ---
> >  target/linux/at91/image/Makefile | 8 +++++++-
> > target/linux/at91/image/sam9x.mk | 5 +++++
> >  2 files changed, 12 insertions(+), 1 deletion(-)
> >
> > diff --git a/target/linux/at91/image/Makefile
> > b/target/linux/at91/image/Makefile
> > index e4c17e3..5b1433c 100644
> > --- a/target/linux/at91/image/Makefile
> > +++ b/target/linux/at91/image/Makefile
> > @@ -51,13 +51,19 @@ define Build/at91-sdcard
> >       mcopy -i $@.boot $(DTS_DIR)/$(dts).dtb \
> >          ::$(dts).dtb)
> >
> > +  $(if $(findstring sama5,$(DEVICE_NAME)) , \
> >    mcopy -i $@.boot \
> >      $(BIN_DIR)/u-boot-$(DEVICE_NAME:at91-%=%)_mmc/u-boot.bin \
> >      ::u-boot.bin
> >
> >    mcopy -i $@.boot \
> >      $(BIN_DIR)/at91bootstrap-$(DEVICE_NAME:at91-
> %=%)sd*/at91bootstrap.bin \
> > -    ::BOOT.bin
> > +    ::BOOT.bin ,
> > +
> > +  mcopy -i $@.boot $(BIN_DIR)/u-boot-*_mmc/u-boot.bin ::u-boot.bin
> > +
> > +  mcopy -i $@.boot \
> > +    $(BIN_DIR)/at91bootstrap-*sd*/at91bootstrap.bin ::BOOT.bin)
> >
> 
> Wouldn't it be more maintainable to split the at91-sdcard build part into
> multiple parts?
> 
> Is it save to use at91bootstrap-*sd*/ ? are you sure it will take the correct
> file?
> 

Ignore this patch, will resend it by splitting them in to multiple parts.

> 
> >    ./gen_at91_sdcard_img.sh \
> >        $@.img \
_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
