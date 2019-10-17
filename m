Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4BF1DA76F
	for <lists+openwrt-devel@lfdr.de>; Thu, 17 Oct 2019 10:30:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MvODUB83tdji4z0fkAuikj0Xjm4h/iRAihO4M6ukPb4=; b=FS4dibIAWfZ8fg
	wQuD4hFCOrLXdnnSW/ZBJD1eA2v123r8iLmpweuf5VFywr1Sq4XHKuapYfPhY26dR4Ovy4lSLNIHV
	sd17PKCxaAqW1/5rEQTPxe9Wl1ZQjaMZAdzkeJI+KpgzcGgfv8AiRuSXpKMbLA72fYS6lXY0FRLdQ
	11JO5cLShPpjyh2/Q/J0OmMefgSLrYgG/oxO45CKpxSRT00DqbykcqTSzZpAjHgWVA6fER8eudT5f
	a2BudSYD6fwW6NPOOd7XFDiWvrlBbR+8a7YBduWTfriVN1ha/vn7F6r+hPs6UjRZeTkP6gOqiKanW
	gZVaYtxsNkqUfdaJrNYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL1As-0004k8-LW; Thu, 17 Oct 2019 08:30:22 +0000
Received: from canardo.mork.no ([2001:4641::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL1Ah-0003gI-Vq
 for openwrt-devel@lists.openwrt.org; Thu, 17 Oct 2019 08:30:13 +0000
Received: from canardo.mork.no (ip6-localhost [IPv6:0:0:0:0:0:0:0:1])
 by canardo.mork.no (8.15.2/8.15.2) with ESMTPS id x9H8U5M1010896
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=OK);
 Thu, 17 Oct 2019 10:30:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mork.no; s=b;
 t=1571301005; bh=rXKx7fBLH1AaB6PBC8TN8HYT0hX4tXxIxA5DnjeICeM=;
 h=From:To:Cc:Subject:Date:Message-Id:From;
 b=hQfkr7FjmuZMhQIDgZCAiZTEy5zZJpkoaCNdHioDnvcTJE5YDAssTPQGBh9F6DQCL
 CqezVWgtV3IOsbb09NaXd/WFADTEwOtC9It+itpRORR+F/BcnFp4hfTQhRac7hprjM
 aYYHOiOydF1HfnanWq2ioIDZYCy5cfempljnKBZU=
Received: (from bjorn@localhost)
 by canardo.mork.no (8.15.2/8.15.2/Submit) id x9H8U5LS010895;
 Thu, 17 Oct 2019 10:30:05 +0200
From: =?UTF-8?q?Bj=C3=B8rn=20Mork?= <bjorn@mork.no>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 17 Oct 2019 10:30:02 +0200
Message-Id: <20191017083002.10830-1-bjorn@mork.no>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Spam-Status: No, score=-1.0 required=5.0 tests=ALL_TRUSTED,SHORTCIRCUIT
 shortcircuit=ham autolearn=disabled version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on canardo.mork.no
X-Virus-Scanned: clamav-milter 0.101.4 at canardo
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_013012_539836_2BF3A453 
X-CRM114-Status: UNSURE (   8.92  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH] kernel: fix MBIM description
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

U2lnbmVkLW9mZi1ieTogQmrDuHJuIE1vcmsgPGJqb3JuQG1vcmsubm8+Ci0tLQpUcml2aWFsIGZp
eCBmb3IgY3V0bnBhc3RlIGVycm9yLi4uCgpCdXQgbG9va2luZyBhdCBhbGwgdGhlc2Uga21vZCBw
YWNrYWdlIGRlc2NyaXB0aW9ucyBJIHdvbmRlciBpZiB3ZQpzaG91bGRuJ3QganVzdCBhdXRvLWdl
bmVyYXRlIHRoZW0gYWxsIGJhc2VkIG9uIHRoZSBrZXJuZWwgS2NvbmZpZz8KTWF5YmUganVzdCB1
c2UgdGhlIG9uZS1saW5lICJ0cmlzdGF0ZSIgZGVzY3JpcHRpb24gd2l0aCBhbgphcHByb3ByaWF0
ZSBwcmVmaXggbWFraW5nIGl0IGFuIE9wZW5XcnQga21vZCBwYWNrYWdlIGRlc2NyaXB0aW9uLgoK
Tm90IHRoYXQgdGhlIGtlcm5lbCBkZXNjcmlwdGlvbnMgYXJlIGFsd2F5cyBwZXJmZWN0LiBCdXQg
aXQncyBiZXR0ZXIKdG8gZml4IGFueSBwcm9ibGVtcyB3aXRoIHRoZW0gdGhhbiBpbnZlbnRpbmcg
b3VyIG93biBhbHRlcm5hdGl2ZQpkZXNjcmlwdGlvbnMuIAoKCkJqw7hybgoKIHBhY2thZ2Uva2Vy
bmVsL2xpbnV4L21vZHVsZXMvdXNiLm1rIHwgMiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0
aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvcGFja2FnZS9rZXJuZWwvbGludXgv
bW9kdWxlcy91c2IubWsgYi9wYWNrYWdlL2tlcm5lbC9saW51eC9tb2R1bGVzL3VzYi5tawppbmRl
eCAwNDkzZTYwZDgzYzAuLjQ1YzQwOWY0Y2IwNSAxMDA2NDQKLS0tIGEvcGFja2FnZS9rZXJuZWwv
bGludXgvbW9kdWxlcy91c2IubWsKKysrIGIvcGFja2FnZS9rZXJuZWwvbGludXgvbW9kdWxlcy91
c2IubWsKQEAgLTEzOTksNyArMTM5OSw3IEBAIGRlZmluZSBLZXJuZWxQYWNrYWdlL3VzYi1uZXQt
Y2RjLW1iaW0KIGVuZGVmCiAKIGRlZmluZSBLZXJuZWxQYWNrYWdlL3VzYi1uZXQtY2RjLW1iaW0v
ZGVzY3JpcHRpb24KLSBLZXJuZWwgbW9kdWxlIGZvciBPcHRpb24gVVNCIEhpZ2ggU3BlZWQgTW9i
aWxlIERldmljZXMKKyBLZXJuZWwgbW9kdWxlIGZvciBDREMgTUJJTSAoTW9iaWxlIEJyb2FkYmFu
ZCBJbnRlcmZhY2UgTW9kZWwpIGRldmljZXMKIGVuZGVmCiAKICQoZXZhbCAkKGNhbGwgS2VybmVs
UGFja2FnZSx1c2ItbmV0LWNkYy1tYmltKSkKLS0gCjIuMjAuMQoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0
Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
