Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4FDA127025
	for <lists+openwrt-devel@lfdr.de>; Thu, 19 Dec 2019 23:00:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:References:In-Reply-To:Message-Id:Date:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Qt+zMj8qCmly1zEGMI1HyBi4FO1jwcxY5JAC5KZpji0=; b=hfHMx1uOIEwujZe5yfibQXZao
	3wWO8QsjTxmYl1NgXCxEGpXyXoP0L5RvO9MtlcgzpqzXdAi2RThol7VdoaI9HG79Gg7jy3dYNrLKs
	eu4h/6StAa02KEQRDj6oJD31CNb3BpsbGle8O4nzOFS9XfueqYHURiLLqqSAcncMvmzeJnEZWfZnn
	MamPqYPluxNQn/7JajN6egxjeozxSlZ35EBCUIF+a4206FPDbCsvPJZlD2yFP2I0O7Tkv1hrBpf7E
	A0cNrIy7Pga7TLQs2jxO2Y3gj7q7d90LSQCNfIu7ccDZ9C/ck14vxSS2ytgJzXQE7KYHEOcP+j3PK
	50GbM5IUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii3qH-0003b1-MG; Thu, 19 Dec 2019 22:00:21 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii3op-0000sy-NF
 for openwrt-devel@lists.openwrt.org; Thu, 19 Dec 2019 21:58:53 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 0C1C84B49;
 Thu, 19 Dec 2019 22:58:47 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id feb27df7;
 Thu, 19 Dec 2019 22:58:35 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 19 Dec 2019 22:58:23 +0100
Message-Id: <20191219215836.21773-8-ynezz@true.cz>
In-Reply-To: <20191219215836.21773-1-ynezz@true.cz>
References: <20191219215836.21773-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_135851_916697_32B038F9 
X-CRM114-Status: UNSURE (   7.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH libubox 07/20] test: fuzz: add blob_parse
 crashes
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
Cc: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
Content-Type: multipart/mixed; boundary="===============5175820510632417167=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============5175820510632417167==
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

==5872==ERROR: AddressSanitizer: SEGV on unknown address 0x6020004100b4
==5872==The signal is caused by a READ memory access.
    #0 blob_data blob.h
    #1 blob_parse blob.c:228:2

Signed-off-by: Petr Å tetiar <ynezz@true.cz>
---
 .../crash-1b8fb1be45db3aff7699100f497fb74138f3df4f | Bin 0 -> 6 bytes
 .../crash-98595faa58ba01d85ba4fd0b109cd3d490b45795 | Bin 0 -> 6 bytes
 .../crash-d0f3aa7d60a094b021f635d4edb7807c055a4ea1 |   1 +
 .../crash-df9d1243057b27bbad6211e5a23d1cb699028aa2 | Bin 0 -> 16 bytes
 4 files changed, 1 insertion(+)
 create mode 100644 tests/fuzz/corpus/crash-1b8fb1be45db3aff7699100f497fb74138f3df4f
 create mode 100644 tests/fuzz/corpus/crash-98595faa58ba01d85ba4fd0b109cd3d490b45795
 create mode 100644 tests/fuzz/corpus/crash-d0f3aa7d60a094b021f635d4edb7807c055a4ea1
 create mode 100644 tests/fuzz/corpus/crash-df9d1243057b27bbad6211e5a23d1cb699028aa2

diff --git a/tests/fuzz/corpus/crash-1b8fb1be45db3aff7699100f497fb74138f3df4f b/tests/fuzz/corpus/crash-1b8fb1be45db3aff7699100f497fb74138f3df4f
new file mode 100644
index 0000000000000000000000000000000000000000..407114eb1a9fc2c82f40cac9948c75ac23948385
GIT binary patch
literal 6
Lcmd;L00Kt<0D}Nb

literal 0
HcmV?d00001

diff --git a/tests/fuzz/corpus/crash-98595faa58ba01d85ba4fd0b109cd3d490b45795 b/tests/fuzz/corpus/crash-98595faa58ba01d85ba4fd0b109cd3d490b45795
new file mode 100644
index 0000000000000000000000000000000000000000..530ae8f6c1f7b9fa3ed86d1bf66b7e0a6d8b7485
GIT binary patch
literal 6
Ncmd<$;^Jap0{{TP051Rl

literal 0
HcmV?d00001

diff --git a/tests/fuzz/corpus/crash-d0f3aa7d60a094b021f635d4edb7807c055a4ea1 b/tests/fuzz/corpus/crash-d0f3aa7d60a094b021f635d4edb7807c055a4ea1
new file mode 100644
index 000000000000..46b749ee7968
--- /dev/null
+++ b/tests/fuzz/corpus/crash-d0f3aa7d60a094b021f635d4edb7807c055a4ea1
@@ -0,0 +1 @@
+ÿÿÿÿÝ
diff --git a/tests/fuzz/corpus/crash-df9d1243057b27bbad6211e5a23d1cb699028aa2 b/tests/fuzz/corpus/crash-df9d1243057b27bbad6211e5a23d1cb699028aa2
new file mode 100644
index 0000000000000000000000000000000000000000..f6899b51bcb4283949208b7937e9a4ce3a7ef13c
GIT binary patch
literal 16
RcmZQzVBln8U;rWr4FCY<02=@R

literal 0
HcmV?d00001



--===============5175820510632417167==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5175820510632417167==--
