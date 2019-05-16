Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96BFC20DFA
	for <lists+openwrt-devel@lfdr.de>; Thu, 16 May 2019 19:28:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:In-Reply-To:
	References:Message-ID:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mxDbOELsk37UZocuVrz9lOUX1IXOvSQep8NwE5DzYoM=; b=SfSQ4kR3XhZ+Fl
	5Ke6ICreiOtAUy2cIsIQMuxl7ENL9RMRnJ6oWw7K4HLFkCfaAgFOoxo+8EoUMPnwCYVoU9qYd+YTS
	FPc3DOPNObfzrVZhLbaiFrZPALKXurWADWhfoaz+OdMrDg8ejyYnRvDXXdjnze1A4Ft6ryIjmFf9r
	yKAVN0nIJwrgCbm81oi1HzYDsotVmkHfYlpuooWtyju32M41ACLz1xcYFCByRs15vlOyY1DrZAnIc
	+YryjN+FF8fBkdrjPmaGM5P2wB1WdF2cHoJclWwpmj6bKU5BKrZ5TtaQee/QmsXwBgG7zGW269vaE
	f7mjViliIP19khOzxZAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRKAk-0004Ga-IS; Thu, 16 May 2019 17:28:02 +0000
Received: from mail-oln040092067032.outbound.protection.outlook.com
 ([40.92.67.32] helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRKAd-0004G6-0l
 for openwrt-devel@lists.openwrt.org; Thu, 16 May 2019 17:27:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=live.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eBTcT1Wb8+ewAuWyLH6tRgW3ibmIk93Xi7N7DZxK9fk=;
 b=OrUJj0febwoKHAE0jikux9xjASQERgdLfJ0ImTghBhyJtTsujHXnU3dr9J+A0UuYvwodGVdzwfimPWkPTKvRs/M8uzVcKNbT4q2RGsWGrzikr1xNJMv5l7YSpcrkNManrt6lvd0CgJWl/iSbvAv5YrxGN7ryAclldQYZuKk2UHucl0BMl4KLdIXBX/LGITpn7gmXQGUCpdCj8SJX7z5gNzmOr5YuKxQe7xdleMDxFbMRovLYammcwlKss6AINQt2awodhoE6Um7/el06tCV6EfZV6f149Vd1AKTxrCKSnZtOyBKH64O6aXlkUQUQIIS6tAJVKYyxaBPESeOIPDk3jw==
Received: from VE1EUR02FT048.eop-EUR02.prod.protection.outlook.com
 (10.152.12.60) by VE1EUR02HT035.eop-EUR02.prod.protection.outlook.com
 (10.152.13.92) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1856.11; Thu, 16 May
 2019 17:27:48 +0000
Received: from AM6PR03MB4821.eurprd03.prod.outlook.com (10.152.12.57) by
 VE1EUR02FT048.mail.protection.outlook.com (10.152.13.177) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.1900.16 via Frontend Transport; Thu, 16 May 2019 17:27:48 +0000
Received: from AM6PR03MB4821.eurprd03.prod.outlook.com
 ([fe80::e5e2:30fd:1274:902b]) by AM6PR03MB4821.eurprd03.prod.outlook.com
 ([fe80::e5e2:30fd:1274:902b%7]) with mapi id 15.20.1900.010; Thu, 16 May 2019
 17:27:48 +0000
From: Tan Xiaofan <xfan1024@live.com>
To: Hans Dedecker <dedeckeh@gmail.com>
Thread-Topic: =?gb2312?B?u9i4tDogW09wZW5XcnQtRGV2ZWxdIFtQQVRDSF0gaW50ZXJmYWNlLWlwOiBm?=
 =?gb2312?Q?ix_find_locally_addressable_target_for_p2p?=
Thread-Index: AQHVDAYgBLwIj4rXG0+Oxwt/mwR5+qZtikZg
Date: Thu, 16 May 2019 17:27:48 +0000
Message-ID: <AM6PR03MB482128572B599B74D0946A7FB50A0@AM6PR03MB4821.eurprd03.prod.outlook.com>
References: <AM6PR03MB4821E7027EF336E03B57C642B50A0@AM6PR03MB4821.eurprd03.prod.outlook.com>
 <CAJLcKsHrZ+SKkFz+w_Cb_aSztT9yB6p9xYdnc1c+Mdwh6ftOig@mail.gmail.com>
 <AM6PR03MB4821A0DBD99D2B7F7F49254DB50A0@AM6PR03MB4821.eurprd03.prod.outlook.com>,
 <CAJLcKsFycig9BNYkh24CeFAjadb+wJgO4uqmaFp0Qa86P8WNtA@mail.gmail.com>
In-Reply-To: <CAJLcKsFycig9BNYkh24CeFAjadb+wJgO4uqmaFp0Qa86P8WNtA@mail.gmail.com>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:C7FB775318A2F5E8ADF4622547C6CFABEB8B4670FD59E1A9D7B240FA9877306A;
 UpperCasedChecksum:80788CB2F9B8A956415A7AE10DD356B645D0CEE84DA0ADB81C1F2609E4CEA306;
 SizeAsReceived:7199; Count:44
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [fq3E6wHkTTweO6wEd4ITKpo3aoVYPmRF]
x-ms-publictraffictype: Email
x-incomingheadercount: 44
x-eopattributedmessage: 0
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(5050001)(7020095)(20181119110)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031323274)(2017031324274)(2017031322404)(1601125500)(1603101475)(1701031045);
 SRVR:VE1EUR02HT035; 
