Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4631213546
	for <lists+openwrt-devel@lfdr.de>; Sat,  4 May 2019 00:11:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=3vtt55w/FAzWxZyo10RYFtohIpFRZ8o3rRsz5t+nsBQ=; b=r4pIWMBelxAS0pZJDUcm7GO13K
	uFAHAW0HYqN9d6/5a4JDr1Kmt6nLnLlLIzKajJ/HDKDmwOrMjyQ2R152ArOaiCcO+rtujwoB5fqgI
	Clpcf/BKZEy03C//HKew6N+IEAH1UPWkhSmHPhI+euxDaQBZ0HmBNghzfi439tPF6uniP6X09dw5p
	wlxJhJQh1JjjKYcb8IywUTbVQaM7MqYUbmEyKSPTnA4KLa5eKB8DoR/ZbyKuh3CIqMHz7fJLsauWq
	UCTgZcFQ+5W+Y/4We9bzwu3rDMiVysdWeksd3qyPw9TIYoYA4ArHVGeplkwgyyb7PNXn7BjeBoFCf
	unU3lQ9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMgOr-00068Z-UN; Fri, 03 May 2019 22:11:25 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMgOk-00068B-3b
 for openwrt-devel@lists.openwrt.org; Fri, 03 May 2019 22:11:20 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id E252C34B8;
 Sat,  4 May 2019 00:11:13 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 0455bde4;
 Sat, 4 May 2019 00:11:12 +0200 (CEST)
Date: Sat, 4 May 2019 00:11:12 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Hauke Mehrtens <hauke@hauke-m.de>
Message-ID: <20190503221112.GJ71477@meh.true.cz>
References: <20190501174224.19089-1-tomek_n@o2.pl>
 <20190501174224.19089-8-tomek_n@o2.pl>
 <325719b5-84cf-005a-24b3-219a98dbd8fa@hauke-m.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <325719b5-84cf-005a-24b3-219a98dbd8fa@hauke-m.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_151118_306197_80134736 
X-CRM114-Status: UNSURE (   8.73  )
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
Subject: Re: [OpenWrt-Devel] [PATCH 7/8] mvebu: use device-tree board
 detection
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
Reply-To: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Cc: openwrt-devel@lists.openwrt.org, Tomasz Maciej Nowak <tomek_n@o2.pl>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hauke Mehrtens <hauke@hauke-m.de> [2019-05-04 00:03:29]:

Hi,

> > diff --git a/target/linux/mvebu/base-files/lib/preinit/79_move_config b/target/linux/mvebu/base-files/lib/preinit/79_move_config
> > index f7e23cc324..640fb5cdad 100644
> > --- a/target/linux/mvebu/base-files/lib/preinit/79_move_config
> > +++ b/target/linux/mvebu/base-files/lib/preinit/79_move_config
> > @@ -9,7 +9,7 @@ move_config() {
> >  
> >  	if export_bootdevice && export_partdevice partdev 1; then
> >  		case $(board_name) in
> > -			armada-385-turris-omnia)
> > +			cznic,turris-omnia)
> 
> This does not apply correctly, the old version uses "turris-omnia" and
> not "armada-385-turris-omnia".

Tomasz has added following remark:

 "Series is applicable after "mvebu: fix board_name condition in 79_move_config"
  by Klaus Kudielka.  https://patchwork.ozlabs.org/patch/1090367"

I've this fix queued[1] already, but feel free to take it through your
staging tree completly.

1. https://git.openwrt.org/?p=openwrt/staging/ynezz.git;a=commit;h=a2253ed53367980c6151dd3bd6a6a564a7e1a2f3

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
