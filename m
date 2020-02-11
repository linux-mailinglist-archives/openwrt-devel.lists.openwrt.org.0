Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56922159653
	for <lists+openwrt-devel@lfdr.de>; Tue, 11 Feb 2020 18:41:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ANZjY9bDoRN/Iy/wl9zyT4X/1ncpFpLyDj7IkNdVxNI=; b=SqNobIfF+pYgwE5bucnMdvmjtB
	iD4AveBSFxdSPfbDFoMnsWYaLxkbi3/mBCHyBJlAyPNa2AVW0lj9Is9hPkRHdxMX6puziUaDhSrmD
	J5Ku/+PMFFbrIoRrliNFZjwpZ14MuUiyoMKyXN4nf/shqCt9tVX8EomocNGc1x5d1r/DFA3in+5uB
	q7NO7V/Nekr3VDKg2ocTTE3L0gZQ8HYgGyKY1lhrJPKGxHY4auHhYbZVB9hRfpr0mAf38kic9kzMJ
	5SkGjIGqLJ8R3XHU0P0RcnRZZu75yiey7OvR/OKvuPJkn3V78YICIhHPJdsBSdTiXEMBDfyAKmTcz
	2AW5W5SQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1ZWr-00051e-G0; Tue, 11 Feb 2020 17:40:57 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1ZWk-00050y-HZ
 for openwrt-devel@lists.openwrt.org; Tue, 11 Feb 2020 17:40:52 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 000DA49E5;
 Tue, 11 Feb 2020 18:40:39 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id b4e9a51e;
 Tue, 11 Feb 2020 18:40:28 +0100 (CET)
Date: Tue, 11 Feb 2020 18:40:28 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Daniel Golle <daniel@makrotopia.org>
Message-ID: <20200211174028.GE38853@meh.true.cz>
References: <Ughs5HFJrT9qPytxpgkaERQ43hT3fgwxTw6chXDd23bf@mailpile>
 <20200211163251.GA405600@makrotopia.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200211163251.GA405600@makrotopia.org>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_094050_731600_93D8868E 
X-CRM114-Status: UNSURE (   7.03  )
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
Subject: Re: [OpenWrt-Devel] [PATCH v3 1/2] ath79: ar9330-uart: add support
 for half-duplex using DTR signal
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
 Adrian Schmutzler <mail@adrianschmutzler.de>,
 Karl Palsson <karlp@tweak.net.au>, Piotr Dymacz <pepe2k@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi,

> Add support for RS485 tranceiver with transmit/receive switch hooked
> to the DTR GPIO.
          ^
now it's RTS, but it could be whatever (ditto with subject).

This should probably be "serial: ar933x_uart: add rs485 support" and taken
through upstream to get more eyes on this.

> This is how RS485 is implemented on the Teltonika

Which doesn't mean, that it's upstream material.

> + static inline void ar933x_uart_putc(struct ar933x_uart_port *up, int ch)
> + {
> + 	unsigned int rdata;
> ++	struct serial_rs485 rs485conf = up->port.rs485;
> + 
> + 	rdata = ch & AR933X_UART_DATA_TX_RX_MASK;
> + 	rdata |= AR933X_UART_DATA_TX_CSR;
> +-	ar933x_uart_write(up, AR933X_UART_DATA_REG, rdata);

	if (unlikely(rs485conf.flags & SER_RS485_ENABLED)) {
		ar933x_rs485_putc(up, rdata);
		return;
	}

	ar933x_uart_write(up, AR933X_UART_DATA_REG, rdata);
}

> ++		struct gpio_desc *rts_gpio = mctrl_gpio_to_gpiod(up->gpios, UART_GPIO_RTS);

No need for this, just use mctrl_gpio_set and you probably dont want to do
this each time for every byte.

> ++		if (!IS_ERR_OR_NULL(rts_gpio))
> ++			gpiod_set_value(rts_gpio, !!(rs485conf.flags & SER_RS485_RTS_ON_SEND));

This should be probably handled in ar933x_uart_set_mctrl and with mctrl_gpio_set.

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
