Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C39B122127
	for <lists+openwrt-devel@lfdr.de>; Sat, 18 May 2019 03:44:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:In-Reply-To:
	References:Message-ID:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cfWglGoM8+mMrv8iDnDDkrji0QHy/WFjaBmzUumw8sg=; b=QCcVLU1gXmCTV7
	nrpNUAjfBsEOBNuiHCQY6w4YLcJ//ZA99kmprraTL9rZ6ZgacAQU1IkKDNNjCWFGnAbpzElCtzcup
	oH5WVpI2BDvxz2vIMMTmGf7EsGIS796KRT4orRVqzOoSuxD/YVDfcuihaSZOqkny4O70KWhOXPdXj
	U/1xh2z8baI6xi/vESgZqfbtyo8o0zmb3xfM187D1Ni4zB7gkpsusg1+cVGG7BH+52c8hiTsOB1Ai
	IYO9vOppniyLZW4wCMzwR10+nDYawtqjhJSyPHW9vnnEJk+BzKhg6S9DBWefEAdePPmd6SqVcPLtM
	DZ9to3LAb7mPYQ/p7/Tg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRoP0-00064P-O9; Sat, 18 May 2019 01:44:46 +0000
Received: from mail-oln040092064032.outbound.protection.outlook.com
 ([40.92.64.32] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRoOu-000644-CI
 for openwrt-devel@lists.openwrt.org; Sat, 18 May 2019 01:44:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=live.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UKOf26YnmQo0NOlPYovJJMuBCvMVYWnbD80ZE1LreHA=;
 b=OJ1I2Mn7fvT2+kj187vJMjCIxEqYIOtmyJRiouLO+oulNBTrZ2qNEMhSjbr0q79Yq430QU+eeWU/4l9IexS2bMSFSINp+kXfKwzM84M+30XBv5Cg5H0H1H84Xeob+MjwIhEGpAoxbyi04l1B/vZ+Lq0tNgsJNqUv26JHFrZ/Vx12AYjgc1BTSbQQwizWnngT5Y154169mAeRwiS4fklnqXqM6kQ4TWM4/tpWIZW3IJGW4e9ihML4+RQ85N67A0M8DN+bsI0aCylUvtZENDMQAn5IwDWBKkwBIK7zmofT5qzkGQFmiOAVbvukyNBAxqCRFey9j95pkCkFpcdkMRnMFA==
Received: from DB5EUR01FT014.eop-EUR01.prod.protection.outlook.com
 (10.152.4.55) by DB5EUR01HT086.eop-EUR01.prod.protection.outlook.com
 (10.152.5.125) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1856.11; Sat, 18 May
 2019 01:44:34 +0000
Received: from AM6PR03MB4821.eurprd03.prod.outlook.com (10.152.4.58) by
 DB5EUR01FT014.mail.protection.outlook.com (10.152.4.242) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.16 via Frontend Transport; Sat, 18 May 2019 01:44:34 +0000
Received: from AM6PR03MB4821.eurprd03.prod.outlook.com
 ([fe80::e5e2:30fd:1274:902b]) by AM6PR03MB4821.eurprd03.prod.outlook.com
 ([fe80::e5e2:30fd:1274:902b%7]) with mapi id 15.20.1900.010; Sat, 18 May 2019
 01:44:34 +0000
From: Tan Xiaofan <xfan1024@live.com>
To: Hans Dedecker <dedeckeh@gmail.com>, Tan Xiaofan <xfan1024@live.com>
Thread-Topic: [OpenWrt-Devel] [PATCH] interface-ip: fix find locally
 addressable target for p2p
Thread-Index: AQHVDAYgBLwIj4rXG0+Oxwt/mwR5+qZuCjiggAF4l4CAABB70IAAFtyAgABzmOA=
Date: Sat, 18 May 2019 01:44:33 +0000
Message-ID: <AM6PR03MB482111EBC8FAA966C555B69BB5040@AM6PR03MB4821.eurprd03.prod.outlook.com>
References: <AM6PR03MB4821E7027EF336E03B57C642B50A0@AM6PR03MB4821.eurprd03.prod.outlook.com>
 <CAJLcKsHrZ+SKkFz+w_Cb_aSztT9yB6p9xYdnc1c+Mdwh6ftOig@mail.gmail.com>
 <AM6PR03MB4821A0DBD99D2B7F7F49254DB50A0@AM6PR03MB4821.eurprd03.prod.outlook.com>
 <CAJLcKsFycig9BNYkh24CeFAjadb+wJgO4uqmaFp0Qa86P8WNtA@mail.gmail.com>
 <AM6PR03MB4821953F914D9BAF83521992B50A0@AM6PR03MB4821.eurprd03.prod.outlook.com>
 <CAJLcKsHoFxKzCuPQWW-pP8pOjQMiWVOs=ZL-Ms9baF9j-hDXNg@mail.gmail.com>
 <AM6PR03MB4821E5D7897A9ADAB7C60B50B50B0@AM6PR03MB4821.eurprd03.prod.outlook.com>
 <CAJLcKsET1OC9yUWOOtS-ySZ+q5K96ThGx+MkwDPVfFUD15bsNw@mail.gmail.com>
In-Reply-To: <CAJLcKsET1OC9yUWOOtS-ySZ+q5K96ThGx+MkwDPVfFUD15bsNw@mail.gmail.com>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:26CAA76CB5FAE40C05A6AB8845A78804A0074CCA2C79D41EB8F65DF3E1A6D6A4;
 UpperCasedChecksum:0F8BBA6EDD823AFA3408640B3A60C7973AA55874AA5D5404BB44950DF10E6D0B;
 SizeAsReceived:7451; Count:43
x-tmn: [iZnifFfL92Wm0TJzSGXLANQ2lN9KvMA/]
x-ms-publictraffictype: Email
x-incomingheadercount: 43
x-eopattributedmessage: 0
x-ms-exchange-slblob-mailprops: wGn/oxjRRS/5Q1t1GgQGADbmjjgstGrI2vtZjVxrdmfsybGyorKZI/h4htvOMT5YUIIHDwxlW3XS4wpYE2wDcg50che7fFD3m01REXbHp0T5wHrPUM3alCDNITAIAAj+wrOyx344WXjmOsFdYeAVsBho+8NocOi6bzpPUEX5/Se/kiiX70iP6z8yzFuia4xPfC+aqmYwZ3MrItzLKs6wixKgCwrRzYLPPXLrXuK4MmEdEr0FPqbGcBollTNrlWn8zRUlcx7EuUtZ9/qqeCYo8gNETMB5NnFnPR1d+MW74n7pgow7IbZ3eAfmHZYnHGRboHkd7wDOAS+PCEFHJ5kU70cmK5JRJA2aIoI9c/lKAkCCyFhugwd++6vN+G3mBzlCK/gRs8vhagcpbBeqYg23+Q/BCQL5RjuKMLVYQDxCEO9BZNKBAoV7MUWDkjF09MCHgJ9WnS9V4mEXkd0Cbd1dfLHnVGtDC/kdBjYdmB/Fnq0BjFMwmiflrZcj82WSIOkctd/k9beRfHgrx9pJfvj6rbufTrtq8GpE+8B1fwmeBi4RC3Izg2m65l39NvA8l1ZY5lrsnVbipZ5GvXiQpGRW03rrPcK7IRaIw5cHRukbtDmKxcvK2MKPxYqWvBwXZlpLYJlQB26P4LPANR65Medy185fa4bodvQMFYSMvzpHIM5hQxBNfLJ/QIc+qTFqerC7Jeo2xwCIj7XHExmQKyCWtna8AufNDQztDp7GOth+cQAcMoh90D2yMrq33foGogctoMd2bzIx0z57KZfhbmz3I+0p7emWEtwORGcy8K619EYVSczTyzu+GHHSvqr4J0WSBvevu43/NcF7hQCktrh0ohTPh2Z3fos+sftQ6U2lm6gUeaQmlDpv48eCB1bYrmeO
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(5050001)(7020095)(20181119110)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(201702181274)(2017031323274)(2017031324274)(2017031322404)(1601125500)(1603101475)(1701031045);
 SRVR:DB5EUR01HT086; 
x-ms-traffictypediagnostic: DB5EUR01HT086:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-message-info: zNEN+8+RisiAUCTVvKx7zOX5I/9deyt1YDsD8gLXBxgI9Ra55qpiSzwuk77nhOvzSlJpbQTwtu2Li7umGwkAn/6fXQRJuhA9yzAUquEHGBNX2hjzdgMnc9y6HjsznB7atYCJ/bK/Djcy7rrgRsHrLNd0l804lJaWdf/Jy8jM9fOgUTOicoPk2l+Ob5eUzBeg
MIME-Version: 1.0
X-OriginatorOrg: live.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 9bab2e99-1168-4416-b1a7-08d6db32612e
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 May 2019 01:44:34.4301 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB5EUR01HT086
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_184440_591949_A8193C6C 
X-CRM114-Status: UNSURE (   7.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.64.32 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (xfan1024[at]live.com)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (xfan1024[at]live.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH] interface-ip: fix find locally addressable
 target for p2p
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
Cc: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi, I tested the patch, it's work

> Thx for sharing the network config.
> I've slightly reworked the patch
> (https://git.openwrt.org/?p=project/netifd.git;a=commit;h=22e8e589fd6ab5d19dc1d3c9d1bcf2bfabf1fafb);
> can you give it a try ?

> Hans

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
