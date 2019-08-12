Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 486D78A378
	for <lists+openwrt-devel@lfdr.de>; Mon, 12 Aug 2019 18:37:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AcLaVK3GvI7V4BT7XlZZ1zhvsoUuw5qKkL8dMGgqt3Y=; b=psmh+me4yFvqok
	KWQGeaVR31yQ2ygLTAPX7wk/B7bJUq5n+MfT150ZyIG6CZdy611inySiunRBQzG308r2AgiedReMy
	5Ir9fPCL2RCgaqHeM9l5rNdXaXbyeznw19JfPn93pH+mhoLWRZQp13XTd1QXGPAucvmYdYM+artpV
	xlY/ymHrE6OJH45rxNtTA7TFnDRmczIhEUwnGEthPVl7akmMII+Le4SZx4OjS6eq1Agcr0r8IOmIr
	nzPnWAvFo23iGw5ZmZX+AoTUDu/ob6c+SljHgM9EuQ97+4rweRHrc4t2u401TUY/puw6brtBwt3k1
	RlSKpKv7AdmlTJwkpu/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxDKQ-0006X8-Lw; Mon, 12 Aug 2019 16:37:50 +0000
Received: from mail-eopbgr60104.outbound.protection.outlook.com
 ([40.107.6.104] helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxDKH-0006WW-Ch
 for openwrt-devel@lists.openwrt.org; Mon, 12 Aug 2019 16:37:42 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dmgejolToo2Hl/RDPPkUL8gNMr3xAGhj8UTIgutI6T3CP0j8zwidVZfczdoyhpV0nUV3bBZ1G0P6uZ+R8ytrKCDw8LsMC15RGL5X6JXr1Sw97SnPBoYD4NbwaEXPGULtpmR/gfTEMtqmrQacDYbgruTD90Q5/ZEob7WlNFcw0HKOLtPnfv6UZlfBCFDDxOEPtKzDRKMIbTaloPYmk37ZeRFEc1DBx8SXnPVHuCJIdBJ+BuF0lg45gsqzZJLteOI+1/ivERDm1oqODx1OKOQyFoVK/+VIREyTr3f5zSGK4Vlip8R+irZyMuKl6WMLjkTeVY6hIFkq+zuLnL7EbGWcPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FjoIwcg9sUVdBSawY2jVEj3bDZB+ZvwyK2fuC/Uri2Q=;
 b=PJMJOmtOeCYWj8Vlm84Ke91WpQ5ZI5iJgAbqdeLZxsfMelw3sIzMNCC+J0feeisEnpHl2RP8oRZl1c78YH6rWUDNMI0nMF/bwncUlX8xlSrp5SBa3qZmg1FIxeKhrvgpG/OL8DoLkVQCzmK6glgumK2+kvzEK8gPVS1lkbtfOK5yDQssbl8eR+lRfrGEeaxoTTpBTjawerpY3ghRiU9UZHvKojmShOY02aKX/vzVegXFIaCVaV8/bf3MJPMSrwlxZJLnGfMdiGdtrjEXbfR7JJT9Off+I/+ahYTi59W4MP8QdLQcfJNCEjA9t0ZCa715kBEHRtbwDF/aZbhdWRwECw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=etactica.com; dmarc=pass action=none header.from=etactica.com;
 dkim=pass header.d=etactica.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=eTactica.onmicrosoft.com; s=selector2-eTactica-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FjoIwcg9sUVdBSawY2jVEj3bDZB+ZvwyK2fuC/Uri2Q=;
 b=af63WfFy6f7DVsqB0vA5aUuSBeyvAk+s8ikRiVJi1p7eU/GkQdu2rvTYexgjnzmsfTX1NTJ/DqYY5X7qoyFf1uXlTfPgvx/lEkHmx2cgx2uLCJpESFYq9KghSRFKv/WOFYv/Ocdtdy8WwJz73EUtak1kN3ON9QbgJYA8l/rVs3c=
Received: from AM0PR07MB5953.eurprd07.prod.outlook.com (20.178.82.92) by
 AM0PR07MB4132.eurprd07.prod.outlook.com (52.133.63.27) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.15; Mon, 12 Aug 2019 16:37:34 +0000
Received: from AM0PR07MB5953.eurprd07.prod.outlook.com
 ([fe80::c8b7:e263:7d00:fb57]) by AM0PR07MB5953.eurprd07.prod.outlook.com
 ([fe80::c8b7:e263:7d00:fb57%5]) with mapi id 15.20.2178.013; Mon, 12 Aug 2019
 16:37:34 +0000
From: =?iso-8859-1?Q?Karl_P=E1lsson?= <karlp@etactica.com>
To: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
Thread-Topic: [PATCH] ath79: etactica-eg200: fix restore button
Thread-Index: AQHVUSw+qInN43deN0amHn1QP7biDQ==
Date: Mon, 12 Aug 2019 16:37:34 +0000
Message-ID: <20190812163701.30403-1-karlp@etactica.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: LO2P265CA0167.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:9::35) To AM0PR07MB5953.eurprd07.prod.outlook.com
 (2603:10a6:208:108::28)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=karlp@etactica.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.20.1
