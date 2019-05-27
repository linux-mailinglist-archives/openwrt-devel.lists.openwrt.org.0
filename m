Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 971C82B9E5
	for <lists+openwrt-devel@lfdr.de>; Mon, 27 May 2019 20:08:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Content-ID:
	In-Reply-To:References:Message-ID:Date:To:From:Reply-To:Cc:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=L4bP7FCheVBvV6v1WurZPEjbLYN5M92B4hbsMy7ZYY0=; b=cuvgcZ7YSo49aOuplOa4u/r1O4
	e1Ob1cy/GF6ZYx34qmAVTQJTx0g6Uh55lBpfYAOJujGokJCcc5eZh+8LcBUgtrWKL3v+2SO6Npf+7
	S5DR1dU36WLbksh0aLymdNSEv/D8hzdwYsL2X/xvPxf+qISNUnLVxkxg0/aY7FdQEK9mgjv8odSQy
	LBqPnhYWWHFUN+qdX8R+fYVFOGV6gruBfd6M9a3l3UgTZLPaxZoyz68PyAYkrxRm7yie27qXlg0F7
	J6s9L8BTkyKU1O+sZUm8JYmmWQfsvPCUf6LFxoGxFSxIzWE7po0KojAnc8o3qBdkj/MER6N4NGBic
	TQxf6lvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVK3M-0006dU-8d; Mon, 27 May 2019 18:08:56 +0000
