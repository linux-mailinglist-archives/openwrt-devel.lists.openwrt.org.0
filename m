Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DCE845B29
	for <lists+openwrt-devel@lfdr.de>; Fri, 14 Jun 2019 13:10:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nS/5x8EM4LnbPPO/VXxyNN6p/a9OnJ9r7mgY/ta7cKQ=; b=RICLTClXgsTGkx
	YGawikWsbgNb46yPvzVoRbAFPrLREqFri8RuIUX8XFqusRoCE3m9qNJEzQI0eU7OMAE3ylluzBBaO
	xEPdK4lJGVcCZ8BlXsbNkd9ZofUt9iF4DIYnpwGsJZL0cpQI5SQxk0yeNeD12kwu77na5QaEjQkTB
	ia1WhwTdaRAk37xiEObTQ0InWTg9el6bpjFMn4WK6Yl171DP1ruwfnTuBpKqIvgKfXbK00vb9S9+Z
	jjFG03p991JLadkU2f8C80TwgRghRLqK9kNEJqc/myZL7qFjm/umSYkgj9GV/MlSshScsEs8CXWsx
	t+f6OUN6kffOW1qvn2aA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbk66-0007l8-Jw; Fri, 14 Jun 2019 11:10:18 +0000
Received: from mail3.marcant.net ([217.14.160.188])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbk5w-0006XE-2T
 for openwrt-devel@lists.openwrt.org; Fri, 14 Jun 2019 11:10:10 +0000
Received: from [192.168.180.1] (port=48380 helo=admins.marcant.net)
 by mail3.marcant.net with esmtp (Exim 4.82_1-5b7a7c0-XX)
 (envelope-from <avalentin@marcant.net>) id 1hbk5g-0003tg-1b
 for openwrt-devel@lists.openwrt.org; Fri, 14 Jun 2019 13:09:52 +0200
Received: from varus.marcant.loc (unknown [192.168.3.44])
 by admins.marcant.net (Postfix) with ESMTPA id 52B532802CE;
 Fri, 14 Jun 2019 13:09:52 +0200 (CEST)
From: =?UTF-8?q?Andr=C3=A9=20Valentin?= <avalentin@marcant.net>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 14 Jun 2019 13:09:44 +0200
Message-Id: <20190614110947.10540-1-avalentin@marcant.net>
X-Mailer: git-send-email 2.11.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_041008_296464_70C0B5CB 
X-CRM114-Status: UNSURE (   5.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.14.160.188 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 0/3] xfrm: fix xfrm interface deletion and
 improve module loading
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

VGhpcyBmaXhlcyB0aGUgZm9sbG93aW5nIHByb2JsZW1zOgoteGZybSBpbnRlcmZhY2VzIGNvdWxk
IG5vdCBiZSBkZWxldGVkIGJlZm9yZQotYWRkIHByb3RvX2hvc3RfZGVwZW5kZW5jeQotYWRkIEtl
cm5lbCA0LjkgZXhjbHVkZQotZW5hYmxlIG1vZHVsZSBhdXRvcHJvYmluZwoKVGhhbmtzIHRvIEhh
bnMgYW5kIEhhdWtlIGZvciBoZWxwaW5nIG1lLgoKQW5kcsOpIFZhbGVudGluICgxKToKICBuZXRp
ZmQ6IGZpeCB4ZnJtIGludGVyZmFjZSBkZWxldGlvbiBhbmQgc3RhbmRhcmRpemUgbmV0bGluayBj
YWxsCgogc3lzdGVtLWxpbnV4LmMgfCA1ICsrKy0tCiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRp
b25zKCspLCAyIGRlbGV0aW9ucygtKQoKLS0gCjIuMTEuMAoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9w
ZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9t
YWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
