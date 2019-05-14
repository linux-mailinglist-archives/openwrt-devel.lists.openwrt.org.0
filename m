Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 660601E536
	for <lists+openwrt-devel@lfdr.de>; Wed, 15 May 2019 00:40:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=eVMQ7OB6q5mVFl8uphcCX1QEK3wMPctJD9mZtvE6Ir0=; b=rnSppDS0zlFUJA
	hBomnC67zH6HfI8Akj5kGk1lXUyk7AYhKi4o8e8Mwi5WQ3L5OwPi0QVBmp40z3D/KIyiYZmH1nJBI
	FKpY20bFPC8wj1PC9d8B3vkMTwXNo+EsUB0h5C39HKwnmyM9ELiNOC8HaQqatIKXwIsiaJiAAWK0Y
	bmfSp8RA6aSaMmBYKxxaIcO9VvxRp49U6z1B81GMe+cYhxYwc+wmSLMt3/FOb2HdqjvRjw0vCj3rP
	jB+zTMcRH9dCL+FCHqIhxeW+swNVp3XryjbSAAsxKdVArPD7KaetjTJ64ihzTJUoKU2sjtoM+CVK5
	awV7QyYfpjHLEeoAUZjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQg5i-0000Oz-Hj; Tue, 14 May 2019 22:40:10 +0000
Received: from mx.allycomm.com ([138.68.30.55])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQg5Z-0008LW-V8
 for openwrt-devel@lists.openwrt.org; Tue, 14 May 2019 22:40:03 +0000
Received: from allycomm.com (inet.guidewire.com [199.91.42.30])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx.allycomm.com (Postfix) with ESMTPSA id 5E05E3BB6A;
 Tue, 14 May 2019 15:40:00 -0700 (PDT)
From: Jeff Kletsky <lede@allycomm.com>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 14 May 2019 15:39:53 -0700
Message-Id: <20190514223956.19663-1-lede@allycomm.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_154002_028594_46B895CC 
X-CRM114-Status: GOOD (  11.84  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [138.68.30.55 listed in list.dnswl.org]
Subject: [OpenWrt-Devel] [PATCH 0/3] ath79: Extend GL.iNet AR750S support to
 NAND file system
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

The following patches prepare for and implement support of the
NAND-based, GL.iNet AR750S under the upstream spi-nand framework
available in Linux 4.19 and later.

Existing commit 3bc8ed91d4 on `master` backports upstream support for
certain GigaDevice SPI NAND devices in the "A" and "E" series.

The AR750S, however, uses a GD5F1GQ4UFxxG SPI NAND, which was not
supported upstream. Patch 1 of this series represents the current code
to support this chip, submitted upstream[1] and under review. This has
received a positive review, but no formal "ACK" at this time.

In the process of preparing for the updated subtarget, the existing
GL.iNet AR300M (NAND) board was removed as it has been non-bootable
and it appears that the definitions in image/nand.mk may not be
consistent with GigaDevice SPI NAND. The DTS and other files have been
retainied. It should be reasonably straightforward for someone with an
NAND-bearing AR300M to complete the port, with the AR750S as a template.


dmesg of the AR750S running with NAND is available at

https://gist.github.com/jeffsf/7fd567b4da3874893111d8ac841d2987


[    0.338008] ar7200-usb-phy usb-phy: phy reset is missing

is bothersome, but a check of the DTS which inherits from qca956x.dtsi,
the running device, and the ar7200-usb-phy code has not led to any
clear cause. The USB subsystem appears to work properly, allowing
access to a USB "stick" as well as the microSD reader.  &usb0/1 and
&usb_phy0/1 have been enabled and the corresponding rst/rst2 are
unmodified from qca956x.dtsi. Disabling one or the other of the USBs
doesn't change the message. There has been some mention that this
is "normal"[2]. If you've got some further insight into this, I would
certainly try to resolve it.

Current NAND-based kernel size is 1,811,125 bytes, including the
addition of ext4 support. As the NOR version uses the typical
kernel+squashfs+jffs2 scheme, a residual NOR-based root file system is
likely not readable from an over-flashed NAND install at this time.

The NOR-based variant remains on Linux 4.14 with the other ath79
generic targets. The NOR-based kernel size is 1,619,638 bytes.


Jeff




[1] https://patchwork.ozlabs.org/project/linux-mtd/list/?series=107874

[2] https://forum.openwrt.org/t/porting-guide-ar71xx-to-ath79/13013/788





_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
