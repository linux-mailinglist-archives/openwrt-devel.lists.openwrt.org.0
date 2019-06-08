Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD2BA39E5C
	for <lists+openwrt-devel@lfdr.de>; Sat,  8 Jun 2019 13:48:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RIt1EgRHZeedw/8JeByt8KiVeL5WNWeIunDMcASDuYE=; b=Ao7oJOftzfsZCP
	+PTvVg4OhY6uYk9xqWj+jPwWWkXbNOmZBcdnwqdmBDQDpg/V95hV3PXuJeCnzUj2jWbtcvrpygGvV
	jrJIKB0mCtXaQBC1qcH/5++XnvL0ulLad5g/k3gVI2BjX2OJsVY83hKe2iOxU2/YA+VbmV4GNAqIR
	S6TuMNmSZAcrPSQCLXcSOu7uwyLexa+2c8UAt1cf1nzjqlP7DUKBNs/C4HZTAgZDOvTaeorpuZ8W8
	AFwr92AZsW20EdhTSdAABQR6EApzK+4WkiDWuuuWalbx0zh+IzMKnOYeG++4VHLMINS6Bh730XwpB
	BFMezqDUnwp7TyduV5EQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZZpr-0002Es-3y; Sat, 08 Jun 2019 11:48:35 +0000
Received: from mail3.marcant.net ([217.14.160.188])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZZpi-0002Cj-Hk
 for openwrt-devel@lists.openwrt.org; Sat, 08 Jun 2019 11:48:28 +0000
Received: from [192.168.180.1] (port=50374 helo=admins.marcant.net)
 by mail3.marcant.net with esmtp (Exim 4.82_1-5b7a7c0-XX)
 (envelope-from <avalentin@marcant.net>) id 1hZZpV-0001f8-22
 for openwrt-devel@lists.openwrt.org; Sat, 08 Jun 2019 13:48:13 +0200
Received: from varus.marcant.loc (unknown [192.168.3.44])
 by admins.marcant.net (Postfix) with ESMTPA id 6797128021E;
 Sat,  8 Jun 2019 13:48:13 +0200 (CEST)
From: =?UTF-8?q?Andr=C3=A9=20Valentin?= <avalentin@marcant.net>
To: openwrt-devel@lists.openwrt.org
Date: Sat,  8 Jun 2019 13:48:06 +0200
Message-Id: <20190608114809.9480-1-avalentin@marcant.net>
X-Mailer: git-send-email 2.11.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190608_044826_753869_9A514F30 
X-CRM114-Status: UNSURE (   3.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.14.160.188 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH v3 0/3] Add xfrm interface support
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
Cc: =?UTF-8?q?Andr=C3=A9=20Valentin?= <avalentin@marcant.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This adds support for xfrm interfaces. These interfaces are used as tunnel
interfaces for IPsec allowing route-based tunnels.
Compared to vti, xfrm interfaces do not need IP endpoints. This is optimal for
dynamic IP address setups.
Currently linux 5.19 and strongswan 5.8 allows usage.

v3: Change module dependency to @!LINUX_4_14 in 0001

-- 
2.11.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
