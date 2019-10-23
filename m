Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F402E184D
	for <lists+openwrt-devel@lfdr.de>; Wed, 23 Oct 2019 12:54:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GM5oZDWhDl+00y8UlF7nSjMGTNy/Y2CJQthhm9/uUi0=; b=MezmQWROIiOO+s
	cY7TlA/hR0AF/pf5GDO6CFYgzDpBs+fkK6aT519qTnlM1JFK+u4pYlAM3J/nS8U5qIBmseLGdUREt
	aZ24cYWEokRi/+pGToFrcemhwaFGl/X0aIcq2s9FdEX09m8fmNJryxM8Y/g+JMJLf4dXxVSkR+c4q
	Q6ZZ3qq6DtnrYIOKt/lrlo7CHZVVBXxmCHieWnj8z06abYXmpqKt8PSg6GZyRJrEKlNHr1pu2VT1q
	Hq6WEMyNdHPxWhBGyRzT7OPkZr1pkhruohPJtq+9NotyIOOhNvU9jvxRFva5H8knZc4CMbEvqdxKi
	ELmz2LDyqCqaHfjwYVHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNEHB-000121-Sv; Wed, 23 Oct 2019 10:54:01 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNEH2-0000zI-4K
 for openwrt-devel@lists.openwrt.org; Wed, 23 Oct 2019 10:53:53 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 2BB67523B;
 Wed, 23 Oct 2019 12:53:45 +0200 (CEST)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id f1844416;
 Wed, 23 Oct 2019 12:53:34 +0200 (CEST)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 23 Oct 2019 12:53:31 +0200
