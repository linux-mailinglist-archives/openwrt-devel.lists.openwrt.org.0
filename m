Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8655615366A
	for <lists+openwrt-devel@lfdr.de>; Wed,  5 Feb 2020 18:27:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:
	In-Reply-To:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p6WnlQ1LYTjW1fs1rPOZTd6+DuZw939TEhxUVyqecV8=; b=mY+2YdsauIvE5D
	6JG1AkYllQpvpWDgcgSj3wHFMD7UzPPQ8TsRsTe6tvT3m5Mxj82+KIK0y08jNwzK3hWPimnZEK8CD
	CUVzs9azbSZX1H//4mImyO6g+vcVHmw/2NEKbGMHLq+wXWDJ8YURfxMf8KiPYNpNYnEs1s0WI3TFD
	HnkRQXWg3Ob7wjuHOzdViWB31iffdQTdVBso/kF+rDb1TgaWNj4/8ZLExhfmSd6RmutE0fUvxGQkp
	LX9sNI0d+SZJpClHxdjgxzQBWIur4uWQLHP14NxZUBInE2APSl0DOqON0zZ2bnfSyetbS5vrxQvf0
	TBoTbAm6aPiavzO4+UTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izOSd-00005K-9O; Wed, 05 Feb 2020 17:27:35 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izOSV-0008R1-UH
 for openwrt-devel@lists.openwrt.org; Wed, 05 Feb 2020 17:27:30 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue009
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1Mgvj3-1jTCxU3IlB-00hQgr; Wed, 05
 Feb 2020 18:27:25 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Daniel Golle'" <daniel@makrotopia.org>, <openwrt-devel@lists.openwrt.org>
References: <20200205151921.GA536625@makrotopia.org>
In-Reply-To: <20200205151921.GA536625@makrotopia.org>
Date: Wed, 5 Feb 2020 18:27:25 +0100
Message-ID: <00d801d5dc49$887fd520$997f7f60$@adrianschmutzler.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Content-Language: de
Thread-Index: AQI3JZ14YXxmKRw96Sa5cXqCWakIaqdKR06w
X-Provags-ID: V03:K1:g0XMCZVQ3zxI6uG+MOxbQTYI//DeRCrF+aLrsMjFMRQr/obIttz
 E1xW9IUhme/SHrW0Zfy0FFjvENi7kQEz/r77PoUJdRio0fFruoDjHNwettaVy00eD0zT6nR
 oK2925bghW280HDi8M2PyVrVs/fmUpiN7rt/4z6FVTRyin3DvKFh02fhzWN4tHR4jRz8fFL
 xjjiwjHAQew4ZRlm6sywg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:fUQ/zR8AEHY=:2jkDlVcCemG0xRYiWn7mVW
 JcnKyTImSe86JYMTpRIBh6WV+en4GRxQbGu39GSwV5E73npz+1G4gtD+1Rfg5Z84WUsTLVCxK
 0ROkCGp8cOr+QvFMYUGUKwaWE5PwIwmDb7hvkcgWHW49YMF6cHJl2YV4o4KaoiWI8M2OOw4v7
 CW+blwOxatVojPQJPN2R25D/bS2HnRudNCwhgWuS+aeXV8p5fjGuDxWqdTVZAcoSPCezFThgn
 N3ViJWW8JMikO5kXSFs2To14aXFIc1B2an+FwfDRvbUYn5pRvDrpEIQ9nQK2ehhLXxKaJdY0j
 u3I5MadCq/qRAYAbuVVwX0d+lWasD8VXCm5LBV4HavCx7BlElSO1arhgaqYw5N5bD2OrT093r
 FYlsAr2fvBcVrV5bbxgGoxjaza5Wl7C1QLQziKhhL0gx3X5Y4BJ8tlFJPan7uli7sLTYG8HvS
 71KjCADcxVgpCyWP5Ur/5aHS7iyDiaZICTWwomDZD5G9WZ5fIRCVdigCukhk58bz3GolV+rev
 SjN3JDACHz8o3OwwlRXc5ie6iJVAs+hsS/6Q1hcHMHV9ptE7F55xuIQ3FdcCSFy29z742bO77
 S4RPf3w3td+ib887pq21nIMwlYh8m/4iKt+JYCPvBdaDj5E9c7gucaQeKEmgyQHcn8KECCDpC
 TvJIj21TN+rZPp/b8YahOJK5Li5uomKtK7gdLfs+dBFzPTDcz5w2UDNLrqfdhRW1p5RK8UzLe
 F2CH6MiRtdfIIc1+GDvb/hM3DYCk9zJxVAA90Qa9c6nsVtf9ilDM0zdIxY4eyYhL380I3AKM0
 y4FatUXMZhjYLC2KRGVU+SlzFlJMvNoUzC0lAOMaSUgObGgYgygtHfDCCpdORtv3bZOFHW4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_092728_274646_3BA88C21 
