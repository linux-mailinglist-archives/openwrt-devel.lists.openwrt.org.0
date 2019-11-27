Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F31210B1D9
	for <lists+openwrt-devel@lfdr.de>; Wed, 27 Nov 2019 16:05:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:
	Message-ID:To:From:Date:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=4W5WyJOHw7N1/gO2b79U+TrdAzkyN4gp0o2/h7a66qY=; b=S+x
	AKBeU61WQCu1/VN6DvTzabdi0VFhVQuQFkcN4gHYFEEhOU5VuTLQL28/FHlwoNm2zI8lbelmVpsPC
	oiul9khQ72ByHD2k+qhnBWj9nGYgg6VzFqYSm8upgjRrwXMRpnWRGiYkoPw7v3wHBfnl6ZpeZvOTO
	khO0SYiGvefdtVkpfeRC6B8fKxAAg7PuuLnpnGE4eCI6eEkbbfbSpF3IxyZOkBFYAix3xmyWe62mA
	91nG5Ghuc/lZT6JFle4oK4ws/X4YYDJOVRVoTaP7/fYx7AxPMlFe3P/qyRI9TEplqUL1uu0CimY8A
	1zqNmGJ0NnC12Rq1uj7Hn0sTccf8kWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZysj-0006iG-4A; Wed, 27 Nov 2019 15:05:29 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZysX-0006Or-57
 for openwrt-devel@lists.openwrt.org; Wed, 27 Nov 2019 15:05:18 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 13FA53D49;
 Wed, 27 Nov 2019 16:05:14 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id c12ed048;
 Wed, 27 Nov 2019 16:05:03 +0100 (CET)
Date: Wed, 27 Nov 2019 16:05:03 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Linus Walleij <linus.walleij@linaro.org>
Message-ID: <20191127150503.GA61235@meh.true.cz>
MIME-Version: 1.0
Content-Disposition: inline
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-Bad-Reply: 'Re:' in Subject but no References or In-Reply-To headers
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_070517_352895_36FC211F 
X-CRM114-Status: UNSURE (   3.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH v2] gemini: Bring up DSA switches
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
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 Pawel Dembicki <paweldembicki@gmail.com>, openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi,

what's the state of this? It's not clear from the discussion, thanks.

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
