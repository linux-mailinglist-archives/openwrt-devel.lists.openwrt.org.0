Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B05CD80A6
	for <lists+openwrt-devel@lfdr.de>; Tue, 15 Oct 2019 22:06:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=EmAQeyXh1h2FabJlLVun64kVCrfvtxac+CrTcH/Pdx0=; b=JVsMe2NcCtuclx
	i6PyovxShSqEQu6TmdxiMdIcQTPfI4oJCQ40zvnPwC1J6s0k7qZA3knFZPkyFnaqju+i7HlpXiu+e
	q3Qt5GiwAn5IqLvlc0rRy0QZAiK3jkbMivVHPnubZ3alWNJvSDHBggdU8kz+e2N2AaxRq+7mrqhF/
	rnzPfgKhWEFN54oTT2K/usXJ+T5h2P+lXRlOFYp54HeZPiZwOryqoZicAVgJEqTo7bBBUWdTzUkH7
	N663PurER/+t4DGx2mmxGRF1l26hPIxXLUUVYDpvRgbsGAUVmwajIH+aBwj96JQnbOrnHmQ/Ycs/e
	gooYxd2gn8SWRZI/HrqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKT58-0004hi-KA; Tue, 15 Oct 2019 20:06:10 +0000
Received: from mout.web.de ([212.227.17.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKT51-0004h1-MQ
 for openwrt-devel@lists.openwrt.org; Tue, 15 Oct 2019 20:06:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1571169952;
 bh=qd6tvoW6BxseopSHTZfeSFUbTSCWq1q2+QNWo3TlmdA=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=jdrnb4vJxRPkFuvF/meKvV6qafKfeCmHMt2OZCuevsiGdQKZ6FL1UTqgC9VXPxVa4
 0Gf8nparlWClhULrdgcSDUPqWrMKQ3bCbCn0RWDpFBC2+D5vi348zuTbGr/hXHWFVw
 tcKoN7rbG3BeBuJipOAjEPu1AXorW3q5zaLmHZw8=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from xanax.club.berlin.ccc.de ([195.160.172.42]) by smtp.web.de
 (mrweb101 [213.165.67.124]) with ESMTPSA (Nemesis) id
 0Lfj2k-1hie9S0UkU-00pJ0d; Tue, 15 Oct 2019 22:05:52 +0200
From: Moritz Warning <moritzwarning@web.de>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 15 Oct 2019 22:06:10 +0200
Message-Id: <20191015200610.23712-1-moritzwarning@web.de>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:jVvoh89txftx5Kn1ZwPUu6hQLUz+s/lVizHFLl6/WIQCO0ys7Re
 +AC1Sc/CdFDjA/FeP+QBErzHz6GepYxdpv5ai5QK4sewBK7MrISySETnpX0zSVvCu8AEWYf
 d2Klum6ZiFKKk7QzCa6e+roLh0Hd49AoIXPrFgQjL9CCJMfHcz2SYg0zz08VqPz8JxyXOai
 I1D0DrsqunhoYkULdmbcw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Z6fnnJhOaQQ=:42h7jdNTRjZ9bgxHPPfDPR
 AcVf/I0gznDXcdNmVIA5q6AdJ7n+IRPW8OASt4hiRtAVjYc16zXGAa2WctI4Qt0jkdD9MEyN5
 5BtTISHo/4+S7u8qnSnkY8KT+6KnZsIorbL+bM9WVFXQ3ejH5eEgxfOSgMU2A/0hS5t3H7CxS
 B6br/VPV1ZVb/kdWrnixAhwvMqsgGWvJ9fDyaTA0PqX8vqc2htSB0xULsLndRmtHcKn91z5rD
 ivk6QCwgPRKGZICaCgypbwtTJ7xmat8QQgqL1gRf7+BmfxQeS7tqbUPY6FneGiwyAzACkV6XS
 j6AdFEZ/rszil0Uvh8wLknnQ2SpRSK/aI9ey1TtXf3r2qLrXlX9mb/SbJlNsGj3rusaSp826w
 WfqVBLUL5rkuLfV90OLh9W9rMZn8vT3dDMoEsDWLb5yt5Ept7M4hFLFweYRbl+vOHxfnXvJfd
 RPEpGRifUrWCWnqLLwerzGcCztZg93VdlH2OQgz+DBSHNUmZPI/HD84t/u/PuZBZjwqB3jEx5
 vsessh0E16kFaslZwREBBomRQ1Xbzoz1v5kZcSPDwOXC90NXJu6iIv7osWreYttS8Jw+kYw51
 hJ5gAYVo51RMqRkahrFO/Lf5ffGbVFU0DOwGyqxXvWffA7YrN32633Pxv4ZTsfJtpG1P+GChR
 vVuvjmUWK4VBflM0fdXBrzXJBnMzG/az+Qa1j6maWDYdckaI7op44SzMpvwqg98VU8NhgkaJr
 IGi7egKSiUin6O1+X0Qfla20gwgAFrtm4pnu07zK1rZ9XudNs9yPWTw7AqIDhd6M7YB9xRIrI
 qspOHj7qKc5e9uDYg2Z6EDAwY5qXcnDQTG2QqLJ3G2kJYeJv8aHSZ9+NhKuoYHvjyxRaeJsqZ
 ziHbn/qYsDsUekh2q273y8gcW/aA3nxM2NDAfdsNMLxCTWUalkyAEV5MqUX1KmhpVMLbcapsM
 eBkNSKraQdapAF5AxwczmYy0kdgIfPAus2lwn9iTtkKyQSbCzPEGwbKTSWIN5dzo1yh52Q9YT
 nvMBZ0TxuPwfpgrMU/97JKWxnRLLLieA7ppB7oKXEkexD5RQueO9A4ZK24lDDTFHP3SaY/aOB
 eYGE0xd/gyXLPww9jhcuTEacMf0A9M+ECPXjj9XFxwpKAZULszQ1wKjTEm21PLLQZeIg3uPpt
 vH1orReSqqueggJ4L2ZOncrSc9K1FNgmMA8NnMZfGPBJARoZEIpJOoSItKQ5JifAgn/c2tmA5
 2oVhB21dpRdijiM5zr46jU8G21aj8ZuSNJPTaUcbqJWPOUueVIOzM8TiBcG4=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_130604_066172_0A2AC290 
X-CRM114-Status: UNSURE (   5.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.11 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (moritzwarning[at]web.de)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH] rb532: split up DEVICE_TITLE
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
Cc: Moritz Warning <moritzwarning@web.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

DEVICE_TITLE is split up into DEVICE_VENDOR, DEVICE_MODEL and DEVICE_VARIANT

Signed-off-by: Moritz Warning <moritzwarning@web.de>
---
 target/linux/rb532/image/Makefile | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/target/linux/rb532/image/Makefile b/target/linux/rb532/image/Makefile
index 1558bf56d8..a6f8a6beaf 100644
--- a/target/linux/rb532/image/Makefile
+++ b/target/linux/rb532/image/Makefile
@@ -36,9 +36,10 @@ define Build/lzma-loader-elf
 endef

 define Device/nand
+  DEVICE_VENDOR := MikroTik
+  DEVICE_MODEL := RouterBOARD 532
   CMDLINE := ubi.mtd=1 ubi.block=0,rootfs root=/dev/ubiblock0_1
   BOARD_NAME := rb532
-  DEVICE_TITLE := rb532 NAND
   SUPPORTED_DEVICES := rb532
   KERNEL_INITRAMFS := append-kernel | patch-cmdline | lzma | lzma-loader-elf
   KERNEL := $$(KERNEL_INITRAMFS) | kernel2minor -s 2048 -i 0 -c
--
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
