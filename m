Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D72D1591C4
	for <lists+openwrt-devel@lfdr.de>; Tue, 11 Feb 2020 15:23:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:Date:Message-Id:References:In-Reply-To:To:From:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=uZdO1F/oSJp4zEeJC2YoD8NPrp0vnT7/jUu2jSEiBbE=; b=kCJC/zyofzCytf1r9xGVcpv69
	hNp2apAk5TajaWIDwx5AbWZLfYrN86yFO3Yr6g8Z7qpPdbIjQfylo4oLGN45N+f/W/EOiLkhE7cTC
	7JEYt1UpUSJHSqGsxKp9uV+PS5wCC6RGuP3/CoeBFMQa73UZhnzfi2yn9t/H6ixUNoZn0iw1AKB0f
	eblzstTr6FYUIgENbd1jmmuZYU2L19+LH2NuOsuEfv62GuhKWdrkx3tFdCMDaRaBYadnKs8KcTF/o
	Fw4Gnh9O7dD9pe0KHEUpOf9BpMtFecBmuQFpvfnZZ1jrZjDUfd2jZQoOXHQf+JA4AXyDwhpKqR09d
	EJLE+KjfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1WRE-0002Tp-GW; Tue, 11 Feb 2020 14:22:56 +0000
Received: from palmtree.beeroclock.net ([178.79.160.154])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1WR4-0002T6-Gx
 for openwrt-devel@lists.openwrt.org; Tue, 11 Feb 2020 14:22:48 +0000
Received: from mailpile.local (palmtree.beeroclock.net [178.79.160.154])
 by palmtree.beeroclock.net (Postfix) with ESMTPSA id 16C391F71F;
 Tue, 11 Feb 2020 14:22:43 +0000 (UTC)