X-CRM114-Status: GOOD (  23.90  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.135 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH 1/3] ath79: add support for Atheros
 AR934x HS UART
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
Cc: 'Gerhard Bertelsmann' <info@gerhard-bertelsmann.de>,
 'Piotr Dymacz' <pepe2k@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org] On
> Behalf Of Daniel Golle
> Sent: Mittwoch, 5. Februar 2020 16:19
> To: openwrt-devel@lists.openwrt.org
> Cc: Gerhard Bertelsmann <info@gerhard-bertelsmann.de>; Adrian Schmutzler
> <mail@adrianschmutzler.de>; Piotr Dymacz <pepe2k@gmail.com>
> Subject: [OpenWrt-Devel] [PATCH 1/3] ath79: add support for Atheros AR934x HS
> UART
> 
> AR934x chips also got the 'old' qca,ar9330-uart in addition to the
> 'new' ns16550a compatible one. Add support for UART1 clock selector as
> well as device-tree bindings in ar934x.dtsi to make use of that uart.
> Diff'ing the drivers showed that the only difference is that AR934x
> requires setting UART1_CS_TX_READY_ORIDE and UART1_CS_RX_READY_ORIDE
> registers which seems to be unneeded on AR933x (probably because it's
> already set by the bootloader which on AR934x typically uses the
> NS16550-compatible UART and hence doesn't touch those registers).
> Without those registers set, the UART will not function without
> hardware flow-control being enabled (which is not an option as
> RTS/CTS pins may not be assigned).
> 
> Reported-by: Piotr Dymacz <pepe2k@gmail.com>
> Signed-off-by: Daniel Golle <daniel@makrotopia.org>
> ---
>  target/linux/ath79/dts/ar934x.dtsi            |  17 +++
>  ...S-ath79-export-UART1-reference-clock.patch |  52 +++++++
>  ...40-tty-serial-ar933x-uart-add-ar934x.patch | 128 ++++++++++++++++++
>  3 files changed, 197 insertions(+)
>  create mode 100644 target/linux/ath79/patches-4.19/0039-MIPS-ath79-export-
> UART1-reference-clock.patch
>  create mode 100644 target/linux/ath79/patches-4.19/0040-tty-serial-ar933x-
> uart-add-ar934x.patch
> 
> diff --git a/target/linux/ath79/dts/ar934x.dtsi
> b/target/linux/ath79/dts/ar934x.dtsi
> index 8cd0b4e086..d90d823884 100644
> --- a/target/linux/ath79/dts/ar934x.dtsi
> +++ b/target/linux/ath79/dts/ar934x.dtsi
> @@ -133,8 +133,25 @@
> 
>  				#reset-cells = <1>;
>  			};
> +
> +			hs_uart: uart@18500000 {

What does the "hs" actually stand for?

> +				compatible = "qca,ar9341-uart";
> +				reg = <0x18500000 0x14>;
> +
> +				interrupts = <6>;
> +				interrupt-parent = <&miscintc>;
> +
> +				clocks = <&pll ATH79_CLK_UART1>;
> +				clock-names = "uart";
> +
> +				resets = <&rst 17>;
> +				reset-names = "uart";
> +
> +				status = "disabled";
> +			};
>  		};
> 
> +

Any reason for this additional empty line?

Best

Adrian