Message-Id: <20191023105339.16326-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_035352_339838_B7305DD4 
X-CRM114-Status: UNSURE (   5.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH fwtool 0/8] fwtool improvements
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
Cc: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGksCgp0aGlzIHBhdGNoZXMgbW92ZXMgZnd0b29sIG91dCBvZiB0cmVlIGludG8gc2VwYXJhdGUg
cHJvamVjdCwgYWRkcyBidW5jaCBvZgpmaXhlcywgR2l0TGFiIENJIHN1cHBvcnQgYW5kIHNvbWUg
dW5pdCB0ZXN0cyBhcyBhIGJvbnVzLgoKQ2hlZXJzLAoKUGV0cgoKUGV0ciDFoHRldGlhciAoOCk6
CiAgcmVmYWN0b3IgaW50byBzZXBhcmF0ZSBHaXQgcHJvamVjdAogIGNvbnZlcnQgaW50byBDTWFr
ZSBwcm9qZWN0CiAgaXJvbiBvdXQgZXh0cmEgY29tcGlsZXIgd2FybmluZ3MKICBhZGQgaW5pdGlh
bCBHaXRMYWIgQ0kgc3VwcG9ydAogIGFkZCBjcmFtIGJhc2VkIHVuaXQgdGVzdHMKICBjcmMzMjog
YWRkIG1pc3Npbmcgc3RkaW50LmggZGVwZW5kZW5jeQogIGZpeCBwb3NzaWJsZSBjb3B5IG9mIG51
bGwgYnVmZmVyIGFuZCB2YWxpZGF0aW9uIG9mIHVuaXRpYWxpemVkIGhlYWRlcgogIGZpeCBwb3Nz
aWJsZSBnYXJiYWdlIGluIHVuaXRpYWxpemVkIGNoYXIqIHN0cnVjdCBtZW1iZXJzCgogLmdpdGln
bm9yZSAgICAgICAgICAgICAgICAgICAgICB8ICAgMyArKwogLmdpdGxhYi1jaS55bWwgICAgICAg
ICAgICAgICAgICB8ICAxNCArKysrKwogQ01ha2VMaXN0cy50eHQgICAgICAgICAgICAgICAgICB8
ICAxNCArKysrKwogTWFrZWZpbGUgICAgICAgICAgICAgICAgICAgICAgICB8ICA0NyAtLS0tLS0t
LS0tLS0tLS0tLQogc3JjL2NyYzMyLmggPT4gY3JjMzIuaCAgICAgICAgICB8ICAgMiArCiBzcmMv
ZndpbWFnZS5oID0+IGZ3aW1hZ2UuaCAgICAgIHwgICAwCiBzcmMvZnd0b29sLmMgPT4gZnd0b29s
LmMgICAgICAgIHwgIDM5ICsrKysrKysrKystLS0tCiB0ZXN0cy9DTWFrZUxpc3RzLnR4dCAgICAg
ICAgICAgIHwgICA0ICsrCiB0ZXN0cy9hcnRpZmFjdHMva2V5LWJ1aWxkLnVjZXJ0IHwgQmluIDAg
LT4gNTE2IGJ5dGVzCiB0ZXN0cy9hcnRpZmFjdHMvbWV0YWRhdGEuanNvbiAgIHwgICAxICsKIHRl
c3RzL2NyYW0vQ01ha2VMaXN0cy50eHQgICAgICAgfCAgMjIgKysrKysrKysKIHRlc3RzL2NyYW0v
dGVzdF9jcmMzMi50ICAgICAgICAgfCAgMTIgKysrKysKIHRlc3RzL2NyYW0vdGVzdF9md3Rvb2wu
dCAgICAgICAgfCAgOTAgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysKIHRlc3RzL3Rl
c3QtY3JjMzIuYyAgICAgICAgICAgICAgfCAgMjYgKysrKysrKysrCiBzcmMvdXRpbHMuaCA9PiB1
dGlscy5oICAgICAgICAgIHwgICAwCiAxNSBmaWxlcyBjaGFuZ2VkLCAyMTYgaW5zZXJ0aW9ucygr
KSwgNTggZGVsZXRpb25zKC0pCiBjcmVhdGUgbW9kZSAxMDA2NDQgLmdpdGlnbm9yZQogY3JlYXRl
IG1vZGUgMTAwNjQ0IC5naXRsYWItY2kueW1sCiBjcmVhdGUgbW9kZSAxMDA2NDQgQ01ha2VMaXN0
cy50eHQKIGRlbGV0ZSBtb2RlIDEwMDY0NCBNYWtlZmlsZQogcmVuYW1lIHNyYy9jcmMzMi5oID0+
IGNyYzMyLmggKDk4JSkKIHJlbmFtZSBzcmMvZndpbWFnZS5oID0+IGZ3aW1hZ2UuaCAoMTAwJSkK
IHJlbmFtZSBzcmMvZnd0b29sLmMgPT4gZnd0b29sLmMgKDkyJSkKIGNyZWF0ZSBtb2RlIDEwMDY0
NCB0ZXN0cy9DTWFrZUxpc3RzLnR4dAogY3JlYXRlIG1vZGUgMTAwNjQ0IHRlc3RzL2FydGlmYWN0
cy9rZXktYnVpbGQudWNlcnQKIGNyZWF0ZSBtb2RlIDEwMDY0NCB0ZXN0cy9hcnRpZmFjdHMvbWV0
YWRhdGEuanNvbgogY3JlYXRlIG1vZGUgMTAwNjQ0IHRlc3RzL2NyYW0vQ01ha2VMaXN0cy50eHQK
IGNyZWF0ZSBtb2RlIDEwMDY0NCB0ZXN0cy9jcmFtL3Rlc3RfY3JjMzIudAogY3JlYXRlIG1vZGUg
MTAwNjQ0IHRlc3RzL2NyYW0vdGVzdF9md3Rvb2wudAogY3JlYXRlIG1vZGUgMTAwNjQ0IHRlc3Rz
L3Rlc3QtY3JjMzIuYwogcmVuYW1lIHNyYy91dGlscy5oID0+IHV0aWxzLmggKDEwMCUpCgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZl
bCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xp
c3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
