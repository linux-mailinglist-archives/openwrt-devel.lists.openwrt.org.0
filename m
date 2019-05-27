Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1DC52B97B
	for <lists+openwrt-devel@lfdr.de>; Mon, 27 May 2019 19:44:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fIfai36YTZVWE9JNfN1btYhBA37Sp9/MDChc+tZR4Ls=; b=MxMvGuX+lu/cWY
	mQDIRTllOgkTWeXy7w06P+ERpwh+O1PDtF3M4G3cjyWV8hhIL7LsaLKYu570eHau4OLV1Kdw8+Uyn
	AbV5Noqwb+T+K1a0uPSw7teL2ZjDTDHwhFB8FQwO9SE8wytG0/3nATJX/l/OoXFydYwuDs4lCfdrB
	6RB/fMbwlbJILTNSGuNTNIO8at5wYyW7V9cc9U0uaNejd6iE0d7eGFX/J+U/Edxmof7vguph9PFMv
	dNLkadbjgV5qOv4mwH8sSAP9wqQw2T5my6knJta8BCfZHBrJjN0BO1yQPsvUj5hlu7kg/FCqcfu33
	Vmnc0eJi4LlwuGoE/Uyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVJfi-0007WW-4X; Mon, 27 May 2019 17:44:30 +0000
Received: from mail-db3eur04on0620.outbound.protection.outlook.com
 ([2a01:111:f400:fe0c::620]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVJfZ-0007W9-B1
 for openwrt-devel@lists.openwrt.org; Mon, 27 May 2019 17:44:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=darbyshire-bryant.me.uk; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zEMoQfiYh7TN06RjNIz218am1vuFcaieqnoXqKeKX9o=;
 b=FkBnJg8znFiT1frz2jmbl512KMt3Fl0rSq0rKe0at0GE7A8UnqZon5Fewbx8JuN3+ZtwzTqwnve0Nq1YU3IL4oCXdM14TmNSb7g+RXxIJKdmtrdXRKpPK+5yG4R2A9gvCudRyeLRomYqI8o9pCgbNlYh0wbD7I1kZhxAXFy15e0=
Received: from VI1PR0302MB2750.eurprd03.prod.outlook.com (10.171.106.21) by
 VI1PR0302MB3261.eurprd03.prod.outlook.com (52.134.12.29) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.16; Mon, 27 May 2019 17:44:15 +0000
Received: from VI1PR0302MB2750.eurprd03.prod.outlook.com
 ([fe80::603a:6eb9:2073:bde4]) by VI1PR0302MB2750.eurprd03.prod.outlook.com
 ([fe80::603a:6eb9:2073:bde4%5]) with mapi id 15.20.1922.021; Mon, 27 May 2019
 17:44:15 +0000
From: Kevin 'ldir' Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>
To: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
Thread-Topic: [PATCH] lantiq: net: wrong operator
Thread-Index: AQHVFLPNOxh4LQFIPkCWyydp7JycKg==
Date: Mon, 27 May 2019 17:44:15 +0000
Message-ID: <20190527174349.34528-1-ldir@darbyshire-bryant.me.uk>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: LO2P265CA0126.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:9f::18) To VI1PR0302MB2750.eurprd03.prod.outlook.com
 (2603:10a6:800:e3::21)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=ldir@darbyshire-bryant.me.uk; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.20.1 (Apple Git-117)
x-originating-ip: [2a02:c7f:1268:6500::dc83]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9d3238d2-a9da-45c5-46d3-08d6e2caef66
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(5600148)(711020)(4605104)(1401327)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(2017052603328)(7193020);
 SRVR:VI1PR0302MB3261; 
