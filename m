Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51D46A3F7E
	for <lists+openwrt-devel@lfdr.de>; Fri, 30 Aug 2019 23:11:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:
	In-Reply-To:Date:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SChPOy4EOPTTdS8bgi5ZulWisKkwNkyCGI286y6C+54=; b=dUxmpBmLmgFtpV
	LLeh8Sh5zHkA0IRmV4QgL4HeefX7rvwTJ9zCWQWfxawK1vyG366+7C8ErpmXNMI56bHJSNO1KngZx
	g8DlwaNlNc0WaqU01rSpWFWIK3u+Gaq9sIVhvBFxqeEbXDJ7iDgtwtNuX5pFKJ2xMv5nVdF6pD8nD
	QDC9s8oX0qScZxp68GWa6niT9pz0PXfBn8hBWCNRkozFdF/6TYEb5mXraMqCHhphGCg1Tb4thQTNA
	NXZ4nv6vPieRJ4ZxrASTUH9ykKZqeqBQlm7QS4EX85dQ7CgK+AWIIRoG55jK4b6QE1QKMwDLaSG69
	LayUeCbW2bF36/HqAoVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3oAn-00075U-Sf; Fri, 30 Aug 2019 21:11:09 +0000
Received: from mail.klickitat.com ([54.70.207.208])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3oAf-000754-K7
 for openwrt-devel@lists.openwrt.org; Fri, 30 Aug 2019 21:11:03 +0000
Received: by mail.klickitat.com (Postfix, from userid 182)
 id 13450A61300; Fri, 30 Aug 2019 14:10:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on dodson.localdomain
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
 autolearn=unavailable autolearn_force=no version=3.4.2
Received: from husum.klickitat.com (husum.ptp [192.168.80.4])
 by mail.klickitat.com (Postfix) with ESMTP id 2DADCA61300;
 Fri, 30 Aug 2019 14:10:54 -0700 (PDT)
From: Russell Senior <russell@personaltelco.net>
To: Christian Lamparter <chunkeey@gmail.com>
References: <87a7c1qxl2.fsf@husum.klickitat.com>
 <87pnko19pv.fsf@husum.klickitat.com>
 <87lfvc1902.fsf@husum.klickitat.com> <3012831.exOcdT49RB@debian64>
Date: Fri, 30 Aug 2019 14:10:54 -0700
In-Reply-To: <3012831.exOcdT49RB@debian64> (Christian Lamparter's message of
 "Fri, 30 Aug 2019 20:51:10 +0200")
Message-ID: <87mufqnyu9.fsf@husum.klickitat.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_141101_701512_50EE4539 
X-CRM114-Status: UNSURE (   6.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] Squashfs breakage lottery with UBI WAS: [PATCH
 RFC 2/2] amp821xx: use newly added pad-squashfs for Meraki MR24
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
Cc: ynezz@true.cz, openwrt-devel@lists.openwrt.org, mail@adrianschmutzler.de,
 dev@kresin.me, jonas.gorski@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

>>>>> "Christian" == Christian Lamparter <chunkeey@gmail.com> writes:

Christian> Ok.

Christian> I did push a patch titled: "build: remove harmful -nopad
Christian> option from mksquashfs"
Christian> <https://git.openwrt.org/?p=openwrt/openwrt.git;a=commit;h=1c0290c5cc6258c48b8ba46b4f9c85a21de4f875>

Christian> so, let's see if this triggers more undefined behaviour and
Christian> exposes more hidden broken code.

Just to re-iterate my earlier worry, if for example:

  kernel_size + rootfs_with_padding_size

crosses an erase block boundary that:

  kernel_size + rootfs_without_padding_size

does not, then we'll be wasting an erase block of flash space on NOR.


On a side note, I noticed that there were some checks[1] added to
kernels about a year ago (early august 2018) to squashfs code[1], to
protect against malformed squash filesystems that might have started
triggering the boot loop. This might explain why we haven't seen the
problem earlier (it might have been silently ignored).

[1] e.g. https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=71755ee5350b63fb1f283de8561cdb61b47f4d1d

-- 
Russell Senior, President
russell@personaltelco.net

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
