Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA6ED32538
	for <lists+openwrt-devel@lfdr.de>; Sun,  2 Jun 2019 23:57:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Y61WRCgO7GtakgHwohEFqyEOSBbLuz7ipytWOxdRUj0=; b=lGOHfxXlP4tAAV
	mnd9/jpP2gajFi7zzWFDMMEay4iqSlNkAE5NEphjFt+yJdnVySKGpAleILdzAQjmOg49SKUMAq/Fc
	f2JLOyEUYQaCIFedXSlKS5WdUdLwrPylo+32h5Y8hukO4oj0iQoYasylv/uuTNpnvsdf0a+q6vyto
	MzwPSX+lNw36Z2lz53jkNnm08mJgaBP8DoguYI4+ZSEq2urhnUCdV9XBUwHDHMZ6OjTfEZzf5hBwg
	B6jN6oy574mNLHNgmlqSS//VSo2TO8Fq5oRyNEljKxX94leYaNrtbDR/sJTWgEZEikNvkAlcdCmA5
	vh24gwqmwJk1DhsDBhhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXYT4-0004kW-6W; Sun, 02 Jun 2019 21:56:42 +0000
Received: from smtp-auth.no-ip.com ([8.23.224.60] helo=out.smtp-auth.no-ip.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXYSx-0004jf-Gv
 for openwrt-devel@lists.openwrt.org; Sun, 02 Jun 2019 21:56:37 +0000
X-No-IP: flyn.org@noip-smtp
X-Report-Spam-To: abuse@no-ip.com
Received: from www.flyn.org (unknown [68.134.9.136])
 (Authenticated sender: flyn.org@noip-smtp)
 by smtp-auth.no-ip.com (Postfix) with ESMTPA id EEB0737FD1D
 for <openwrt-devel@lists.openwrt.org>; Sun,  2 Jun 2019 14:56:29 -0700 (PDT)
Received: from imp.flyn.org (localhost [127.0.0.1])
 by www.flyn.org (Postfix) with ESMTP id F1046E4063C
 for <openwrt-devel@lists.openwrt.org>; Sun,  2 Jun 2019 17:56:28 -0400 (EDT)
Received: by imp.flyn.org (Postfix, from userid 1101)
 id AA91122A018F; Sun,  2 Jun 2019 17:56:28 -0400 (EDT)
Date: Sun, 2 Jun 2019 17:56:28 -0400
From: "W. Michael Petullo" <mike@flyn.org>
To: openwrt-devel@lists.openwrt.org
Message-ID: <20190602215628.GA22193@imp.flyn.org>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190602_145635_590600_8B7494D8 
X-CRM114-Status: UNSURE (   3.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [8.23.224.60 listed in list.dnswl.org]
Subject: [OpenWrt-Devel] Running Raspberry Pi 3 OpenWrt in QEMU
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

I am interested in running the Raspberry Pi 3 OpenWrt image (built from
commit a1210f88) in QEMU.  I am close to accomplishing this, but the
kernel panics soon after booting.

I run QEMU With:

qemu-system-aarch64 -kernel build_dir/target-aarch64_cortex-a53_musl/linux-brcm2708_bcm2710/vmlinux -dtb build_dir/target-aarch64_cortex-a53_musl/linux-brcm2708_bcm2710/image-bcm2710-rpi-3-b.dtb -cpu cortex-a53 -m 256 -M raspi3 -serial stdio -append "root=/dev/sda2 rootfstype=ext4 rw" -hda openwrt-brcm2708-bcm2710-rpi-3-ext4-factory.img

The kernel call stack at the time of the crash appears to be:

DWC_READ_REG32
dwc_otg_driver_probe
platform_drv_probe
driver_probe_device
__driver_attach
bus_for_each_dev
driver_attach
bus_add_driver
driver_register
__platform_driver_register
dwc_otg_driver_init
do_one_initcall
kernel_init_freeable
kernel_init
ret_from_fork

Has anyone had more luck with this?

-- 
Mike

:wq

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
