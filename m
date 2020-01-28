Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69A8914BEE4
	for <lists+openwrt-devel@lfdr.de>; Tue, 28 Jan 2020 18:48:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qGXm4kCf0I2OSJ4XKCzPgEsssedVS/iqGQgbifljKxA=; b=ksryVNToQAlUvk
	jXQavt3ZUnKuHa523XjXA3Vdy+OgmCsNCau3S2JL2prYj7iddVU11cUBVyN92Njx5TXno2WR3nfwJ
	jdnvTTyMKKFncMtSrH87QII0ICVWzCsut0x/6EFnWfXJKwolWgPwcDdSXq1vCNyByRILsfceA5Q7Y
	Cl7TWeKDMFJOi4D+yerpKKQRexU1nIILis8FySIQvWAhwyab/GARsPheoEMizkbqDumzNOTtI1cZz
	LWX12Hn77apToY0U6NKZ/woKxcqh0MbtIAD4H2DAk0DgvciBW/7UG7/3EkwaYrtuBrbxtoOAJje3u
	27zntqLaV0APz+NzoqDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwUxr-00025t-7D; Tue, 28 Jan 2020 17:47:51 +0000
Received: from mxout01.bytecamp.net ([212.204.60.217])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwUxg-0001q5-BA
 for openwrt-devel@lists.openwrt.org; Tue, 28 Jan 2020 17:47:42 +0000
Received: by mxout01.bytecamp.net (Postfix, from userid 1001)
 id B169750A8B; Tue, 28 Jan 2020 18:47:26 +0100 (CET)
Received: from mail.bytecamp.net (mail.bytecamp.net [212.204.60.9])
 by mxout01.bytecamp.net (Postfix) with ESMTP id 8E89350A88
 for <openwrt-devel@lists.openwrt.org>; Tue, 28 Jan 2020 18:47:26 +0100 (CET)
Received: (qmail 38065 invoked from network); 28 Jan 2020 18:47:25 +0100
Received: from unknown (HELO j7.lan) (jo%wwsnet.net@95.90.41.162)
 by mail.bytecamp.net with ESMTPS (DHE-RSA-AES128-GCM-SHA256 encrypted);
 28 Jan 2020 18:47:25 +0100
From: Jo-Philipp Wich <jo@mein.io>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 28 Jan 2020 18:47:25 +0100
Message-Id: <20200128174725.22271-1-jo@mein.io>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200124155632.17807-1-rsalvaterra@gmail.com>
References: <20200124155632.17807-1-rsalvaterra@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_094740_575042_5D7AB260 
X-CRM114-Status: UNSURE (   3.10  )
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
Subject: [OpenWrt-Devel] Merged: fw3: robustify flow table detection.
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
Cc: ynezz@true.cz, Jo-Philipp Wich <jo@mein.io>,
 Rui Salvaterra <rsalvaterra@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Merged into project/firewall3.git, branch master at
http://git.lede-project.org/?p=project/firewall3.git.

Thank you!


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
