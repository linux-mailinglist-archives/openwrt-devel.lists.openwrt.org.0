Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 152431FCA94
	for <lists+openwrt-devel@lfdr.de>; Wed, 17 Jun 2020 12:15:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GDIOvggzmV83r2vWRg3hPKp0nRNbfmLto5q0YiUiiPQ=; b=TySWKtIoSDy0+x
	oYG45CZ+TQcKyWaPdvsO+jQ8dCgFkq4lV/OxuBB+9i2mPv2IcRJO8trLUIaFht2dbh193kNm8NB0M
	T3SBG+ML0fHs9+g2rXbRf9Xe3Z8Ds2DNAT+q7yz2I8/V0sljBq3bRe3x+EGUR0nZv+FzAv+McID0j
	Gb7d9h/hVsrPlAFIUPZuqbO9gBXfpniJkr607trdFwJWaWowIYVY0mOAffv21D3tJJRUHko/7MsFa
	GsN2ZCT1ST7fCw3gDuj/viIw5hiVk9+eWvBG0ZzWYtSsts91vsSgYeKuijRzv/tsCRhmb/C/z+UmN
	VSBPYp7gJxfKruCxVBaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlV6F-0004qT-P6; Wed, 17 Jun 2020 10:15:19 +0000
Received: from mail-eopbgr60093.outbound.protection.outlook.com ([40.107.6.93]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlV62-00038L-Jh
 for openwrt-devel@lists.openwrt.org; Wed, 17 Jun 2020 10:15:08 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YS+0A62ffz1POG9a12dUZzjnfLgplMyCr0T0f2jdxDZNEL/6dp76UAKlA6vvaiUtoELnfT3avX6gBBaonx7zpnM92BiaFmJql0TzFljfQWzRGkX1m08YHpE6PHYiFvfyznd+h53VSNa0QlNfkEcM9oqjQTEwCdbfMDxw4ICbek71zlkGbMZ2rc9d9xx3wBW2WIm3GDk4a0TRuCtR6o5tRD0IfajeAwHyOZCTGhTR3xS4XfFDHQ09+y3dXMgMe60I3H4ZtFjD3ms5FCuYEYwuHNHf7AhZF8cbUuY50NffuxbltSIj/UCDGMcgE0eWF8M9YRScvDyEedBL2c9huLkWNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MENnFHJAmijRstsGlbZ7J4glhyjy7jT+q5MPfUc6fHc=;
 b=bqloQPvjJCgoarJT/IuGY7iMw6U9oZaUd8HlVofBhH9p7DIN1SJlD9Bh/NxuE3RbhaiB+RNTdWFblBj01mD4YEg1aq5FxBKap7hSIriBneBAnox0f7gws+u0ZmUlZlDMiwkCrM1+7fj4/K89v8pLCY6hzMZVMQDBHdEZUzG0dH5qEAEdkSek2eUmEsRn0KbICc5MT2sFMlvcfIPUdgR9OWskCvRBgceakV3zblLNFSrPo4eI0W8JyMV7O/LSU6k+W2JGvGtkcMhZHkW4HH6i71YJZnbI/+o7qwXLxVDVmg1imO7RV5o6zd3ps8vhLfqIexB1BQcgR0jKNwMTNwBPJQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=acksys.fr; dmarc=pass action=none header.from=acksys.fr;
 dkim=pass header.d=acksys.fr; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ACKSYS.onmicrosoft.com; s=selector2-ACKSYS-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MENnFHJAmijRstsGlbZ7J4glhyjy7jT+q5MPfUc6fHc=;
 b=K22/MBi116vVQXU8qx/NcVaYdaU1Mt+N+IwNZ0/4cZR4y8XPyzzhgD/8FDqziVBHowVKTagHvhEFCbuVjF5B//1cuaIFcvbskVvMBzyCgLM33COiLrgGRMoiR8sTONj1eyHyFg1TQhStG6hgJIJ7Px9bZgfpSLR43C8wHTLYcM0=
Received: from AM0PR01MB5857.eurprd01.prod.exchangelabs.com
 (2603:10a6:208:159::28) by AM0PR01MB5330.eurprd01.prod.exchangelabs.com
 (2603:10a6:208:116::25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3088.21; Wed, 17 Jun
 2020 10:14:59 +0000
Received: from AM0PR01MB5857.eurprd01.prod.exchangelabs.com
 ([fe80::78f4:25bf:29b4:488d]) by AM0PR01MB5857.eurprd01.prod.exchangelabs.com
 ([fe80::78f4:25bf:29b4:488d%6]) with mapi id 15.20.3088.029; Wed, 17 Jun 2020
 10:14:59 +0000
From: Cedric VONCKEN <cedric.voncken@acksys.fr>
To: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
Thread-Topic: wrong size of off_t in mips platform
Thread-Index: AdZEjzN/mSaiZ1QJTZiT8Mr49yOGJA==
Date: Wed, 17 Jun 2020 10:14:59 +0000
Message-ID: <AM0PR01MB5857C112BE8E37CC19B17ACF909A0@AM0PR01MB5857.eurprd01.prod.exchangelabs.com>
Accept-Language: fr-FR, en-US
Content-Language: fr-FR
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.openwrt.org; dkim=none (message not signed)
 header.d=none;lists.openwrt.org; dmarc=none action=none
 header.from=acksys.fr;
x-originating-ip: [81.255.64.235]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 547192f7-b92c-4743-93c1-08d812a74a83
x-ms-traffictypediagnostic: AM0PR01MB5330:
x-microsoft-antispam-prvs: <AM0PR01MB53303869339DD4CA0BABD0A3909A0@AM0PR01MB5330.eurprd01.prod.exchangelabs.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 04371797A5
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: jW4mF8dCmKh/ppLr5ABkTztr+5EoCnq2ZzrNaCbxnBih1/RxXjiGFbDGNAMwqLchQXaojUaJyDB22wwnD62pE73YnmkG+lRM7BUTnXJNl0LYmxF85vKqMY6WxdKZNC8xxThfrMkTx9bUhejMMNfhR50Ka3MHYcnRP8cJb3CDL0a2wTWuceqcEpyQDbrsE09JQJO4XR71UzuBr74O/Z8gUNhecgf3oLD3n4Hr1oyo6zRpDXVSiGYIQJ/rL31+UXyKnaAeF+l7CtwagoNnbICpX4VzNSdek4PIN4sTZ6xIif0aHYR0vMLhR0IW20YWYiUKrDLrp6XTh1kVTFGB0Iyu2A==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM0PR01MB5857.eurprd01.prod.exchangelabs.com; PTR:;
 CAT:NONE; SFTY:;
 SFS:(346002)(39830400003)(396003)(42606007)(136003)(376002)(366004)(5660300002)(76116006)(52536014)(9686003)(66476007)(64756008)(66556008)(83380400001)(55016002)(508600001)(66946007)(186003)(26005)(66446008)(71200400001)(2906002)(86362001)(6916009)(33656002)(6506007)(4744005)(316002)(8676002)(8936002)(7696005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: le70tWCq+dXPY9cm5Z+qZ9FdcGaCMtxTsQ2nUZF4N8b7Olz1ad6vI96BZJ2OLqpc2Dx8L4rhrTgvDnpDkc2TUHBDGJcH/+/lnhOAn0ko8OqwMmxih3HMv+GLUEzHbE/qi1Ju3Ej98CfLBgDDYrs/4iaQJ/5BZae6XkfSKwoYgmfZ5LJ5/2hJ7Sr3UGTk9+7C/wkbiiUcunGI16QJLoP+Q+xhVRvxePmvonwiwHNqgwZCbB0JwKWtuHkAU2EGniY9RV8g+NNNaEcbsZM1HxZSH5Z862m8TFSIzCz95teIfE0W22DjKsf3qoEdOSxj1DJRHQnEqlKZkZ/Bun3DvLdcEABRz5LBtEXKYdcAQ4x+Tub0AvyYVnEcueWd+YAfREl08P1jaXG8wRIPd1LE1Xjnl5QSCvCg5nnTuKtMjNBWBZtMJIYboPqAAsVQpfFgwlb9rBwA2brGC2eloBauMbjdwlXjCKNjqisQ7aR8L/WvS7pXMAdiH4JnN7MNSlZDjTZ7
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: acksys.fr
X-MS-Exchange-CrossTenant-Network-Message-Id: 547192f7-b92c-4743-93c1-08d812a74a83
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jun 2020 10:14:59.0641 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: f18a6414-d5f3-4b5c-9345-f30c01d87e32
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZsCAC9ZMBsDFn7XpW74QCvQw/ugoZCYIs3+CCWrPUO51aNRKX0FUqOmdJ1jLrs25X8pr66fznMockew2V1x2yM2uyq0eEFHAZfFDgbdOZzM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR01MB5330
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_031506_733571_B09A19EC 
X-CRM114-Status: UNSURE (   2.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.6.93 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.6.93 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.0 FORGED_SPF_HELO        No description available.
Subject: [OpenWrt-Devel] wrong size of off_t in mips platform
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

In the file include/site/mips the off_t size is set to 8 bytes.
The QCA95xx/ar71xx processor use this file, and some configure from package use this file to know the size of several types.
On this processor platform, I generate a simple program to print the result of sizeof(off_t) on stdout.

The output is 4, so the size of type off_t is 4 bytes and not 8 bytes as recorded in the include/site/mips

Could you confirm I need to make change in include/site/mips?

Regards.

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