x-ms-traffictypediagnostic: VE1EUR02HT035:
x-microsoft-antispam-message-info: mSJyMw3lPqwnNrIRhpgGDq4/6+rmKZLRtjnQV6wyAzvKML65KKq/94UKqnzGj3DENz7BObVcoVFRd46OxvQ3C9gk4Y0sTD6qTne19Rknw3K+ZsND9F5Y1oxXc0X3IFD/FtOXKgT6tbx7xShIPPuAUVv9ZXAvQih3K3rw21FhDcCJuNimFgYm7cgKn5wUVxDF
MIME-Version: 1.0
X-OriginatorOrg: live.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 11cb0e5b-c99d-44bc-f66d-08d6da23d0e2
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 May 2019 17:27:48.2170 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1EUR02HT035
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_102755_148357_90D11ED4 
X-CRM114-Status: GOOD (  21.62  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.67.32 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (xfan1024[at]live.com)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (xfan1024[at]live.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] =?gb2312?b?u9i4tDogIFtQQVRDSF0gaW50ZXJmYWNlLWlw?=
 =?gb2312?b?OiBmaXggZmluZCBsb2NhbGx5IGFkZHJlc3NhYmxlIHRhcmdldCBmb3IgcDJw?=
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

Hi, this is a new patch

From 66c6e2d739daf60c3d4336b6ec8fe24334ee44eb Mon Sep 17 00:00:00 2001
From: xiaofan <xfan1024@live.com>
Date: Fri, 17 May 2019 01:15:11 +0800
Subject: [PATCH] interface-ip: fix find locally addressable target for p2p

In case of tunnel over PPP(such as gretap over l2tp): tunnel interface
use PPP's peer address as remote address, netifd script will call
proto_add_host_dependency function, then netifd will search which device
can reach to the remote address. Before the patch, netifd don't consider
the PPP interface can reach to the remote address, so netifd will select
default route to remote address, it will lead to remote address unreachable.

Signed-off-by: xiaofan <xfan1024@live.com>
---
 interface-ip.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/interface-ip.c b/interface-ip.c
index 6900cd7..8d5587c 100644
--- a/interface-ip.c
+++ b/interface-ip.c
@@ -196,6 +196,9 @@ __find_ip_addr_target(struct interface_ip_settings *ip, union if_addr *a, bool v
 		if (v6 != ((addr->flags & DEVADDR_FAMILY) == DEVADDR_INET6))
 			continue;
 
+		if (!v6 && addr->point_to_point && a->in.s_addr == addr->point_to_point)
+			return true;
+
 		/* Handle offlink addresses correctly */
 		unsigned int mask = addr->mask;
 		if ((addr->flags & DEVADDR_FAMILY) == DEVADDR_INET6 &&
-- 
2.17.1



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
> >    if (v6 != ((addr->flags & DEVADDR_FAMILY) == DEVADDR_INET6))
> >     continue;
> >
> > +  if (!v6 && addr->point_to_point && a->in.s_addr == addr->point_to_point)
> > +   return true;
> > +
> >    /* Handle offlink addresses correctly */
> >    unsigned int mask = addr->mask;
> >    if ((addr->flags & DEVADDR_FAMILY) == DEVADDR_INET6 &&
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
