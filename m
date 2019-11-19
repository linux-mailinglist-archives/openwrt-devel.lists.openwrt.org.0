Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C5161027EF
	for <lists+openwrt-devel@lfdr.de>; Tue, 19 Nov 2019 16:18:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nq64nE3n/qeytS8v0gMWKxhhu+j4ST5Ekmr+FmtUTdk=; b=i6vomH3MJpyNPQ
	+C6/6ydaSnvt0aVUFRA1C0YjrnlQhUNoiyH1B2fD0QsrZrgTCHKdahpipilXaqSLP/WDdxTMBlSKr
	j0MVCbUT70pdxHrl1DoQxDO4wkndo/52w6o3w3Uc2FClMj0jZc8mxWjwTvRC3fYgFhnooPycFBaXm
	Ylb/IpLBFAdSZE34F/LRum0BdhnZGfYyFHkQIDIXa96Cb2pU+lC0sXNu6liWicQa5MVwsQUSp3MkW
	f5FZc5lrvwskeziJVyZEziddViaUu0hr4vDTnt5xnUZdFZWOR6e0DpFr2TVApFUAbzCGu4p7wCQ1V
	HZihVv9nACCXZu9nmlhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iX5HK-0005Bq-J6; Tue, 19 Nov 2019 15:18:54 +0000
Received: from mx4.wp.pl ([212.77.101.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX5HB-0005Au-Ol
 for openwrt-devel@lists.openwrt.org; Tue, 19 Nov 2019 15:18:47 +0000
Received: (wp-smtpd smtp.wp.pl 30639 invoked from network);
 19 Nov 2019 16:18:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=1024a;
 t=1574176720; bh=KNCt4ze8t71Ma0dDQAQgof7rtFxlZb+DOyh3WKfVWC8=;
 h=From:To:Cc:Subject;
 b=IFG2VKI7j6HZHrmPYJLz+lCMp3Ry8yw2RIhQfXT843Pq5jFA3P3coP5rEp03ZSgI4
 pqO8PIToHWIa9JL9q4PIRwOz1A82F4v71wvrbQpmgYDC+bxjhyuQjRWznmcc80s97x
 HY0OaijC8q59Hko4fj9rMLRWgsXy6R+fhEvw1ZXM=
Received: from 89-79-49-72.dynamic.chello.pl (HELO kosmio.komorska)
 (michal.cieslakiewicz@wp.pl@[89.79.49.72])
 (envelope-sender <michal.cieslakiewicz@wp.pl>)
 by smtp.wp.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <mail@david-bauer.net>; 19 Nov 2019 16:18:40 +0100
Date: Tue, 19 Nov 2019 16:17:37 +0100
From: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
To: David Bauer <mail@david-bauer.net>
Message-ID: <20191119161737.2fa01dc3@kosmio.komorska>
In-Reply-To: <20191112192234.721c6a6e@kosmio.komorska>
References: <20191112140214.59f2971f@kosmio.komorska>
 <04615660-e813-7bc1-1e75-a51c289fd518@david-bauer.net>
 <20191112192234.721c6a6e@kosmio.komorska>
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-slackware-linux-gnu)
MIME-Version: 1.0
X-WP-MailID: beaeea7b1477eabe5c3af7d2a75026ab
X-WP-AV: skaner antywirusowy Poczty Wirtualnej Polski
X-WP-SPAM: NO 0000000 [8ZOE]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_071846_162373_51E14C51 
X-CRM114-Status: UNSURE (   8.06  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.77.101.12 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (michal.cieslakiewicz[at]wp.pl)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: enable all space on Netgear
 ar9344-based WNDR routers
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
Cc: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>,
 Adrian Schmutzler <mail@adrianschmutzler.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hello David,

Two questions were raised just after publishing 'all-flash-space' patch.
Now I am ready to provide more information on these issues:

0. Downgrade to vendor firmware.

It is possible. Just don't forget to erase both ubi concat partitions:
'mtd -r erase ubi' does the job fine.

1. Sysupgrade:

> > 
> > Have you tried if this breaks sysupgrade from an older OpenWrt
> > firmware? I'm not sure if an UBI resize works without additional
> > steps.
> > 

You were right, rootfs_data volume stays small after sysupgrade. My
approach is to execute 'ubirsvol' command for /dev/ubi0_1 and allocate
all available space. There are caveats however:

* command cannot be run after rootfs_data is mounted (device busy)
* command cannot be run in sysupgrade sequence (sysupgrade works in old
  system that is not mtd-concat aware)

I came out with a solution - to plug into preinit phase after ubi is
available but before ubi rootfs_data volume is started and incorporated
into overlayfs. Here is script (only for ath79/nand target so path is
target/linux/ath79/nand/base-files/lib/preinit/78_ubi_grow_rootfs_data).
I've tested it by running sysupgrade on my WNDR4300 and volume was
resized correctly.

----
#!/bin/sh

grow_ubi_volume() {
	local free_lebs="$(ubinfo /dev/ubi0 | awk '$1=="Amount" && $3=="available" { print $6 }')"
	local used_lebs="$(ubinfo /dev/ubi0_$1 | awk '$1=="Size:" { print $2 }')"

	if [ $free_lebs -eq 0 ] ; then
		return
	fi

	echo "- grow ubi volume (id $1) -"
	ubirsvol /dev/ubi0 -n $1 -S $(($used_lebs+$free_lebs))
}

do_grow_ubi_rootfs_data() {
	local board_name="$(cat /tmp/sysinfo/board_name || echo '')"

	case "$board_name" in
		netgear,wndr3700-v4|\
		netgear,wndr4300)
			grow_ubi_volume 1
		;;
	esac
}

boot_hook_add preinit_main do_grow_ubi_rootfs_data
----

I'll gladly read your opinion on above solution. Can it be accepted into mainline ?

Best regards
Michal

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
