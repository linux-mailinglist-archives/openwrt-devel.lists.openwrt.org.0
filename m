Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FE3619E94
	for <lists+openwrt-devel@lfdr.de>; Fri, 10 May 2019 15:57:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:Date:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=liLoYAXXIiCxQknbyWLWPRx2qDswVVHHOOdwKi1ZIwM=; b=mNdi8Dt2Tgcclo
	w9EhxyLuFgJd9DhPaK7XPBtZdFsgLp641K/MfzwIYuoa05ssBjaQ3qq92WY3gyHPJ84T2qTWZXKNM
	yCFvIuy9Yd0RAMdjsKKBMxJQOTzlNKE0Jdwq+yBxRp3LFGJ7cKVyLGPGRiSNQ4gOl/xf99yzSYOmK
	5jGLsBkNWukQPGrqeJ9kBQ6457minRRZNHe7+vqAxK81FX54FWk8rPHrN6a3nL8yQ2PRO46+tAIva
	73gAXPWxfWOE1MQRuqtAJ1J020hL7br/wuzAs7s+VNHKrMCx3B2T4s3ZivE7r87kKKRxrS0KWkota
	yrNoATmTRbEhR5T8yLyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hP61b-0006oe-As; Fri, 10 May 2019 13:57:23 +0000
Received: from mx.allycomm.com ([138.68.30.55])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hP61P-0006l7-8J
 for openwrt-devel@lists.openwrt.org; Fri, 10 May 2019 13:57:12 +0000
Received: from localhost.localdomain (184-23-191-143.vpn.dynamic.sonic.net
 [184.23.191.143])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.allycomm.com (Postfix) with ESMTPSA id F1D0E40E37;
 Fri, 10 May 2019 06:57:08 -0700 (PDT)
