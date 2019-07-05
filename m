Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D71960C4A
	for <lists+openwrt-devel@lfdr.de>; Fri,  5 Jul 2019 22:22:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:In-Reply-To:References:Message-ID:Date:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=cY/LhCauD2dBHHfbXmrTnKi1r0sntNdgaewjZU9O39U=; b=EjBU7gMibChJ86425hDAHL6Xs
	vL7NhgLIzoCHHmZvTmuakfWFk0tmE8YM7G84jF7hPqNqbSSKpJL2iYVToKg5gxGMfusGR7ZgAe6+r
	AMQI8XiDmgniWJE1/WsKovw4NlPP4dTBp8aa15JzwnwEq+izkLfh1FNw8/f+l28OrotDpIe7h1NwV
	I/smUNFF1zxV+QlG+bmDQkBI9UZdqgiM7wX0PfmW8RecLbJ847Eg+gt3eGJSvR98FA89gf/iYHtdW
	H+jqfwAxULqm3xJpGJ0yGVD+qq7tW7yHTF3fOIlkk4XFvz/iw0uR2bmOGw8Zg0voBAeC5q9urveXV
	NLAAcomuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjUif-0001My-Rh; Fri, 05 Jul 2019 20:22:09 +0000
Received: from mail-eopbgr20066.outbound.protection.outlook.com ([40.107.2.66]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjUiV-0001MP-RO
 for openwrt-devel@lists.openwrt.org; Fri, 05 Jul 2019 20:22:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=darbyshire-bryant.me.uk; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Mi3MuIv11lBQX/gfIc6E3Z0W1a3NdA/32vdY8Jck8Jg=;
 b=n+DJHFmDAica9CPe/g07Klc84Gqm3IlaRtHnzyJizzoRsmjsyHV4mXPiNNn3U0mVh9oDQtDvBzK6GWP7t2JwHVBURpzKlclMPUx2EgYUIoRJPdx+kazGWtzEnB/shmHyTPzjoC52hJ/Xk9DAVsxdUa5xALLTeGtBrCnUaQCM7K8=
Received: from AM4PR0302MB2739.eurprd03.prod.outlook.com (10.171.85.142) by
 AM4PR0302MB2625.eurprd03.prod.outlook.com (10.171.86.19) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2032.20; Fri, 5 Jul 2019 20:21:53 +0000
Received: from AM4PR0302MB2739.eurprd03.prod.outlook.com
 ([fe80::d886:adf:94ca:ccf2]) by AM4PR0302MB2739.eurprd03.prod.outlook.com
 ([fe80::d886:adf:94ca:ccf2%3]) with mapi id 15.20.2032.019; Fri, 5 Jul 2019
 20:21:53 +0000
From: Kevin Darbyshire-Bryant <kevin@darbyshire-bryant.me.uk>
To: Paul Spooren <mail@aparcar.org>
Thread-Topic: [OpenWrt-Devel] [RFC]merge routing repository to packages
Thread-Index: AQHVMznqhrNePySYs0KIRQ1WB9Zvi6a8eBwA
Date: Fri, 5 Jul 2019 20:21:53 +0000
Message-ID: <49613A00-B967-447A-BC95-37B857FC2822@darbyshire-bryant.me.uk>
References: <dde0fff0-c03a-260f-29a9-4bdabfe301f9@aparcar.org>
In-Reply-To: <dde0fff0-c03a-260f-29a9-4bdabfe301f9@aparcar.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=kevin@darbyshire-bryant.me.uk; 
x-originating-ip: [2a02:c7f:1268:6500::dc83]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 72fdb8bb-2b65-4dbd-8bf0-08d701866b7a
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600148)(711020)(4605104)(1401327)(2017052603328)(49563074)(7193020);
 SRVR:AM4PR0302MB2625; 