MIME-Version: 1.0
From: Karl Palsson <karlp@tweak.net.au>
To: "Daniel Golle" <daniel@makrotopia.org>
In-Reply-To: <20200211134843.GA82205@makrotopia.org>
References: <20200211134843.GA82205@makrotopia.org>
User-Agent: Mailpile
Message-Id: <icxDkR6cECoTqhkeuQGWWL9kHJfUH9Dy6drATcH623bf@mailpile>
Date: Tue, 11 Feb 2020 14:21:30 -0000
OpenPGP: id=9F020B9C40DA5E6F2CAF63B319A8B50FD4D5CAF6; preference=signencrypt
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_062246_833489_85D3090E 
X-CRM114-Status: GOOD (  20.19  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 T_HTML_ATTACH          HTML attachment to bypass scanning?
Subject: Re: [OpenWrt-Devel] [PATCH v2 1/2] ath79: ar9330-uart: add support
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
Cc: Chuanhong Guo <gch981213@gmail.com>,
 openwrt-devel <openwrt-devel@lists.openwrt.org>,
 Adrian Schmutzler <mail@adrianschmutzler.de>, Piotr Dymacz <pepe2k@gmail.com>
Content-Type: multipart/mixed; boundary="===============5462303792393099003=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============5462303792393099003==
Content-Type: multipart/signed; boundary="==BaIy6gx2JpRmDfcvVb4XaMQ2jA9uTT==";
 micalg="pgp-sha512"; protocol="application/pgp-signature"

--==BaIy6gx2JpRmDfcvVb4XaMQ2jA9uTT==
Content-Type: multipart/mixed; boundary="==iFvWfP8ANs7pddNqBi5tRZgCgo2mGv=="
Subject: Re: [OpenWrt-Devel] [PATCH v2 1/2] ath79: ar9330-uart: add support
 for half-duplex using DTR signal
From: Karl Palsson <karlp@tweak.net.au>
To: "Daniel Golle" <daniel@makrotopia.org>
Cc: "Adrian Schmutzler" <mail@adrianschmutzler.de>,
 "Chuanhong Guo" <gch981213@gmail.com>, "Piotr Dymacz" <pepe2k@gmail.com>,
 openwrt-devel <openwrt-devel@lists.openwrt.org>
In-Reply-To: <20200211134843.GA82205@makrotopia.org>
References: <20200211134843.GA82205@makrotopia.org>
User-Agent: Mailpile
Date: Tue, 11 Feb 2020 14:21:30 -0000
OpenPGP: id=9F020B9C40DA5E6F2CAF63B319A8B50FD4D5CAF6; preference=signencrypt

--==iFvWfP8ANs7pddNqBi5tRZgCgo2mGv==
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Is there any reason why we can't implement the required peices to
use upstreams rs485 support instead of just redoing it the way
that Teltonika bolted it in? From past attempts this sort of
change would never be allowed upstream as is. Your device using
DTR would just have a binding of "rts-gpios: dtr-gpio-pin-id" And
anyone else on ath79 who wants to use rs485 can then use their
own gpios, instead of hardcoded DTR like you have here.

Sincerely,
Karl Palsson

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/devicetree/bindings/serial/rs485.yaml
and
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/devicetree/bindings/serial/serial.txt

(Apologies if people are getting this a third time, I've been
attempting to coerce spamhaus into allowing me to send email, and
i've not seen any replies to my earlier posts anyway)

Daniel Golle <daniel@makrotopia.org> wrote:
> Add support for RS485 tranceiver with transmit/receive switch
> hooked to the DTR GPIO. This is how RS485 is implemented on the
> Teltonika RUT955 device and this patch immitates the behaviour
> of the driver found in their SDK[1].
> 
> [1]:
> https://wiki.teltonika.lt/gpl/RUT9XX_R_GPL_00.06.05.3.tar.gz
> Signed-off-by: Daniel Golle <daniel@makrotopia.org>
> ---
>  ...41-tty-serial-ar933x-uart-rs485-gpio.patch | 129 ++++++++++++++++++
>  1 file changed, 129 insertions(+)
>  create mode 100644 target/linux/ath79/patches-4.19/0041-tty-serial-ar933x-uart-rs485-gpio.patch
> 
> diff --git
> a/target/linux/ath79/patches-4.19/0041-tty-serial-ar933x-uart-rs485-gpio.patch
> b/target/linux/ath79/patches-4.19/0041-tty-serial-ar933x-uart-rs485-gpio.patch
> new file mode 100644 index 0000000000..2b6b32be26
> --- /dev/null
> +++ b/target/linux/ath79/patches-4.19/0041-tty-serial-ar933x-uart-rs485-gpio.patch
> @@ -0,0 +1,129 @@
> +--- a/drivers/tty/serial/Kconfig
> ++++ b/drivers/tty/serial/Kconfig
> +@@ -1296,6 +1296,7 @@ config SERIAL_AR933X
> + 	tristate "AR933X serial port support"
> + 	depends on HAVE_CLK && ATH79
> + 	select SERIAL_CORE
> ++	select SERIAL_MCTRL_GPIO if GPIOLIB
> + 	help
> + 	  If you have an Atheros AR933X SOC based board and want to use the
> + 	  built-in UART of the SoC, say Y to this option.
> +--- a/drivers/tty/serial/ar933x_uart.c
> ++++ b/drivers/tty/serial/ar933x_uart.c
> +@@ -13,6 +13,7 @@
> + #include <linux/console.h>
> + #include <linux/sysrq.h>
> + #include <linux/delay.h>
> ++#include <linux/gpio/consumer.h>
> + #include <linux/platform_device.h>
> + #include <linux/of.h>
> + #include <linux/of_platform.h>
> +@@ -29,6 +30,8 @@
> + 
> + #include <asm/mach-ath79/ar933x_uart.h>
> + 
> ++#include "serial_mctrl_gpio.h"
> ++
> + #define DRIVER_NAME "ar933x-uart"
> + 
> + #define AR933X_UART_MAX_SCALE	0xff
> +@@ -47,6 +50,7 @@ struct ar933x_uart_port {
> + 	unsigned int		min_baud;
> + 	unsigned int		max_baud;
> + 	struct clk		*clk;
> ++	struct mctrl_gpios	*gpios;
> + };
> + 
> + static inline unsigned int ar933x_uart_read(struct ar933x_uart_port *up,
> +@@ -103,10 +107,48 @@ static inline void ar933x_uart_stop_tx_i
> + static inline void ar933x_uart_putc(struct ar933x_uart_port *up, int ch)
> + {
> + 	unsigned int rdata;
> ++	unsigned int timeout = 60000;
> ++	unsigned long flags;
> ++	unsigned int status;
> ++	struct serial_rs485 *rs485conf = &up->port.rs485;
> ++	struct gpio_desc *dtr_gpio = mctrl_gpio_to_gpiod(up->gpios, UART_GPIO_DTR);
> + 
> + 	rdata = ch & AR933X_UART_DATA_TX_RX_MASK;
> + 	rdata |= AR933X_UART_DATA_TX_CSR;
> +-	ar933x_uart_write(up, AR933X_UART_DATA_REG, rdata);
> ++
> ++	if (rs485conf->flags & SER_RS485_ENABLED) {
> ++		/* Disable RX interrupt */
> ++		spin_lock_irqsave(&up->port.lock, flags);
> ++		up->ier &= ~AR933X_UART_INT_RX_VALID;
> ++		ar933x_uart_write(up, AR933X_UART_INT_EN_REG, up->ier);
> ++
> ++		if (!IS_ERR_OR_NULL(dtr_gpio))
> ++			gpiod_set_value(dtr_gpio, 0);
> ++
> ++		ar933x_uart_write(up, AR933X_UART_DATA_REG, rdata);
> ++
> ++		/* wait for transmission to end */
> ++		do {
> ++			status = ar933x_uart_read(up, AR933X_UART_CS_REG);
> ++			if (--timeout == 0)
> ++				break;
> ++			udelay(1);
> ++		} while ((status & AR933X_UART_CS_TX_BUSY) != 0);
> ++
> ++		ar933x_uart_write(up, AR933X_UART_INT_REG, AR933X_UART_INT_RX_VALID);
> ++		/* remove the character from the FIFO */
> ++		ar933x_uart_write(up, AR933X_UART_DATA_REG, AR933X_UART_DATA_RX_CSR);
> ++		/* Enable RX interrupt */
> ++		up->ier |= AR933X_UART_INT_RX_VALID;
> ++		ar933x_uart_write(up, AR933X_UART_INT_EN_REG, up->ier);
> ++
> ++		if (!IS_ERR_OR_NULL(dtr_gpio))
> ++			gpiod_set_value(dtr_gpio, 1);
> ++
> ++		spin_unlock_irqrestore(&up->port.lock, flags);
> ++	} else {
> ++		ar933x_uart_write(up, AR933X_UART_DATA_REG, rdata);
> ++	}
> + }
> + 
> + static unsigned int ar933x_uart_tx_empty(struct uart_port *port)
> +@@ -503,6 +545,13 @@ static const struct uart_ops ar933x_uart
> + 	.verify_port	= ar933x_uart_verify_port,
> + };
> + 
> ++static int ar933x_config_rs485(struct uart_port *port,
> ++				struct serial_rs485 *rs485conf)
> ++{
> ++	port->rs485 = *rs485conf;
> ++	return 0;
> ++}
> ++
> + #ifdef CONFIG_SERIAL_AR933X_CONSOLE
> + static struct ar933x_uart_port *
> + ar933x_console_ports[CONFIG_SERIAL_AR933X_NR_UARTS];
> +@@ -672,6 +721,8 @@ static int ar933x_uart_probe(struct plat
> + 		goto err_disable_clk;
> + 	}
> + 
> ++	uart_get_rs485_mode(&pdev->dev, &port->rs485);
> ++
> + 	port->mapbase = mem_res->start;
> + 	port->line = id;
> + 	port->irq = irq_res->start;
> +@@ -682,6 +733,7 @@ static int ar933x_uart_probe(struct plat
> + 	port->regshift = 2;
> + 	port->fifosize = AR933X_UART_FIFO_SIZE;
> + 	port->ops = &ar933x_uart_ops;
> ++	port->rs485_config = ar933x_config_rs485;
> + 
> + 	baud = ar933x_uart_get_baud(port->uartclk, AR933X_UART_MAX_SCALE, 1);
> + 	up->min_baud = max_t(unsigned int, baud, AR933X_UART_MIN_BAUD);
> +@@ -689,6 +741,10 @@ static int ar933x_uart_probe(struct plat
> + 	baud = ar933x_uart_get_baud(port->uartclk, 0, AR933X_UART_MAX_STEP);
> + 	up->max_baud = min_t(unsigned int, baud, AR933X_UART_MAX_BAUD);
> + 
> ++	up->gpios = mctrl_gpio_init(port, 0);
> ++	if (IS_ERR(up->gpios) && PTR_ERR(up->gpios) != -ENOSYS)
> ++		return PTR_ERR(up->gpios);
> ++
> + #ifdef CONFIG_SERIAL_AR933X_CONSOLE
> + 	ar933x_console_ports[up->port.line] = up;
> + #endif
--==iFvWfP8ANs7pddNqBi5tRZgCgo2mGv==--

--==BaIy6gx2JpRmDfcvVb4XaMQ2jA9uTT==
Content-Type: application/pgp-signature; name="OpenPGP-digital-signature.html"
Content-Description: OpenPGP Digital Signature
Content-Disposition: attachment; filename="OpenPGP-digital-signature.html"

<html><body><h1>Digital Signature</h1><p>

This is a digital signature, which can be used to verify
the authenticity of this message. You can safely discard
or ignore this file if your e-mail software does not
support digital signatures.

</p><pre>
-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEnwILnEDaXm8sr2OzGai1D9TVyvYFAl5CuGsACgkQGai1D9TV
yvaHfA//Qi5XUVWxOSkjOSjPaogJ1U9rLrN5px9R+2IJAh5kw1PTFsR9GYdEdLdF
mInQ6VURKtdPg1nTzJkZ/u+D5QtVkVJBe7TZVCevCaaqdt5WQNEsI4t/VLI7PrtT
zR/bXFqiQMmeYZS3V3mLJIdYnvXHKLLkUht+cpnXisftQZuc9MTSs3dfYGh4BwDL
834/U5vCgKbyBYYUroZjTMy3W2hhJAGp3tBp92Q+pZEr53I4rP5CNpwMlxyumxCe
lwpvWihbXjJhibVpnWy/+nuky/pW0iIketbfhf9P/XP6f+VanLFdAMzV4tZskIUR
tQqP7ww66zqfG3kpud5HnT6c7oL14tC2bjEmGSs7NRQE6QmQet88qbTpmFLWu1Io
36W2NBc5eroMm+TeS3JExseuj53Gj32b5+MsMXB9AUVIm68ZEJsF2DpHnYqoZGyM
nnpLRc3XTZGXWQX52mRJvIzYVjmVWIUPl76Zd4++aotyqgNXYKYKkIXMu23l8ilF
qJmgQs/pCGZZioS0aLWnn+wiZiGYF3nOa47o41oRtpZbeZIi6VEu5iW+7I/4SaZ5
dAB1iP0CbT9Gmgpsbr5s5hdOhVzerdK7wtF6qOSXH+g+K46LbAiFT6e/UwfoftiS
Gm+aTLFwqjppWlGgujj92b+as2lfzIdearcZEMQYq/5SJ/XcWXg=
=5oz9
-----END PGP SIGNATURE-----

</pre><hr><i><a href='https://www.mailpile.is/'>Generated by Mailpile</a>.</i></body></html>
--==BaIy6gx2JpRmDfcvVb4XaMQ2jA9uTT==--



--===============5462303792393099003==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5462303792393099003==--


