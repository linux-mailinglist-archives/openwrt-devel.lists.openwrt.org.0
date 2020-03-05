Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B2B317AA8F
	for <lists+openwrt-devel@lfdr.de>; Thu,  5 Mar 2020 17:34:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uEX4oZr5Pm//JiQEnPz5GLvzVsKH974czcyv8I/vjVY=; b=O3ps2YGMKE5iKL
	mQxKwReL41LneA7KadSYK6NnwSXsUzNChCl2F82NJ1sDKxpxY6JkuffOSgVUbBFnWLjLz4dmQ8A9Z
	Q5ZX4RwZiDxRDTHIs+RM+lVmtTz7PVXX5x3l9jFw4KGr8gwSQhrfgpMeKINyMh5uKvmqOWASmA9Bf
	Qy62h3/ZC/bcSGkXeWvy7T8HR6cE+lQdXfLf0MoVmD3lZoxtjNz6yj7UMVb3oiv0xPfjUYWgyiEm+
	nUYJMfMJuDRpzgNcgPTXyg9N8kQlwjaTN4QaqjqlqHuzbw6CVz7LcR7xdTh/+edl0fcChoKK/qhjH
	48zlpifj2mXFqpmmnPAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9tRu-0004q9-4t; Thu, 05 Mar 2020 16:34:14 +0000
Received: from mout-u-204.mailbox.org ([91.198.250.253])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9tR2-00042B-ON
 for openwrt-devel@lists.openwrt.org; Thu, 05 Mar 2020 16:33:22 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org
 [IPv6:2001:67c:2050:105:465:1:2:0])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mout-u-204.mailbox.org (Postfix) with ESMTPS id 48YGWz38LGzQlGJ;
 Thu,  5 Mar 2020 17:33:19 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gorani.run; s=MBO0001; 
 t=1583425997;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=BOM+CZa2ZCnv1jGMZMP2YP+Wvne5UJTTSGqrkX2s9YI=;
 b=Wxb+VU6bR02U5lpRWiClMh/rUMAQsBwpNiLz+UiLmJfb9cMvDzJBhBDtGvvmpRpRhdwBw0
 Dr3gsKmLSbkuPcQeWnIKoxV6lghADFFzM3seORdRN3/DLJcgkIccM70hLfD3M1tg8UUZWP
 tC1T8SauOXz9b1uM5ws3bqV3AeSOSfSmOAOnz2mg0P6feitOQx0Auk9Xnm0a/nI9HiQxMY
 kOUSVOipVnTwsp7HYRsw14l+SfihmoX3n5nDyUebj/eBcJmWU+ekiBCHVxW6k9d4QPwB3S
 MvJH28giiJg5v/2ZW3FpHXKh8ThJtFG9Fn443GZtjhywFdljJYXOX5qICo3BhA==
Received: from smtp2.mailbox.org ([80.241.60.241])
 by spamfilter02.heinlein-hosting.de (spamfilter02.heinlein-hosting.de
 [80.241.56.116]) (amavisd-new, port 10030)
 with ESMTP id a3jHI3bCHk0C; Thu,  5 Mar 2020 17:33:16 +0100 (CET)
From: Sungbo Eo <mans0n@gorani.run>
To: openwrt-devel@lists.openwrt.org
Date: Fri,  6 Mar 2020 01:32:48 +0900
Message-Id: <20200305163248.361572-5-mans0n@gorani.run>
In-Reply-To: <20200305163248.361572-1-mans0n@gorani.run>
References: <20200305163248.361572-1-mans0n@gorani.run>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_083321_140978_B0644038 
X-CRM114-Status: GOOD (  19.16  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.198.250.253 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH 4/4] ar71xx: restore support for boot
 console with arbitrary baud rates
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
Cc: Hauke Mehrtens <hauke@hauke-m.de>, Sungbo Eo <mans0n@gorani.run>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Commit 1bfbf2de6df9 ("ar71xx: serial: core: add support for boot console
with arbitrary baud rates") added support for arbitrary baud rates which
enabled 250000 baud rate for Yun. But the patch was not ported to kernel
4.9, and since then the kernel set its baud rate to 9600. This commit ports
the patch to kernel 4.14, thereby restoring the serial console of Yun.

Cc: Hauke Mehrtens <hauke@hauke-m.de>
Signed-off-by: Sungbo Eo <mans0n@gorani.run>
---
 ...support-for-boot-console-with-arbitr.patch | 54 +++++++++++++++++++
 1 file changed, 54 insertions(+)
 create mode 100644 target/linux/ar71xx/patches-4.14/821-serial-core-add-support-for-boot-console-with-arbitr.patch

diff --git a/target/linux/ar71xx/patches-4.14/821-serial-core-add-support-for-boot-console-with-arbitr.patch b/target/linux/ar71xx/patches-4.14/821-serial-core-add-support-for-boot-console-with-arbitr.patch
new file mode 100644
index 0000000000..23b6d73959
--- /dev/null
+++ b/target/linux/ar71xx/patches-4.14/821-serial-core-add-support-for-boot-console-with-arbitr.patch
@@ -0,0 +1,54 @@
+From 4d3c17975c7814884a721fe693b3adf5c426d759 Mon Sep 17 00:00:00 2001
+From: Hauke Mehrtens <hauke@hauke-m.de>
+Date: Tue, 10 Nov 2015 22:18:39 +0100
+Subject: [RFC] serial: core: add support for boot console with arbitrary
+ baud rates
+
+The Arduino Yun uses a baud rate of 250000 by default. The serial is
+going over the Atmel ATmega and is used to connect to this chip.
+Without this patch Linux wants to switch the console to 9600 Baud.
+
+With this patch Linux will use the configured baud rate and not a
+default one specified in uart_register_driver().
+
+Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
+[rebased to 4.14, slightly reworded commit message]
+Signed-off-by: Sungbo Eo <mans0n@gorani.run>
+---
+ drivers/tty/serial/serial_core.c | 6 +++++-
+ include/linux/console.h          | 1 +
+ 2 files changed, 6 insertions(+), 1 deletions(-)
+
+--- a/drivers/tty/serial/serial_core.c
++++ b/drivers/tty/serial/serial_core.c
+@@ -232,6 +232,8 @@ static int uart_port_startup(struct tty_
+ 	if (retval == 0) {
+ 		if (uart_console(uport) && uport->cons->cflag) {
+ 			tty->termios.c_cflag = uport->cons->cflag;
++			tty->termios.c_ospeed = uport->cons->baud;
++			tty->termios.c_ispeed = uport->cons->baud;
+ 			uport->cons->cflag = 0;
+ 		}
+ 		/*
+@@ -2072,8 +2074,10 @@ uart_set_options(struct uart_port *port,
+ 	 * Allow the setting of the UART parameters with a NULL console
+ 	 * too:
+ 	 */
+-	if (co)
++	if (co) {
+ 		co->cflag = termios.c_cflag;
++		co->baud = baud;
++	}
+ 
+ 	return 0;
+ }
+--- a/include/linux/console.h
++++ b/include/linux/console.h
+@@ -145,6 +145,7 @@ struct console {
+ 	short	flags;
+ 	short	index;
+ 	int	cflag;
++	int	baud;
+ 	void	*data;
+ 	struct	 console *next;
+ };
-- 
2.25.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
