Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50C5C11EE02
	for <lists+openwrt-devel@lfdr.de>; Fri, 13 Dec 2019 23:51:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DEQDSA67IlEiozuIViW8EjWNeXcLsLT7kN00P4COqug=; b=tB5IkgML0jvF2x
	d8k8jqar2/4bWzcqTkXlMHTiPvQNVn7pre4y0FGo9C4TTt8vJ8b36TbRTmC5/pvUWauu16GE7QtCN
	9DXIy7XNYQwYup3UugxuAAehOCdshQRiIwzeJmxfUvQzxso0O6EjgRgbNKCQKuCOXINm0XTG2xvap
	inNrlxp3xhuzc/97QNwOMlZqtTMrgUxScK/3kyOc7yh5Y2ryGKiW4pz3pzeGqQBPXkAydNESNjVVn
	62Y4nRBeXcbVCquV79DZFX2BArMiDrvKaA+twz9r69g2id1ZsGc6d7mgvPRIqbRoIml8t8BSUmmfe
	+GVUG8DzPJOjFDweyT7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iftmR-0007XH-WA; Fri, 13 Dec 2019 22:51:28 +0000
Received: from dazzle.geroedel.de ([2a02:180:6:1::b3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iftmH-0007WJ-Sz
 for openwrt-devel@lists.openwrt.org; Fri, 13 Dec 2019 22:51:19 +0000
Received: from [192.168.15.2] (helo=feeble.bln.roederer.dhs.org)
 by dazzle.geroedel.de with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <devel-sven@geroedel.de>)
 id 1iftmF-000851-60; Fri, 13 Dec 2019 23:51:15 +0100
Received: from strike.bln.roederer.dhs.org ([192.168.8.36]
 helo=strike.localnet)
 by feeble.bln.roederer.dhs.org with esmtp (Exim 4.92)
 (envelope-from <devel-sven@geroedel.de>)
 id 1iftmE-0007Jb-Il; Fri, 13 Dec 2019 23:51:14 +0100
From: Sven Roederer <devel-sven@geroedel.de>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 13 Dec 2019 23:51:14 +0100
Message-ID: <2070834.sci2Q4oWNF@strike>
In-Reply-To: <20191213200723.GX11070@home.paul.comp>
References: <20191213195046.13358-1-devel-sven@geroedel.de>
 <20191213200723.GX11070@home.paul.comp>
MIME-Version: 1.0
X-Spam_score: -2.9
X-Spam_score_int: -28
X-Spam_bar: --
X-Spam_report: Spam detection software, running on the system "dazzle",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 @@CONTACT_ADDRESS@@ for details.
 Content preview:  Am Freitag, 13. Dezember 2019,
 21:07:23 CET schrieb Paul Fertser:
 > Hello, > > On Fri, Dec 13, 2019 at 08:50:46PM +0100, Sven Roederer wrote:
 > > .../ath79/base-files/etc/board.d/02_network | 5 + > > [...] 
 Content analysis details:   (-2.9 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.0 ALL_TRUSTED            Passed through trusted hosts only via SMTP
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
X-SA-Exim-Connect-IP: 192.168.15.2
X-SA-Exim-Mail-From: devel-sven@geroedel.de
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on dazzle
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
 autolearn=unavailable autolearn_force=no version=3.4.2
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on dazzle.geroedel.de)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_145118_084875_83825DD4 
X-CRM114-Status: UNSURE (   3.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH 19.07] ath79: add support for gl-ar750
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
Cc: Paul Fertser <fercerpav@gmail.com>, Luochongjun <luochongjun@gl-inet.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Am Freitag, 13. Dezember 2019, 21:07:23 CET schrieb Paul Fertser:
> Hello,
> 
> On Fri, Dec 13, 2019 at 08:50:46PM +0100, Sven Roederer wrote:
> >  .../ath79/base-files/etc/board.d/02_network   |   5 +
> >  .../etc/hotplug.d/firmware/11-ath10k-caldata  |   1 +
> >  .../ath79/dts/qca9531_glinet_gl-ar750.dts     | 142 ++++++++++++++++++
> >  target/linux/ath79/image/generic.mk           |   9 ++
> 
> Is this not missing the additions to board.d/01_leds ?

Paul,

good point. But also on master seems to be no entry for this board in 
"01_leds". So I assume the default case fits  for it.

Sven



_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
