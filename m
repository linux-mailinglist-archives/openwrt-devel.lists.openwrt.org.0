Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84B5B1F1ABE
	for <lists+openwrt-devel@lfdr.de>; Mon,  8 Jun 2020 16:16:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rmK9G/vljlLZNQEnWsFfAbaEXz0X5aHKKefQ8KLfsHM=; b=hz1kXfWwgUBjnk
	X+UxXG3v0WOQODU9TAJzoO/2EwCnmiKJWtajG2GxTLICbsYW5AqUtZflfh/T3RKPbFKz9ORw9UcXV
	UmeJqNS//4+nqtYf7KHLka3pMglRCBkQbPNw0uc7tZqgitllxsq+fAN+Qcag7V8FXbs54Hn2mClJO
	x6M+XsawHfm7qXJxmPk2xMf7M9g/97p3GkDVqcuACe+iCd4dRO60izDkn0yTJgxlUs+1lT2j4rGo4
	QArwM2+cc6q1SzyVwf4pm5tEKmsZwV7b6RoBiJIG19e6WaXmeygV8o4QCDMukGFr4HeehAEbf6cOu
	a9vK0t7CflWyvkQCJBZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiIZA-0003mg-WD; Mon, 08 Jun 2020 14:15:57 +0000
Received: from mail.nerd2nerd.org ([148.251.171.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiIZ4-0003lW-H2
 for openwrt-devel@lists.openwrt.org; Mon, 08 Jun 2020 14:15:52 +0000
Received: from maraskan.fritz.box
 (p200300ec770954001e6f65fffece4488.dip0.t-ipconnect.de
 [IPv6:2003:ec:7709:5400:1e6f:65ff:fece:4488])
 by mail.nerd2nerd.org (Postfix) with ESMTPSA id D363360642;
 Mon,  8 Jun 2020 16:15:32 +0200 (CEST)
From: Johannes Kimmel <fff@bareminimum.eu>
To: openwrt-devel@lists.openwrt.org
Date: Mon,  8 Jun 2020 16:14:43 +0200
Message-Id: <20200608141445.309-2-fff@bareminimum.eu>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200608141445.309-1-fff@bareminimum.eu>
References: <20200608141445.309-1-fff@bareminimum.eu>
MIME-Version: 1.0
Authentication-Results: mail.nerd2nerd.org;
 auth=pass smtp.auth=info@bareminimum.eu smtp.mailfrom=fff@bareminimum.eu
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_071550_706877_55047AA0 
X-CRM114-Status: UNSURE (   6.12  )
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
Subject: [OpenWrt-Devel] [PATCH 1/3] vxlan: fix udp checksum control
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

So far, passing "rxcsum" and "txcsum" had no effect.

Signed-off-by: Johannes Kimmel <fff@bareminimum.eu>
---
 package/network/config/vxlan/files/vxlan.sh | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/package/network/config/vxlan/files/vxlan.sh b/package/network/config/vxlan/files/vxlan.sh
index d055d41..7b1c703 100755
--- a/package/network/config/vxlan/files/vxlan.sh
+++ b/package/network/config/vxlan/files/vxlan.sh
@@ -129,6 +129,8 @@ vxlan_generic_init_config() {
 	proto_config_add_int "ttl"
 	proto_config_add_int "tos"
 	proto_config_add_int "mtu"
+	proto_config_add_boolean "rxcsum"
+	proto_config_add_boolean "txcsum"
 	proto_config_add_string "macaddr"
 }
 
-- 
2.27.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
