Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CAEF20E52
	for <lists+openwrt-devel@lfdr.de>; Thu, 16 May 2019 20:01:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:In-Reply-To:
	References:Message-ID:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D+Om8ZHpL0KzYpSXyb/WM+Om8jZ0GMjI3rj7RsU/ZMA=; b=PjZbRxhe0iyHn0
	nfKUGgchws5kQBnKWvflaizWVs8x4TU/K5M29HGFaF8pYeXkqRf669GPljHrbfSHo71dbOfpuWsko
	73MQyPWAtWj/grFXMSBTHfMTOif8nyLO9cMsngrV6IhB+wGcClSu/DEJszXHkcPfuOiSWktj6o+Iy
	NTpmENydQ5oE5i1eKQ30NeuNOWPsu+9ovI5R28kjKufDz3sThFfuY0hPCjH98/riv/8/JTdCqwH4D
	yLWExwbwWOPEiyIC1t/NDpmYdE0syp0oMsq8yUbxnJIQ9OqOHlyVC3aSWBSdtU7pXXOSZdGaVEVyZ
	D7OS/gv/9t7yPx+BwoAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRKgc-0000dI-VU; Thu, 16 May 2019 18:00:58 +0000
Received: from mail-ve1eur02olkn0824.outbound.protection.outlook.com
 ([2a01:111:f400:fe06::824]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRKgW-0000cP-87
 for openwrt-devel@lists.openwrt.org; Thu, 16 May 2019 18:00:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=live.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hiwypyjRhoO3uPdgZRBHhXe8bLJLDT6OqPAlo3O65YA=;
 b=SU8gXdoHCxrgTTVpqC12AM4QzCqc9sXeSJTTNBGlv5iGaTTfv4L8hSkysHUrjxtOfcjWEwhWVRP8KwXfvkVWdT/F+vEJ8x9uKICY3FCEbH/YNNc6Jt+V2q0R6qZ/ANmx5j0w2QDNhKvTgz6F6zpQPdutYV0qRnlnQ/BxcfJzJrnF3Y4gC0tuL0Ypez3oFs371sHUFft5R5uB0hj6jE1dYnXqacKX8NIIb7JlbYNYAHcIEy6kVxdHXiKGsVydB6bHnpxygS3Nedtg9gk5Dx7Cqa7KernHEFVsRbbstvQUFA6DDBEbPZwSaa6f4iVb9TLuZYxrKYRXK92kKTlb3rc8IQ==
Received: from AM5EUR02FT028.eop-EUR02.prod.protection.outlook.com
 (10.152.8.56) by AM5EUR02HT068.eop-EUR02.prod.protection.outlook.com
 (10.152.9.220) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1856.11; Thu, 16 May
 2019 18:00:47 +0000
Received: from AM6PR03MB4821.eurprd03.prod.outlook.com (10.152.8.60) by
 AM5EUR02FT028.mail.protection.outlook.com (10.152.8.115) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.16 via Frontend Transport; Thu, 16 May 2019 18:00:47 +0000
Received: from AM6PR03MB4821.eurprd03.prod.outlook.com
 ([fe80::e5e2:30fd:1274:902b]) by AM6PR03MB4821.eurprd03.prod.outlook.com
 ([fe80::e5e2:30fd:1274:902b%7]) with mapi id 15.20.1900.010; Thu, 16 May 2019
 18:00:47 +0000
From: Tan Xiaofan <xfan1024@live.com>
To: Hans Dedecker <dedeckeh@gmail.com>, Tan Xiaofan <xfan1024@live.com>
Thread-Topic: [OpenWrt-Devel] [PATCH] interface-ip: fix find locally
 addressable target for p2p
Thread-Index: AQHVDAYgBLwIj4rXG0+Oxwt/mwR5+qZuCjig
Date: Thu, 16 May 2019 18:00:47 +0000
Message-ID: <AM6PR03MB4821953F914D9BAF83521992B50A0@AM6PR03MB4821.eurprd03.prod.outlook.com>
References: <AM6PR03MB4821E7027EF336E03B57C642B50A0@AM6PR03MB4821.eurprd03.prod.outlook.com>
 <CAJLcKsHrZ+SKkFz+w_Cb_aSztT9yB6p9xYdnc1c+Mdwh6ftOig@mail.gmail.com>
 <AM6PR03MB4821A0DBD99D2B7F7F49254DB50A0@AM6PR03MB4821.eurprd03.prod.outlook.com>
 <CAJLcKsFycig9BNYkh24CeFAjadb+wJgO4uqmaFp0Qa86P8WNtA@mail.gmail.com>
In-Reply-To: <CAJLcKsFycig9BNYkh24CeFAjadb+wJgO4uqmaFp0Qa86P8WNtA@mail.gmail.com>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:8676623AA9446B2E2A0CECAA7FD6F6CDE1E57CA5E6EDD161281326C14A518911;
 UpperCasedChecksum:0A8734D219986F0C3C9D102C2E8BC11A3612549E650F1C56394ECF861D26D0E6;
 SizeAsReceived:7118; Count:43
x-tmn: [y6r76Yf1VuBj8v12Elj0HgrlzMA2ZBkb]
x-ms-publictraffictype: Email
x-incomingheadercount: 43
x-eopattributedmessage: 0
x-ms-exchange-slblob-mailprops: xuHa6FHC+squCXxvJj9f126Cyq/VAEKh+Xep4cm+nXjGKczGYe11ZsbqRzj2bnLwxiEtPDnwI391wf5HhaeMjdNVWt/TLJjQoUX+eeekJZPD4I1fs8puALd1npUuvpRD1FsNp+r1jSQDNwcoNKPFPNvpdNf/AVWUqefgFozH9R2Az8qEebv9txaR51WsxI1QmohAZprruaPJe1Xe7bJGDLA4dhr8toIhFgJlBMS+xpZRtvAi8h2BcXzq4mT/gz1W5NcKKJ9unLCLFAUZubbVpJTgAG8jQzSHQe3CKa03Qq72tEiOzJPqunbL0hwhktZbZlv4OH4vsvTYB/IeSVAQlM1Uo7vwZtr78jvBKW+HrPjseHf8EXeKiV0+hmC4CJ3HuClLSn+ePrWLvKeDu1aadwaCHhoLsThy210QaQhoC2Omm2ip6wYZwbNOJBcDeKQTyoayPaA1B2WXLuDo0J58Qit36+6NC+K7rvX7u2ZRIf667roKmlBYY5s6IPVPedmwkvupfsEvwq+OrXJ7pDNEVGRaT8ygYGuKkPxfuBKMrmlAvFNGxDuRK2HR3i3txcpQ+U5EXGEGzIpgGcneYEujzC3HSq42njPw7BwUvAdAkoYhXLhNbkaVTMTJCrIlCE2J3sTNkCz2l6YVWaWMOpeiHdF9ZipILwRgBv75qfLnGlLSnVf0vSDiqa5wLCZKEwfMJ+pKz+EJIDctXnD2EZH8upJ/ZulZw+meEgHt/LKclmO+3zV8l7re3Y/ojGHMxG1tjTkkfJSq0BOodCVIcreRgRXHsbBBvQaJpJ7RS4jZRahJOLA6NSIuTWwnVyHzG71VhekbViSiZ2c=
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(5050001)(7020095)(20181119110)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(201702181274)(2017031323274)(2017031324274)(2017031322404)(1601125500)(1603101475)(1701031045);
 SRVR:AM5EUR02HT068; 
x-ms-traffictypediagnostic: AM5EUR02HT068:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-message-info: b8rOXHWpw6Wrno+kNy1mo50ZzGV/VGiRsTv0r+gApi9oo1XUNTo2BUe8BavdjZxgcU/EPhzvMEm+qEaCfrXDgPE5DOWmOvbyAGjLdVQOYX06rymItOPBMrRF0DNPn2OGTOkdPzT4SwCF+dLQkGUdJUupRQ767q4DWMI4Je6tLW0GzoqU5VdSFMuFkIzHI81F
MIME-Version: 1.0
X-OriginatorOrg: live.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 9c82182d-7ce7-47db-234d-08d6da286cdd
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 May 2019 18:00:47.8403 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5EUR02HT068
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_110052_356137_0D49D25D 
X-CRM114-Status: GOOD (  19.69  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe06:0:0:0:824 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (xfan1024[at]live.com)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (xfan1024[at]live.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 NORMAL_HTTP_TO_IP      URI: URI host has a public dotted-decimal IPv4
 address
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH] interface-ip: fix find locally
 addressable target for p2p
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

Hi, the email replace TAB with SPACE, so apply failed.
So, I put the patch file in my server

	http://167.88.124.64/0001-interface-ip-fix-find-locally-addressable-target-for.patch

>  
> Hi
> 
> On Thu, May 16, 2019 at 5:09 PM Tan Xiaofan <xfan1024@live.com> wrote:
> >
> > Hi, I add some explanation to the patch
> >
> > From 57007eef77f266e40640a2c76aabd56fd37553f7 Mon Sep 17 00:00:00 2001
> > From: xiaofan <xfan1024@live.com>
> > Date: Thu, 16 May 2019 21:12:47 +0800
> > Subject: [PATCH] interface-ip: fix find locally addressable target for p2p
> >
> > In case of tunnel over PPP(such as gretap over l2tp): tunnel interface
> > use PPP's peer address as remote address, netifd script will call
> > proto_add_host_dependency function, then netifd will search which device
> > can reach to the remote address. Before the patch, netifd don't consider
> > the PPP interface can reach to the remote address, so netifd will select
> > default route to remote address, it will lead to remote address unreachable.
> The patch fails to apply with the updated commit description; please
> resend after you've created the patch via git format-patch with the
> updated git commit description
> 
> Hans
> >
> > Signed-off-by: xiaofan <xfan1024@live.com>
> > ---
> >  interface-ip.c | 3 +++
> >  1 file changed, 3 insertions(+)
> >
> > diff --git a/interface-ip.c b/interface-ip.c
> > index 6900cd7..8d5587c 100644
> > --- a/interface-ip.c
> > +++ b/interface-ip.c
> > @@ -196,6 +196,9 @@ __find_ip_addr_target(struct interface_ip_settings *ip, union if_addr *a, bool v
> >	if (v6 != ((addr->flags & DEVADDR_FAMILY) == DEVADDR_INET6))
> >	 continue;
> >
> > +  if (!v6 && addr->point_to_point && a->in.s_addr == addr->point_to_point)
> > +   return true;
> > +
> >	/* Handle offlink addresses correctly */
> >	unsigned int mask = addr->mask;
> >	if ((addr->flags & DEVADDR_FAMILY) == DEVADDR_INET6 &&
> > --
> > 2.17.1
> >
> >
> >
> >
_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
