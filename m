Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D925AED508
	for <lists+openwrt-devel@lfdr.de>; Sun,  3 Nov 2019 22:08:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GmtqoIHUPQ5rfgDhleVBvivH/+Mn99b8Njbtli4h+Ic=; b=Xo9xi+uw5SEXUD
	npojcYJOoN0tTJea8Qa6B/+RJJ3+40IaquFDRJCP1LsQhcP/ZkXhb3KUA+c+Yc7qO5eHhmomXx3XF
	Pk1fREtElKIKoavKQZpYH7ocjG5vYoVuHaFLedw6b63pcmZCw7MZZZD4BYiy08+O8V8IvyLjHTGz+
	PDREDrQz0V4RgClApfUi9jhU5bX3mq5eQPmXSpQAoEkRFwMz+DQo2fJBLcVrvGlD+pZ/KPIYA1AfJ
	jbn1hQbgLFUPOdjvGtnu2ExkddZJ+HzZbbBRdNSGSfPjHs0oXm2Y98toviYXh9kuq0lKGmxQBB8o4
	aeR0pSr69npyVvXhG4GA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRN6q-0002IT-2Q; Sun, 03 Nov 2019 21:08:28 +0000
Received: from dazzle.geroedel.de ([2a02:180:6:1::b3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRN6i-0002Hs-Am
 for openwrt-devel@lists.openwrt.org; Sun, 03 Nov 2019 21:08:22 +0000
Received: from [192.168.15.2] (helo=feeble.bln.roederer.dhs.org)
 by dazzle.geroedel.de with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <devel-sven@geroedel.de>)
 id 1iRN6c-0006mD-JF
 for openwrt-devel@lists.openwrt.org; Sun, 03 Nov 2019 22:08:15 +0100
Received: from strike.bln.roederer.dhs.org ([192.168.8.36]
 helo=strike.localnet)
 by feeble.bln.roederer.dhs.org with esmtp (Exim 4.92)
 (envelope-from <devel-sven@geroedel.de>) id 1iRN6b-0007g9-G0
 for openwrt-devel@lists.openwrt.org; Sun, 03 Nov 2019 22:08:13 +0100
From: Sven Roederer <devel-sven@geroedel.de>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 03 Nov 2019 22:08:11 +0100
Message-ID: <14171177.3R80v4PZ6z@strike>
MIME-Version: 1.0
X-Spam_score: -2.9
X-Spam_score_int: -28
X-Spam_bar: --
X-Spam_report: Spam detection software, running on the system "dazzle",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 @@CONTACT_ADDRESS@@ for details. Content preview:  Hi,
 can you cherry-pick the following two commits to openwrt-19-07
 branch: * 853e4dd3062df7cb5704b15d6af6730e3194b571 (ipqx0xx: add Generic
 subtarget) * 40e3f660c1c0f400092cce09feb8c13bec97caeb (uboot-fri [...] 
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
X-CRM114-CacheID: sfid-20191103_130820_518185_EC5B1886 
X-CRM114-Status: UNSURE (  -1.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [19.07] cherry-pick ipqx0xx-generic profile
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

Hi,

can you cherry-pick  the following two commits to openwrt-19-07 branch:
* 853e4dd3062df7cb5704b15d6af6730e3194b571 (ipqx0xx: add Generic subtarget)
* 40e3f660c1c0f400092cce09feb8c13bec97caeb (uboot-fritz4040: build with 
ipq40xx "generic" subtarget)

We use this since some time in our freifunk-firmware w/o any problems.


Thanks Sven



_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
