Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDC3710EC52
	for <lists+openwrt-devel@lfdr.de>; Mon,  2 Dec 2019 16:31:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=P9J1bP8hDO7546DkDlSdSr8hi6BvIlLbRCD5RGM8zY4=; b=m7zvIU5Rz2FgSROPkM45Hw+i4v
	MWAxNo5Rs/lbY2TeQeGozN3ifY2oSjF7KlkHCfKox6BF8EsL59ZzFElvsKXYFM6WrH8QMI9smzp+F
	8/wigGWrvZhPpecDLMrLUMULQakklMeEtrIMjKLzhRJYmnR0AEqlIBORESGTFyEw9PMpXp18lFSwC
	AxdKmMd0G5tvfXn2B4Fk+WpJvf0mrd5nSaDclgzSp7cOxfWcFQXnHDam0FGHljo8cksfaWmkDflNq
	qivNZCpoU43EQ3TPJehIbhubYYb/VsQF5O+wqLJmE7mwajhl0Ro6saeOiaB5Rh2QvXcnzb5ZOsV75
	k5vGqF7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibnfF-0000YA-07; Mon, 02 Dec 2019 15:31:05 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibnfA-0000Xf-0b
 for openwrt-devel@lists.openwrt.org; Mon, 02 Dec 2019 15:31:01 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 647674C51;
 Mon,  2 Dec 2019 16:30:56 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 2381ff03;
 Mon, 2 Dec 2019 16:30:46 +0100 (CET)
Date: Mon, 2 Dec 2019 16:30:46 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Stijn Tintel <stijn@linux-ipv6.be>
Message-ID: <20191202153046.GB8181@meh.true.cz>
References: <20191201143316.7641-1-foss@volatilesystems.org>
 <087739b6-da98-2fdd-c1f6-12be8b9d0bd5@nic.br>
 <20191202141205.GK61235@meh.true.cz>
 <d908963a-fc38-c82e-1818-b295f676a33d@linux-ipv6.be>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d908963a-fc38-c82e-1818-b295f676a33d@linux-ipv6.be>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_073100_206457_9B9058BB 
X-CRM114-Status: UNSURE (   5.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Henrique de Moraes Holschuh <henrique@nic.br>,
 openwrt-devel@lists.openwrt.org, Stijn Segers <foss@volatilesystems.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Stijn Tintel <stijn@linux-ipv6.be> [2019-12-02 16:45:11]:

> NAK!

ACK, I've Rejected the patch in the Patchwork and removed it from my staging
tree.

> Pushing commits that are known to result in systems no longer booting is
> simply not acceptable, imo.

This patch was for master, development branch so for me its almost same as
testing/unstable in Debian where they still have this microcode update.

> Not everybody reads git log, so it's easily overlooked.

I hope, that nobody is blindly backporting commits into stable branches :-)
Ideally it should be fixes only, right?

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
