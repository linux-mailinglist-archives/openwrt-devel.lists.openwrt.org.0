Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EAC519E4AD
	for <lists+openwrt-devel@lfdr.de>; Sat,  4 Apr 2020 13:30:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=M2Ksa6xRXEWpoh4QJi+R9BusFzbCWhjt4Qw8caGebMw=; b=m4dK/kJXK/ZF/q
	sRvF8+9JlA79qnwD/GQTQgjP2/DkoVJQ8+t5VZa/EKNqawQslabqVFnPT7nO8H9Zc6WoTxGXMMl6m
	BECxb77GkHXSSAitzhQq8A6fkqpMJeWQJB3GCynbgmIPV4Y3nD29/sP8/fmKxC+DvXIDC+Z5jKfsW
	c02AxC97lpGBGjW4v6FxKm8G4sn7o/ZW37zGffRhu1kR9IWiWoi04oTzeF2l6BdTaBEXU4DseB2bE
	JOEcOIXwhFi1KpHJvbfQW7cBS5HOdd8yteD2kneUQkUAap/X63G+6BWQBEQt+FVihMNQk+loRYbx6
	lkpJJmDH/TfybII3WtaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKh0d-0000va-HD; Sat, 04 Apr 2020 11:30:43 +0000
Received: from lmr1.uibk.ac.at ([138.232.1.142] helo=smtp.uibk.ac.at)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKh0V-0000ut-Dh
 for openwrt-devel@lists.openwrt.org; Sat, 04 Apr 2020 11:30:37 +0000
Received: from localhost.localdomain (ip5f5ac5e8.dynamic.kabel-deutschland.de
 [95.90.197.232]) (authenticated bits=0)
 by smtp.uibk.ac.at (8.14.4/8.14.4/F1) with ESMTP id 034BUHwX027684
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
 Sat, 4 Apr 2020 13:30:23 +0200
From: Peter Stadler <peter.stadler@student.uibk.ac.at>
To: openwrt-devel@lists.openwrt.org
Date: Sat,  4 Apr 2020 13:30:15 +0200
Message-Id: <20200404113015.17863-1-peter.stadler@student.uibk.ac.at>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-Spam-Score: () -15.0 ALL_TRUSTED,RCV_SMTP_AUTH,RCV_SMTP_UIBK
X-Scanned-By: MIMEDefang 2.84 at uibk.ac.at
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200404_043035_779229_4738348D 
X-CRM114-Status: UNSURE (   8.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [138.232.1.142 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [138.232.1.142 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
Subject: [OpenWrt-Devel] [PATCH] opkg: remove inexistent files from list only
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
Cc: Peter Stadler <peter.stadler@student.uibk.ac.at>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

VGhpcyBhdm9pZHMgbWlzbGVhZGluZyBtZXNzYWdlcyBmb3IgZmlsZXMgdGhhdCBhcmUgZGVsZXRl
ZCBhbHJlYWR5CihieSB0aGUgdXNlciBvciBieSByZW1vdmVfb2Jzb2xlc2NlZF9maWxlcyksIGUu
Zy4gZm9yIGNvbmZmaWxlczoKICAqIGZpbGVfc2hhMjU2c3VtX2FsbG9jOiBGYWlsZWQgdG8gb3Bl
biBmaWxlIOKApgogIE5vdCBkZWxldGluZyBtb2RpZmllZCBjb25mZmlsZSDigKYKKFRoaXMgc3Rh
dGVtZW50IGlzIGZhbHNlIGZvciBvYnNvbGV0ZSBmaWxlcyBhcyBvcGtnIGRlbGV0ZWQgdGhlbS4p
CgpTaWduZWQtb2ZmLWJ5OiBQZXRlciBTdGFkbGVyIDxwZXRlci5zdGFkbGVyQHN0dWRlbnQudWli
ay5hYy5hdD4KLS0tCiBsaWJvcGtnL29wa2dfcmVtb3ZlLmMgfCA2ICsrKysrKwogMSBmaWxlIGNo
YW5nZWQsIDYgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2xpYm9wa2cvb3BrZ19yZW1vdmUu
YyBiL2xpYm9wa2cvb3BrZ19yZW1vdmUuYwppbmRleCA5NmNhNTU4Li5hOWM3ZDVhIDEwMDY0NAot
LS0gYS9saWJvcGtnL29wa2dfcmVtb3ZlLmMKKysrIGIvbGlib3BrZy9vcGtnX3JlbW92ZS5jCkBA
IC0zNTUsNiArMzU1LDEyIEBAIHZvaWQgcmVtb3ZlX2RhdGFfZmlsZXNfYW5kX2xpc3QocGtnX3Qg
KiBwa2cpCiAJICAgICBpdGVyID0gc3RyX2xpc3RfbmV4dChpbnN0YWxsZWRfZmlsZXMsIGl0ZXIp
KSB7CiAJCWZpbGVfbmFtZSA9IChjaGFyICopaXRlci0+ZGF0YTsKIAorCQlpZiAoIWZpbGVfZXhp
c3RzKGZpbGVfbmFtZSkpIHsKKwkJCS8qIEZpbGUgZGVsZXRlZCBieSB1c2VyIG9yIHJlbW92ZV9v
YnNvbGVzY2VkX2ZpbGVzKCkuICovCisJCQlmaWxlX2hhc2hfcmVtb3ZlKGZpbGVfbmFtZSk7CisJ
CQljb250aW51ZTsKKwkJfQorCiAJCW93bmVyID0gZmlsZV9oYXNoX2dldF9maWxlX293bmVyKGZp
bGVfbmFtZSk7CiAJCWlmIChvd25lciAhPSBwa2cpCiAJCQkvKiBGaWxlIG1heSBoYXZlIGJlZW4g
Y2xhaW1lZCBieSBhbm90aGVyIHBhY2thZ2UuICovCi0tIAoyLjI0LjEKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcg
bGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3Blbndy
dC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
