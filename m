Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86F3E1BB29D
	for <lists+openwrt-devel@lfdr.de>; Tue, 28 Apr 2020 02:17:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Date:Message-Id:Mime-Version
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dbFnHRi2uNfzvcZh9WhOlf3G5/XXxC9rVwePwwBYElw=; b=AQU0G3l3XWE7cg
	lvKuWegPozbylLLgubv8wNOMeEDx3JUe362oOYW23KSwj26UD5sk0hqcv9eVj37zgWaX6tOBBBzRr
	ZqjEdsb/HNcacbxGqaJrf2DLyxd4xJZoeU3WbNU1DeUQ7ixmQhAAuC/dK0GCrtOgDTwgA80xROexc
	TFbtZy3S5IIZZnydx/qiB6O0kNxsOdnZUhYXPtRBZybytXVvodyBAJeQOOG2qT3YcsmnpGaWuVqiY
	Q5IE1hsLxEo4vgii0gqOZiMf9b3HUjuZ/WOPbUMdZU0GDVA8DR/ZgffGpU1S/HC8HRil3d2JvEVsr
	GukafQDuFkIJ4jcyMxsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTDw1-0006gB-NC; Tue, 28 Apr 2020 00:17:13 +0000
Received: from mail.redfish-solutions.com ([45.33.216.244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTDvw-0006eL-Hq
 for openwrt-devel@lists.openwrt.org; Tue, 28 Apr 2020 00:17:09 +0000
Received: from macbook2.redfish-solutions.com (macbook2.redfish-solutions.com
 [192.168.1.39]) (authenticated bits=0)
 by mail.redfish-solutions.com (8.15.2/8.15.2) with ESMTPSA id 03S0H1Dc023235
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
 for <openwrt-devel@lists.openwrt.org>; Mon, 27 Apr 2020 18:17:01 -0600
From: Philip Prindeville <philipp_subx@redfish-solutions.com>
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.80.23.2.2\))
Message-Id: <8E30BC1C-83C5-4CB1-881C-344B6CD865D2@redfish-solutions.com>
Date: Mon, 27 Apr 2020 18:17:01 -0600
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
X-Mailer: Apple Mail (2.3608.80.23.2.2)
X-Scanned-By: MIMEDefang 2.84 on 192.168.1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_171708_698894_68E62D31 
X-CRM114-Status: UNSURE (   4.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] Signing, meta-data,
 etc. on images and losetup mounts...
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGkgUGF1bCwgUGV0ciwgZXQgYWwuCgpJIHdhcyB0cnlpbmcgdG8gdGFrZSBhIG9wZW53cnQtKi1n
ZW5lcmljLXNxdWFzaGZzLWNvbWJpbmVkLWVmaS5pbWcgZmlsZSBmcm9tIG1hc3RlciBhbmQgdmVy
aWZ5IGl0IGZvciBjb3JyZWN0bmVzcyB3aXRoIOKAnGxvc2V0dXDigJ0sIGV0Yy4KCkJ1dCBsb3Nl
dHVwIGJhaWxlZCBiZWNhdXNlIHRoZSBpbWFnZSB3YXNu4oCZdCBhIG11bHRpcGxlIG9mIDUxMiBi
eXRlcyBsb25nLgoKV2hhdOKAmXMgdGhlIHdvcmthcm91bmQ/ICBIb3cgbXVjaCBkbyBJIGhhdmUg
dG8gc2hhdmUgYW5kIHdoZXJlPwoKSGVhZGVyPyAgVGFpbGVyPwoKVGhhbmtzCgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWls
aW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9w
ZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