x-originating-ip: [213.181.112.179]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3867922d-0c4c-4fc7-0de7-08d71f4360af
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:AM0PR07MB4132; 
x-ms-traffictypediagnostic: AM0PR07MB4132:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR07MB41324A8A1DDE33A8D178894FDDD30@AM0PR07MB4132.eurprd07.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2887;
x-forefront-prvs: 012792EC17
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(366004)(376002)(346002)(136003)(39830400003)(396003)(199004)(189003)(71200400001)(6916009)(66446008)(64756008)(66946007)(3846002)(26005)(2501003)(66556008)(66476007)(6116002)(71190400001)(1076003)(508600001)(4326008)(316002)(99286004)(36756003)(2351001)(25786009)(52116002)(14444005)(7736002)(486006)(2616005)(6512007)(476003)(66066001)(50226002)(386003)(2906002)(107886003)(53936002)(8676002)(305945005)(86362001)(6486002)(81156014)(81166006)(102836004)(186003)(45776006)(5660300002)(6506007)(4744005)(5640700003)(8936002)(6436002)(14454004)(256004);
 DIR:OUT; SFP:1102; SCL:1; SRVR:AM0PR07MB4132;
 H:AM0PR07MB5953.eurprd07.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: etactica.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: f+N3f5IekJL+l56ajrjfoYoTMexGOJRvMM9UjS2nVLOwkR7WmdHLhm8+B4OdNXr3ggQ7oRSr+oVuuLoNK9jnLtfJaedGEvDCjaJTj5HIVs6wOYK8M0qnyXr4NQ71+0vgcBUiPeU/86Yu8Y3UVSBfmNX90ABpfRpvhr/PUi7azyDUNJyxsA297L0AqozhoURxZYjlsFS5b8n3ldrCUwmgzXYWW6uE53qFkyl8DvvW3/ufuwRl3XGsuSV7ScEWzntOUmSmmHi3ItMIUBuSHTTnCyCIuC7LujuM/jnTWNMbhljzPCRp6GPBxxYQ69Y3ExFECb4LlA2x10x3wEbtCVt1/0s7Nl4EPvc01ug8mw32T3kROxiAv+fqTg1G4nKAQwJsiRmkhnCrl/TBkuRq7ubsL8hi9CzO86Ao5S/KsZ5F+rg=
MIME-Version: 1.0
X-OriginatorOrg: etactica.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3867922d-0c4c-4fc7-0de7-08d71f4360af
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Aug 2019 16:37:34.3008 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e3621586-558f-4e21-92a9-26df2c484dae
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Q3unQELTCoJNYC0rYRYhN6lLJElGa/0sew6ZzgPQpdPz+PQNjcFyHj6e1h9bKyr89g5PVsfrOpR3UArMywTvYw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR07MB4132
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_093741_483874_8E5DFAB7 
X-CRM114-Status: GOOD (  11.30  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.104 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH] ath79: etactica-eg200: fix restore button
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
Cc: =?iso-8859-1?Q?Karl_P=E1lsson?= <karlp@etactica.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

The button is labelled reboot/restore in documentation, and has always
been used for that.  Naming it WPS has always been wrong.

Signed-off-by: Karl Palsson <karlp@etactica.com>
---
 target/linux/ath79/dts/ar9331_etactica_eg200.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/target/linux/ath79/dts/ar9331_etactica_eg200.dts b/target/linux/ath79/dts/ar9331_etactica_eg200.dts
index d18a239d32..708e9defa4 100644
--- a/target/linux/ath79/dts/ar9331_etactica_eg200.dts
+++ b/target/linux/ath79/dts/ar9331_etactica_eg200.dts
@@ -19,7 +19,7 @@
 		poll-interval = <50>;
 
 		restore {
-			linux,code = <KEY_WPS_BUTTON>;
+			linux,code = <KEY_RESTART>;
 			gpios = <&gpio 11 GPIO_ACTIVE_LOW>;
 		};
 	};
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
