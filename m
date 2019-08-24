Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 481219B9F0
	for <lists+openwrt-devel@lfdr.de>; Sat, 24 Aug 2019 03:00:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:
	In-Reply-To:Date:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rfEbUeDqP/23EAcSkx4P3g7vtOyn8ei71hT+2fam+Jo=; b=GqjfSWQkkIug3k
	64xL/DY+FloYrgE7t5i5GVeowbFhsvk7brou4Ua7gSFXAUtGbAj7f0dLVcjwaXZWMqF8YkcZ4yuLb
	SaoWV830QwBD2SPCgJYPS9uwr88aMrOYIUuoWX81p0vrYvjK0KMwnTrotdbBTLVgPRHefDQ+NjwRJ
	Hqfpr/uvXZRu9ynDrxeGh4C5x/FoSVGIyNw/9ATnfcYJdZfiix15UiEHIu6agjjmvCqkxYB9SkAHl
	PdUMleEHOv2ZUy7wIVIIj0w6DAQrGAqbNVTVCeqFWyntQQiSTHl3J5l97cuFEDqhNfhcXtYAjUCKb
	pAHAEVSrUWzzea8rHF6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1KPP-0002SI-6s; Sat, 24 Aug 2019 00:59:59 +0000
Received: from mail.klickitat.com ([54.70.207.208])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1KP1-0002Ry-JX
 for openwrt-devel@lists.openwrt.org; Sat, 24 Aug 2019 00:59:37 +0000
Received: by mail.klickitat.com (Postfix, from userid 182)
 id 6F83CA611E0; Fri, 23 Aug 2019 17:59:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on dodson.localdomain
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
 autolearn=ham autolearn_force=no version=3.4.2
Received: from husum.klickitat.com (husum.ptp [192.168.80.4])
 by mail.klickitat.com (Postfix) with ESMTP id 03EFDA610F2;
 Fri, 23 Aug 2019 17:59:31 -0700 (PDT)
From: Russell Senior <russell@personaltelco.net>
To: Christian Lamparter <chunkeey@gmail.com>
References: <87a7c1qxl2.fsf@husum.klickitat.com>
 <875zmpqxbu.fsf@husum.klickitat.com> <30131992.Ho3CJ5cCL4@debian64>
 <87blwfmn4g.fsf@husum.klickitat.com>
Date: Fri, 23 Aug 2019 17:59:31 -0700
In-Reply-To: <87blwfmn4g.fsf@husum.klickitat.com> (Russell Senior's message of
 "Fri, 23 Aug 2019 17:18:55 -0700")
Message-ID: <877e73ml8s.fsf@husum.klickitat.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_175935_995439_4A42EC5C 
X-CRM114-Status: UNSURE (   7.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

>>>>> "Russell" == Russell Senior <russell@personaltelco.net> writes:

>>>>> "Christian" == Christian Lamparter <chunkeey@gmail.com> writes:

Russell> It's mostly inferred from the fact that I saw the error and
Russell> kernel panic, and glancing at the kernel squashfs code. I am
Russell> not pretending to understand completely how the squashfs kernel
Russell> code works, but the position of the error relative to the size
Russell> of the rootfs in my panic case strongly suggests it was trying
Russell> to read past the end of the ubi volume.

Oh, and I got important help finding this from Jonas Gorski. I was
remiss in not mentioning that.


-- 
Russell Senior, President
russell@personaltelco.net

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
