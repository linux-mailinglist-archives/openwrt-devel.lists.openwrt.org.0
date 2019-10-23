Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D48FEE1857
	for <lists+openwrt-devel@lfdr.de>; Wed, 23 Oct 2019 12:54:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HLVl6U5LG7DKy8qAfaKlz5taq9SHEIVS3Q3cFcaXov8=; b=OuGXuziMvg9uUo
	cgJKML5xhUgDxZ2DgADVNva29TX4P1NgtgWjNnvnQ9Yj+aBjVHfouUV9cA8rm2jMxy2p1mOXI8qQ9
	tLge5Qo6PBcE+MEGQ/oMYtcgMyzt/5b/hCLw1zzvLYsaZ3A0Thv4LusLhAdGg75M5BZdQ8PaIcYry
	0B2PFmyVMyNS3PdHnTHy7WZgSyCRjs6GhNyCRqEoSnezzFs1NXEiTrNTEpNAhmYdQfZz0V5BRjEQ+
	qpRLo7NIR0MNECWPsj21RHoTkQWGz5KM056emyOk6ekTHtJCUFZDzgaWuKA4rOSK6cMHtIlVdtb5P
	k1LSx5bzYqVfBU9p0ZTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNEHz-0002Ea-5w; Wed, 23 Oct 2019 10:54:51 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNEH2-0000zJ-4N
 for openwrt-devel@lists.openwrt.org; Wed, 23 Oct 2019 10:53:55 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 5488A523C;
 Wed, 23 Oct 2019 12:53:45 +0200 (CEST)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id a670bf53;
 Wed, 23 Oct 2019 12:53:35 +0200 (CEST)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 23 Oct 2019 12:53:32 +0200
Message-Id: <20191023105339.16326-2-ynezz@true.cz>
In-Reply-To: <20191023105339.16326-1-ynezz@true.cz>
References: <20191023105339.16326-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_035352_346791_290CB169 
X-CRM114-Status: UNSURE (   4.84  )
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
Subject: [OpenWrt-Devel] [PATCH fwtool 1/8] refactor into separate Git
 project
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

