Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53D0B23123
	for <lists+openwrt-devel@lfdr.de>; Mon, 20 May 2019 12:15:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bQI3qEsF/DQyjQKV+Kq8pwRnBwmNPESiHDgqjrx5MWQ=; b=hP39cXt/FSgT+3
	blZeWTswDSbFADISf3Z/NwMBnnNJKZq5oZpkpyywoA7jaWVNkEsvgO+yB7QxlTXrdmTQKJ+5KYCp+
	U+l00aU4rr4r54ezLTcOXdJUw1SgpYrW1CXl8MCrW+mZTjo1l6MOFT14/PYGn4eBd53rLxk4cjcE6
	ytol5fi+zIep76CZNJew2f9tLNMhAqKHUETg3u4JNleA2KuAqMYxFqgeMRbzuddoWBf22dy6iEwGB
	BZwcTY726/uYHtWESb2wsLf67YLX62Cml6jN6gmnqbKAJP2KB7UVi+TY5Xxq5/QijXR5pDn023UCF
	l/g7LANbfys5xcKOyIfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSfK5-0007VQ-JY; Mon, 20 May 2019 10:15:13 +0000
Received: from canardo.mork.no ([2001:4641::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSfJt-0006le-Ac
 for openwrt-devel@lists.openwrt.org; Mon, 20 May 2019 10:15:03 +0000
Received: from canardo.mork.no (ip6-localhost [IPv6:0:0:0:0:0:0:0:1])
 by canardo.mork.no (8.15.2/8.15.2) with ESMTPS id x4KAEqgQ009246
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 20 May 2019 12:14:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mork.no; s=b;
 t=1558347292; bh=wO88eEqr33mxn/Goi81wez40EsrVWfXETBTHoDmOWMQ=;
 h=From:To:Cc:Subject:Date:Message-Id:From;
 b=B/zMVOvZz8ZjlqFT0utpivpp6tNB1RClo56VW4dQsxrfxyP/ur8m/m9UqQw+/RF5e
 XD4QjsuSvadBLPcAhh+k0NwGPCSE9iZvp1iZ3VXHRRmSCosB55SMPfY4eAPQ/fYZbj
 7mlhHsTs6EBHz1l3k1BwiNYHt7oLBsIqX7o+7Zpk=
Received: (from bjorn@localhost)
 by canardo.mork.no (8.15.2/8.15.2/Submit) id x4KAEq9a009245;
 Mon, 20 May 2019 12:14:52 +0200
From: =?UTF-8?q?Bj=C3=B8rn=20Mork?= <bjorn@mork.no>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 20 May 2019 12:14:43 +0200
Message-Id: <20190520101443.9192-1-bjorn@mork.no>
X-Mailer: git-send-email 2.11.0
MIME-Version: 1.0
X-Spam-Status: No, score=-1.0 required=5.0 tests=ALL_TRUSTED,SHORTCIRCUIT
 shortcircuit=ham autolearn=disabled version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on canardo.mork.no
X-Virus-Scanned: clamav-milter 0.100.3 at canardo
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_031501_787883_187F4E97 
X-CRM114-Status: GOOD (  10.16  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4641:0:0:0:0:0:1 listed in] [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH] upgrade: nand: fix board_name assumtions
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
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

bmFuZF9kb19wbGF0Zm9ybV9jaGVjayBhc3N1bWVzIHRoYXQgdGhlIGN1cnJlbnQgYm9hcmQgbmFt
ZSBpcwp1c2VkIGFzLWlzIGluIHRoZSB0YXIgZmlsZSBzeXN1cGdyYWRlIGRpcmVjdG9yeS4gIFRo
aXMgZmFpbHMKZm9yIGFueSBpbWFnZSBzdXBwb3J0aW5nIG11bHRpcGxlIGRldmljZSBuYW1lcywg
YW5kIGl0IGFsc28KZmFpbHMgaWYgdGhlIGJvYXJkX25hbWUgY29udGFpbnMgYSBjb21tYS4KClNp
Z25lZC1vZmYtYnk6IEJqw7hybiBNb3JrIDxiam9ybkBtb3JrLm5vPgotLS0KVGhpcyBpcyBhIGxv
Y2FsIHdvcmthcm91bmQgSSd2YSBoYWQgbHlpbmcgYXJvdW5kIGZvciBhIHdoaWxlLiAgUGxlYXNl
CmNvbnNpZGVyIGlmIGl0IG1ha2VzIGFueSBzZW5zZSBhdCBhbGwsIG9yIGlmIHRoZXJlIGFyZSBi
ZXR0ZXIgd2F5cwp0byBzb2x2ZSB0aGUgcHJvYmxlbS4KCkkgZG9uJ3QgaGF2ZSBhbiBhY3R1YWwg
dXBzdHJlYW1lZCB1c2VjYXNlLCBhcyB0aGlzIGlzIGFuIGlzc3VlIEkndmUKbWV0IHdoaWxlIHRy
eWluZyB0byBwcmVwYXJlIGZvciBhIG5ldmVyLWZpbmlzaGVkIFp5WEVMIFdBUDY4MDUKc3VwcG9y
dC4uLgoKCgpCasO4cm4KCiBwYWNrYWdlL2Jhc2UtZmlsZXMvZmlsZXMvbGliL3VwZ3JhZGUvbmFu
ZC5zaCB8IDQgKysrLQogMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlv
bigtKQoKZGlmZiAtLWdpdCBhL3BhY2thZ2UvYmFzZS1maWxlcy9maWxlcy9saWIvdXBncmFkZS9u
YW5kLnNoIGIvcGFja2FnZS9iYXNlLWZpbGVzL2ZpbGVzL2xpYi91cGdyYWRlL25hbmQuc2gKaW5k
ZXggOTk5MTZhNGU5NmZjLi4xNDg1NjM1Nzk4OWUgMTAwNjQ0Ci0tLSBhL3BhY2thZ2UvYmFzZS1m
aWxlcy9maWxlcy9saWIvdXBncmFkZS9uYW5kLnNoCisrKyBiL3BhY2thZ2UvYmFzZS1maWxlcy9m
aWxlcy9saWIvdXBncmFkZS9uYW5kLnNoCkBAIC0zMjAsNyArMzIwLDkgQEAgbmFuZF9kb191cGdy
YWRlKCkgewogbmFuZF9kb19wbGF0Zm9ybV9jaGVjaygpIHsKIAlsb2NhbCBib2FyZF9uYW1lPSIk
MSIKIAlsb2NhbCB0YXJfZmlsZT0iJDIiCi0JbG9jYWwgY29udHJvbF9sZW5ndGg9YCh0YXIgeGYg
JHRhcl9maWxlIHN5c3VwZ3JhZGUtJGJvYXJkX25hbWUvQ09OVFJPTCAtTyB8IHdjIC1jKSAyPiAv
ZGV2L251bGxgCisJbG9jYWwgYm9hcmRfZGlyPSQodGFyIHRmICR0YXJfZmlsZSB8IGdyZXAgLW0g
MSAnXnN5c3VwZ3JhZGUtLiovJCcpCisJYm9hcmRfZGlyPSR7Ym9hcmRfZGlyJS99CisJbG9jYWwg
Y29udHJvbF9sZW5ndGg9YCh0YXIgeGYgJHRhcl9maWxlICR7Ym9hcmRfZGlyfS9DT05UUk9MIC1P
IHwgd2MgLWMpIDI+IC9kZXYvbnVsbGAKIAlsb2NhbCBmaWxlX3R5cGU9IiQoaWRlbnRpZnkgJDIp
IgogCiAJWyAiJGNvbnRyb2xfbGVuZ3RoIiA9IDAgLWEgIiRmaWxlX3R5cGUiICE9ICJ1YmkiIC1h
ICIkZmlsZV90eXBlIiAhPSAidWJpZnMiIF0gJiYgewotLSAKMi4xMS4wCgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5n
IGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53
cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
