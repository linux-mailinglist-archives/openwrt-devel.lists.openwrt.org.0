Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94B231535E2
	for <lists+openwrt-devel@lfdr.de>; Wed,  5 Feb 2020 18:04:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FE/lOF0m6X+QOBQPn3uQiZECCXOTKOhRGOPJp5vR5iw=; b=imfyDNvmPfxIey
	tkJzZ0cnlpNcjliV02nir2b/YiWcHvP6AkOYThobAb8wi7km8S4Yl2z3TuEv7LbTV0PZMozTLmlzL
	UGYDOu9qK8OcKbzEjZRzo6k/QYcaNsq54Zxt/QwVK2efOO3FbTp03MceNKrOXvl+CFDYxHK16ZFnJ
	ihH+kru+KyUsL4UdNsBpPf3lAHT9hn8dnXMj3OOd22PJ+yTsiz0ZdaKdhJXGtizlocwGEzzV+4h+J
	QdDqoG7zgnsKFQD+LVktBETUAq/aaK9R1KfTn8Jdk5dF6zuaN3xaqmScirMAPJKdQpwJHonTJekkg
	w4GrEZt31QvAwtQq+lQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izO6e-0007Si-RB; Wed, 05 Feb 2020 17:04:52 +0000
Received: from fudo.makrotopia.org ([2a07:2ec0:3002::71])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izO6W-0007SF-Qh
 for openwrt-devel@lists.openwrt.org; Wed, 05 Feb 2020 17:04:46 +0000
Received: from local
 by fudo.makrotopia.org with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
 (Exim 4.92.2) (envelope-from <daniel@makrotopia.org>)
 id 1izO6T-00023s-Js; Wed, 05 Feb 2020 18:04:41 +0100
Date: Wed, 5 Feb 2020 19:04:30 +0200
From: Daniel Golle <daniel@makrotopia.org>
To: openwrt-devel@lists.openwrt.org
Message-ID: <20200205170430.GA879597@makrotopia.org>
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_090444_864254_5A0C9425 
X-CRM114-Status: GOOD (  12.02  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 2/3] ath79: ar9330-uart: add support for
 half-duplex using DTR signal
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
 Piotr Dymacz <pepe2k@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Add support for RS485 tranceiver with transmit/receive switch hooked
to the DTR GPIO. This is how RS485 is implemented on the Teltonika
RUT955 device and this patch immitates the behaviour of the driver
found in their SDK[1].

[1]: https://wiki.teltonika.lt/gpl/RUT9XX_R_GPL_00.06.05.3.tar.gz
Signed-off-by: Daniel Golle <daniel@makrotopia.org>
---
 ...41-tty-serial-ar933x-uart-rs485-gpio.patch | 129 ++++++++++++++++++
 1 file changed, 129 insertions(+)
 create mode 100644 target/linux/ath79/patches-4.19/0041-tty-serial-ar933x-uart-rs485-gpio.patch

