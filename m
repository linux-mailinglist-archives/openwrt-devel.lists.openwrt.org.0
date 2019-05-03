Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3E11132D8
	for <lists+openwrt-devel@lfdr.de>; Fri,  3 May 2019 19:05:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wMg247sSGYS/VfKil7qHbaY5L1I5aNEdKxe//DIBkNo=; b=tCyABsSW9Mxn73
	BxtiicauLmf4o703q+Y90B229/pjBBr4E/a5NT3otlCdwpRYHMLbYQxEKq3ynSMQTXIkHRBfT3CTW
	SQStpAhlFndKMREkD8+zulXBVHidGVJVhmf+Z6p4TBlYhtDeKzFJdXSSFbyyjK2DrPueE/pD879hH
	l62r1ODfFRBbKXe1dpv19DpNuN04TuDz3xEQUKLqJX6g/zhr3gB9fdo2d23rXpTxMccPPf1HICGRe
	XjLlFyr4BLm2VyQfgszxh34zSAfVlwhNQ5VhDpKijBj/SVwzrSkmFiBeLmsAw1UaLw94kH/IrSLHb
	GDOnl1KJsVOTMiPhx0Ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMbcZ-0006kd-Gb; Fri, 03 May 2019 17:05:15 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMbcO-00063M-P1
 for openwrt-devel@lists.openwrt.org; Fri, 03 May 2019 17:05:07 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 405D14E4D;
 Fri,  3 May 2019 19:05:02 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 0a1592f2;
 Fri, 3 May 2019 19:05:00 +0200 (CEST)
Date: Fri, 3 May 2019 19:05:00 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Klaus Kudielka <klaus.kudielka@gmail.com>
Message-ID: <20190503170500.GA73395@meh.true.cz>
References: <20190424191439.32298-1-klaus.kudielka@gmail.com>
 <20190424191439.32298-2-klaus.kudielka@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190424191439.32298-2-klaus.kudielka@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_100505_147036_759AC28A 
X-CRM114-Status: UNSURE (   6.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH v2 1/2] base-files: improve
 lib/upgrade/common.sh
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
Cc: openwrt-devel@lists.openwrt.org, Tomasz Maciej Nowak <tomek_n@o2.pl>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Klaus Kudielka <klaus.kudielka@gmail.com> [2019-04-24 21:14:38]:

Hi Klaus,

> Remove workarounds for the old, inconsistent behaviour from the following
> targets: apm821xx, brcm2708, omap, sunxi.

I'm willing to push the fix for mvebu (which the patch series is about), so
please don't touch other targets.  This should go into separate patch(es) and
in order to push it, I would need some Tested-by, Reviewed-by or Acked-by for
every platform separately.

> Fixes: 4e8345ff68 ("mvebu: base-files: autodetect upgrade device")
> 
> Signed-off-by: Klaus Kudielka <klaus.kudielka@gmail.com>
> Acked-by: Tomasz Maciej Nowak <tomek_n@o2.pl>

Tomasz, you seem pretty confident about this changes, how is that? :-)

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
