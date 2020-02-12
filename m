Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A740515AB12
	for <lists+openwrt-devel@lfdr.de>; Wed, 12 Feb 2020 15:38:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=211v8ItcOtFMPbaYGnxW8DOVgL6EiZwfbYyZST+LQZk=; b=rvt2GoM43tql7I
	uE09WTEpQRHiG1nK3EN0UDOE7zXrLm/b1HthKpx/liTZOLWZMVXppMWmgeXzB/o9hi4oCHE01V/Gm
	OuxaAXkDbmb1P2SQKsMHMBip8Njyb/4kd3bClrUSFTJjwQ3Yghnn6eEPMYlMg3ZPfZj7eIVOmva3S
	nP2khkL0tv1eSvr+F5GaGXZ3sBszkC4MdxBUlQeSlkDFSlb7AASFPlmnxA4WAYs6yCMtkkgp0g25u
	kH+x8Rf4Vmv12Bq2lGBTqNWZaFveSykpG4XiYQ8eKQUscr8LXS54t77BfhaWW5VUoxEoynSrp8zhE
	EDuiSRjLv3BM0GNv1NXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1t9M-0003qM-Ae; Wed, 12 Feb 2020 14:38:00 +0000
Received: from fudo.makrotopia.org ([2a07:2ec0:3002::71])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1t9C-0003pR-Nl
 for openwrt-devel@lists.openwrt.org; Wed, 12 Feb 2020 14:37:52 +0000
Received: from local
 by fudo.makrotopia.org with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
 (Exim 4.92.2) (envelope-from <daniel@makrotopia.org>)
 id 1j1t9B-00023f-9R; Wed, 12 Feb 2020 15:37:49 +0100
Date: Wed, 12 Feb 2020 16:37:36 +0200
From: Daniel Golle <daniel@makrotopia.org>
To: openwrt-devel@lists.openwrt.org
Message-ID: <20200212143736.GA519537@makrotopia.org>
References: <20200212124335.GG38853@meh.true.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200212124335.GG38853@meh.true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_063750_777202_11BCA937 
X-CRM114-Status: GOOD (  14.18  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH v5 1/2] serial: ar933x_uart: add rs485
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
Cc: Adrian Schmutzler <mail@adrianschmutzler.de>,
 Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>,
 Chuanhong Guo <gch981213@gmail.com>, Piotr Dymacz <pepe2k@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Implement half-duplex as well as mctrl-gpio for RS-485 support.

Signed-off-by: Daniel Golle <daniel@makrotopia.org>
---
 ...61-tty-serial-ar933x-uart-rs485-gpio.patch | 206 ++++++++++++++++++
 1 file changed, 206 insertions(+)
 create mode 100644 target/linux/ath79/patches-4.19/0061-tty-serial-ar933x-uart-rs485-gpio.patch

