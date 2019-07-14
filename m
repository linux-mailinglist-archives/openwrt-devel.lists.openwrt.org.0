Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7F9B6812B
	for <lists+openwrt-devel@lfdr.de>; Sun, 14 Jul 2019 22:33:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=vKVh2kxwIPsJ6R8qRlnc0UvSceOAmdGcKD0G5CXAH9k=; b=XWCTgNiLcPpDV7moVO730OmG/X
	oHEl5Y+nrrYvzclYyi0a82QQSufghDNRg0Vx+mQwt+d/AEu/O2Ga6vrHhqfrUwn1sAt9y3X6qIZZV
	iNvLA9+l0OR9wHZW7gpFGZJ7QJ3atIx7y9HI3xyP6uq5llLsZk5oQPmwu+MyBCsWWcvre9MiHuY1b
	DHhgYnxidz/TA4sAN+jMLl1+vDLdQglN8UFpRepzF1eXJ4gQ3Vqz+ohIARL0Y82yzoxO5SCFUGztI
	D5eUuwEP6B03eEVWXMZKlIqV079DKa/vFhKG+1kPSoiqvw3UeTEBNM5vzS9VTZvLAIL8yDg3iJaUY
	4Eu1o+pw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmlBZ-0004iv-Su; Sun, 14 Jul 2019 20:33:30 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmlBP-0004iA-7Y
 for openwrt-devel@lists.openwrt.org; Sun, 14 Jul 2019 20:33:20 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id D6B8E357A;
 Sun, 14 Jul 2019 22:33:14 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 103bc4fb;
 Sun, 14 Jul 2019 22:33:07 +0200 (CEST)
Date: Sun, 14 Jul 2019 22:33:07 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Chuanhong Guo <gch981213@gmail.com>
Message-ID: <20190714203307.GA41205@meh.true.cz>
References: <20190714163428.26303-1-gch981213@gmail.com>
 <20190714163428.26303-3-gch981213@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190714163428.26303-3-gch981213@gmail.com>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190714_133319_424574_FF4D17F6 
X-CRM114-Status: UNSURE (   5.10  )
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
Subject: Re: [OpenWrt-Devel] [PATCH RFC 2/3] ramips: mt76x8: pinctrl: add a
 hack for ESD_MODE bit in GPIO1_MODE
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Chuanhong Guo <gch981213@gmail.com> [2019-07-15 00:34:27]:

Hi,

> To properly solve this problem and the other pinctrl hack in mtk-mmc
> driver we'll need to write a dedicated pinctrl driver for mt76x8,

I would prefer a proper fix instead of this hack series :-)


-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
