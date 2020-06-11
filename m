Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28E091F70C0
	for <lists+openwrt-devel@lfdr.de>; Fri, 12 Jun 2020 01:12:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hqwAgMPnBL0CkMqW2fiWdKtfe12QfBR1Q4kac2pqe+c=; b=MhH2gOC/Gbkts6
	6cdfE9oG9cUs43b+f6/27NljO/yIpMFR7dWJFfgnJNq2aWlOtXIpEuy5UWnXSITdSvcxRjSIoRj8W
	ULKFSH5NQSpLC1HZsKpiuGZMzTRwwMeYNYiDkiNrkLaailYgEmfcobLzDUas1KfvXbq9VpDGEQTCy
	GhYYwtswxDburjxcrOmT8d4fGQrsd3cf9ln1XE5XcFWSTFCn8YWjffEkUT6+JyiUJ/GOSQKvEutoV
	AL5xpTtft6uVKp/77b0XKjssdCPXHKQ5h0uqcGtUktJsyvDxVN9p8k7/ky2bgv0lZN48D1Kescipl
	I5QLJcvHASv4RsBRU4Rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjWN3-0006e1-0U; Thu, 11 Jun 2020 23:12:29 +0000
Received: from smtp-auth.no-ip.com ([8.23.224.60] helo=out.smtp-auth.no-ip.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjWMv-0006d8-IA
 for openwrt-devel@lists.openwrt.org; Thu, 11 Jun 2020 23:12:22 +0000
X-No-IP: flyn.org@noip-smtp
X-Report-Spam-To: abuse@no-ip.com
Received: from www.flyn.org (unknown [98.117.45.103])
 (Authenticated sender: flyn.org@noip-smtp)
 by smtp-auth.no-ip.com (Postfix) with ESMTPA id AFFF627C
 for <openwrt-devel@lists.openwrt.org>; Thu, 11 Jun 2020 16:11:59 -0700 (PDT)
Received: from imp.localdomain (localhost [127.0.0.1])
 by www.flyn.org (Postfix) with ESMTP id E373B26000FF
 for <openwrt-devel@lists.openwrt.org>; Thu, 11 Jun 2020 19:11:58 -0400 (EDT)
Received: by imp.localdomain (Postfix, from userid 1101)
 id 70C4F6220C73; Thu, 11 Jun 2020 18:11:56 -0500 (CDT)
Date: Thu, 11 Jun 2020 18:11:56 -0500
From: "W. Michael Petullo" <mike@flyn.org>
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Message-ID: <20200611231156.GA2639@imp>
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_161221_608973_5B77179C 
X-CRM114-Status: UNSURE (   6.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [8.23.224.60 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [8.23.224.60 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
Subject: [OpenWrt-Devel] ubiformat: bad UBI magic
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

I am having some trouble with installing an OpenWrt image I built onto
a Mikrotik RB493AH. I have been using a RB493G for a long time, but I
just bought a 493AH to serve as a backup.

The following, when run on the router, produces the error as indicated:

$ ubiformat /dev/mtd6 -f /tmp/openwrt-ar71xx-mikrotik-nand-64m-rootfs.ubi
ubiformat: 1 eraseblocks have valid erase counter, mean value is 0
ubiformat: 3839 eraseblocks are supposedly empty
ubiformat: erase counter 0 will be used for all eraseblocks
ubiformat: note, arbitrary erase counter value may be specified using -e option
ubiformat: continue? (y/N) y
ubiformat: warning!: VID header and data offsets on flash are 2048 and 4096, which is different to requested offsets 512 and 1024
ubiformat: use erase counter 0 for all eraseblocks
ubiformat: use new offsets 512 and 1024? ubiformat: continue? (y/N) ubiformat: use offsets 512 and 1024
ubiformat: flashing eraseblock 0 --  0 % complete
ubiformat: flashing eraseblock 1 --  0 % complete
ubiformat: error!: bad UBI magic 00000000, should be 0x55424923
ubiformat: error!: bad EC header at eraseblock 1 of "/tmp/openwrt-ar71xx-mikrotik-nand-64m-rootfs.ubi"

I suspect this is either a hardware problem or an incorrect use of
mkfs.ubifs, ubinize, or ubiformat.

Does anyone have any experience with the RB493AH?

-- 
Mike

:wq

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