diff --git a/target/linux/ath79/patches-4.19/0061-tty-serial-ar933x-uart-rs485-gpio.patch b/target/linux/ath79/patches-4.19/0061-tty-serial-ar933x-uart-rs485-gpio.patch
new file mode 100644
index 0000000000..ab309363b7
--- /dev/null
+++ b/target/linux/ath79/patches-4.19/0061-tty-serial-ar933x-uart-rs485-gpio.patch
@@ -0,0 +1,206 @@
+--- a/drivers/tty/serial/Kconfig
++++ b/drivers/tty/serial/Kconfig
+@@ -1296,6 +1296,7 @@ config SERIAL_AR933X
+ 	tristate "AR933X serial port support"
+ 	depends on HAVE_CLK && ATH79
+ 	select SERIAL_CORE
++	select SERIAL_MCTRL_GPIO if GPIOLIB
+ 	help
+ 	  If you have an Atheros AR933X SOC based board and want to use the
+ 	  built-in UART of the SoC, say Y to this option.
+--- a/drivers/tty/serial/ar933x_uart.c
++++ b/drivers/tty/serial/ar933x_uart.c
+@@ -29,6 +29,8 @@
+ 
+ #include <asm/mach-ath79/ar933x_uart.h>
+ 
++#include "serial_mctrl_gpio.h"
++
+ #define DRIVER_NAME "ar933x-uart"
+ 
+ #define AR933X_UART_MAX_SCALE	0xff
+@@ -47,6 +49,7 @@ struct ar933x_uart_port {
+ 	unsigned int		min_baud;
+ 	unsigned int		max_baud;
+ 	struct clk		*clk;
++	struct mctrl_gpios	*gpios;
+ };
+ 
+ static inline unsigned int ar933x_uart_read(struct ar933x_uart_port *up,
+@@ -100,6 +103,18 @@ static inline void ar933x_uart_stop_tx_i
+ 	ar933x_uart_write(up, AR933X_UART_INT_EN_REG, up->ier);
+ }
+ 
++static inline void ar933x_uart_start_rx_interrupt(struct ar933x_uart_port *up)
++{
++	up->ier |= AR933X_UART_INT_RX_VALID;
++	ar933x_uart_write(up, AR933X_UART_INT_EN_REG, up->ier);
++}
++
++static inline void ar933x_uart_stop_rx_interrupt(struct ar933x_uart_port *up)
++{
++	up->ier &= ~AR933X_UART_INT_RX_VALID;
++	ar933x_uart_write(up, AR933X_UART_INT_EN_REG, up->ier);
++}
++
+ static inline void ar933x_uart_putc(struct ar933x_uart_port *up, int ch)
+ {
+ 	unsigned int rdata;
+@@ -125,11 +140,21 @@ static unsigned int ar933x_uart_tx_empty
+ 
+ static unsigned int ar933x_uart_get_mctrl(struct uart_port *port)
+ {
+-	return TIOCM_CAR;
++	struct ar933x_uart_port *up =
++		container_of(port, struct ar933x_uart_port, port);
++	int ret = TIOCM_CTS | TIOCM_DSR | TIOCM_CAR;
++
++	mctrl_gpio_get(up->gpios, &ret);
++
++	return ret;
+ }
+ 
+ static void ar933x_uart_set_mctrl(struct uart_port *port, unsigned int mctrl)
+ {
++	struct ar933x_uart_port *up =
++		container_of(port, struct ar933x_uart_port, port);
++
++	mctrl_gpio_set(up->gpios, mctrl);
+ }
+ 
+ static void ar933x_uart_start_tx(struct uart_port *port)
+@@ -140,6 +165,43 @@ static void ar933x_uart_start_tx(struct
+ 	ar933x_uart_start_tx_interrupt(up);
+ }
+ 
++static void ar933x_uart_wait_tx_complete(struct ar933x_uart_port *up)
++{
++	unsigned int status;
++	unsigned int timeout = 60000;
++
++	/* Wait up to 60ms for the character(s) to be sent. */
++	do {
++		status = ar933x_uart_read(up, AR933X_UART_CS_REG);
++		if (--timeout == 0)
++			break;
++		udelay(1);
++	} while (status & AR933X_UART_CS_TX_BUSY);
++
++	if (timeout == 0)
++		dev_err(up->port.dev, "waiting for TX timed out\n");
++}
++
++static void ar933x_uart_rx_flush(struct ar933x_uart_port *up)
++{
++	unsigned int status;
++
++	/* clear RX_VALID interrupt */
++	ar933x_uart_write(up, AR933X_UART_INT_REG, AR933X_UART_INT_RX_VALID);
++
++	/* remove characters from the RX FIFO */
++	do {
++		ar933x_uart_write(up, AR933X_UART_DATA_REG, AR933X_UART_DATA_RX_CSR);
++		status = ar933x_uart_read(up, AR933X_UART_DATA_REG);
++	} while (status & AR933X_UART_DATA_RX_CSR);
++}
++
++static inline int ar933x_uart_is_half_duplex(struct ar933x_uart_port *up)
++{
++	return (up->port.rs485.flags & SER_RS485_ENABLED) &&
++		  !(up->port.rs485.flags & SER_RS485_RX_DURING_TX);
++}
++
+ static void ar933x_uart_stop_tx(struct uart_port *port)
+ {
+ 	struct ar933x_uart_port *up =
+@@ -153,8 +215,7 @@ static void ar933x_uart_stop_rx(struct u
+ 	struct ar933x_uart_port *up =
+ 		container_of(port, struct ar933x_uart_port, port);
+ 
+-	up->ier &= ~AR933X_UART_INT_RX_VALID;
+-	ar933x_uart_write(up, AR933X_UART_INT_EN_REG, up->ier);
++	ar933x_uart_stop_rx_interrupt(up);
+ }
+ 
+ static void ar933x_uart_break_ctl(struct uart_port *port, int break_state)
+@@ -341,6 +402,9 @@ static void ar933x_uart_tx_chars(struct
+ 	if (uart_tx_stopped(&up->port))
+ 		return;
+ 
++	if (ar933x_uart_is_half_duplex(up))
++		ar933x_uart_stop_rx_interrupt(up);
++
+ 	count = up->port.fifosize;
+ 	do {
+ 		unsigned int rdata;
+@@ -368,8 +432,13 @@ static void ar933x_uart_tx_chars(struct
+ 	if (uart_circ_chars_pending(xmit) < WAKEUP_CHARS)
+ 		uart_write_wakeup(&up->port);
+ 
+-	if (!uart_circ_empty(xmit))
++	if (!uart_circ_empty(xmit)) {
+ 		ar933x_uart_start_tx_interrupt(up);
++	} else if (ar933x_uart_is_half_duplex(up)) {
++		ar933x_uart_wait_tx_complete(up);
++		ar933x_uart_rx_flush(up);
++		ar933x_uart_start_rx_interrupt(up);
++	}
+ }
+ 
+ static irqreturn_t ar933x_uart_interrupt(int irq, void *dev_id)
+@@ -427,8 +496,7 @@ static int ar933x_uart_startup(struct ua
+ 		AR933X_UART_CS_TX_READY_ORIDE | AR933X_UART_CS_RX_READY_ORIDE);
+ 
+ 	/* Enable RX interrupts */
+-	up->ier = AR933X_UART_INT_RX_VALID;
+-	ar933x_uart_write(up, AR933X_UART_INT_EN_REG, up->ier);
++	ar933x_uart_start_rx_interrupt(up);
+ 
+ 	spin_unlock_irqrestore(&up->port.lock, flags);
+ 
+@@ -511,10 +579,16 @@ static const struct uart_ops ar933x_uart
+ 	.verify_port	= ar933x_uart_verify_port,
+ };
+ 
++static int ar933x_config_rs485(struct uart_port *port,
++				struct serial_rs485 *rs485conf)
++{
++	port->rs485 = *rs485conf;
++	return 0;
++}
++
+ #ifdef CONFIG_SERIAL_AR933X_CONSOLE
+ static struct ar933x_uart_port *
+ ar933x_console_ports[CONFIG_SERIAL_AR933X_NR_UARTS];
+-
+ static void ar933x_uart_wait_xmitr(struct ar933x_uart_port *up)
+ {
+ 	unsigned int status;
+@@ -680,6 +754,8 @@ static int ar933x_uart_probe(struct plat
+ 		goto err_disable_clk;
+ 	}
+ 
++	uart_get_rs485_mode(&pdev->dev, &port->rs485);
++
+ 	port->mapbase = mem_res->start;
+ 	port->line = id;
+ 	port->irq = irq_res->start;
+@@ -690,6 +766,7 @@ static int ar933x_uart_probe(struct plat
+ 	port->regshift = 2;
+ 	port->fifosize = AR933X_UART_FIFO_SIZE;
+ 	port->ops = &ar933x_uart_ops;
++	port->rs485_config = ar933x_config_rs485;
+ 
+ 	baud = ar933x_uart_get_baud(port->uartclk, AR933X_UART_MAX_SCALE, 1);
+ 	up->min_baud = max_t(unsigned int, baud, AR933X_UART_MIN_BAUD);
+@@ -697,6 +774,10 @@ static int ar933x_uart_probe(struct plat
+ 	baud = ar933x_uart_get_baud(port->uartclk, 0, AR933X_UART_MAX_STEP);
+ 	up->max_baud = min_t(unsigned int, baud, AR933X_UART_MAX_BAUD);
+ 
++	up->gpios = mctrl_gpio_init(port, 0);
++	if (IS_ERR(up->gpios) && PTR_ERR(up->gpios) != -ENOSYS)
++		return PTR_ERR(up->gpios);
++
+ #ifdef CONFIG_SERIAL_AR933X_CONSOLE
+ 	ar933x_console_ports[up->port.line] = up;
+ #endif
-- 
2.25.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
