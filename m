Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20653188D3D
	for <lists+openwrt-devel@lfdr.de>; Tue, 17 Mar 2020 19:34:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0M49oa9kIUYruWv3wobdU5gX33aYjKVCY4w5kDp/+Ag=; b=ZZCIBVtPauLtWd
	vJzp000u5U+PH1S06+BIN4OhkSiyaA8Fz+huP3n0o8aNTMlqlHdFd3RKkTgujokF/5cjfXsvlme7/
	D8nGg1m89p9FuHF2EHNRUzQKIOPyUrTMmEwSFXZdO8jfc/esESuXqatcezLZu15+YZ82pLkw/cjLj
	bF/Ya8juEMpCl56L4BGk2iZwga5V0sv/50MKGTpnJoA5E3oxkQignlp0qy+dm1HkAySVXtTB9TMsz
	LBgMec8vdlvS2TfdCwHIcEFzMd5cGQBWEELEe08HLkPCC0VniJ6MipKwOyayqlOino7emqOnjzRiz
	E37KPwamLTzpx+1TzRZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEH2O-00084i-8x; Tue, 17 Mar 2020 18:34:00 +0000
Received: from mxout01.bytecamp.net ([212.204.60.217])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEH2I-000849-3N
 for openwrt-devel@lists.openwrt.org; Tue, 17 Mar 2020 18:33:55 +0000
Received: by mxout01.bytecamp.net (Postfix, from userid 1001)
 id 0252269E75; Tue, 17 Mar 2020 19:33:49 +0100 (CET)
Received: from mail.bytecamp.net (mail.bytecamp.net [212.204.60.9])
 by mxout01.bytecamp.net (Postfix) with ESMTP id CFD5169E73
 for <openwrt-devel@lists.openwrt.org>; Tue, 17 Mar 2020 19:33:49 +0100 (CET)
Received: (qmail 92094 invoked from network); 17 Mar 2020 19:33:49 +0100
Received: from unknown (HELO j7.lan) (jo%wwsnet.net@95.90.36.22)
 by mail.bytecamp.net with ESMTPS (DHE-RSA-AES128-GCM-SHA256 encrypted);
 17 Mar 2020 19:33:49 +0100
From: Jo-Philipp Wich <jo@mein.io>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 17 Mar 2020 19:33:48 +0100
Message-Id: <20200317183348.2731481-1-jo@mein.io>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200317155557.754836-1-fabian@blaese.de>
References: <20200317155557.754836-1-fabian@blaese.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_113354_294923_D15F5142 
X-CRM114-Status: UNSURE (   2.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.204.60.217 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] Merged: session: deny access if password loginis
 disabled
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
Cc: Jo-Philipp Wich <jo@mein.io>,
 =?utf-8?q?Fabian_Bl=C3=A4se?= <fabian@blaese.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Merged into project/rpcd.git, branch master at
http://git.lede-project.org/?p=project/rpcd.git.

Thank you!


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