x-ms-traffictypediagnostic: VI1PR0302MB3261:
x-microsoft-antispam-prvs: <VI1PR0302MB326103C779845D35CA993BBDC91D0@VI1PR0302MB3261.eurprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:254;
x-forefront-prvs: 0050CEFE70
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(346002)(376002)(39830400003)(366004)(136003)(199004)(189003)(6436002)(5660300002)(86362001)(5640700003)(508600001)(6486002)(476003)(256004)(2616005)(2351001)(316002)(6116002)(14454004)(2906002)(74482002)(386003)(71190400001)(71200400001)(25786009)(81166006)(8676002)(81156014)(8936002)(50226002)(52116002)(6916009)(4326008)(305945005)(73956011)(66476007)(64756008)(66556008)(66446008)(66946007)(46003)(7736002)(1076003)(186003)(68736007)(486006)(6512007)(53936002)(99286004)(2501003)(107886003)(36756003)(6506007)(102836004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0302MB3261;
 H:VI1PR0302MB2750.eurprd03.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: darbyshire-bryant.me.uk does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: v/UOB4OwLEVr0IFwe2rMO1HetvjDlqkLLMMX9dbCh+p0ctg+nslP9l+Mt/tb+dMbBYJYyTUAnnISaAliw0Ak2bFbH8G4S5CvOqPGsWqJ37iwwdA3tKKnHM7oR8RkqJvdjg2CoZignBkyc0g77811xPyLr3ZP1huoIPPRIyfMXg32r1/tsttA/0oVe+MnV2A4U89G1bIhDUIa6pirg+wCQso5qgmdTkdlvB8Xy2ZknJrAcmb+58SrZvOiENsXdQeZb/9MOwgcT0txnZX6fYixENDOERvJDAoV9jJkJ0lM5I6es8aybYB+pOcqA0kFKDg9Zsq8sr8hjpMlHSz1D7/uLAxBT2gJWacRkmt+QqgB8EBN5qLGX/cUR73DZzokcfYwCcMlGqSB8KRqxpZUjGzmkxqC4NDK26+RF6LS1ROXrQM=
MIME-Version: 1.0
X-OriginatorOrg: darbyshire-bryant.me.uk
X-MS-Exchange-CrossTenant-Network-Message-Id: 9d3238d2-a9da-45c5-46d3-08d6e2caef66
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 May 2019 17:44:15.1426 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 9151708b-c553-406f-8e56-694f435154a4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kevin@darbyshire-bryant.me.uk
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0302MB3261
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_104421_427755_32D4FB7D 
X-CRM114-Status: UNSURE (   8.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0c:0:0:0:620 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH] lantiq: net: wrong operator
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
Cc: Kevin 'ldir' Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Signed-off-by: Kevin Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>
---
 .../patches-4.14/0025-NET-MIPS-lantiq-adds-xrx200-net.patch   | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/target/linux/lantiq/patches-4.14/0025-NET-MIPS-lantiq-adds-xrx200-net.patch b/target/linux/lantiq/patches-4.14/0025-NET-MIPS-lantiq-adds-xrx200-net.patch
index 7eaf0b7b7b..0d97b4742b 100644
--- a/target/linux/lantiq/patches-4.14/0025-NET-MIPS-lantiq-adds-xrx200-net.patch
+++ b/target/linux/lantiq/patches-4.14/0025-NET-MIPS-lantiq-adds-xrx200-net.patch
@@ -934,8 +934,8 @@ Subject: [PATCH 25/36] NET: MIPS: lantiq: adds xrx200-net
 +
 +	link->duplex = xrx200sw_read_x(XRX200_MAC_PSTAT_FDUP, port);
 +
-+	link->rx_flow = !!(xrx200sw_read_x(XRX200_MAC_CTRL_0_FCON, port) && 0x0010);
-+	link->tx_flow = !!(xrx200sw_read_x(XRX200_MAC_CTRL_0_FCON, port) && 0x0020);
++	link->rx_flow = !!(xrx200sw_read_x(XRX200_MAC_CTRL_0_FCON, port) & 0x0010);
++	link->tx_flow = !!(xrx200sw_read_x(XRX200_MAC_CTRL_0_FCON, port) & 0x0020);
 +	link->aneg = !(xrx200sw_read_x(XRX200_MAC_CTRL_0_FCON, port));
 +
 +	link->speed = SWITCH_PORT_SPEED_10;
-- 
2.20.1 (Apple Git-117)

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
