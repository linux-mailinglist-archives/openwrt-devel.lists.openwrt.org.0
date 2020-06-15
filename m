Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD6351FA327
	for <lists+openwrt-devel@lfdr.de>; Tue, 16 Jun 2020 00:02:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PlUycFRa+42jTkdkyCLDVyp+zIkPn2GTdwnKnoyqGSg=; b=pLgFrPeY6SAcmi
	8xlTbxZefMv2H9HYAFsCRiKsSxZk2vQxuUj5vpg3KGojwRYil18UhAkvJl0mUo1lCKvDc1Bvcrs5b
	GuY5lUMQoawYCJcecXBqPicKrVKG8tym+GGdKA4AqFpYcQAPhtMwYLRcZJYQF8bLD8WgxRPjjZoxV
	BRLl7djAibZbeiIAmt81M3Fgbt3UZLd5nkZxNnRYimlis4apZYe10g1wHWt9GF0XGh5fOS8/BEeaK
	BRkAHd5prhw/Dkg62GqaYXC+Tcl+6n5lpmaStqjpB/mK3JkrkNuFTaWjPViPUw/eBmYy3jSdEXRHo
	nuwUiHsy4HLkzwEJsnhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkxBQ-0007bz-Nz; Mon, 15 Jun 2020 22:02:24 +0000
Received: from mail-oln040092253058.outbound.protection.outlook.com
 ([40.92.253.58] helo=APC01-SG2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkxBK-0007bS-Cf
 for openwrt-devel@lists.openwrt.org; Mon, 15 Jun 2020 22:02:20 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Obqmuk3x2Hes8H3ZGi70bnGsK0VmXApavCaK8ml4eNH9Crv8oqDYC9GlJazi78epudMEsVdlC1v72H5QLoSJObm3DPzRvWbDzG/6C49q9FMLD5JDG0aIU1FJ2Z+uwnl0WwqLDKv/M6zLYZCz8owknwTLeuGs81mCBvQkLu4uTk2CCbD4A6dQzkrntb0PH5eDf9D1URMz+lNkiiAdPwpPY6bcIZVAo41r/gkH7MAmKzZsbguU5V41SMC6UgD2jr8u2u9A6CcCk4jPC1xv3rKddKVJn1ACK+PhWl4ArTiix6C2FRu16IBm+Rep1p7X9TmSb7HRcHQCjinLu4dP8EpwBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PwQBD+1UVomEr16Dg0i0ChNJl/Ne2+rBtWXGEB5sT1o=;
 b=DQL3wLlKUwdgrt+NDl5ghvR+o2c9kpONYGmC+3+QiWnbP+l515n9oxiQ+IczEy+xUrCWh252NHdMUr5dK5hGsjpInZQLb5Cf4324B29EdCXGcVGD3lObLhKrbCp/RHjlFaFn0SiTKkMEX+wtTgvaFZuRbxdGaFK28/Y1ITilBXXHU/aWmKj+qALptDEbA0oBENQ8eM9BWuiinuT2rJco0ofIHD5HIhHYUzGWvAWFPBZNvQrV72bCOeGYKH9HW9yqwXwwUIlmei8pSI2dTwYUAGpaiJPlUcgXArcnCtLlrw8FS5KFuWS47nTQOkz6YRmr86CTV3Hg/deaQ2bG3fdiVQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PwQBD+1UVomEr16Dg0i0ChNJl/Ne2+rBtWXGEB5sT1o=;
 b=Z5ZwtfmCfl1fqVtGZ504qxhCDbTWXoaS1JD05WkfxjBYdsq7yO+b8dJuZIPxQL4bQIQazJNer6ClMgokdYskLx1YJ4HkrgUM4Q6eQVrqz6AppT1NTgRXaS0GMXdXMZrJyDWARy/dmuToZsuchyfoSKhjt6e8EIiPye/gMOXzmXKGAO8Z232XYq/fWzQyfCsjjoqKsdRCTgsu4U64ZDMfAdAivbUYuwAyKXHmy/79RmPE622ix0Kc3BdFuJJLBayfUMUM2KE8ggKKUZxZenWA1qdQYorZjjUmMJfmqJ5YluH/FaCCVWZ9+IXX3EUPLdj28woro0bLfqwoZDSpKBRVXg==
Received: from HK2APC01FT009.eop-APC01.prod.protection.outlook.com
 (2a01:111:e400:7ebc::52) by
 HK2APC01HT066.eop-APC01.prod.protection.outlook.com (2a01:111:e400:7ebc::420)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3088.18; Mon, 15 Jun
 2020 21:46:07 +0000
Received: from KU1PR01MB2022.apcprd01.prod.exchangelabs.com
 (2a01:111:e400:7ebc::50) by HK2APC01FT009.mail.protection.outlook.com
 (2a01:111:e400:7ebc::93) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3088.18 via Frontend
 Transport; Mon, 15 Jun 2020 21:46:07 +0000
X-IncomingTopHeaderMarker: OriginalChecksum:B04CEE7F9AADD2582E0715967C34993223BFF695687AC2EDF576D114A6AF1997;
 UpperCasedChecksum:04549F1AA170725D7CED40EB4EA9D82D01671589B3401B755CEDF5834FFECBFA;
 SizeAsReceived:7818; Count:49
Received: from KU1PR01MB2022.apcprd01.prod.exchangelabs.com
 ([fe80::3092:2054:43cd:45d3]) by KU1PR01MB2022.apcprd01.prod.exchangelabs.com
 ([fe80::3092:2054:43cd:45d3%7]) with mapi id 15.20.3088.029; Mon, 15 Jun 2020
 21:46:07 +0000
Date: Mon, 15 Jun 2020 22:45:58 +0100
From: Ian Cooper <iancooper@hotmail.com>
To: Hauke Mehrtens <hauke@hauke-m.de>
Message-ID: <KU1PR01MB20229CD51907451E4B9DB7B5AD9C0@KU1PR01MB2022.apcprd01.prod.exchangelabs.com>
In-Reply-To: <96286a2e-0872-85c2-afbd-39b68f889058@hauke-m.de>
References: <KU1PR01MB2022EE2CC6B85C0499DD382CAD860@KU1PR01MB2022.apcprd01.prod.exchangelabs.com>
 <d18a4611-ea02-934d-d170-af6717310435@hauke-m.de>
 <KU1PR01MB2022DE7D987589F9AAB37E0EAD800@KU1PR01MB2022.apcprd01.prod.exchangelabs.com>
 <96286a2e-0872-85c2-afbd-39b68f889058@hauke-m.de>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
X-ClientProxiedBy: LO3P265CA0003.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:bb::8) To KU1PR01MB2022.apcprd01.prod.exchangelabs.com
 (2603:1096:802:23::18)
