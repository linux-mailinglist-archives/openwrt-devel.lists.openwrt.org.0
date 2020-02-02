Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7231A14FEC0
	for <lists+openwrt-devel@lfdr.de>; Sun,  2 Feb 2020 19:24:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A6yCuHIk8e8ScAYPnLvOn7LhdPexGLw7IPOOxm5uBLk=; b=Ikyax+4N3+sX1G
	B3wm7MsD6whbwTWJmXw0Vmxx5umznQezOqRmc/Djif8vK8L3F1J3erMx4nHnJ5qSgw+DZ8Z5UY/B1
	0dkUSMAFkHf5bYxUXCNWqF8Nw1msPlTXMdzs8Hdi4lHt3C0nxhhaq+U04Y7cBZn1Wg96XDcR2MtkW
	MenXHsZvMNMzETufVYfIwy7vZK8S7ujdx9pC9VMru1iB4xNwSbwIUtUfQ8GfKLWoinw+T81fC0XTJ
	pUeVlAvDUVoEh8NEpLdA9F9Xg+DphE2PQFWtVdCIruDr/hv7mA+Y84n9VcOJzkRdDXiaU51lZ/agr
	rE+ux7Gf7JevtvJfFQeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyJuo-0006le-Ru; Sun, 02 Feb 2020 18:24:14 +0000
Received: from mxout01.bytecamp.net ([212.204.60.217])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyJuh-0006kB-Ge
 for openwrt-devel@lists.openwrt.org; Sun, 02 Feb 2020 18:24:09 +0000
Received: by mxout01.bytecamp.net (Postfix, from userid 1001)
 id B68D05041B; Sun,  2 Feb 2020 19:24:03 +0100 (CET)
Received: from mail.bytecamp.net (mail.bytecamp.net [212.204.60.9])
 by mxout01.bytecamp.net (Postfix) with ESMTP id 971A250419
 for <openwrt-devel@lists.openwrt.org>; Sun,  2 Feb 2020 19:23:55 +0100 (CET)
Received: (qmail 95769 invoked from network); 2 Feb 2020 19:23:55 +0100
Received: from unknown (HELO j7.lan) (jo%wwsnet.net@95.90.41.162)
 by mail.bytecamp.net with ESMTPS (DHE-RSA-AES128-GCM-SHA256 encrypted);
 2 Feb 2020 19:23:55 +0100
From: Jo-Philipp Wich <jo@mein.io>
To: openwrt-devel@lists.openwrt.org
Date: Sun,  2 Feb 2020 19:23:54 +0100
Message-Id: <20200202182354.1813224-1-jo@mein.io>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191114075529.2977-1-mail@aparcar.org>
References: <20191114075529.2977-1-mail@aparcar.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200202_102407_710110_897B7C7A 
X-CRM114-Status: UNSURE (   2.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.204.60.217 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] Merged: buildbot: signall.sh store usign.key
 asusign.sec
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
Cc: Jo-Philipp Wich <jo@mein.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Merged into buildbot.git, branch master at
http://git.lede-project.org/?p=buildbot.git.

Thank you!


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
