Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB88A5ADDA
	for <lists+openwrt-devel@lfdr.de>; Sun, 30 Jun 2019 02:26:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F0lejvR4tjzzTZtat1inhVoqwa2PYxFmD4dXlRJIIV0=; b=gj8ctu+LmTHVMg
	xa9LUR/iSbtuPP8HiS9qkHhwCSA/AAsmG0nmO52mE3afDo2HCbshVm+eU745EWJ1ic7qhFlmcPU4L
	yg2tDvE4SSwUh/7sY7SO/2UmR0Y+WdIWWOo8xegHBYxY/5jYHM+T/NsTMIAESJNQjzCF0yLm2+ZRF
	P61GE5IAwj9sqtUX4tDKUfDKgK1OSUnRgviYk9gC1fs5NtVN1y1PZ6ZgrJLzOYXWlapVj+CZ1zK1i
	kQ9X7WbYKx/o3qHMXNHNmIC5jWRW8x0EwUkEU7pYh4pGd+GWtFNqcmbWaxwTU4SyDhxh12PtIE2yx
	bJqvHb/n+ssPr+sT3c5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhNfH-0006cL-A0; Sun, 30 Jun 2019 00:25:55 +0000
Received: from smtp-auth.no-ip.com ([8.23.224.60] helo=out.smtp-auth.no-ip.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhNf8-0006bm-EN
 for openwrt-devel@lists.openwrt.org; Sun, 30 Jun 2019 00:25:48 +0000
X-No-IP: flyn.org@noip-smtp
X-Report-Spam-To: abuse@no-ip.com
Received: from www.flyn.org (unknown [68.134.9.136])
 (Authenticated sender: flyn.org@noip-smtp)
 by smtp-auth.no-ip.com (Postfix) with ESMTPA id F0B2237FA83;
 Sat, 29 Jun 2019 17:25:42 -0700 (PDT)
Received: from imp.flyn.org (localhost [127.0.0.1])
 by www.flyn.org (Postfix) with ESMTP id CC3FAE4004A;
 Sat, 29 Jun 2019 20:25:41 -0400 (EDT)
Received: by imp.flyn.org (Postfix, from userid 1101)
 id 6F76022A019C; Sat, 29 Jun 2019 20:25:41 -0400 (EDT)
Date: Sat, 29 Jun 2019 20:25:41 -0400
From: "W. Michael Petullo" <mike@flyn.org>
To: Dmitry Tunin <hanipouspilot@gmail.com>
Message-ID: <20190630002541.GA32169@imp.flyn.org>
References: <20190101233636.GA11899@imp.flyn.org>
 <CACna6rztAh9S-O8nd1M=Vp4FoWzGe+GGa6HgTDHP+XdYnsJ_Pw@mail.gmail.com>
 <20190309154709.GA26126@imp.flyn.org>
 <CANoib0FOsH1TugCh4kfQz5=a9FBEqaYO7RZXi0_G0n1MZrFc8g@mail.gmail.com>
 <20190309181748.GA385@imp.flyn.org>
 <CANoib0EvFHaQAVbNb3UpFBRfWUXEeq9fGxyVSXjWr=Gn3eq6tA@mail.gmail.com>
 <CANoib0F22FOFoPmzX0H=J4PG5bxdZnhcQF4iXaccxam4rPpERA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CANoib0F22FOFoPmzX0H=J4PG5bxdZnhcQF4iXaccxam4rPpERA@mail.gmail.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190629_172546_494334_DB7BB15D 
X-CRM114-Status: UNSURE (   8.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [8.23.224.60 listed in list.dnswl.org]
Subject: Re: [OpenWrt-Devel] ath9k broken
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
Cc: =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

> You can build with the 4.9 kernel. I think that something like
> https://git.openwrt.org/?p=openwrt/openwrt.git;a=commit;h=3b53d6fdbc241173b4264aa49142ba94d406a806
> 
> is needed for your SoC.

The following patch seems to fix this. See also
https://github.com/openwrt/openwrt/pull/2182.

diff --git a/target/linux/ar71xx/files/arch/mips/ath79/mach-rb4xx.c b/target/linux/ar71xx/files/arch/mips/ath79/mach-rb4xx.c
index 722993ff9b..edf90e1872 100644
--- a/target/linux/ar71xx/files/arch/mips/ath79/mach-rb4xx.c
+++ b/target/linux/ar71xx/files/arch/mips/ath79/mach-rb4xx.c
@@ -88,7 +88,7 @@ static struct platform_device rb4xx_nand_device = {
 	.id	= -1,
 };
 
-static struct ath79_pci_irq rb4xx_pci_irqs[] __initdata = {
+static struct ath79_pci_irq rb4xx_pci_irqs[] = {
 	{
 		.slot	= 17,
 		.pin	= 1,

-- 
Mike

:wq

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
