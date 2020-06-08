Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0396F1F1ABC
	for <lists+openwrt-devel@lfdr.de>; Mon,  8 Jun 2020 16:16:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hxvOv+gAd4NwFATpbP4GCZxa+U2G7y4oJ3K4/WXVHpo=; b=NukUMqDycaU0Fv
	Odxg9EFAywYz0JEAchbI6ZEbiZeIIXbylbvWJKvZ7EgVNKD8G57QHKTWU4ejdG17vKOxIbNzByj6b
	eGd3iVNMxoqrjI9kiXgPyXMelPrgn2X8PLFqR4mMqiUGcMgDNt/4MzQ4zwzT+9F9nw5nZab5uUF9q
	PlMXqoheWLhNGNXaKtFAmz93EUlBOdP7PINB3AOpWUlV/RBqCAg81h+kQJ8MZ0zCK3QICaUqh/Tdf
	8LkpVIpObvix4f8Kj/h6rRqaGJBo4IXgtOskwrCN3s5Fuv+9r6LTsOs0TJ/l3t7bFq2Y18uWbtWk5
	73AqAHdvNvM+GCzw5/Aw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiIZM-0003tX-8w; Mon, 08 Jun 2020 14:16:08 +0000
Received: from mail.nerd2nerd.org ([148.251.171.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiIZ4-0003lX-GJ
 for openwrt-devel@lists.openwrt.org; Mon, 08 Jun 2020 14:15:52 +0000
Received: from maraskan.fritz.box
 (p200300ec770954001e6f65fffece4488.dip0.t-ipconnect.de
 [IPv6:2003:ec:7709:5400:1e6f:65ff:fece:4488])
 by mail.nerd2nerd.org (Postfix) with ESMTPSA id 8CF23604AE;
 Mon,  8 Jun 2020 16:15:28 +0200 (CEST)
From: Johannes Kimmel <fff@bareminimum.eu>
To: openwrt-devel@lists.openwrt.org
Date: Mon,  8 Jun 2020 16:14:42 +0200
Message-Id: <20200608141445.309-1-fff@bareminimum.eu>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Authentication-Results: mail.nerd2nerd.org;
 auth=pass smtp.auth=info@bareminimum.eu smtp.mailfrom=fff@bareminimum.eu
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_071550_693215_C0AA945E 
X-CRM114-Status: UNSURE (   5.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [148.251.171.25 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 0/3] vxlan: add capability for multiple fdb
 entries
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
Cc: Johannes Kimmel <fff@bareminimum.eu>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a small series of patches to add multiple fdb entries for vxlan
interfaces.

First patch fixes an issue where the options for controlling checksums
wasn't working.

Second patch removes the requirement to specify a peeraddr, because
vxlan interfaces can be created without them.

Third patch introduces new config sections for vxlan peers similar to
wireguard peers. See patches for more info.

Johannes Kimmel (3):
  vxlan: fix udp checksum control
  vxlan: remove mandatory peeraddr
  vxlan: add capability for multiple fdb entries

 package/network/config/vxlan/Makefile       |  2 +-
 package/network/config/vxlan/files/vxlan.sh | 50 +++++++++++++++------
 2 files changed, 38 insertions(+), 14 deletions(-)

-- 
2.27.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
