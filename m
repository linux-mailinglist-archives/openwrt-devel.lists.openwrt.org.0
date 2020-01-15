Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0261213CC22
	for <lists+openwrt-devel@lfdr.de>; Wed, 15 Jan 2020 19:31:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iC9S6O4gI4oeZfx3jvYDLEVVkvMMIYT38R6hbm4SgAo=; b=AtDiWes4rLf1CC
	q+1LiGp5zhki1wi0kcTYmQB6Oa9B93k/GIg/qZ0ChRw4YrLLTNbDa5N5x3ev9cA1qPBbuYT+3G15d
	WnEcD9Zn3Ha/uZPNCTfpOje2ndUFlVvFKF7scwy33cHsghP2q93FY4ywhRhuF7A3bMPM3Y3nALbOX
	Hf1bzp3JOmmjDY6HMoenaw2zpde/bSdZPddDISEsefYsUBfcELX2vnm+UumHEyCeqMECV2FQJYPPB
	5RJsSXzw7ozkTRvjWna4J+NK33Xmw72j6zZAdOFOA5qWhXhqIwuXd6CYQJ4KeQ7hTUeAnSiE6/NIA
	y2pE1ZahnU9vmnwqEgsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irnRT-0007oC-Jr; Wed, 15 Jan 2020 18:30:59 +0000
Received: from mxout01.bytecamp.net ([212.204.60.217])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irnRF-0007nI-OZ
 for openwrt-devel@lists.openwrt.org; Wed, 15 Jan 2020 18:30:50 +0000
Received: by mxout01.bytecamp.net (Postfix, from userid 1001)
 id 5548B55DD0; Wed, 15 Jan 2020 19:30:41 +0100 (CET)
Received: from mail.bytecamp.net (mail.bytecamp.net [212.204.60.9])
 by mxout01.bytecamp.net (Postfix) with ESMTP id 2F1CA55DCB
 for <openwrt-devel@lists.openwrt.org>; Wed, 15 Jan 2020 19:30:41 +0100 (CET)
Received: (qmail 52278 invoked from network); 15 Jan 2020 19:30:40 +0100
Received: from unknown (HELO j7.lan) (jo%wwsnet.net@95.90.41.162)
 by mail.bytecamp.net with ESMTPS (DHE-RSA-AES128-GCM-SHA256 encrypted);
 15 Jan 2020 19:30:40 +0100
From: Jo-Philipp Wich <jo@mein.io>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 15 Jan 2020 19:30:40 +0100
Message-Id: <20200115183040.162002-1-jo@mein.io>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200115182805.14907-1-cotequeiroz@gmail.com>
References: <20200115182805.14907-1-cotequeiroz@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_103045_950321_3DE52823 
X-CRM114-Status: UNSURE (   3.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.204.60.217 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] Merged: cryptodev-linux: remove DEFAULT redefinition
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
Cc: Jo-Philip Wich <jow@mein.io>, Jo-Philipp Wich <jo@mein.io>,
 Ansuel Smith <ansuelsmth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Merged into my staging tree at
http://git.openwrt.org/?p=openwrt/staging/jow.git.

Thank you!


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