X-Microsoft-Original-Message-ID: <20200615224558.5fa59678@azeroth>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from azeroth (80.3.14.56) by LO3P265CA0003.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:bb::8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3088.18 via Frontend
 Transport; Mon, 15 Jun 2020 21:46:05 +0000
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
X-Microsoft-Original-Message-ID: <20200615224558.5fa59678@azeroth>
X-TMN: [kZry/5Z242fZCW84833WcWnC7KW3VePD]
X-MS-PublicTrafficType: Email
X-IncomingHeaderCount: 49
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-Correlation-Id: d4327892-4605-481a-85fb-08d811758234
X-MS-TrafficTypeDiagnostic: HK2APC01HT066:
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: vaKn8zm6WSgqwGHsTyPa2ddgUgAWtIaAQeUjTdryGqVG2ID3TNxJW4V5vMWGCyHJ7+bAoZAIsxIYKZXfCSYIfEdaIrGdk8Ure+CSiaVo/uoRc8EA72ls37B9qz/25fPW0W0pyhn1SXjI5Cl5gawLLRwpDggrkc4aT8AEX37EcPUN4l2mSaW5qDlK838IOX/T6KUD/Ab/g8cVhmaVcGJHBg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:0; SRV:;
 IPV:NLI; SFV:NSPM; H:KU1PR01MB2022.apcprd01.prod.exchangelabs.com; PTR:;
 CAT:NONE; SFTY:; SFS:; DIR:OUT; SFP:1901; 
X-MS-Exchange-AntiSpam-MessageData: xNMJ81+yol7PUFF+ikBO9vp6JkNT4/yNJKDgb24G1AKU0LfzcxHJg8DI4Rqd/5QOJfXpuBX5GaEUIDitWxm9WlWfKkjwc4cgMcZQ/GMX+5GidP3E6Xli80oCFOoRApJN47uvs6mOZEdvheSjZ75uWA==
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d4327892-4605-481a-85fb-08d811758234
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jun 2020 21:46:07.0348 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-FromEntityHeader: Internet
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HK2APC01HT066
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_150218_475462_0A4F305B 
X-CRM114-Status: GOOD (  18.93  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.92.253.58 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.2 FORGED_HOTMAIL_RCVD2   hotmail.com 'From' address, but no
 'Received:'
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [iancooper[at]hotmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.92.253.58 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH v2] toolchain: remove gcc libssp and use
 libc variant
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Mon, 15 Jun 2020 23:18:10 +0200 Hauke Mehrtens <hauke@hauke-m.de> wrote:

> On 6/11/20 6:58 PM, Ian Cooper wrote:
> > On Thu, 11 Jun 2020 18:15:04 +0200 Hauke Mehrtens <hauke@hauke-m.de> wrote:
> >   
> >> On 6/6/20 1:42 AM, Ian Cooper wrote:  
> .....
> >>
> >> As nothing activates GCC_LIBSSP it is always false. I think we can
> >> remove this, this is not used by any package in the Kconfig part as far
> >> as I see it and only in some Makefiles and should be removed there
> >> later, but should not harm.  
> > 
> > The approach I was taking was to try to eliminate libssp by making as
> > few changes as possible. Removing it here is fine, but then also requires
> > the removal of the libssp package in package/libs/toolchain/Makefile and 
> > the removal of the dependency from include/package-defaults.mk as you point
> > out below.
> > 
> > There are two additional removals that should be made: in the host build of
> > binutils, where the configure flag --enable-libssp can be removed in the file
> > toolchain/binutils/Makefile and in toolchain/gcc/common.mk to remove the
> > configure option to build libssp if GCC_LIBSSP is enabled. 
> > 
> > I left these in based on the minimal change philosophy. If you think complete
> > removal in this way is desirable I'll make the changes, do a bunch of test
> > builds and send an updated patch.
> > 
> > A git grep shows three references to GCC_LIBSSP in the packages feed. 
> >   
> 
> I would prefer if it gets removed completely in one pull commit. When it
> is not split over multiple commits it is easier to find everything later
> when someone looks at these changes in some years.

In the updated patch I sent out just a few minutes before this reply, everything
is completely removed in one commit. 

> 
> Hauke


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
