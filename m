Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B533BA48F9
	for <lists+openwrt-devel@lfdr.de>; Sun,  1 Sep 2019 13:53:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:
	In-Reply-To:Date:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jzRMh5Mu7FM+CLKJ+oMqIQBVUF12YVPsBUUDZnU4VPc=; b=Ccn7nOUlV8kbEg
	SFyZCdaPpzBMOhdBWMSfXbnMAf2R4atqscwRxvyGX6d4xCVZ6AL5Kx7kgTAiEi0a55TKD07dDSEsm
	KDuKF71pwgQ8Z00kpgRDGzV1EhUSNOioAmP3R/oIP8TaTHhsO0gkQkUahJ2yDp4klBFOgPId8bCNy
	90Fwm6bkEmSANq9qsTJrw9KwE2u6mRDvwzmcNefqbKdZrbPmxVlImFdkCNDgQ3ODvhYPCCwLiSTNW
	IqHNPt1dYUpGx3HA7wvTO8nnkBhG5Sz9rIEGOh+XdKaX0JT2FFkWs3W2oU/jMUEY8L/bcLZE8i03o
	sBb2LVLGHViisIB8sCQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4OPj-0000Zn-L2; Sun, 01 Sep 2019 11:52:59 +0000
Received: from mail.klickitat.com ([54.70.207.208])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4OPb-0000ZP-0I
 for openwrt-devel@lists.openwrt.org; Sun, 01 Sep 2019 11:52:52 +0000
Received: by mail.klickitat.com (Postfix, from userid 182)
 id 0084DA6129B; Sun,  1 Sep 2019 04:52:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on dodson.localdomain
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
 autolearn=unavailable autolearn_force=no version=3.4.2
Received: from husum.klickitat.com (husum.ptp [192.168.80.4])
 by mail.klickitat.com (Postfix) with ESMTP id 459D3A611EE;
 Sun,  1 Sep 2019 04:52:45 -0700 (PDT)
From: Russell Senior <russell@personaltelco.net>
To: Jonas Gorski <jonas.gorski@gmail.com>
References: <87a7c1qxl2.fsf@husum.klickitat.com> <5317353.KyzfXZn0lP@debian64>
 <CAOiHx=kQjciZq1WQXit4K3hDkcgoWkG02pki+SoAosw9ANpt6w@mail.gmail.com>
 <3922788.WSA6FCIlZt@debian64>
 <CAOiHx=nhCKCEDCUXN86YsceqLridmGO=8ODwkxcJf9w-6z-c_A@mail.gmail.com>
Date: Sun, 01 Sep 2019 04:52:44 -0700
In-Reply-To: <CAOiHx=nhCKCEDCUXN86YsceqLridmGO=8ODwkxcJf9w-6z-c_A@mail.gmail.com>
 (Jonas Gorski's message of "Sun, 1 Sep 2019 12:36:29 +0200")
Message-ID: <87mufomdwz.fsf@husum.klickitat.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190901_045251_088805_E7F01585 
X-CRM114-Status: UNSURE (   9.15  )
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
Cc: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 mail@adrianschmutzler.de, Mathias Kresin <dev@kresin.me>,
 Christian Lamparter <chunkeey@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

>>>>> "Jonas" == Jonas Gorski <jonas.gorski@gmail.com> writes:

>> It contains a patch at the end titled: "[PATCH] base-files: pad
>> root.squashfs to 64KiB in ubi volumes" This is another approach that
>> just deals with the UBI+squashfs issue but works with
>> "-nopad". Soooooo.... do we all agree there?

Jonas> a) 64k is excessive, we only need 4k (actually 1k would be
Jonas> enough, since we don't enable CONFIG_SQUASHFS_4K_DEVBLK_SIZE).

Jonas> The referenced issue with 64k page size happens when
Jonas> loop-mounting a squashfs, since loop defaults to PAGE_SIZE as its
Jonas> block size. But we never do that in OpenWrt, and we don't support
Jonas> any targets with that huge PAGE_SIZE - biggest is ARC with 8k.

Jonas> b) it misses the squashfs's in generic sysupgrade images itself -
Jonas> we need to pad their length as well, to avoid breaking devices
Jonas> with a sysupgrade image hitting the corner case being flashed
Jonas> from an unfixed firmware with the old nand.sh.

Jonas> Also IMHO "1c0290c5cc6258c48b8ba46b4f9c85a21de4f875" should be
Jonas> reverted, for the previously mentioned issues.

Afaict, only devices with LEB sizes of non-integer kilobytes (like the
MR24 with its 15.5k LEBs) need any intervention at all. Because
squashfs's are read in 1k blocks, there is a 1 in 62 chance of creating
a rootfs that is an inopportune size on 15.5k LEBs.  I have a PogoPlug
v3 with LEBs of 126k, and a MikroTik RouterBOARD 493G with LEBs of
124k. Neither of those is affected.

I still kind of like my solution where we explicitly ask for padding for
devices that need it.


-- 
Russell Senior, President
russell@personaltelco.net

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
