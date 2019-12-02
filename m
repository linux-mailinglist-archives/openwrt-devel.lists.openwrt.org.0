Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E54910EB61
	for <lists+openwrt-devel@lfdr.de>; Mon,  2 Dec 2019 15:12:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=wpbcwGl1asqVvWbDZ4eVAQRw4u6/coK6CF/hDhA18/Q=; b=M2jnyNnvJaiE/IgT1UiwFdl7+c
	U3m58+tPpGFWTfNDIUfEufc6v3wUjOyopJg5MedTm+jCecZ2qfo97epToloRJfUV6ag8FUQY2iUVG
	TDIpP/OJCOx73pGDy0tSSjTSFFBIDw3ywm5xzcg/xRHYw4U2Fj+Q/NYOU01UvozdUDNs6bLwdilRE
	NHy9lP6nkSH8i70K+z0n/mluSQzNEQChkOhjvh6nlyD66kdy8p48HF9wsOMMUeYsspzu8KLRgpiUg
	NMWZoosRG3DRtuS7zOrEOhn+5JWo0cMmM96c/Oz1tXW6VYbCoSpvWVprKqFqZq9LqxLTlfnnYMOiw
	5yzx4z4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibmRA-0008T0-Gb; Mon, 02 Dec 2019 14:12:28 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibmR3-0008Rj-Ne
 for openwrt-devel@lists.openwrt.org; Mon, 02 Dec 2019 14:12:23 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 7EE464835;
 Mon,  2 Dec 2019 15:12:15 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 5b44fa9d;
 Mon, 2 Dec 2019 15:12:05 +0100 (CET)
Date: Mon, 2 Dec 2019 15:12:05 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Henrique de Moraes Holschuh <henrique@nic.br>
Message-ID: <20191202141205.GK61235@meh.true.cz>
References: <20191201143316.7641-1-foss@volatilesystems.org>
 <087739b6-da98-2fdd-c1f6-12be8b9d0bd5@nic.br>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <087739b6-da98-2fdd-c1f6-12be8b9d0bd5@nic.br>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_061221_921090_DA77EF2E 
X-CRM114-Status: UNSURE (   7.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines 0.5 PDS_BTC_ID             FP reduced Bitcoin ID
Subject: Re: [OpenWrt-Devel] [PATCH] amd64-microcode: update to 20191021
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
Reply-To: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Cc: openwrt-devel@lists.openwrt.org, Stijn Segers <foss@volatilesystems.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Henrique de Moraes Holschuh <henrique@nic.br> [2019-12-02 08:23:40]:

Hi,

> This one regresses some AMD processors in some (all?) motherboards.  It has
> been reported to Ubuntu by several users.

for reference[1]:

 amd64-microcode (3.20191021.1+really3.20180524.1~ubuntu0.16.04.2) xenial-security; urgency=medium

   * Revert to 3.20180524.1 version of microcode because of regressions on
     certain hardware. (LP: #1853614[2])

From LP[2]:

 "After installing latest microcode update: version
  3.20191021.1ubuntu0.18.04.2, the system is stuck in a reboot loop."

 model name : AMD EPYC 7542 32-Core Processor

From[3] it seems like this update is exactly for those new CPUs:

 * Update AMD cpu microcode for processor family 17h

Where 17h is Ryzen 3|5|7|9, Threadripper and EPYC.

> It is fine for master, maybe, but I would not let it into a stable OpenWRT
> release right now.

Well, master could become next release in the one of upcoming months. If AMD
don't fix the regressions until then, we might risk getting those regressions
into the next stable release. 

If 20180524 is good for Ubuntu, it probably means, that this microcode updates
probably doesn't contain any security fixes, right?  I mean, we can probably
skip this update as well.

Anyway, I've added this patch into my staging tree[4] with some warning and
will merge it unless someone NAK it in the next 14 days.

1. https://launchpad.net/ubuntu/+source/amd64-microcode/+changelog
2. https://bugs.launchpad.net/ubuntu/+source/amd64-microcode/+bug/1853614
3. https://salsa.debian.org/hmh/amd64-microcode/commit/c3cac7a69082b7494a823b263985e375999e3665
4. https://git.openwrt.org/3fd3180f5530cb26f6cc9ea316326a7a00729210

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