diff --git a/target/linux/ath79/patches-4.19/0041-tty-serial-ar933x-uart-rs485-gpio.patch b/target/linux/ath79/patches-4.19/0041-tty-serial-ar933x-uart-rs485-gpio.patch
new file mode 100644
index 0000000000..a8a7eb5407
--- /dev/null
+++ b/target/linux/ath79/patches-4.19/0041-tty-serial-ar933x-uart-rs485-gpio.patch
@@ -0,0 +1,129 @@
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
+@@ -13,6 +13,7 @@
+ #include <linux/console.h>
+ #include <linux/sysrq.h>
+ #include <linux/delay.h>
++#include <linux/gpio/consumer.h>
+ #include <linux/platform_device.h>
+ #include <linux/of.h>
+ #include <linux/of_platform.h>
+@@ -29,6 +30,8 @@
+ 
+ #include <asm/mach-ath79/ar933x_uart.h>
+ 
++#include "serial_mctrl_gpio.h"
++
+ #define DRIVER_NAME "ar933x-uart"
+ 
+ #define AR933X_UART_MAX_SCALE	0xff
+@@ -51,6 +54,7 @@ struct ar933x_uart_port {
+ 	unsigned int		max_baud;
+ 	unsigned int		subtype;
+ 	struct clk		*clk;
++	struct mctrl_gpios	*gpios;
+ };
+ 
+ static inline unsigned int ar933x_uart_read(struct ar933x_uart_port *up,
+@@ -107,10 +111,48 @@ static inline void ar933x_uart_stop_tx_i
+ static inline void ar933x_uart_putc(struct ar933x_uart_port *up, int ch)
+ {
+ 	unsigned int rdata;
++	unsigned int timeout = 60000;
++	unsigned long flags;
++	unsigned int status;
++	struct serial_rs485 *rs485conf = &up->port.rs485;
++	struct gpio_desc *dtr_gpio = mctrl_gpio_to_gpiod(up->gpios, UART_GPIO_DTR);
+ 
+ 	rdata = ch & AR933X_UART_DATA_TX_RX_MASK;
+ 	rdata |= AR933X_UART_DATA_TX_CSR;
+-	ar933x_uart_write(up, AR933X_UART_DATA_REG, rdata);
++
++	if (rs485conf->flags & SER_RS485_ENABLED) {
++		/* Disable RX interrupt */
++		spin_lock_irqsave(&up->port.lock, flags);
++		up->ier &= ~AR933X_UART_INT_RX_VALID;
++		ar933x_uart_write(up, AR933X_UART_INT_EN_REG, up->ier);
++
++		if (!IS_ERR_OR_NULL(dtr_gpio))
++			gpiod_set_value(dtr_gpio, 0);
++
++		ar933x_uart_write(up, AR933X_UART_DATA_REG, rdata);
++
++		/* wait for transmission to end */
++		do {
++			status = ar933x_uart_read(up, AR933X_UART_CS_REG);
++			if (--timeout == 0)
++				break;
++			udelay(1);
++		} while ((status & AR933X_UART_CS_TX_BUSY) != 0);
++
++		ar933x_uart_write(up, AR933X_UART_INT_REG, AR933X_UART_INT_RX_VALID);
++		/* remove the character from the FIFO */
++		ar933x_uart_write(up, AR933X_UART_DATA_REG, AR933X_UART_DATA_RX_CSR);
++		/* Enable RX interrupt */
++		up->ier |= AR933X_UART_INT_RX_VALID;
++		ar933x_uart_write(up, AR933X_UART_INT_EN_REG, up->ier);
++
++		if (!IS_ERR_OR_NULL(dtr_gpio))
++			gpiod_set_value(dtr_gpio, 1);
++
++		spin_unlock_irqrestore(&up->port.lock, flags);
++	} else {
++		ar933x_uart_write(up, AR933X_UART_DATA_REG, rdata);
++	}
+ }
+ 
+ static unsigned int ar933x_uart_tx_empty(struct uart_port *port)
+@@ -526,6 +568,13 @@ static const struct uart_ops ar933x_uart
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
+@@ -713,6 +762,8 @@ static int ar933x_uart_probe(struct plat
+ 		goto err_disable_clk;
+ 	}
+ 
++	uart_get_rs485_mode(&pdev->dev, &port->rs485);
++
+ 	port->mapbase = mem_res->start;
+ 	port->line = id;
+ 	port->irq = irq_res->start;
+@@ -723,6 +774,7 @@ static int ar933x_uart_probe(struct plat
+ 	port->regshift = 2;
+ 	port->fifosize = AR933X_UART_FIFO_SIZE;
+ 	port->ops = &ar933x_uart_ops;
++	port->rs485_config = ar933x_config_rs485;
+ 
+ 	baud = ar933x_uart_get_baud(port->uartclk, AR933X_UART_MAX_SCALE, 1);
+ 	up->min_baud = max_t(unsigned int, baud, AR933X_UART_MIN_BAUD);
+@@ -730,6 +782,10 @@ static int ar933x_uart_probe(struct plat
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
