Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E90E8169210
	for <lists+openwrt-devel@lfdr.de>; Sat, 22 Feb 2020 23:27:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Tnmy+1DNh0FTwDyFdnizhzjXk3D3CRYE6zfD2+1UszI=; b=OLLbpm3aGDYkLwK2E+boH9cl27
	Bo0tO7dodRyU6uZRcwAFPnhHcMib0VnKxh9tqZhiJ+6EqJxKIy85Qv7wjlt+e56ygH33EhfTIO9kd
	LnNPJrYKGKVOTZ4QzLa/dpAxH/cf+BAW84lPKiDK6oxSmep8IVEqT/qfwODpnRehvXqH/zTSxWnSj
	12kRh+HgDwiSQG2a8bP6n9219uI+z/rmI00GObGbnDcuIdwDTD4InmmcunnA+3nqc7SjAPmACI/i4
	bkxsCQ/BAhpwBgDWDzAAWpe9m0NpauX0QI97vL5mvmOroAFoeoOpDwXWlB3s0CpeEhS6pRQlvgKnO
	CQ4ceUmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5dEU-0007Xq-5Y; Sat, 22 Feb 2020 22:26:46 +0000
Received: from dazzle.geroedel.de ([2a02:180:6:1::b3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5dEJ-0007XV-Dz
 for openwrt-devel@lists.openwrt.org; Sat, 22 Feb 2020 22:26:37 +0000
Received: from [192.168.15.2] (helo=feeble.bln.roederer.dhs.org)
 by dazzle.geroedel.de with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <devel-sven@geroedel.de>)
 id 1j5dE8-0004Fa-6m
 for openwrt-devel@lists.openwrt.org; Sat, 22 Feb 2020 23:26:24 +0100
Received: from strike.bln.roederer.dhs.org ([192.168.8.36]
 helo=strike.localnet)
 by feeble.bln.roederer.dhs.org with esmtp (Exim 4.92)
 (envelope-from <devel-sven@geroedel.de>) id 1j5dE7-00079t-P3
 for openwrt-devel@lists.openwrt.org; Sat, 22 Feb 2020 23:26:23 +0100
From: Sven Roederer <devel-sven@geroedel.de>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 22 Feb 2020 23:26:23 +0100
Message-ID: <2227907.NBT4b9BtYD@strike>
In-Reply-To: <20200218204721.20942-1-cotequeiroz@gmail.com>
References: <20200218204721.20942-1-cotequeiroz@gmail.com>
MIME-Version: 1.0
X-Spam_score: -2.9
X-Spam_score_int: -28
X-Spam_bar: --
X-Spam_report: Spam detection software, running on the system "dazzle",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 @@CONTACT_ADDRESS@@ for details.
 Content preview:  Am Dienstag, 18. Februar 2020, 21:47:20 CET schrieb Eneas
 U de Queiroz: > Packages kmod-bluetooth_6lowpan and kmod-ieee802154_6lowpan
 contain an > underscore in the package name. This causes problems [...] 
 Content analysis details:   (-2.9 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.0 ALL_TRUSTED            Passed through trusted hosts only via SMTP
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
X-SA-Exim-Connect-IP: 192.168.15.2
X-SA-Exim-Mail-From: devel-sven@geroedel.de
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on dazzle
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
 autolearn=unavailable autolearn_force=no version=3.4.2
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on dazzle.geroedel.de)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200222_142635_619759_61A329C8 
X-CRM114-Status: UNSURE (   2.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [19.07] kernel: avoid underscore in *6lowpan
 package names
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

Am Dienstag, 18. Februar 2020, 21:47:20 CET schrieb Eneas U de Queiroz:
> Packages kmod-bluetooth_6lowpan and kmod-ieee802154_6lowpan contain an
> underscore in the package name.  This causes problems in package/install
> because when building a list of package files to install offline using
> opkg, it uses a wildcard of the form $(dir)/$(pkg)_*.ipk.
> 
> If you were to select kmod-bluetooth=y, but kmod-bluetooth_6lowpan=m,
> the latter would be picked up by that wildcard, and make package/install
> would fail:
> 

Hi,

this patch was added in 07e1d88d7beb43a4152460b82976dbe49919b264. The
same problem exists for 19.07. 
Can somebody cherry-pick this?


Thanks Sven



_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