From: lede@allycomm.com
To: openwrt-devel@lists.openwrt.org
Date: Fri, 10 May 2019 06:56:37 -0700
Message-Id: <20190510135637.31204-1-lede@allycomm.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_065711_304861_D56A9DDE 
X-CRM114-Status: GOOD (  16.19  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [138.68.30.55 listed in list.dnswl.org]
Subject: [OpenWrt-Devel] [PATCH] utils/spidev_test: Update to current source
 from upstream Linux
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

From: Jeff Kletsky <git-commits@allycomm.com>

Incorporates multiple changes, including file-based input and output

From upstream commit:

    commit 35386dfd13b7
    Author: Geert Uytterhoeven <geert+renesas@glider.be>
    Date:   Mon Sep 3 19:33:23 2018 +0200

Signed-off-by: Jeff Kletsky <git-commits@allycomm.com>
---
 package/utils/spidev_test/src/spidev_test.c | 213 ++++++++++++++++++++++++----
 1 file changed, 189 insertions(+), 24 deletions(-)

diff --git a/package/utils/spidev_test/src/spidev_test.c b/package/utils/spidev_test/src/spidev_test.c
index 135b3f592b..4c12e6aea5 100644
--- a/package/utils/spidev_test/src/spidev_test.c
+++ b/package/utils/spidev_test/src/spidev_test.c
@@ -18,7 +18,10 @@
 #include <string.h>
 #include <getopt.h>
 #include <fcntl.h>
+#include <time.h>
 #include <sys/ioctl.h>
+#include <linux/ioctl.h>
+#include <sys/stat.h>
 #include <linux/types.h>
 #include <linux/spi/spidev.h>
 
@@ -33,9 +36,14 @@ static void pabort(const char *s)
 static const char *device = "/dev/spidev1.1";
 static uint32_t mode;
 static uint8_t bits = 8;
+static char *input_file;
+static char *output_file;
 static uint32_t speed = 500000;
 static uint16_t delay;
 static int verbose;
+static int transfer_size;
+static int iterations;
+static int interval = 5; /* interval in seconds for showing transfer rate */
 
 uint8_t default_tx[] = {
 	0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
@@ -49,7 +57,8 @@ uint8_t default_tx[] = {
 uint8_t default_rx[ARRAY_SIZE(default_tx)] = {0, };
 char *input_tx;
 
-static void hex_dump(const void *src, size_t length, size_t line_size, char *prefix)
+static void hex_dump(const void *src, size_t length, size_t line_size,
+		     char *prefix)
 {
 	int i = 0;
 	const unsigned char *address = src;
@@ -64,12 +73,12 @@ static void hex_dump(const void *src, size_t length, size_t line_size, char *pre
 				while (i++ % line_size)
 					printf("__ ");
 			}
-			printf(" | ");  /* right close */
+			printf(" |");
 			while (line < address) {
 				c = *line++;
-				printf("%c", (c < 33 || c == 255) ? 0x2E : c);
+				printf("%c", (c < 32 || c > 126) ? '.' : c);
 			}
-			printf("\n");
+			printf("|\n");
 			if (length > 0)
 				printf("%s | ", prefix);
 		}
@@ -83,13 +92,17 @@ static void hex_dump(const void *src, size_t length, size_t line_size, char *pre
 static int unescape(char *_dst, char *_src, size_t len)
 {
 	int ret = 0;
+	int match;
 	char *src = _src;
 	char *dst = _dst;
 	unsigned int ch;
 
 	while (*src) {
 		if (*src == '\\' && *(src+1) == 'x') {
-			sscanf(src + 2, "%2x", &ch);
+			match = sscanf(src + 2, "%2x", &ch);
+			if (!match)
+				pabort("malformed input string");
+
 			src += 4;
 			*dst++ = (unsigned char)ch;
 		} else {
@@ -103,7 +116,7 @@ static int unescape(char *_dst, char *_src, size_t len)
 static void transfer(int fd, uint8_t const *tx, uint8_t const *rx, size_t len)
 {
 	int ret;
-
+	int out_fd;
 	struct spi_ioc_transfer tr = {
 		.tx_buf = (unsigned long)tx,
 		.rx_buf = (unsigned long)rx,
@@ -134,16 +147,32 @@ static void transfer(int fd, uint8_t const *tx, uint8_t const *rx, size_t len)
 
 	if (verbose)
 		hex_dump(tx, len, 32, "TX");
-	hex_dump(rx, len, 32, "RX");
+
+	if (output_file) {
+		out_fd = open(output_file, O_WRONLY | O_CREAT | O_TRUNC, 0666);
+		if (out_fd < 0)
+			pabort("could not open output file");
+
+		ret = write(out_fd, rx, len);
+		if (ret != len)
+			pabort("not all bytes written to output file");
+
+		close(out_fd);
+	}
+
+	if (verbose)
+		hex_dump(rx, len, 32, "RX");
 }
 
 static void print_usage(const char *prog)
 {
-	printf("Usage: %s [-DsbdlHOLC3]\n", prog);
+	printf("Usage: %s [-DsbdlHOLC3vpNR24SI]\n", prog);
 	puts("  -D --device   device to use (default /dev/spidev1.1)\n"
 	     "  -s --speed    max speed (Hz)\n"
 	     "  -d --delay    delay (usec)\n"
-	     "  -b --bpw      bits per word \n"
+	     "  -b --bpw      bits per word\n"
+	     "  -i --input    input data from a file (e.g. \"test.bin\")\n"
+	     "  -o --output   output data to a file (e.g. \"results.bin\")\n"
 	     "  -l --loop     loopback\n"
 	     "  -H --cpha     clock phase\n"
 	     "  -O --cpol     clock polarity\n"
@@ -155,7 +184,9 @@ static void print_usage(const char *prog)
 	     "  -N --no-cs    no chip select\n"
 	     "  -R --ready    slave pulls low to pause\n"
 	     "  -2 --dual     dual transfer\n"
-	     "  -4 --quad     quad transfer\n");
+	     "  -4 --quad     quad transfer\n"
+	     "  -S --size     transfer size\n"
+	     "  -I --iter     iterations\n");
 	exit(1);
 }
 
@@ -167,6 +198,8 @@ static void parse_opts(int argc, char *argv[])
 			{ "speed",   1, 0, 's' },
 			{ "delay",   1, 0, 'd' },
 			{ "bpw",     1, 0, 'b' },
+			{ "input",   1, 0, 'i' },
+			{ "output",  1, 0, 'o' },
 			{ "loop",    0, 0, 'l' },
 			{ "cpha",    0, 0, 'H' },
 			{ "cpol",    0, 0, 'O' },
@@ -178,11 +211,14 @@ static void parse_opts(int argc, char *argv[])
 			{ "dual",    0, 0, '2' },
 			{ "verbose", 0, 0, 'v' },
 			{ "quad",    0, 0, '4' },
+			{ "size",    1, 0, 'S' },
+			{ "iter",    1, 0, 'I' },
 			{ NULL, 0, 0, 0 },
 		};
 		int c;
 
-		c = getopt_long(argc, argv, "D:s:d:b:lHOLC3NR24p:v", lopts, NULL);
+		c = getopt_long(argc, argv, "D:s:d:b:i:o:lHOLC3NR24p:vS:I:",
+				lopts, NULL);
 
 		if (c == -1)
 			break;
@@ -200,6 +236,12 @@ static void parse_opts(int argc, char *argv[])
 		case 'b':
 			bits = atoi(optarg);
 			break;
+		case 'i':
+			input_file = optarg;
+			break;
+		case 'o':
+			output_file = optarg;
+			break;
 		case 'l':
 			mode |= SPI_LOOP;
 			break;
@@ -236,6 +278,12 @@ static void parse_opts(int argc, char *argv[])
 		case '4':
 			mode |= SPI_TX_QUAD;
 			break;
+		case 'S':
+			transfer_size = atoi(optarg);
+			break;
+		case 'I':
+			iterations = atoi(optarg);
+			break;
 		default:
 			print_usage(argv[0]);
 			break;
@@ -249,13 +297,114 @@ static void parse_opts(int argc, char *argv[])
 	}
 }
 
+static void transfer_escaped_string(int fd, char *str)
+{
+	size_t size = strlen(str);
+	uint8_t *tx;
+	uint8_t *rx;
+
+	tx = malloc(size);
+	if (!tx)
+		pabort("can't allocate tx buffer");
+
+	rx = malloc(size);
+	if (!rx)
+		pabort("can't allocate rx buffer");
+
+	size = unescape((char *)tx, str, size);
+	transfer(fd, tx, rx, size);
+	free(rx);
+	free(tx);
+}
+
+static void transfer_file(int fd, char *filename)
+{
+	ssize_t bytes;
+	struct stat sb;
+	int tx_fd;
+	uint8_t *tx;
+	uint8_t *rx;
+
+	if (stat(filename, &sb) == -1)
+		pabort("can't stat input file");
+
+	tx_fd = open(filename, O_RDONLY);
+	if (tx_fd < 0)
+		pabort("can't open input file");
+
+	tx = malloc(sb.st_size);
+	if (!tx)
+		pabort("can't allocate tx buffer");
+
+	rx = malloc(sb.st_size);
+	if (!rx)
+		pabort("can't allocate rx buffer");
+
+	bytes = read(tx_fd, tx, sb.st_size);
+	if (bytes != sb.st_size)
+		pabort("failed to read input file");
+
+	transfer(fd, tx, rx, sb.st_size);
+	free(rx);
+	free(tx);
+	close(tx_fd);
+}
+
+static uint64_t _read_count;
+static uint64_t _write_count;
+
+static void show_transfer_rate(void)
+{
+	static uint64_t prev_read_count, prev_write_count;
+	double rx_rate, tx_rate;
+
+	rx_rate = ((_read_count - prev_read_count) * 8) / (interval*1000.0);
+	tx_rate = ((_write_count - prev_write_count) * 8) / (interval*1000.0);
+
+	printf("rate: tx %.1fkbps, rx %.1fkbps\n", rx_rate, tx_rate);
+
+	prev_read_count = _read_count;
+	prev_write_count = _write_count;
+}
+
+static void transfer_buf(int fd, int len)
+{
+	uint8_t *tx;
+	uint8_t *rx;
+	int i;
+
+	tx = malloc(len);
+	if (!tx)
+		pabort("can't allocate tx buffer");
+	for (i = 0; i < len; i++)
+		tx[i] = random();
+
+	rx = malloc(len);
+	if (!rx)
+		pabort("can't allocate rx buffer");
+
+	transfer(fd, tx, rx, len);
+
+	_write_count += len;
+	_read_count += len;
+
+	if (mode & SPI_LOOP) {
+		if (memcmp(tx, rx, len)) {
+			fprintf(stderr, "transfer error !\n");
+			hex_dump(tx, len, 32, "TX");
+			hex_dump(rx, len, 32, "RX");
+			exit(1);
+		}
+	}
+
+	free(rx);
+	free(tx);
+}
+
 int main(int argc, char *argv[])
 {
 	int ret = 0;
 	int fd;
-	uint8_t *tx;
-	uint8_t *rx;
-	int size;
 
 	parse_opts(argc, argv);
 
@@ -300,17 +449,33 @@ int main(int argc, char *argv[])
 	printf("bits per word: %d\n", bits);
 	printf("max speed: %d Hz (%d KHz)\n", speed, speed/1000);
 
-	if (input_tx) {
-		size = strlen(input_tx+1);
-		tx = malloc(size);
-		rx = malloc(size);
-		size = unescape((char *)tx, input_tx, size);
-		transfer(fd, tx, rx, size);
-		free(rx);
-		free(tx);
-	} else {
+	if (input_tx && input_file)
+		pabort("only one of -p and --input may be selected");
+
+	if (input_tx)
+		transfer_escaped_string(fd, input_tx);
+	else if (input_file)
+		transfer_file(fd, input_file);
+	else if (transfer_size) {
+		struct timespec last_stat;
+
+		clock_gettime(CLOCK_MONOTONIC, &last_stat);
+
+		while (iterations-- > 0) {
+			struct timespec current;
+
+			transfer_buf(fd, transfer_size);
+
+			clock_gettime(CLOCK_MONOTONIC, &current);
+			if (current.tv_sec - last_stat.tv_sec > interval) {
+				show_transfer_rate();
+				last_stat = current;
+			}
+		}
+		printf("total: tx %.1fKB, rx %.1fKB\n",
+		       _write_count/1024.0, _read_count/1024.0);
+	} else
 		transfer(fd, default_tx, default_rx, sizeof(default_tx));
-	}
 
 	close(fd);
 
-- 
2.11.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