>  		nand: nand@1b000200 {
>  			compatible = "qca,ar934x-nand";
>  			reg = <0x1b000200 0xb8>;
> diff --git a/target/linux/ath79/patches-4.19/0039-MIPS-ath79-export-UART1-
> reference-clock.patch b/target/linux/ath79/patches-4.19/0039-MIPS-ath79-
> export-UART1-reference-clock.patch
> new file mode 100644
> index 0000000000..8656fafe0e
> --- /dev/null
> +++ b/target/linux/ath79/patches-4.19/0039-MIPS-ath79-export-UART1-
> reference-clock.patch
> @@ -0,0 +1,52 @@
> +--- a/arch/mips/ath79/clock.c
> ++++ b/arch/mips/ath79/clock.c
> +@@ -42,6 +42,7 @@ static const char * const clk_names[ATH7
> + 	[ATH79_CLK_AHB] = "ahb",
> + 	[ATH79_CLK_REF] = "ref",
> + 	[ATH79_CLK_MDIO] = "mdio",
> ++	[ATH79_CLK_UART1] = "uart1",
> + };
> +
> + static const char * __init ath79_clk_name(int type)
> +@@ -346,6 +347,9 @@ static void __init ar934x_clocks_init(vo
> + 	if (clk_ctrl & AR934X_PLL_SWITCH_CLOCK_CONTROL_MDIO_CLK_SEL)
> + 		ath79_set_clk(ATH79_CLK_MDIO, 100 * 1000 * 1000);
> +
> ++	if (clk_ctrl & AR934X_PLL_SWITCH_CLOCK_CONTROL_UART1_CLK_SEL)
> ++		ath79_set_clk(ATH79_CLK_UART1, 100 * 1000 * 1000);
> ++
> + 	iounmap(dpll_base);
> + }
> +
> +@@ -651,6 +655,9 @@ static void __init ath79_clocks_init_dt(
> + 	if (!clks[ATH79_CLK_MDIO])
> + 		clks[ATH79_CLK_MDIO] = clks[ATH79_CLK_REF];
> +
> ++	if (!clks[ATH79_CLK_UART1])
> ++		clks[ATH79_CLK_UART1] = clks[ATH79_CLK_REF];
> ++
> + 	if (of_clk_add_provider(np, of_clk_src_onecell_get, &clk_data)) {
> + 		pr_err("%pOF: could not register clk provider\n", np);
> + 		goto err_iounmap;
> +--- a/arch/mips/include/asm/mach-ath79/ar71xx_regs.h
> ++++ b/arch/mips/include/asm/mach-ath79/ar71xx_regs.h
> +@@ -351,6 +351,7 @@
> + #define AR934X_PLL_CPU_DDR_CLK_CTRL_AHBCLK_FROM_DDRPLL
> 	BIT(24)
> +
> + #define AR934X_PLL_SWITCH_CLOCK_CONTROL_MDIO_CLK_SEL	BIT(6)
> ++#define AR934X_PLL_SWITCH_CLOCK_CONTROL_UART1_CLK_SEL	BIT(7)
> +
> + #define QCA953X_PLL_CPU_CONFIG_REG		0x00
> + #define QCA953X_PLL_DDR_CONFIG_REG		0x04
> +--- a/include/dt-bindings/clock/ath79-clk.h
> ++++ b/include/dt-bindings/clock/ath79-clk.h
> +@@ -15,7 +15,8 @@
> + #define ATH79_CLK_AHB		2
> + #define ATH79_CLK_REF		3
> + #define ATH79_CLK_MDIO		4
> ++#define ATH79_CLK_UART1		5
> +
> +-#define ATH79_CLK_END		5
> ++#define ATH79_CLK_END		6
> +
> + #endif /* __DT_BINDINGS_ATH79_CLK_H */
> diff --git a/target/linux/ath79/patches-4.19/0040-tty-serial-ar933x-uart-add-
> ar934x.patch
b/target/linux/ath79/patches-4.19/0040-tty-serial-ar933x-uart-add-
> ar934x.patch
> new file mode 100644
> index 0000000000..f8f0ffbea1
> --- /dev/null
> +++ b/target/linux/ath79/patches-4.19/0040-tty-serial-ar933x-uart-add-
> ar934x.patch
> @@ -0,0 +1,128 @@
> +Index: linux-4.19.98/drivers/tty/serial/ar933x_uart.c
> +=============================================================
> ======
> +--- linux-4.19.98.orig/drivers/tty/serial/ar933x_uart.c
> ++++ linux-4.19.98/drivers/tty/serial/ar933x_uart.c
> +@@ -39,6 +39,9 @@
> +
> + #define AR933X_DUMMY_STATUS_RD	0x01
> +
> ++#define UART_IS_AR9330 0
> ++#define UART_IS_AR9341 1
> ++
> + static struct uart_driver ar933x_uart_driver;
> +
> + struct ar933x_uart_port {
> +@@ -46,6 +49,7 @@ struct ar933x_uart_port {
> + 	unsigned int		ier;	/* shadow Interrupt Enable Register */
> + 	unsigned int		min_baud;
> + 	unsigned int		max_baud;
> ++	unsigned int		subtype;
> + 	struct clk		*clk;
> + };
> +
> +@@ -286,6 +290,15 @@ static void ar933x_uart_set_termios(stru
> + 	ar933x_uart_rmw_set(up, AR933X_UART_CS_REG,
> + 			    AR933X_UART_CS_HOST_INT_EN);
> +
> ++	if (up->subtype == UART_IS_AR9341) {
> ++		/* enable TX ready overide */
> ++		ar933x_uart_rmw_set(up, AR933X_UART_CS_REG,
> ++			AR933X_UART_CS_TX_READY_ORIDE);
> ++		/* enable RX ready overide */
> ++		ar933x_uart_rmw_set(up, AR933X_UART_CS_REG,
> ++			AR933X_UART_CS_RX_READY_ORIDE);
> ++	}
> ++
> + 	/* reenable the UART */
> + 	ar933x_uart_rmw(up, AR933X_UART_CS_REG,
> + 			AR933X_UART_CS_IF_MODE_M <<
> AR933X_UART_CS_IF_MODE_S,
> +@@ -418,6 +431,12 @@ static int ar933x_uart_startup(struct ua
> + 	ar933x_uart_rmw_set(up, AR933X_UART_CS_REG,
> + 			    AR933X_UART_CS_HOST_INT_EN);
> +
> ++	if (up->subtype == UART_IS_AR9341) {
> ++		/* enable TX ready overide */
> ++		ar933x_uart_rmw_set(up, AR933X_UART_CS_REG,
> ++				AR933X_UART_CS_TX_READY_ORIDE);
> ++	}
> ++
> + 	/* Enable RX interrupts */
> + 	up->ier = AR933X_UART_INT_RX_VALID;
> + 	ar933x_uart_write(up, AR933X_UART_INT_EN_REG, up->ier);
> +@@ -445,7 +464,11 @@ static void ar933x_uart_shutdown(struct
> +
> + static const char *ar933x_uart_type(struct uart_port *port)
> + {
> +-	return (port->type == PORT_AR933X) ? "AR933X UART" : NULL;
> ++	struct ar933x_uart_port *up =
> ++		container_of(port, struct ar933x_uart_port, port);
> ++
> ++	return (port->type == PORT_AR933X) ?
> ++		((up->subtype == UART_IS_AR9341) ? "AR934X high-speed UART"
> : "AR933X UART") : NULL;
> + }
> +
> + static void ar933x_uart_release_port(struct uart_port *port)
> +@@ -610,6 +633,15 @@ static struct uart_driver ar933x_uart_dr
> + 	.cons		= NULL, /* filled in runtime */
> + };
> +
> ++#ifdef CONFIG_OF
> ++static const struct of_device_id ar933x_uart_of_ids[] = {
> ++	{ .compatible = "qca,ar9330-uart", .data = (const void *)UART_IS_AR9330
> },
> ++	{ .compatible = "qca,ar9341-uart", .data = (const void *)UART_IS_AR9341
> },
> ++	{},
> ++};
> ++MODULE_DEVICE_TABLE(of, ar933x_uart_of_ids);
> ++#endif
> ++
> + static int ar933x_uart_probe(struct platform_device *pdev)
> + {
> + 	struct ar933x_uart_port *up;
> +@@ -617,9 +649,12 @@ static int ar933x_uart_probe(struct plat
> + 	struct resource *mem_res;
> + 	struct resource *irq_res;
> + 	struct device_node *np;
> ++	const struct of_device_id *match;
> ++
> + 	unsigned int baud;
> + 	int id;
> + 	int ret;
> ++	int subtype = UART_IS_AR9330;
> +
> + 	np = pdev->dev.of_node;
> + 	if (IS_ENABLED(CONFIG_OF) && np) {
> +@@ -629,6 +664,10 @@ static int ar933x_uart_probe(struct plat
> + 				id);
> + 			return id;
> + 		}
> ++		match = of_match_node(ar933x_uart_of_ids, np);
> ++		if (match)
> ++			subtype = (int)match->data;
> ++
> + 	} else {
> + 		id = pdev->id;
> + 		if (id == -1)
> +@@ -649,6 +688,8 @@ static int ar933x_uart_probe(struct plat
> + 	if (!up)
> + 		return -ENOMEM;
> +
> ++	up->subtype = subtype;
> ++
> + 	up->clk = devm_clk_get(&pdev->dev, "uart");
> + 	if (IS_ERR(up->clk)) {
> + 		dev_err(&pdev->dev, "unable to get UART clock\n");
> +@@ -719,14 +760,6 @@ static int ar933x_uart_remove(struct pla
> + 	return 0;
> + }
> +
> +-#ifdef CONFIG_OF
> +-static const struct of_device_id ar933x_uart_of_ids[] = {
> +-	{ .compatible = "qca,ar9330-uart" },
> +-	{},
> +-};
> +-MODULE_DEVICE_TABLE(of, ar933x_uart_of_ids);
> +-#endif
> +-
> + static struct platform_driver ar933x_uart_platform_driver = {
> + 	.probe		= ar933x_uart_probe,
> + 	.remove		= ar933x_uart_remove,
> --
> 2.25.0
> 
> 
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
