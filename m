Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0B08154AD1
	for <lists+openwrt-devel@lfdr.de>; Thu,  6 Feb 2020 19:11:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1lw6m+9p6R9UkYmYlTn94TGrXC3zyw5gdc69PU/sB18=; b=r86Keg6E/TmJb+
	J7tOgTHuH4x9Gk4TFsFZ901vlc4/MuFaw7AEdNNM98CuzqxND4VEreqP4Gdr7dhZZudys0I2hIdwW
	pVqiPnboFlF3FbO8MXzfb7K2LAduOtYR8/X6OdtwuB3xPYkt1ZzpS7q7T0VeOupq2Z4wkPg+5kQIR
	m4y4gpqDcfsZb/Q2xp8/TBRGRGhAcHlS+h4Xc2zgWXvwvJ+t35cv2eILZ+eTILGFzT7d5B7OQxDkJ
	1KpC/6ynXOTL+6SR50attW6QhPeo3XFjvAPZnup1eifl/Z378F8ZHlbchRfe/v9DR4nYIbzGcv1Gw
	Pxrm8aNm0/wZX8vBdRcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izlcF-00021a-EW; Thu, 06 Feb 2020 18:11:03 +0000
Received: from fudo.makrotopia.org ([2a07:2ec0:3002::71])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izlc8-00021D-6g
 for openwrt-devel@lists.openwrt.org; Thu, 06 Feb 2020 18:10:57 +0000
Received: from local
 by fudo.makrotopia.org with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
 (Exim 4.92.2) (envelope-from <daniel@makrotopia.org>)
 id 1izlc6-0007Nh-BW; Thu, 06 Feb 2020 19:10:54 +0100
Date: Thu, 6 Feb 2020 20:10:42 +0200
From: Daniel Golle <daniel@makrotopia.org>
To: openwrt-devel@lists.openwrt.org
Message-ID: <20200206181042.GA4074@makrotopia.org>
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_101056_529284_73545D3C 
X-CRM114-Status: GOOD (  11.09  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH/RFC] ath79: ar933x_uart: set UART_CS_{RX,
 TX}_READY_ORIDE
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
Cc: Piotr Dymacz <pepe2k@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On AR934x this UART is usually not initialized by the bootloader
as it is only used as a secondary serial port while the primary
UART is a newly introduced NS16550-compatible.
In order to make use of the ar933x-uart on AR934x without RTS/CTS
hardware flow control, one needs to set the
UART_CS_{RX,TX}_READY_ORIDE bits as other than on AR933x where this
UART is used as primary/console, the bootloader on AR934x typically
doesn't set those bits.
Setting them explicitely on AR933x should not do any harm, so just
set them unconditionally.

Signed-off-by: Daniel Golle <daniel@makrotopia.org>
---
If this works well on AR93xx there will be no need to add another
compatible string and logic to differentiate between AR933x and AR934x
in the UART driver. I don't have AR933x here to test, it'd be great if
someone with that hardware can test if applying this patch breaks the
serial console or not.

 ...uart-set-UART_CS_-RX-TX-_READY_ORIDE.patch | 54 +++++++++++++++++++
 1 file changed, 54 insertions(+)
 create mode 100644 target/linux/ath79/patches-4.19/0060-serial-ar933x_uart-set-UART_CS_-RX-TX-_READY_ORIDE.patch

diff --git a/target/linux/ath79/patches-4.19/0060-serial-ar933x_uart-set-UART_CS_-RX-TX-_READY_ORIDE.patch b/target/linux/ath79/patches-4.19/0060-serial-ar933x_uart-set-UART_CS_-RX-TX-_READY_ORIDE.patch
new file mode 100644
index 0000000000..2b0b72edc0
--- /dev/null
+++ b/target/linux/ath79/patches-4.19/0060-serial-ar933x_uart-set-UART_CS_-RX-TX-_READY_ORIDE.patch
@@ -0,0 +1,54 @@
+From 39da0e7957fb68b91f6c55cc61d66ae0930f3cd3 Mon Sep 17 00:00:00 2001
+From: Daniel Golle <daniel@makrotopia.org>
+Date: Thu, 6 Feb 2020 19:45:34 +0200
+Subject: [PATCH] serial: ar933x_uart: set UART_CS_{RX,TX}_READY_ORIDE
+To: linux-serial@vger.kernel.org,
+    linux-kernel@vger.kernel.org
+Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
+    Jiri Slaby <jslaby@suse.com>
+
+On AR934x this UART is usually not initialized by the bootloader
+as it is only used as a secondary serial port while the primary
+UART is a newly introduced NS16550-compatible.
+In order to make use of the ar933x-uart on AR934x without RTS/CTS
+hardware flow control, one needs to set the
+UART_CS_{RX,TX}_READY_ORIDE bits as other than on AR933x where this
+UART is used as primary/console, the bootloader on AR934x typically
+doesn't set those bits.
+Setting them explicitely on AR933x should not do any harm, so just
+set them unconditionally.
+
+Signed-off-by: Daniel Golle <daniel@makrotopia.org>
+---
+ drivers/tty/serial/ar933x_uart.c | 8 ++++++++
+ 1 file changed, 8 insertions(+)
+
+diff --git a/drivers/tty/serial/ar933x_uart.c b/drivers/tty/serial/ar933x_uart.c
+index 3bdd56a1021b..ea12f10610b6 100644
+--- a/drivers/tty/serial/ar933x_uart.c
++++ b/drivers/tty/serial/ar933x_uart.c
+@@ -286,6 +286,10 @@ static void ar933x_uart_set_termios(struct uart_port *port,
+ 	ar933x_uart_rmw_set(up, AR933X_UART_CS_REG,
+ 			    AR933X_UART_CS_HOST_INT_EN);
+ 
++	/* enable RX and TX ready overide */
++	ar933x_uart_rmw_set(up, AR933X_UART_CS_REG,
++		AR933X_UART_CS_TX_READY_ORIDE | AR933X_UART_CS_RX_READY_ORIDE);
++
+ 	/* reenable the UART */
+ 	ar933x_uart_rmw(up, AR933X_UART_CS_REG,
+ 			AR933X_UART_CS_IF_MODE_M << AR933X_UART_CS_IF_MODE_S,
+@@ -418,6 +422,10 @@ static int ar933x_uart_startup(struct uart_port *port)
+ 	ar933x_uart_rmw_set(up, AR933X_UART_CS_REG,
+ 			    AR933X_UART_CS_HOST_INT_EN);
+ 
++	/* enable RX and TX ready overide */
++	ar933x_uart_rmw_set(up, AR933X_UART_CS_REG,
++		AR933X_UART_CS_TX_READY_ORIDE | AR933X_UART_CS_RX_READY_ORIDE);
++
+ 	/* Enable RX interrupts */
+ 	up->ier = AR933X_UART_INT_RX_VALID;
+ 	ar933x_uart_write(up, AR933X_UART_INT_EN_REG, up->ier);
+-- 
+2.25.0
+
-- 
2.25.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
