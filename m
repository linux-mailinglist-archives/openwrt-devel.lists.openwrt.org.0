Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDACCA66DD
	for <lists+openwrt-devel@lfdr.de>; Tue,  3 Sep 2019 12:55:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/FqMjqoY5L3kUy3Ka+bqI/Bkdzh+fVVM+LLAJtqsNcQ=; b=EaEfl8ZuZnDzqQ
	LZXlQ/7BXcY+MWa/q+Q/WHwhiDaTGx9sZ0pLQKVBjz3Utf0NSo7M8eiPSO7YruuVAH9QVe8j3Ntfn
	HRq6SC/kVqxqQgoWaruD6l2i3jKmAi/I5X9LM/LJz0eNEEO+NZvTSzv0953eOuXI5onn/U7T2XWoC
	LVWAe6JS9vscxqhxEinp6H2dgylNr5/fUIYfaO5bzHqEyvqi0Urgnw3FklL37dLvhERvgLGkk4/Ev
	ZjE1CWlLIo7bqJz/C6Winf0mZCwXmsxxWTbtshbExAtnnABkMksLtYeOvHZa9qqeYyPBM1PgCYVCt
	lQPEwh79vNMLK8ZYCFnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i56T2-00053x-CT; Tue, 03 Sep 2019 10:55:20 +0000
Received: from mxout01.bytecamp.net ([212.204.60.217])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i56Sg-00053X-9m
 for openwrt-devel@lists.openwrt.org; Tue, 03 Sep 2019 10:54:59 +0000
Received: by mxout01.bytecamp.net (Postfix, from userid 1001)
 id C37C85238C; Tue,  3 Sep 2019 12:54:54 +0200 (CEST)
Received: from mail.bytecamp.net (mail.bytecamp.net [212.204.60.9])
 by mxout01.bytecamp.net (Postfix) with ESMTP id 7D5A052389
 for <openwrt-devel@lists.openwrt.org>; Tue,  3 Sep 2019 12:54:54 +0200 (CEST)
Received: (qmail 93389 invoked from network); 3 Sep 2019 12:54:54 +0200
Received: from unknown (HELO j460.lan) (jo%wwsnet.net@24.134.185.161)
 by mail.bytecamp.net with ESMTPS (DHE-RSA-AES128-GCM-SHA256 encrypted);
 3 Sep 2019 12:54:54 +0200
From: Jo-Philipp Wich <jo@mein.io>
To: openwrt-devel@lists.openwrt.org
Date: Tue,  3 Sep 2019 12:54:53 +0200
Message-Id: <20190903105453.7165-1-jo@mein.io>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190901183401.29040-1-pepe.schlehofer@gmail.com>
References: <20190901183401.29040-1-pepe.schlehofer@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_035458_496724_31508930 
X-CRM114-Status: UNSURE (   2.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.204.60.217 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] Merged: bzip2: Fix CVE-2019-12900
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
Cc: Josef Schlehofer <pepe.schlehofer@gmail.com>, Jo-Philipp Wich <jo@mein.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Merged into openwrt-18.06.
Thank you!


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
