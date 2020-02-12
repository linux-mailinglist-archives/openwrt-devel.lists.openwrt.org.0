Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E661015AD78
	for <lists+openwrt-devel@lfdr.de>; Wed, 12 Feb 2020 17:34:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=sjkOZCL/BQ+ir5WLNpjVCVV4Z85Z5rpZZiB1ReoSlO8=; b=lEdQWgpjDzjov82fPQlH0GvCwd
	9Gm5YRXJMIilDqACxrh3b0TwC4jfKoYnMOd6fl2ARmkOXnbkWvQ15h2la53bdNoFjDGI8921OZaud
	F/d+g5LDF0/hVwXCed8CNRs9u1V4mJ2aeAtQJCg+bqF/uYLyz+CL9kGYX+Zfd2ZCC0Vz5e4u2BkPV
	6jiyALptS1AEkaoPPq84vLMJFCI+mxHQhcQrh32xbzmwOYAdrHKw5xW7reKXK0xp8+4pbUCypQRvy
	yXDS5XEWB6YUt4KUzF9CE5Rydb6GfiW1Zv69jLycHafcpmLCuizn4PdjuyvXLb/dPMGDNID5DcQMH
	6qT4pKdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1uy1-0001mk-7D; Wed, 12 Feb 2020 16:34:25 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1uxs-0001mD-HP
 for openwrt-devel@lists.openwrt.org; Wed, 12 Feb 2020 16:34:18 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 3295933FA;
 Wed, 12 Feb 2020 17:34:11 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id b8b4c889;
 Wed, 12 Feb 2020 17:33:59 +0100 (CET)
Date: Wed, 12 Feb 2020 17:33:59 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Daniel Golle <daniel@makrotopia.org>
Message-ID: <20200212163359.GA19231@meh.true.cz>
References: <20200212124335.GG38853@meh.true.cz>
 <20200212143736.GA519537@makrotopia.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200212143736.GA519537@makrotopia.org>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_083416_725056_DFD65CB1 
X-CRM114-Status: UNSURE (   5.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH v5 1/2] serial: ar933x_uart: add rs485
 support
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
Cc: Chuanhong Guo <gch981213@gmail.com>, openwrt-devel@lists.openwrt.org,
 Adrian Schmutzler <mail@adrianschmutzler.de>, Piotr Dymacz <pepe2k@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Daniel Golle <daniel@makrotopia.org> [2020-02-12 16:37:36]:

...

> ++static inline int ar933x_uart_is_half_duplex(struct ar933x_uart_port *up)
> ++{

That function name is quite confusing as it's checking for 485/HD.

> ++	return (up->port.rs485.flags & SER_RS485_ENABLED) &&
> ++		  !(up->port.rs485.flags & SER_RS485_RX_DURING_TX);
> ++}

...

> +-	if (!uart_circ_empty(xmit))
> ++	if (!uart_circ_empty(xmit)) {
> + 		ar933x_uart_start_tx_interrupt(up);
> ++	} else if (ar933x_uart_is_half_duplex(up)) {
> ++		ar933x_uart_wait_tx_complete(up);
> ++		ar933x_uart_rx_flush(up);
> ++		ar933x_uart_start_rx_interrupt(up);
> ++	}

This change looks strange, how are these two related? Where do you re-enable
the TX interrupts in that 485/HD case?

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