Rm9yIGltcHJvdmVkIHJldXNhYmlsaXR5LCB0ZXN0aW5nIGV0Yy4KClNpZ25lZC1vZmYtYnk6IFBl
dHIgxaB0ZXRpYXIgPHluZXp6QHRydWUuY3o+Ci0tLQogTWFrZWZpbGUgICAgICAgICAgICAgICAg
ICAgfCA0NyAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQogc3JjL2NyYzMy
LmggPT4gY3JjMzIuaCAgICAgfCAgMAogc3JjL2Z3aW1hZ2UuaCA9PiBmd2ltYWdlLmggfCAgMAog
c3JjL2Z3dG9vbC5jID0+IGZ3dG9vbC5jICAgfCAgMAogc3JjL3V0aWxzLmggPT4gdXRpbHMuaCAg
ICAgfCAgMAogNSBmaWxlcyBjaGFuZ2VkLCA0NyBkZWxldGlvbnMoLSkKIGRlbGV0ZSBtb2RlIDEw
MDY0NCBNYWtlZmlsZQogcmVuYW1lIHNyYy9jcmMzMi5oID0+IGNyYzMyLmggKDEwMCUpCiByZW5h
bWUgc3JjL2Z3aW1hZ2UuaCA9PiBmd2ltYWdlLmggKDEwMCUpCiByZW5hbWUgc3JjL2Z3dG9vbC5j
ID0+IGZ3dG9vbC5jICgxMDAlKQogcmVuYW1lIHNyYy91dGlscy5oID0+IHV0aWxzLmggKDEwMCUp
CgpkaWZmIC0tZ2l0IGEvTWFrZWZpbGUgYi9NYWtlZmlsZQpkZWxldGVkIGZpbGUgbW9kZSAxMDA2
NDQKaW5kZXggMjgzYmU4ZDc3YTBlLi4wMDAwMDAwMDAwMDAKLS0tIGEvTWFrZWZpbGUKKysrIC9k
ZXYvbnVsbApAQCAtMSw0NyArMCwwIEBACi0jCi0jIENvcHlyaWdodCAoQykgRmVsaXggRmlldGth
dSA8bmJkQG5iZC5uYW1lPgotIwotIyBUaGlzIGlzIGZyZWUgc29mdHdhcmUsIGxpY2Vuc2VkIHVu
ZGVyIHRoZSBHTlUgR2VuZXJhbCBQdWJsaWMgTGljZW5zZSB2Mi4KLSMgU2VlIC9MSUNFTlNFIGZv
ciBtb3JlIGluZm9ybWF0aW9uLgotIwotCi1pbmNsdWRlICQoVE9QRElSKS9ydWxlcy5tawotCi1Q
S0dfTkFNRTo9Znd0b29sCi1QS0dfUkVMRUFTRTo9MgotCi1QS0dfRkxBR1M6PW5vbnNoYXJlZAot
Ci1QS0dfTUFJTlRBSU5FUiA6PSBGZWxpeCBGaWV0a2F1IDxuYmRAbmJkLm5hbWU+Ci1QS0dfQlVJ
TERfREVQRU5EUyA6PSBmd3Rvb2wvaG9zdAotCi1pbmNsdWRlICQoSU5DTFVERV9ESVIpL3BhY2th
Z2UubWsKLWluY2x1ZGUgJChJTkNMVURFX0RJUikvaG9zdC1idWlsZC5tawotCi1IT1NUX0JVSUxE
X1BSRUZJWDo9JChTVEFHSU5HX0RJUl9IT1NUKQotCi1kZWZpbmUgUGFja2FnZS9md3Rvb2wKLSAg
U0VDVElPTjo9dXRpbHMKLSAgQ0FURUdPUlk6PUJhc2Ugc3lzdGVtCi0gIFRJVExFOj1VdGlsaXR5
IGZvciBhcHBlbmRpbmcgYW5kIGV4dHJhY3RpbmcgZmlybXdhcmUgbWV0YWRhdGEgYW5kIHNpZ25h
dHVyZXMKLWVuZGVmCi0KLWRlZmluZSBIb3N0L0NvbXBpbGUKLQkkKEhPU1RDQykgJChIT1NUX0NG
TEFHUykgJChIT1NUX0xERkxBR1MpIC1vICQoSE9TVF9CVUlMRF9ESVIpL2Z3dG9vbCAuL3NyYy9m
d3Rvb2wuYwotZW5kZWYKLQotZGVmaW5lIEhvc3QvSW5zdGFsbAotCSQoSU5TVEFMTF9CSU4pICQo
SE9TVF9CVUlMRF9ESVIpL2Z3dG9vbCAkKDEpL2Jpbi8KLWVuZGVmCi0KLWRlZmluZSBCdWlsZC9D
b21waWxlCi0JJChUQVJHRVRfQ0MpICQoVEFSR0VUX0NGTEFHUykgJChUQVJHRVRfTERGTEFHUykg
LW8gJChQS0dfQlVJTERfRElSKS9md3Rvb2wgLi9zcmMvZnd0b29sLmMKLWVuZGVmCi0KLWRlZmlu
ZSBQYWNrYWdlL2Z3dG9vbC9pbnN0YWxsCi0JJChJTlNUQUxMX0RJUikgJCgxKS91c3IvYmluCi0J
JChJTlNUQUxMX0JJTikgJChQS0dfQlVJTERfRElSKS9md3Rvb2wgJCgxKS91c3IvYmluLwotZW5k
ZWYKLQotJChldmFsICQoY2FsbCBIb3N0QnVpbGQpKQotJChldmFsICQoY2FsbCBCdWlsZFBhY2th
Z2UsZnd0b29sKSkKZGlmZiAtLWdpdCBhL3NyYy9jcmMzMi5oIGIvY3JjMzIuaApzaW1pbGFyaXR5
IGluZGV4IDEwMCUKcmVuYW1lIGZyb20gc3JjL2NyYzMyLmgKcmVuYW1lIHRvIGNyYzMyLmgKZGlm
ZiAtLWdpdCBhL3NyYy9md2ltYWdlLmggYi9md2ltYWdlLmgKc2ltaWxhcml0eSBpbmRleCAxMDAl
CnJlbmFtZSBmcm9tIHNyYy9md2ltYWdlLmgKcmVuYW1lIHRvIGZ3aW1hZ2UuaApkaWZmIC0tZ2l0
IGEvc3JjL2Z3dG9vbC5jIGIvZnd0b29sLmMKc2ltaWxhcml0eSBpbmRleCAxMDAlCnJlbmFtZSBm
cm9tIHNyYy9md3Rvb2wuYwpyZW5hbWUgdG8gZnd0b29sLmMKZGlmZiAtLWdpdCBhL3NyYy91dGls
cy5oIGIvdXRpbHMuaApzaW1pbGFyaXR5IGluZGV4IDEwMCUKcmVuYW1lIGZyb20gc3JjL3V0aWxz
LmgKcmVuYW1lIHRvIHV0aWxzLmgKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlz
dHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZv
L29wZW53cnQtZGV2ZWwK
