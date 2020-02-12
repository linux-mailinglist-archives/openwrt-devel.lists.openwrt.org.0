Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 342F815A95A
	for <lists+openwrt-devel@lfdr.de>; Wed, 12 Feb 2020 13:44:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=JBnn1ZrdbZrH+KiePLl095ekMKL2tN9c0Eop3iitwpo=; b=eDvnNZslRrDzPplTT6AOtvsxlt
	h+jwyG0/wwdbdNE3l7FH+VVUnbEE0kC4eMZOiGJTNZ1AXaF7B1M9HhmxPrQwj3b8be/Vyin1B9om3
	N+DuKGbZ9x6KfhEmVEIKOSHIdLaTo83jySFOOvFdXNKuyXv8wpfxRXtnkKahCquvlPRmVzH20Wn2m
	6ozLOZSYynL3K2YVeDcA685bDeItS3juiZDqB+tvqK6X1i+ticm1se2lobC2h6MA6dh5HpAV1fjsM
	jz3kM+INbCJHrgPRRUNoahaBibVHtxrIumkFkkCSkeEr4fArj0TTZ20o9M5YSFwvJGo14QFpzDi32
	05L3B+Gg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1rN0-0001Hp-KI; Wed, 12 Feb 2020 12:43:58 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1rMt-0001Gt-NB
 for openwrt-devel@lists.openwrt.org; Wed, 12 Feb 2020 12:43:53 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 4E47B48E8;
 Wed, 12 Feb 2020 13:43:47 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 5879f9d2;
 Wed, 12 Feb 2020 13:43:35 +0100 (CET)
Date: Wed, 12 Feb 2020 13:43:35 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Daniel Golle <daniel@makrotopia.org>
Message-ID: <20200212124335.GG38853@meh.true.cz>
References: <Ughs5HFJrT9qPytxpgkaERQ43hT3fgwxTw6chXDd23bf@mailpile>
 <20200211183357.GA551352@makrotopia.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200211183357.GA551352@makrotopia.org>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_044352_314413_BBE10591 
X-CRM114-Status: UNSURE (   8.60  )
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
Subject: Re: [OpenWrt-Devel] [PATCH v4 1/2] serial: ar933x_uart: add rs485
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

Daniel Golle <daniel@makrotopia.org> [2020-02-11 20:33:57]:

Hi,

it really still feels somehow weird, that's mainly why I've suggested to
take this through upstream first in my previous email.

> +@@ -103,10 +106,42 @@ static inline void ar933x_uart_stop_tx_i
> + static inline void ar933x_uart_putc(struct ar933x_uart_port *up, int ch)
> + {
> + 	unsigned int rdata;
> ++	struct serial_rs485 rs485conf = up->port.rs485;
> + 
> + 	rdata = ch & AR933X_UART_DATA_TX_RX_MASK;
> + 	rdata |= AR933X_UART_DATA_TX_CSR;
> +-	ar933x_uart_write(up, AR933X_UART_DATA_REG, rdata);
> ++
> ++	if (rs485conf.flags & SER_RS485_ENABLED) {
> ++		unsigned int timeout = 60000;
> ++		unsigned long flags;
> ++		unsigned int status;
> ++
> ++		/* Disable RX interrupt */
> ++		spin_lock_irqsave(&up->port.lock, flags);

FYI this code path:

 ar933x_uart_interrupt
  ar933x_uart_tx_chars
   ar933x_uart_putc

has acquired spin_lock, disabled TX interrupt, and this codepath:

 ar933x_uart_console_write
  ar933x_uart_console_putchar
   ar933x_uart_putc

has acquired spin_lock and disabled all interrupts already.

> ++		up->ier &= ~AR933X_UART_INT_RX_VALID;
> ++		ar933x_uart_write(up, AR933X_UART_INT_EN_REG, up->ier);

that looks like ar933x_uart_stop_rx() copy&paste

> ++		/* wait for transmission to end */
> ++		do {
> ++			status = ar933x_uart_read(up, AR933X_UART_CS_REG);
> ++			if (--timeout == 0)
> ++				break;
> ++			udelay(1);
> ++		} while ((status & AR933X_UART_CS_TX_BUSY) != 0);

This above looks like ar933x_uart_wait_xmitr() copy&paste but just done
differently, and I miss the point why ar933x_uart_wait_xmitr() cant be reused
here as well.

> ++		ar933x_uart_write(up, AR933X_UART_INT_REG, AR933X_UART_INT_RX_VALID);
> ++		/* remove the character from the FIFO */
> ++		ar933x_uart_write(up, AR933X_UART_DATA_REG, AR933X_UART_DATA_RX_CSR);

I really dont get this part and BTW it possibly breaks `rs485-rx-during-tx`
DTS binding.

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
