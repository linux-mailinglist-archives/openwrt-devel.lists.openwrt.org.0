Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1EFC14D100
	for <lists+openwrt-devel@lfdr.de>; Wed, 29 Jan 2020 20:07:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TM1qluZCQGRX6+nuGJt3GB7uzLJIqzCd718oq5fvOzg=; b=KJ3MTtrDhLXnVJ
	ovR+QqC5Ou3VZ5s172t5sVArwYGy+ANCoC3apFZo3s3dmZOApRQ3f8VfTcGtuB3uKENVhL9jHeWyT
	jFqy3milnBLgfRnkZgge50AX3myxyaGWdMm2oNrQyFx2FQuPf4wIl2DGwyPuirAIz+NHqs/wu4KgH
	/Nwi6wbDGYM5fmbdJDEhrwPg7npMqVrF2sHAW3l/vtkTMwa7v7muVcin7gB6FbDb+IuRlfnINrywa
	ek0thVHgzv4gSnKc5dVPHr9M0ZPgvSkAv7t731yHthoS+fSOJn9gqoOG9kyQehBvw38Wi9WP6s+8W
	HyJTDKtpRm+5DZW7HMcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwsgc-0001Ki-Ey; Wed, 29 Jan 2020 19:07:38 +0000
Received: from mx3.wp.pl ([212.77.101.9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwsgS-0001J5-2z
 for openwrt-devel@lists.openwrt.org; Wed, 29 Jan 2020 19:07:30 +0000
Received: (wp-smtpd smtp.wp.pl 23904 invoked from network);
 29 Jan 2020 20:07:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=1024a;
 t=1580324837; bh=GMCqLXPrXd3ToBAija2gK4M/z3SKUukbdtnbgjUMGog=;
 h=From:To:Cc:Subject;
 b=OLexXC1ZQKXbXI0dkCZ+KIu0zdzkw6DtE0mhbPu4gGtKm9nVfVWcCX78xLiEn7SsV
 z+OpEL45aYnRVPl97S9vtGdY5mIig+9REHl5JG2gKfxSF0+Gi0zfCpZwYTZziTrZeH
 iPJDSihxEhrFrnU8rEUHwGHjihcpmpGh+hyW12W8=
Received: from 89-79-49-72.dynamic.chello.pl (HELO kosmio.komorska)
 (michal.cieslakiewicz@wp.pl@[89.79.49.72])
 (envelope-sender <michal.cieslakiewicz@wp.pl>)
 by smtp.wp.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 29 Jan 2020 20:07:17 +0100
Date: Wed, 29 Jan 2020 20:07:16 +0100
From: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
To: "Roger Pueyo Centelles | Guifi.net via openwrt-devel"
 <openwrt-devel@lists.openwrt.org>
Message-ID: <20200129200716.44ef140a@kosmio.komorska>
In-Reply-To: <mailman.27646.1580316070.2486.openwrt-devel@lists.openwrt.org>
References: <mailman.27217.1580134584.2486.openwrt-devel@lists.openwrt.org>
 <ed6f8dd3-fe44-62e1-f631-4842ff33d373@ncentric.com>
 <bbbdb47a-a1f1-9dd0-1a53-05ab93f218c2@guifi.net>
 <mailman.27646.1580316070.2486.openwrt-devel@lists.openwrt.org>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-slackware-linux-gnu)
MIME-Version: 1.0
X-WP-MailID: 4a4ebb07a1a1f33132547adac00a7633
X-WP-AV: skaner antywirusowy Poczty Wirtualnej Polski
X-WP-SPAM: NO 0000000 [QUOk]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200129_110728_498098_45C7CCE2 
X-CRM114-Status: UNSURE (   8.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.77.101.9 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.77.101.9 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [michal.cieslakiewicz[at]wp.pl]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] ath79: NAND bad eraseblocks in MikroTik
 RouterBOARD 922UAGS-5HPacD
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
Cc: Koen Vandeputte <koen.vandeputte@ncentric.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Wed, 29 Jan 2020 17:40:43 +0100
"Roger Pueyo Centelles | Guifi.net via openwrt-devel"
<openwrt-devel@lists.openwrt.org> wrote:

> Hi all,
>
> It seems like the NAND flash is read with different endiannesses:
>
> [...]
> 
> I wonder, though, which is the "correct" one --or how to change
> ath79's, so that it is coherent with the previous target--.
> 
> Roger
>

Hello Roger,

Please try adding 'qca,nand-swap-dma;' to '&nand' section in
router dts file. This in theory should fix endianness problem.

Explanation:
In ar71xx target this router is initialized by file
target/linux/ar71xx/files/arch/mips/ath79/mach-rb922.c. 
NAND controller setup is located in function rb922gs_nand_init(), there
'ath79_nfc_set_swap_dma(true)' is invoked. In ath79 device tree
such byte-swapping is enabled by setting 'qca,nand-swap-dma'.

By looking at C file, I have also found that this router uses
model-specific ath79_nfc_set_scan_fixup() routine - a functionality
that is not implemented in ath79, because there was no need for such
quirks, at least not until now.

Best regards
Michal

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
