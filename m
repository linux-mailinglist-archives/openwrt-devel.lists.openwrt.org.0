Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE7E3160472
	for <lists+openwrt-devel@lfdr.de>; Sun, 16 Feb 2020 16:12:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=jVnfVXfmq13CtSDADzFmjiA10AF78JrKQPoRWEV8oS8=; b=fJjoUiUkDMwOP/vQU3FAyt2Jhx
	t6cWV87oxatELeKenYjgiPE/GPRHwzfBWOHAc33TXulg7nTyjIZDzlqW/lL3luX16efJjDa806TBW
	1An0Cj0mx96TGwva/RQmI3ZMzb5Ih2rXCGr2AqSb+SHJFkspvWBUvf2SIy72uamof8Z8K3bCneZ3s
	fVzmVp2l/pbIiRLSh2gf+K5ASO69tgb7Ti6N9jIL0gkNor97lxNybHZVcP2yc9fSMJcBn0ZVJfVwC
	fgXyqFRS/GF8U05gI1Ta+ON+9DjVgUqu5HP3OWcvzlybaZ1EM+JW10i6/5jy7QuCIkhfCu9XePkj1
	Jr3g+LMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3Lan-0007EM-SI; Sun, 16 Feb 2020 15:12:21 +0000
Received: from dazzle.geroedel.de ([2a02:180:6:1::b3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3Lae-0007Dw-FW
 for openwrt-devel@lists.openwrt.org; Sun, 16 Feb 2020 15:12:14 +0000
Received: from [192.168.15.2] (helo=feeble.bln.roederer.dhs.org)
 by dazzle.geroedel.de with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <devel-sven@geroedel.de>)
 id 1j3LaD-00082G-F2
 for openwrt-devel@lists.openwrt.org; Sun, 16 Feb 2020 16:11:46 +0100
Received: from strike.bln.roederer.dhs.org ([192.168.8.36]
 helo=strike.localnet)
 by feeble.bln.roederer.dhs.org with esmtp (Exim 4.92)
 (envelope-from <devel-sven@geroedel.de>) id 1j3LaD-0002v1-2e
 for openwrt-devel@lists.openwrt.org; Sun, 16 Feb 2020 16:11:45 +0100
From: Sven Roederer <devel-sven@geroedel.de>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 16 Feb 2020 16:11:45 +0100
Message-ID: <7584938.tTkveIQa4e@strike>
In-Reply-To: <39ac86a1c93b970341364da9b19dbb7d@geroedel.de>
References: <39ac86a1c93b970341364da9b19dbb7d@geroedel.de>
MIME-Version: 1.0
X-Spam_score: -2.9
X-Spam_score_int: -28
X-Spam_bar: --
X-Spam_report: Spam detection software, running on the system "dazzle",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 @@CONTACT_ADDRESS@@ for details.
 Content preview:  Am Freitag, 27. Dezember 2019,
 21:42:09 CET schrieb devel-sven@geroedel.de:
 > Hi, > > can anyone cherry-pick b81cee86e63d4421072839ec8a3780d8afff9337
 to 19.07 > ? > This commit was added to master in Oct 2019. Picking this
 to 19.07 would also here in this release. Or do you expect any issues caused
 by this change? 
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
X-CRM114-CacheID: sfid-20200216_071212_667083_FAFC4319 
X-CRM114-Status: UNSURE (   0.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [19.07] backport "build: have scripts/feeds
 honor all toplevel .mk-files of a feed"
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

Am Freitag, 27. Dezember 2019, 21:42:09 CET schrieb devel-sven@geroedel.de:
> Hi,
> 
> can anyone cherry-pick b81cee86e63d4421072839ec8a3780d8afff9337 to 19.07
> ?
> 

This commit was added to master in Oct 2019. Picking this to 19.07 would also 
here in this release. 
Or do you expect any issues caused by this change?


Sven



_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