Received: from mail-db3eur04on060a.outbound.protection.outlook.com
 ([2a01:111:f400:fe0c::60a]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVK2d-0005K4-Mo
 for openwrt-devel@lists.openwrt.org; Mon, 27 May 2019 18:08:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=darbyshire-bryant.me.uk; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MNaSeqSdg7JBRmNT7WNMhrn9Txtnm32q8gLXX6ReAP0=;
 b=jlI9E9dUYXBF3KQC072UUlFBwwKO4ySodoJhilptLgIipwGrACq4ocPN42lIWAI5FlQsJaG7FGhN57e8kSgFs5xXzTipjigp4iPGLLT9TLvFrTTe+b3dVolz4LvRTltmBxOG6OmsiH/Xxzmn+mKDsR2yBoM9DQviT7WV6wu155w=
Received: from VI1PR0302MB2750.eurprd03.prod.outlook.com (10.171.106.21) by
 VI1PR0302MB3485.eurprd03.prod.outlook.com (52.134.14.33) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.19; Mon, 27 May 2019 18:08:08 +0000
Received: from VI1PR0302MB2750.eurprd03.prod.outlook.com
 ([fe80::603a:6eb9:2073:bde4]) by VI1PR0302MB2750.eurprd03.prod.outlook.com
 ([fe80::603a:6eb9:2073:bde4%5]) with mapi id 15.20.1922.021; Mon, 27 May 2019
 18:08:08 +0000
From: Kevin 'ldir' Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>
To: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
Thread-Topic: [PATCH] lantiq: net: wrong operator
Thread-Index: AQHVFLPNOxh4LQFIPkCWyydp7JycKqZ/RNwA
Date: Mon, 27 May 2019 18:08:07 +0000
Message-ID: <141EAB89-1DA0-4F37-AE8C-42D934EEBDA0@darbyshire-bryant.me.uk>
References: <20190527174349.34528-1-ldir@darbyshire-bryant.me.uk>
In-Reply-To: <20190527174349.34528-1-ldir@darbyshire-bryant.me.uk>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=ldir@darbyshire-bryant.me.uk; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [2a02:c7f:1268:6500::dc83]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 30e777ff-06e1-4ac8-787c-08d6e2ce45c8
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(5600148)(711020)(4605104)(1401327)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(2017052603328)(7193020);
 SRVR:VI1PR0302MB3485; 
x-ms-traffictypediagnostic: VI1PR0302MB3485:
x-microsoft-antispam-prvs: <VI1PR0302MB3485FDAAEDF5BBB01C2486E3C91D0@VI1PR0302MB3485.eurprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:644;
x-forefront-prvs: 0050CEFE70
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(136003)(376002)(39830400003)(396003)(366004)(199004)(189003)(86362001)(8676002)(81156014)(81166006)(5640700003)(68736007)(229853002)(6486002)(46003)(2616005)(6512007)(476003)(14454004)(316002)(446003)(2351001)(11346002)(2906002)(6916009)(508600001)(6116002)(6436002)(8936002)(486006)(99286004)(186003)(83716004)(53936002)(76176011)(102836004)(66946007)(73956011)(91956017)(76116006)(66476007)(66556008)(64756008)(66446008)(2501003)(6506007)(5660300002)(256004)(36756003)(53546011)(33656002)(82746002)(305945005)(25786009)(74482002)(7736002)(6246003)(71190400001)(71200400001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0302MB3485;
 H:VI1PR0302MB2750.eurprd03.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: darbyshire-bryant.me.uk does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: MjA6m2GmH6SCAnmB/z8GzcJBIWfLAoaUo2LMWQj/gj878BwqBaM+5R75anwgU6w/44/RdydhOCkkTEIRNDuU2mBV7MHGp2V2ZIFijufU43EBtjT0yrlxaWK6EcQPihKbSQwUR61eOFmWpG2FZX0LYRYl+csez7OfDCQgsI93/4Y2/uVgVsDAx4nEfiOyVOpyoCJS9KTv9aC4N4GAlOtGgYCNvOgSU6am6UK8avitO0RA/0UYFKlizOd3eBJY+0tEz20nMhZg+jZ+Qxl4XRXPDlq9UkAmejl1DioMlaulo5oaV4DsLS91rQ3s8y/v2vtWBbyjtDAHRnoO1WjmAH6lubVMlcjQyHot0G2t3aw5epPn5JVkh2/jwbNIhg721Lf8welUunH1SJgEAiev+Lu+L7Cu4UqGAZIOaiNPySgqIBE=
Content-ID: <41B970672F599A4F8C59F00F1CA8CCEE@eurprd03.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: darbyshire-bryant.me.uk
X-MS-Exchange-CrossTenant-Network-Message-Id: 30e777ff-06e1-4ac8-787c-08d6e2ce45c8
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 May 2019 18:08:07.9848 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 9151708b-c553-406f-8e56-694f435154a4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kevin@darbyshire-bryant.me.uk
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0302MB3485
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_110812_591530_D6A90539 
X-CRM114-Status: GOOD (  10.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0c:0:0:0:60a listed in]
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
Subject: Re: [OpenWrt-Devel] [PATCH] lantiq: net: wrong operator
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

This was a test - please ignore.  Already deleted from patchwork

> On 27 May 2019, at 18:44, Kevin 'ldir' Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk> wrote:
> 
> Signed-off-by: Kevin Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>
> ---
> .../patches-4.14/0025-NET-MIPS-lantiq-adds-xrx200-net.patch   | 4 ++--
> 1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/target/linux/lantiq/patches-4.14/0025-NET-MIPS-lantiq-adds-xrx200-net.patch b/target/linux/lantiq/patches-4.14/0025-NET-MIPS-lantiq-adds-xrx200-net.patch
> index 7eaf0b7b7b..0d97b4742b 100644
> --- a/target/linux/lantiq/patches-4.14/0025-NET-MIPS-lantiq-adds-xrx200-net.patch
> +++ b/target/linux/lantiq/patches-4.14/0025-NET-MIPS-lantiq-adds-xrx200-net.patch
> @@ -934,8 +934,8 @@ Subject: [PATCH 25/36] NET: MIPS: lantiq: adds xrx200-net
> +
> +	link->duplex = xrx200sw_read_x(XRX200_MAC_PSTAT_FDUP, port);
> +
> -+	link->rx_flow = !!(xrx200sw_read_x(XRX200_MAC_CTRL_0_FCON, port) && 0x0010);
> -+	link->tx_flow = !!(xrx200sw_read_x(XRX200_MAC_CTRL_0_FCON, port) && 0x0020);
> ++	link->rx_flow = !!(xrx200sw_read_x(XRX200_MAC_CTRL_0_FCON, port) & 0x0010);
> ++	link->tx_flow = !!(xrx200sw_read_x(XRX200_MAC_CTRL_0_FCON, port) & 0x0020);
> +	link->aneg = !(xrx200sw_read_x(XRX200_MAC_CTRL_0_FCON, port));
> +
> +	link->speed = SWITCH_PORT_SPEED_10;
> -- 
> 2.20.1 (Apple Git-117)
> 


Cheers,

Kevin D-B

gpg: 012C ACB2 28C6 C53E 9775  9123 B3A2 389B 9DE2 334A


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
