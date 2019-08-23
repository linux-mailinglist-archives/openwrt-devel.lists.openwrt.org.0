Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 332BB9A90A
	for <lists+openwrt-devel@lfdr.de>; Fri, 23 Aug 2019 09:40:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:From:To:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jjmO6cQlO/XShuC/ToR5PG+Y5WV+a5K+356HDuR+Yp0=; b=l3/QQbXYoCiUHH
	yvn3NFFM3d1EiUxrrfvI7W0EBP+EaBUWVAEriS+9ZBo8hhplSeHPg/ko9QDOQQre0gYiK4zNIID9j
	WzF/mlkiVkjnVlpH86BeJzbceLZyQqrijVzlCWCxCVyYUS1bBXZdxp3IY3K6BIjcOhfx2R4pMYgn2
	VslsFDLzrGKyLYlhSYosU9zaduxb86VsuOCXSVLxOoKXnCBsvOq4SKwnqm9s/YLvuUMgwhRGjV4d5
	SFbDVNiHdsBL/ku/mlNxobyAY2OmCnCKrD5KUWvTcAJDoosJcATpgTAPyQ5UbRzvkJwPD3QaR3Npq
	Pn9Jw1nXSpYc9rk3hM8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i14BJ-0008Jh-3s; Fri, 23 Aug 2019 07:40:21 +0000
Received: from groat.dascon.de ([195.225.198.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i14B3-0007WQ-FO
 for openwrt-devel@lists.openwrt.org; Fri, 23 Aug 2019 07:40:09 +0000
Received: by groat.dascon.de (Postfix, from userid 10)
 id 86D8E2A28E05; Fri, 23 Aug 2019 09:40:03 +0200 (CEST)
Received: from [127.0.0.1] (localhost [127.0.0.1])
 by a-tuin.dascon.de (Postfix) with ESMTP id E18E9AA0620
 for <openwrt-devel@lists.openwrt.org>; Fri, 23 Aug 2019 09:35:08 +0200 (CEST)
To: 'OpenWrt Development List' <openwrt-devel@lists.openwrt.org>
From: Michael Schwingen <michael@schwingen.org>
X-Clacks-Overhead: GNU Terry Pratchett
Message-ID: <950e5682-94b5-f3f8-2181-e1a0c363bc45@schwingen.org>
Date: Fri, 23 Aug 2019 09:35:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_004005_751572_BC4F9D9D 
X-CRM114-Status: GOOD (  10.01  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] need help regarding flash layout for new device
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi,


I am in the process of getting OpenWRT running on a new device (Lancom 
LN-1702: NXP T1013).

I have a working u-boot and kernel 4.19, and now I am a bit lost 
regarding what flash/partition layout to use to get OpenWRT running with 
minimal modifications.

I have: NAND flash on T1013 IFC bus, with 4 MTD partitions, and UBI on 
the last one. UBI has 3 volumes: kernel, dts and rootfs.

If I tftpboot and start kernel/initramfs, I get a running system without 
any r/w filesystem. ubi0 on mtd4 is auto-detected, and I can manually 
mount the rootfs_data volume - but this does not happen automatically on 
boot.

When I boot the kernel from flash, with root=ubi0:rootfs_data, it finds 
init but hangs when trying to mount an overlay.

I am looking for some guidance how this is supposed to work - since this 
device never had Linux on it, I don't have an "original" layout, and 
https://openwrt.org/docs/techref/flash.layout is a bit thin regardings 
NAND/UBI.

Do I need special volume names? How is the boot process supposed to work 
on a NAND/UBI setup (with or without initramfs, and what is mounted 
where by whom)?

Sorry for being vague about error messages - I can provide exact 
bootlogs in the evening, but I am more looking for pointers to the 
general concept from where I can find what I am doing wrong.

best regards,

Michael


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
