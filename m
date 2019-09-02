Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2D03A5547
	for <lists+openwrt-devel@lfdr.de>; Mon,  2 Sep 2019 13:50:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Yno0y8DNMW5bPryQ7e3duyAXlPAfCzlAd98f/whW34U=; b=C+Xqvr2cHyj4DS
	XObzgq0WwoV75PuzP1pdurNgXXe0I7L67n1GxPwMtb7cWSFxilvAy1LakypCeKu849TXvGFE4VymG
	B7XuaU5Z2v0mXIYlPUnp95M4ongjhPiLQVxVUlkQAtV7s4Ti+0gMXQNHpiwvkRoWkLqiFSY61Q9Fr
	mb9Mu6dyfEx84lFDdUh03J4exKElqsy1FJhKKhDLPejCV1P6jCFJL1M3nWZjpv5Tlv5Gm/E0d89A3
	oAIj56dCV8mluCjOWnw6JpbrzS/qtBvdI8TmbiKMUifzUn3vgyoDYLFpOB3MmeZ7jdg7LWpQBJ87x
	QMUask23LU9gKA133Qtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4kqD-0006bc-FH; Mon, 02 Sep 2019 11:49:49 +0000
Received: from canardo.mork.no ([2001:4641::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4kpw-0006bB-1E
 for openwrt-devel@lists.openwrt.org; Mon, 02 Sep 2019 11:49:33 +0000
Received: from canardo.mork.no (ip6-localhost [IPv6:0:0:0:0:0:0:0:1])
 by canardo.mork.no (8.15.2/8.15.2) with ESMTPS id x82BnN2O008270
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=OK);
 Mon, 2 Sep 2019 13:49:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mork.no; s=b;
 t=1567424964; bh=CiM2nU2uNmkenerEDxWyD/LzKZM6jUUxHjKCOvwwJ18=;
 h=From:To:Cc:Subject:Date:Message-Id:From;
 b=Kuu37yCqzNksZQoWtf9P49dBU6WAylSBeEK2JVrXlhy8ADMBTVFZIMKES4KgW4GRn
 qTDSskeIUMafdenTXOG8pmsREW7LPLrQ5HIa7Caj4fjqrdSShPi4vPpfgGZ07QD6GB
 EVLWOO0qrwsYDpKRW7Hg4WcNLwDr9BxRL9QPGRLk=
Received: (from bjorn@localhost)
 by canardo.mork.no (8.15.2/8.15.2/Submit) id x82BnNw8008269;
 Mon, 2 Sep 2019 13:49:23 +0200
From: =?UTF-8?q?Bj=C3=B8rn=20Mork?= <bjorn@mork.no>
To: openwrt-devel@lists.openwrt.org
Date: Mon,  2 Sep 2019 13:49:21 +0200
Message-Id: <20190902114921.8225-1-bjorn@mork.no>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Spam-Status: No, score=-1.0 required=5.0 tests=ALL_TRUSTED,SHORTCIRCUIT
 shortcircuit=ham autolearn=disabled version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on canardo.mork.no
X-Virus-Scanned: clamav-milter 0.101.2 at canardo
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_044932_583985_7F42770C 
X-CRM114-Status: UNSURE (   9.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4641:0:0:0:0:0:1 listed in] [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH] scripts/feeds: fix 'src-include' directive
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
Cc: =?UTF-8?q?Bj=C3=B8rn=20Mork?= <bjorn@mork.no>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Q29tbWl0IDc3NWI3MGY4ZDVkZiByZW5hbWVkIHBhcnNlX2ZpbGUoKSBwYXJhbWV0ZXJzIHdpdGhv
dXQKdXBkYXRpbmcgdGhlIHJlY3Vyc2l2ZSBjYWxsLiBUaGlzIGJyb2tlIHBhcnNpbmcgb2YgYW55
IGZlZWRzLmNvbmYKdXNpbmcgJ3NyYy1pbmNsdWRlJy4KCiAkIHNjcmlwdHMvZmVlZHMgdXBkYXRl
IC1hCiBDYW4ndCB1c2Ugc3RyaW5nICgiZGVmYXVsdHMiKSBhcyBhIEhBU0ggcmVmIHdoaWxlICJz
dHJpY3QgcmVmcyIgaW4gdXNlIGF0IHNjcmlwdHMvZmVlZHMgbGluZSA2MywgPCRmaD4gbGluZSAx
LgoKRml4ZXM6IDc3NWI3MGY4ZDVkZiAoInNjcmlwdHMvZmVlZHM6IGFsbG93IGFkZGluZyBwYXJh
bWV0ZXJzIHRvIGZlZWRzIikKU2lnbmVkLW9mZi1ieTogQmrDuHJuIE1vcmsgPGJqb3JuQG1vcmsu
bm8+Ci0tLQogc2NyaXB0cy9mZWVkcyB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlv
bigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL3NjcmlwdHMvZmVlZHMgYi9zY3JpcHRz
L2ZlZWRzCmluZGV4IGUzNmUwNDRhMTFhOC4uOGRlNDA3NWJjN2VkIDEwMDc1NQotLS0gYS9zY3Jp
cHRzL2ZlZWRzCisrKyBiL3NjcmlwdHMvZmVlZHMKQEAgLTc1LDcgKzc1LDcgQEAgc3ViIHBhcnNl
X2ZpbGUoJCQpIHsKIAkJfQogCiAJCWlmICgkdHlwZSBlcSAiaW5jbHVkZSIpIHsKLQkJCXBhcnNl
X2ZpbGUoJHVybHMsICRuYW1lKSBvcgorCQkJcGFyc2VfZmlsZSgkdXJscywgJGV4aXN0aW5nKSBv
cgogCQkJICAgIGRpZSAiVW5hYmxlIHRvIG9wZW4gaW5jbHVkZWQgZmlsZSAnJHVybHMnIjsKIAkJ
CW5leHQ7CiAJCX0KLS0gCjIuMjAuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxA
bGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL29wZW53cnQtZGV2ZWwK
