Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DB531FFA98
	for <lists+openwrt-devel@lfdr.de>; Thu, 18 Jun 2020 19:52:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iC9S6O4gI4oeZfx3jvYDLEVVkvMMIYT38R6hbm4SgAo=; b=L3WjJr24SEzNAG
	/fVDhorK2oY++AiawKbRbn+YEQLRpWjAj26LKkjhTIMNDC72gY11qNtARU01wU/hUhR4jD/So4qJO
	bJ8kQ5f/GGuMjw3HS3MzxXCTWQ2pMQCzmS0yuBGlJtW9Rkvv4vDsxj+6PyqXUcfD3fzwSFJehmHiI
	UDgN7nHtHPlzdK70SN7ZdI6bZykZCsNi94TTQlySDf62bUzHjwhgCsIBYhCqLysi98z7CW4GKQLaK
	lj/Bp5R6arKnAmBScw52FuNYVdCIMthdoTgC6TbhzTdGNXfPV6m6lD+FQs8cxlWDyxL+uGFb1Q78m
	2AkW8D7/z6pqCXzduazg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlyia-00085H-Hj; Thu, 18 Jun 2020 17:52:52 +0000
Received: from mxout01.bytecamp.net ([212.204.60.217])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlyiC-0007qp-TO
 for openwrt-devel@lists.openwrt.org; Thu, 18 Jun 2020 17:52:30 +0000
Received: by mxout01.bytecamp.net (Postfix, from userid 1001)
 id D334A46505; Thu, 18 Jun 2020 19:52:24 +0200 (CEST)
Received: from mail.bytecamp.net (mail.bytecamp.net [212.204.60.9])
 by mxout01.bytecamp.net (Postfix) with ESMTP id B5BF746503
 for <openwrt-devel@lists.openwrt.org>; Thu, 18 Jun 2020 19:52:24 +0200 (CEST)
Received: (qmail 43850 invoked from network); 18 Jun 2020 19:52:24 +0200
Received: from unknown (HELO j7.lan) (jo%wwsnet.net@95.90.36.22)
 by mail.bytecamp.net with ESMTPS (DHE-RSA-AES128-GCM-SHA256 encrypted);
 18 Jun 2020 19:52:24 +0200
From: Jo-Philipp Wich <jo@mein.io>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 18 Jun 2020 19:52:23 +0200
Message-Id: <20200618175223.1949177-1-jo@mein.io>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200616150746.30322-1-karel.koci@nic.cz>
References: <20200616150746.30322-1-karel.koci@nic.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_105229_104151_F6FFF31D 
X-CRM114-Status: UNSURE (   2.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.204.60.217 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] Merged: hostapd: fix compilation of wpa_supplicant
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
 =?utf-8?b?S2FyZWwgS2/EjcOt?= <karel.koci@nic.cz>
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
