Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC8471A46A
	for <lists+openwrt-devel@lfdr.de>; Fri, 10 May 2019 23:19:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qFxS3HgKDU4sJe2x5jhKaNwuIn/dBWLH4PxrUGn0MSE=; b=BEpN6RMELLx6o8
	MWv9YalD4ytVF1yXo0eBM8Dg5X1skUSgRmDkiS2zcK2KKb3CPwokTaLvawLq2sDcQ0wcC0JmVos3n
	EZGetVOD4zDWmElFax9XJiqBtNXhA6xLUSDclSAZbbJgu6gPFSaV6SZcFs3pa7U+0NssgjeZjj3p+
	SJ3Rl/ohNFMOdFFeQ7tlGQ49UZbxu2Ws/lUEBLIHfoM/qXFZEqIdEPrVq7su/nePQtmPy8CIeJhDf
	qBPO1TWCA9tRYnBx7ali5nOb+FToFYpxE8g0c4LTmTtZ4CotuDTl+uZFEhr/8YvhhffsCKeFJtH9m
	4voHwYl2L+GDKdfLeWZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPCv5-0001Oo-Jd; Fri, 10 May 2019 21:19:07 +0000
Received: from mail-wr1-x434.google.com ([2a00:1450:4864:20::434])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPCuo-0001OF-Uc
 for openwrt-devel@lists.openwrt.org; Fri, 10 May 2019 21:18:57 +0000
Received: by mail-wr1-x434.google.com with SMTP id d12so9265567wrm.8
 for <openwrt-devel@lists.openwrt.org>; Fri, 10 May 2019 14:18:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=5bFr4qK7UYkDwMxNbI/2pcAYX9VSSids++0SR1JOeBU=;
 b=sIlyX4SGR9a0uQkyGkSoz/I3o71qLGBw99p21RelLgb3BuRqYSo6WE0nT51KsK2ed+
 Hgn6oPjvOL/ieAXPv0pkf+KJYbHCV90sib8Gcl6uJ70Me+rJkIDVLPNjIscQhrQyxQar
 /i4iyzRPJ1vwPwG030iGUfIhkrpGkNu3/HxcIMlA+eUS3Nib4S3aJ2rK/USbaazHVnmK
 aVHLxUo6VbBwU1ILqZfLJow3ZeE4p2bbihEz50fnFRCr8wpSseoH5+x5P78MbQwnKxaG
 p6B3NNCWDVKt07nWWrGdiMzsOAoYMPYcplJU8Epo/Tfia4yXUHSRNJa6fBi8blOEfCgz
 pQsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=5bFr4qK7UYkDwMxNbI/2pcAYX9VSSids++0SR1JOeBU=;
 b=mZQuDp4oaMz0MgahG7PltTBjhNGOHCedbUigborYJI9DmZqNqgo63lM8IRh3iUuKg+
 cBpKfHNwUcmyBG0TJdVxe4MxtIjjttvvpMTJ8LMEMo0xqkH6ejHM4jscF83FWFALiV9f
 V+veHQH54w2dNWKML2wAhuJX9qQLVJdOHuMit92fqor5TA0Ba3hnEsej+jc/6PWR1a6y
 YUbfQZnVjqQd7LxJly9b0yOAZykvVUZ8KQn9zURgKs93hYR9aZc7xmdu/SLO211ybjE1
 QrFhOqlbZLTuEgLojeBvgwI0lsuGXnMZiME3kwIamKD6mXOIedjedTnC2fcX8D82YWJN
 50Ww==
X-Gm-Message-State: APjAAAUcXMbaPeOQkN3kPSyewOocttEtMZwYNHA8RmS0llTOaJCM2a76
 D6d7Fdp3RiNlIkTCDCIYusZDSXu4
X-Google-Smtp-Source: APXvYqyYdCIGuskQE9RpJszk3deOSNpIM10YJ6N7U2vFSKFDoUju25YxvOcX1owar3XD5eenEPhk2Q==
X-Received: by 2002:adf:9c87:: with SMTP id d7mr9221335wre.68.1557523128128;
 Fri, 10 May 2019 14:18:48 -0700 (PDT)
Received: from debian64.daheim (p4FD09782.dip0.t-ipconnect.de.
 [79.208.151.130])
 by smtp.gmail.com with ESMTPSA id h188sm4526138wmf.48.2019.05.10.14.18.47
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 10 May 2019 14:18:47 -0700 (PDT)
Received: from localhost.daheim ([127.0.0.1] helo=debian64.localnet)
 by debian64.daheim with esmtp (Exim 4.92)
 (envelope-from <chunkeey@gmail.com>)
 id 1hPCuk-0006yg-PW; Fri, 10 May 2019 23:18:46 +0200