x-ms-traffictypediagnostic: AM4PR0302MB2625:
x-microsoft-antispam-prvs: <AM4PR0302MB2625C06A30BEB2B31BB0748DA5F50@AM4PR0302MB2625.eurprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 008960E8EC
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39830400003)(376002)(346002)(366004)(396003)(136003)(199004)(189003)(53754006)(305945005)(6486002)(316002)(6512007)(1250700005)(64756008)(66946007)(54906003)(66446008)(66476007)(5660300002)(8676002)(73956011)(68736007)(25786009)(229853002)(6246003)(8936002)(91956017)(6436002)(66556008)(53936002)(14454004)(66616009)(99936001)(76116006)(6116002)(102836004)(486006)(186003)(53546011)(6506007)(76176011)(6916009)(74482002)(71200400001)(71190400001)(2906002)(46003)(36756003)(508600001)(4744005)(256004)(14444005)(33656002)(11346002)(81156014)(476003)(2616005)(4326008)(7736002)(81166006)(99286004)(86362001)(446003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM4PR0302MB2625;
 H:AM4PR0302MB2739.eurprd03.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: darbyshire-bryant.me.uk does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: TYL7zyqFAAMAjWh2ikkTm13wzpSS7bGXGJtnQ5sxfIgLkXdFU7iiFL9EADm5W+0iTBVHb8qnTDA/EJGDaHQ95FomZhCukoZw6dttyJicLMaCo2GOqBy5PBgXuZjOL8f3Y3KMXgnNyWtz0aFHhwmEOCbNZ8T4vhlCZRxvAqtvhnNrAqUIDmGnPHI2TKYwdHA46B/1IQMv4/MHpSDeXipL28W23LrsPziPa1gFLg6+4bUSuYcq+H5k9+8Y4k33e+VLQbuwD+ow2o5+2XhRrZTrIdisNOd4qRg0R5MAVHtpcNj12z1Bln+ZAWgyswd566jaCrwwTwtbX7ntTrgHJDnGENVvFmEUxo+jSNUV/a1ael4wfwy6HWZ2r/2YcUoygdqEckkm3+iModtQN7gEK0cESv3Kqbv9+w17+WpmhumGXP0=
MIME-Version: 1.0
X-OriginatorOrg: darbyshire-bryant.me.uk
X-MS-Exchange-CrossTenant-Network-Message-Id: 72fdb8bb-2b65-4dbd-8bf0-08d701866b7a
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Jul 2019 20:21:53.4751 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 9151708b-c553-406f-8e56-694f435154a4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kevin@darbyshire-bryant.me.uk
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM4PR0302MB2625
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190705_132159_956115_DBDA9A5F 
X-CRM114-Status: UNSURE (   9.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.66 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [RFC]merge routing repository to packages
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 Jo-Philipp Wich <jo@mein.io>
Content-Type: multipart/mixed; boundary="===============9121047232487015938=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============9121047232487015938==
Content-Language: en-US
Content-Type: multipart/signed;
	boundary="Apple-Mail=_697515A1-00DE-4F36-BC3B-FC091836D7F2";
	protocol="application/pgp-signature";
	micalg=pgp-sha256

--Apple-Mail=_697515A1-00DE-4F36-BC3B-FC091836D7F2
Content-Transfer-Encoding: 7bit
Content-Type: text/plain;
	charset=us-ascii



> On 5 Jul 2019, at 13:26, Paul Spooren <mail@aparcar.org> wrote:
> 
> Hi all,
> 
> just as a notification as I don't want to spread the discussion to all
> kinds of platforms:
> 
> I proposed (actually jow in 2017) to merge openwrt-routing/packages into
> openwrt/packages subfolder net.
> 
> Please find the current discussion at GitHub[0].
> 
> This is intended to be a transfer, not a fixup. Fixes of legacy/broken
> Makefiles are welcome in the future!

Do it!  NOW :-)

KDB

--Apple-Mail=_697515A1-00DE-4F36-BC3B-FC091836D7F2
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEASyssijGxT6XdZEjs6I4m53iM0oFAl0fsWAACgkQs6I4m53i
M0pwyQ//Xnjoyz9Nc99nuZI1+Cku3aqf47iGx+gDUYJ0dO4Avuhi/w5aafBvwKQ5
n7YFmK/YNnYSbfBqnxCLan6CwHLZG/d9Ma7r2rSwWgVQSk86YSvztuOdL0NPjCNG
gC+l/jCTluvr3q+IeeE9MRreBSEM4GReThpvSk998qOjzfT/my+ZWn5bATVXri/v
tO+RNUSgzaBi+JRjJHFBYOBPR5NyB1uSkIvYHCylpWoEgtTJW6JCVOh5A4rNjaAf
hi5Y8h3ayZwtpni6iTLv3P26f9+RsteWDtt2sM9zRaXYUax+2mY9+L/FJTHeejg+
k2LsCVsa8/X1b+rm+3XTCqEpRw0HCkX4c6VgXql2JQHWYw+8vSe5dazPmgTaeTFX
0LD9nkoJcI83E7DvQU5vz96NiPRQ+Ol+p7NzZ4d7P0lCIDAkHAnla8df+aHH9YFH
W6jmw5jMl5CAjzGAYj2iIqy4lSAeVopG1NQpaUeeQ6bgdaKEhMNsJ73gSUYc0LdO
sGIG2hC/bSWzjJU0i7XWalM13w0lby+EVAMyIUh1ILDHTz4yVgia+QyCFbaI5cEA
UieGPasPKht+EPTFtfWmhmlqYPBtE/03a1j14KQuEcmC2/88lVq/MQJwGOKclzfh
G4peFiACZyASMPqggqc5wDaC0PHiiOgAWDwaowXxPf9aemPkEuw=
=fhSh
-----END PGP SIGNATURE-----

--Apple-Mail=_697515A1-00DE-4F36-BC3B-FC091836D7F2--


--===============9121047232487015938==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============9121047232487015938==--

