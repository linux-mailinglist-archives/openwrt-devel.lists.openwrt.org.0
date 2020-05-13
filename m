Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D54761D0C7E
	for <lists+openwrt-devel@lfdr.de>; Wed, 13 May 2020 11:42:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Content-ID:
	In-Reply-To:References:Message-ID:Date:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ri5j1ro1qHgB2YClDV5rBgV++TuQcFhGxlLQMnAMm7c=; b=ZXb4yngJXaclau
	eYKppLvXRnoCp8kpOX3Uarc2+2JUFF1UTPtlr7F/qCX3fzmKsXCldMzDl/Vh3tgGvLMwicc1fFYLV
	AT4/m+ZkCdRgZMGGXHBh1+kF4VEIKn99rA7YrnDz2ph40yreOM9YwCnjCLILrUoCU91AhpZzXO/r0
	9SzWZ/7C8uOwLkgGaHEN8xW/pHce8G4eSlcUrWOaV/i0JBldIuKWhsBL+Qm7lQyPw9JD5/JSECHn0
	r4TpSpwyyEsjEvZH+Qs6N2lJWqDXGQxEa33UsvwqP5LskVXc+/HhOkYJuFHPpfftadoBX4Jz1/6hc
	PV/jYAIjJG/034KOCbcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYntz-0004tW-TE; Wed, 13 May 2020 09:42:11 +0000