From: Christian Lamparter <chunkeey@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 10 May 2019 23:18:46 +0200
Message-ID: <4040720.Q0NHDdjkrE@debian64>
In-Reply-To: <20190510135637.31204-1-lede@allycomm.com>
References: <20190510135637.31204-1-lede@allycomm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_141851_014735_105FE1A2 
X-CRM114-Status: GOOD (  18.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:434 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (chunkeey[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH] utils/spidev_test: Update to current
 source from upstream Linux
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Cc: lede@allycomm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Friday, May 10, 2019 3:56:37 PM CEST lede@allycomm.com wrote:
> From: Jeff Kletsky <git-commits@allycomm.com>
> 
> Incorporates multiple changes, including file-based input and output
> 
> From upstream commit:
> 
>     commit 35386dfd13b7
>     Author: Geert Uytterhoeven <geert+renesas@glider.be>
>     Date:   Mon Sep 3 19:33:23 2018 +0200
> 
> Signed-off-by: Jeff Kletsky <git-commits@allycomm.com>
> ---

Hm, this got me thinking. Because we could also just do what the perf
package does and built the spidev_test from the device's linux kernel
source and ship it. This would also entail that we don't need to ship
the spidev_test.c in package/utils/spidev_test/src anymore. What do you
think?

Cheers,
Christian

---
diff --git a/package/utils/spidev_test/Makefile b/package/utils/spidev_test/Makefile
index b7c5227f91..29c6a90dc8 100644
--- a/package/utils/spidev_test/Makefile
+++ b/package/utils/spidev_test/Makefile
@@ -10,13 +10,16 @@ include $(INCLUDE_DIR)/kernel.mk
 
 PKG_NAME:=spidev-test
 PKG_RELEASE:=$(LINUX_VERSION)
+PKG_FLAGS:=nonshared
+PKG_BUILD_DIR:=$(LINUX_DIR)/tools/spi-$(TARGET_DIR_NAME)
+PKG_BUILD_PARALLEL:=1
 
 include $(INCLUDE_DIR)/package.mk
 
 define Package/spidev-test
   SECTION:=utils
   CATEGORY:=Utilities
-  DEPENDS:=+kmod-spi-dev
+  DEPENDS:=+kmod-spi-dev @!IN_SDK
   TITLE:=SPI testing utility
   VERSION:=$(LINUX_VERSION)-$(PKG_RELEASE)
   URL:=http://www.kernel.org
@@ -27,9 +30,26 @@ define Package/spidev-test/description
   SPI testing utility.
 endef
 
+define Build/Prepare
+	$(CP) $(LINUX_DIR)/tools/spi/* $(PKG_BUILD_DIR)/
+endef
+
+MAKE_FLAGS = \
+	ARCH="$(LINUX_KARCH)" \
+	CROSS_COMPILE="$(TARGET_CROSS)" \
+	CC="$(TARGET_CC)" \
+	LD="$(TARGET_CROSS)ld" \
+	CFLAGS="$(TARGET_CFLAGS) $(TARGET_CPPFLAGS)" \
+	LDFLAGS="$(TARGET_LDFLAGS)" \
+	$(if $(findstring c,$(OPENWRT_VERBOSE)),V=1,V='') \
+	WERROR=0 \
+	prefix=/usr
+
 define Build/Compile
-	$(TARGET_CC) $(TARGET_CFLAGS) -o $(PKG_BUILD_DIR)/spidev_test \
-		$(PKG_BUILD_DIR)/spidev_test.c
+	+$(MAKE_FLAGS) $(MAKE) $(PKG_JOBS) \
+		-C $(PKG_BUILD_DIR) \
+		-f Makefile \
+		--no-print-directory
 endef
 
 define Package/spidev-test/install
diff --git a/package/utils/spidev_test/src/spidev_test.c b/package/utils/spidev_test/src/spidev_test.c
deleted file mode 100644
index 135b3f592b..0000000000
--- a/package/utils/spidev_test/src/spidev_test.c
+++ /dev/null
@@ -1,318 +0,0 @@
-/*
- * SPI testing utility (using spidev driver)
- *
- * Copyright (c) 2007  MontaVista Software, Inc.
- * Copyright (c) 2007  Anton Vorontsov <avorontsov@ru.mvista.com>
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License as published by
- * the Free Software Foundation; either version 2 of the License.
- *
- * Cross-compile with cross-gcc -I/path/to/cross-kernel/include
- */
-
-#include <stdint.h>
-#include <unistd.h>
-#include <stdio.h>
-#include <stdlib.h>
-#include <string.h>
-#include <getopt.h>
-#include <fcntl.h>
-#include <sys/ioctl.h>
-#include <linux/types.h>
-#include <linux/spi/spidev.h>
-
-#define ARRAY_SIZE(a) (sizeof(a) / sizeof((a)[0]))
-
-static void pabort(const char *s)
-{
-	perror(s);
-	abort();
-}
-
-static const char *device = "/dev/spidev1.1";
-static uint32_t mode;
-static uint8_t bits = 8;
-static uint32_t speed = 500000;
-static uint16_t delay;
-static int verbose;
-
-uint8_t default_tx[] = {
-	0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
-	0x40, 0x00, 0x00, 0x00, 0x00, 0x95,
-	0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
-	0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
-	0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
-	0xF0, 0x0D,
-};
-
-uint8_t default_rx[ARRAY_SIZE(default_tx)] = {0, };
-char *input_tx;
-
-static void hex_dump(const void *src, size_t length, size_t line_size, char *prefix)
-{
-	int i = 0;
-	const unsigned char *address = src;
-	const unsigned char *line = address;
-	unsigned char c;
-
-	printf("%s | ", prefix);
-	while (length-- > 0) {
-		printf("%02X ", *address++);
-		if (!(++i % line_size) || (length == 0 && i % line_size)) {
-			if (length == 0) {
-				while (i++ % line_size)
-					printf("__ ");
-			}
-			printf(" | ");  /* right close */
-			while (line < address) {
-				c = *line++;
-				printf("%c", (c < 33 || c == 255) ? 0x2E : c);
-			}
-			printf("\n");
-			if (length > 0)
-				printf("%s | ", prefix);
-		}
-	}
-}
-
-/*
- *  Unescape - process hexadecimal escape character
- *      converts shell input "\x23" -> 0x23
- */
-static int unescape(char *_dst, char *_src, size_t len)
-{
-	int ret = 0;
-	char *src = _src;
-	char *dst = _dst;
-	unsigned int ch;
-
-	while (*src) {
-		if (*src == '\\' && *(src+1) == 'x') {
-			sscanf(src + 2, "%2x", &ch);
-			src += 4;
-			*dst++ = (unsigned char)ch;
-		} else {
-			*dst++ = *src++;
-		}
-		ret++;
-	}
-	return ret;
-}
-
-static void transfer(int fd, uint8_t const *tx, uint8_t const *rx, size_t len)
-{
-	int ret;
-
-	struct spi_ioc_transfer tr = {
-		.tx_buf = (unsigned long)tx,
-		.rx_buf = (unsigned long)rx,
-		.len = len,
-		.delay_usecs = delay,
-		.speed_hz = speed,
-		.bits_per_word = bits,
-	};
-
-	if (mode & SPI_TX_QUAD)
-		tr.tx_nbits = 4;
-	else if (mode & SPI_TX_DUAL)
-		tr.tx_nbits = 2;
-	if (mode & SPI_RX_QUAD)
-		tr.rx_nbits = 4;
-	else if (mode & SPI_RX_DUAL)
-		tr.rx_nbits = 2;
-	if (!(mode & SPI_LOOP)) {
-		if (mode & (SPI_TX_QUAD | SPI_TX_DUAL))
-			tr.rx_buf = 0;
-		else if (mode & (SPI_RX_QUAD | SPI_RX_DUAL))
-			tr.tx_buf = 0;
-	}
-
-	ret = ioctl(fd, SPI_IOC_MESSAGE(1), &tr);
-	if (ret < 1)
-		pabort("can't send spi message");
-
-	if (verbose)
-		hex_dump(tx, len, 32, "TX");
-	hex_dump(rx, len, 32, "RX");
-}
-
-static void print_usage(const char *prog)
-{
-	printf("Usage: %s [-DsbdlHOLC3]\n", prog);
-	puts("  -D --device   device to use (default /dev/spidev1.1)\n"
-	     "  -s --speed    max speed (Hz)\n"
-	     "  -d --delay    delay (usec)\n"
-	     "  -b --bpw      bits per word \n"
-	     "  -l --loop     loopback\n"
-	     "  -H --cpha     clock phase\n"
-	     "  -O --cpol     clock polarity\n"
-	     "  -L --lsb      least significant bit first\n"
-	     "  -C --cs-high  chip select active high\n"
-	     "  -3 --3wire    SI/SO signals shared\n"
-	     "  -v --verbose  Verbose (show tx buffer)\n"
-	     "  -p            Send data (e.g. \"1234\\xde\\xad\")\n"
-	     "  -N --no-cs    no chip select\n"
-	     "  -R --ready    slave pulls low to pause\n"
-	     "  -2 --dual     dual transfer\n"
-	     "  -4 --quad     quad transfer\n");
-	exit(1);
-}
-
-static void parse_opts(int argc, char *argv[])
-{
-	while (1) {
-		static const struct option lopts[] = {
-			{ "device",  1, 0, 'D' },
-			{ "speed",   1, 0, 's' },
-			{ "delay",   1, 0, 'd' },
-			{ "bpw",     1, 0, 'b' },
-			{ "loop",    0, 0, 'l' },
-			{ "cpha",    0, 0, 'H' },
-			{ "cpol",    0, 0, 'O' },
-			{ "lsb",     0, 0, 'L' },
-			{ "cs-high", 0, 0, 'C' },
-			{ "3wire",   0, 0, '3' },
-			{ "no-cs",   0, 0, 'N' },
-			{ "ready",   0, 0, 'R' },
-			{ "dual",    0, 0, '2' },
-			{ "verbose", 0, 0, 'v' },
-			{ "quad",    0, 0, '4' },
-			{ NULL, 0, 0, 0 },
-		};
-		int c;
-
-		c = getopt_long(argc, argv, "D:s:d:b:lHOLC3NR24p:v", lopts, NULL);
-
-		if (c == -1)
-			break;
-
-		switch (c) {
-		case 'D':
-			device = optarg;
-			break;
-		case 's':
-			speed = atoi(optarg);
-			break;
-		case 'd':
-			delay = atoi(optarg);
-			break;
-		case 'b':
-			bits = atoi(optarg);
-			break;
-		case 'l':
-			mode |= SPI_LOOP;
-			break;
-		case 'H':
-			mode |= SPI_CPHA;
-			break;
-		case 'O':
-			mode |= SPI_CPOL;
-			break;
-		case 'L':
-			mode |= SPI_LSB_FIRST;
-			break;
-		case 'C':
-			mode |= SPI_CS_HIGH;
-			break;
-		case '3':
-			mode |= SPI_3WIRE;
-			break;
-		case 'N':
-			mode |= SPI_NO_CS;
-			break;
-		case 'v':
-			verbose = 1;
-			break;
-		case 'R':
-			mode |= SPI_READY;
-			break;
-		case 'p':
-			input_tx = optarg;
-			break;
-		case '2':
-			mode |= SPI_TX_DUAL;
-			break;
-		case '4':
-			mode |= SPI_TX_QUAD;
-			break;
-		default:
-			print_usage(argv[0]);
-			break;
-		}
-	}
-	if (mode & SPI_LOOP) {
-		if (mode & SPI_TX_DUAL)
-			mode |= SPI_RX_DUAL;
-		if (mode & SPI_TX_QUAD)
-			mode |= SPI_RX_QUAD;
-	}
-}
-
-int main(int argc, char *argv[])
-{
-	int ret = 0;
-	int fd;
-	uint8_t *tx;
-	uint8_t *rx;
-	int size;
-
-	parse_opts(argc, argv);
-
-	fd = open(device, O_RDWR);
-	if (fd < 0)
-		pabort("can't open device");
-
-	/*
-	 * spi mode
-	 */
-	ret = ioctl(fd, SPI_IOC_WR_MODE32, &mode);
-	if (ret == -1)
-		pabort("can't set spi mode");
-
-	ret = ioctl(fd, SPI_IOC_RD_MODE32, &mode);
-	if (ret == -1)
-		pabort("can't get spi mode");
-
-	/*
-	 * bits per word
-	 */
-	ret = ioctl(fd, SPI_IOC_WR_BITS_PER_WORD, &bits);
-	if (ret == -1)
-		pabort("can't set bits per word");
-
-	ret = ioctl(fd, SPI_IOC_RD_BITS_PER_WORD, &bits);
-	if (ret == -1)
-		pabort("can't get bits per word");
-
-	/*
-	 * max speed hz
-	 */
-	ret = ioctl(fd, SPI_IOC_WR_MAX_SPEED_HZ, &speed);
-	if (ret == -1)
-		pabort("can't set max speed hz");
-
-	ret = ioctl(fd, SPI_IOC_RD_MAX_SPEED_HZ, &speed);
-	if (ret == -1)
-		pabort("can't get max speed hz");
-
-	printf("spi mode: 0x%x\n", mode);
-	printf("bits per word: %d\n", bits);
-	printf("max speed: %d Hz (%d KHz)\n", speed, speed/1000);
-
-	if (input_tx) {
-		size = strlen(input_tx+1);
-		tx = malloc(size);
-		rx = malloc(size);
-		size = unescape((char *)tx, input_tx, size);
-		transfer(fd, tx, rx, size);
-		free(rx);
-		free(tx);
-	} else {
-		transfer(fd, default_tx, default_rx, sizeof(default_tx));
-	}
-
-	close(fd);
-
-	return ret;
-}




_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
