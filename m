Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D17A116275
	for <lists+openwrt-devel@lfdr.de>; Sun,  8 Dec 2019 15:54:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6LJncdpfIVggKXam5KpKK5HbaPrzx8iMS9CAQC1Th8Q=; b=m2JTLcTSKPIbxJ
	ODU9+uixB1sL6RGm18xKQD/AySEA+ZXglrxBFHzAW2RQXliPFNs5gwPb1WMqE5+03BXYACPB8SnNh
	yF4aLVWrb+shohHYut+XW4zjcR7RQ6QoPPpnTBvAbo9IXzY2enqOcteNl2JX9ueQOlpRxRRPPGmIB
	Sf/wzMlOZRIMMpQPDfh8hDwjIENSOag0TNgaB5msgN6/ZtZxrLG+ZE42CnxpPFlx/298yNkkbHWM2
	CAQdiuDsbX5lUxAkf0M5YRhe7hMIWgHG1XRvvjSoTqg9aKoh9d1khSH6l9M/K7LMHUd3t5dOdFCwW
	Z0by9T6DMVHIflx6ybhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idxwP-00056d-ND; Sun, 08 Dec 2019 14:53:45 +0000
Received: from smtp-auth.no-ip.com ([8.23.224.60] helo=out.smtp-auth.no-ip.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idxwK-000568-Vb
 for openwrt-devel@lists.openwrt.org; Sun, 08 Dec 2019 14:53:42 +0000
X-No-IP: flyn.org@noip-smtp
X-Report-Spam-To: abuse@no-ip.com
Received: from www.flyn.org (unknown [68.134.9.136])
 (Authenticated sender: flyn.org@noip-smtp)
 by smtp-auth.no-ip.com (Postfix) with ESMTPA id C586B37FAE6
 for <openwrt-devel@lists.openwrt.org>; Sun,  8 Dec 2019 06:53:31 -0800 (PST)
Received: from imp.flyn.org (localhost [127.0.0.1])
 by www.flyn.org (Postfix) with ESMTP id 0CAE62600031
 for <openwrt-devel@lists.openwrt.org>; Sun,  8 Dec 2019 09:53:31 -0500 (EST)
Received: by imp.flyn.org (Postfix, from userid 1101)
 id 0C19E22A023D; Sun,  8 Dec 2019 09:53:29 -0500 (EST)
Date: Sun, 8 Dec 2019 09:53:29 -0500
From: "W. Michael Petullo" <mike@flyn.org>
To: openwrt-devel@lists.openwrt.org
Message-ID: <20191208145329.GA1466438@imp.flyn.org>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191208_065341_024350_AD60AE31 
X-CRM114-Status: UNSURE (   3.57  )
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
Subject: [OpenWrt-Devel] Large images
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

If there a good reason for the following during the build process?

dd if=[...]/build_dir/target-x86_64_musl/linux-x86_64/root.squashfs of=[...]/build_dir/target-x86_64_musl/linux-x86_64/root.squashfs.new bs=4294967296 conv=sync

The use of bs=n where n is very large will exhaust the memory on the
build host. Shouldn't we use something like bs=m count=o, where m * o = n?

-- 
Mike

:wq

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