Received: from mail-am6eur05on2079.outbound.protection.outlook.com
 ([40.107.22.79] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYnts-0004sg-JH
 for openwrt-devel@lists.openwrt.org; Wed, 13 May 2020 09:42:05 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Usya0PaxWgMyhVeODc4zykMWCU9pX+GgSlvcv2yvxf/uMOZxjnvMPBmlZtZMAV+1sD4rwHoy5UvDITO7pYAnTyLG/OB0XbWMUBjESKUiZtl2+2a0hqG/SQzFVKOYXSkQKKsIbW37LroiwOdnSV9/2W3+LofD1wQNFyumHhH13xfsMRKp/5n8HbvyeA70ojN/TUJiQ+TvFCXruncAkH4redv+bgBUXDZ9Ko4xLSgy6dbY2UWRwkpGFnsw8WA8Fu55iidkoBB4kclxRgjuOyCLLphpy2gSCKIggvHT9l7EoRSrahVvKOxGBVZnZ0udbVuCoBV9SFjRiXSAQHyyVro5ow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CDqMp+w9/EhHgqpOF8DRLylTKmaj1Pbh+3pZAy/C+BA=;
 b=IUGKJgIGi5GmXrIMo5l7f3O5lFBXpres1zsMFnjvSs88YiWKaHrfu1dxXb2vL3ER0a+Z6Hpk/RFziGDKQztFLW7aCTCoqB5yteB1xk2eYbluyMVOZdrT7z9+K7WPp/dYGxJ3CF6TD6qK77R90RX0QUeART9ZggTFipxK/BRp/lOrMtqZ8C3/IEEGWbJ1gOVCLa/L9EI72RPcvZ24V8Du21Y/2UCXvPHWbNElELbCL6F4M3UVUJgQwjplZ83b0ypXrblXyBW9V61pbZGQTL1fa4mP/1SQPAAS+oEk6xF+6/T6xtVNiKsRGR3diX+9UURPztNfNgEARu7yRBuJn9BtYQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=darbyshire-bryant.me.uk; dmarc=pass action=none
 header.from=darbyshire-bryant.me.uk; dkim=pass
 header.d=darbyshire-bryant.me.uk; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=darbyshire-bryant.me.uk; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CDqMp+w9/EhHgqpOF8DRLylTKmaj1Pbh+3pZAy/C+BA=;
 b=myWu4pqRoGvK3G3V+gYCzDXo95ru33ZMTXbTdajHgaXBzANHYw+5koer1CPjy0f18IujRPjMtrPkuZGsqRqKbCEMqBuEEifNAthpquV1YxllV3Lo37LIGuXckt5nJlQ8r5vU/e4DK1Y03UGLcBHTXsghEH7RSpL8WYsfOfxAQb4=
Received: from VI1PR03MB4575.eurprd03.prod.outlook.com (2603:10a6:803:59::12)
 by VI1PR03MB4799.eurprd03.prod.outlook.com (2603:10a6:803:b7::28)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2979.33; Wed, 13 May
 2020 09:41:58 +0000
Received: from VI1PR03MB4575.eurprd03.prod.outlook.com
 ([fe80::982d:7d6a:5f6f:74a2]) by VI1PR03MB4575.eurprd03.prod.outlook.com
 ([fe80::982d:7d6a:5f6f:74a2%4]) with mapi id 15.20.2979.033; Wed, 13 May 2020
 09:41:58 +0000
From: Kevin 'ldir' Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>
To: Jo-Philipp Wich <jo@mein.io>
Thread-Topic: [OpenWrt-Devel] Sysupgrade and Failed to kill all processes
Thread-Index: AQHWKOXmc5jGZdIcyUKqbdYyr96NAailo7KAgAAHF4CAAAyTAIAADFUA
Date: Wed, 13 May 2020 09:41:58 +0000
Message-ID: <F4EFD3C0-3D02-4D0C-A119-44543C8F7781@darbyshire-bryant.me.uk>
References: <CAJQUmm6Y-XFYUivOBZoFB9teO9keaEmoHdnG07P6zP=ySkqs3g@mail.gmail.com>
 <86daec20-93b3-f5bb-8b38-98c0e2160d80@wwsnet.net>
 <CAJQUmm7tProVh=+JPp6owcEKQL5W4vUBwmiBNV7KLVMz4TNwqg@mail.gmail.com>
 <c3e4850c-ab4d-7770-7831-be479e8d7bea@wwsnet.net>
In-Reply-To: <c3e4850c-ab4d-7770-7831-be479e8d7bea@wwsnet.net>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3608.80.23.2.2)
authentication-results: mein.io; dkim=none (message not signed)
 header.d=none;mein.io; dmarc=none action=none
 header.from=darbyshire-bryant.me.uk;
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [2a02:c7f:1243:8e00::dc83]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0893206f-5d3c-4262-e609-08d7f721e1b1
x-ms-traffictypediagnostic: VI1PR03MB4799:
x-microsoft-antispam-prvs: <VI1PR03MB4799282E3527F056DBD140AEC9BF0@VI1PR03MB4799.eurprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:281;
x-forefront-prvs: 0402872DA1
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 4oh7fafH2XCt9DQNKlL2KtZuBOJGkTpmHD39d72KyU0/hslWWFcO5Jk7+mNpdCqTUY6Uv67pTYjje37UKGJdsFuJu7QXJrNEWrnTpnAZfdYUX4Awh8Hyms7shTCYtwYQteep+KaCokbJxrjVp1hJqOvh85fyK/3aTe2oxfkNoiYg5n6+41qS+zX7tXRD3a74RevH+538xUSMXmxAgXvelQ797t3HFLQzQEdIxqkWmamAqSv6hjxslTHWq/X2VyZ0FmAYeJvGJayodXSpI3NMBCDQqwvrNNwLnZlZAgpnKf7FgT68fz6BY26FFzTrktGRwxdpfVHJHjE25IvZxv+ZopMTfo6VZigfMIxzDoQSJ53zlOZy61jQZrEpDP+1PAUuG/UhKoKGd/YRLcE398B9//cPDaWrrPYKuAVjwwHGx/esu/He5SfwZ5F//WAXNjoL93EPhHHWg+gG8l6ZoFXBNHOiRM91krKsLBYzeHg09ULvvQFx6FZ0EWgIXDthvgI/gkliI6AY9rq59I9abUzi1Q==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR03MB4575.eurprd03.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(376002)(366004)(39830400003)(136003)(346002)(396003)(33430700001)(8676002)(64756008)(66556008)(33440700001)(86362001)(508600001)(91956017)(76116006)(6506007)(558084003)(6486002)(53546011)(6512007)(36756003)(5660300002)(71200400001)(66446008)(8936002)(33656002)(316002)(66946007)(66476007)(2616005)(186003)(6916009)(2906002)(4326008);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: wIibxWwptqo5gomNvkbeT0VoXXO01Cd7Ne/ha0vKfwjHpx3T8f3GX67rLnytAYDsku/y7FosdmhAiIkuuq1Ifqhwa7OrzF3pmiucE9VqyP+WR3+WpAw07Nrvp4wTpUHGDYGwKa27jHfErlK8KgNIBLWouV3sGkP4mQgJtTKMDyOU6YZItvqndKOeOC5/MssOLpPT66+ugAtUJ48QJP+Ql06yffv6kBBNGhb9yUJmFsLkI5BsITZleSAPVbuAGDHIbcdx2UeM2Dy2M6s5nLjxFuaI1txqjTGOfMJXf9CRXrDiIDn1glGERryE2yGHU4RDfvTk+dpqJRifJxLcimvLhzL9hfMkZnqKX1EALcu8gbNmLD2HdPvGhc/de2Th6I08RefVhxQo7AY3O1Uoie5b4RuEgeFeArw69AdWsvGnxqSmEiYiMbTBSwLhD+4Dei2bj4Vkif3UNncGA0WGC217N8N7BMIrtodc0EegzHTr9Ukyn9NAjlEO4YjCdRyNtDg68lEC6gopdS0RSqCINFSB4A==
x-ms-exchange-transport-forked: True
Content-ID: <9454DC93D5BF2640BB912DDC7A982E0F@eurprd03.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: darbyshire-bryant.me.uk
X-MS-Exchange-CrossTenant-Network-Message-Id: 0893206f-5d3c-4262-e609-08d7f721e1b1
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 May 2020 09:41:58.7858 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 9151708b-c553-406f-8e56-694f435154a4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Sv39dCsGvTkvrkryplOXRFtaXThoP9rqZJbBaVKYsGZoKvHKDoyhrOMod8mXsqRS6+zXA82TmiP8TDs8CRS+5wKI7t/2mplzN7mIosKw09A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR03MB4799
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_024204_702497_FF96EDAA 
X-CRM114-Status: UNSURE (   7.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.22.79 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.22.79 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] Sysupgrade and Failed to kill all processes
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org



> On 13 May 2020, at 09:57, Jo-Philipp Wich <jo@mein.io> wrote:
> 
> Hi,
> 
>> 
>>    That loop-kill-all thing should be a kind of last resort really, what's
>>    actually needed is some kind of "init 1" procd equivalent which shuts down all
>>    services in a more or less clean manner.
>> 

Beware the watchdog Luke.


Kevin
_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
